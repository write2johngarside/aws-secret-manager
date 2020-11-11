module "secrets-manager-2" {

  source = "../../"

  secrets = [
    {
      name        = "secret-test-kv-1"
      description = "This is a key/value secret"
      secret_key_value = {
        key1 = "john"
        key2 = "garside"
      }
      recovery_window_in_days = 7
    },
    {
      name        = "secret-test-kv-2"
      description = "Another key/value secret"
      secret_key_value = {
        username = "user"
        password = "testpassword"
      }
      tags = {
        app = "crm"
      }
      recovery_window_in_days = 7
    },
  ]

  tags = {
    Owner       = "dev team"
    Environment = "dev"
    Terraform   = true
  }

}
