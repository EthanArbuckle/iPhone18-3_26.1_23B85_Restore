@interface EMAccountAuthentication
+ (id)log;
- (BOOL)_hostnamesHaveSameTopLevelDomain:(id)domain deliveryAccount:(id)account;
- (BOOL)_shouldAutoUpdateDeliveryAccount:(id)account forChangedReceivingAccount:(id)receivingAccount;
- (BOOL)_updateDeliveryAccountCredentialIfNecessaryForAccountWithAccount:(id)account;
- (BOOL)_updateDeliveryAccountCredentialIfNecessaryForReceivingAccount:(id)account;
- (BOOL)updateDeliveryAccountCredentialIfNecessaryForAccountWithIdentifier:(id)identifier;
- (BOOL)updateDeliveryAccountCredentialIfNecessaryForAccountWithSystemAccount:(id)account;
- (EMAccountAuthentication)initWithAccountFactory:(id)factory;
@end

@implementation EMAccountAuthentication

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__EMAccountAuthentication_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __30__EMAccountAuthentication_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

- (EMAccountAuthentication)initWithAccountFactory:(id)factory
{
  factoryCopy = factory;
  v9.receiver = self;
  v9.super_class = EMAccountAuthentication;
  v6 = [(EMAccountAuthentication *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountFactory, factory);
  }

  return v7;
}

- (BOOL)updateDeliveryAccountCredentialIfNecessaryForAccountWithSystemAccount:(id)account
{
  accountCopy = account;
  accountFactory = [(EMAccountAuthentication *)self accountFactory];
  v6 = [accountFactory accountWithSystemAccount:accountCopy];
  LOBYTE(self) = [(EMAccountAuthentication *)self _updateDeliveryAccountCredentialIfNecessaryForAccountWithAccount:v6];

  return self;
}

- (BOOL)updateDeliveryAccountCredentialIfNecessaryForAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accountFactory = [(EMAccountAuthentication *)self accountFactory];
  v6 = [accountFactory accountWithIdentifier:identifierCopy];
  LOBYTE(self) = [(EMAccountAuthentication *)self _updateDeliveryAccountCredentialIfNecessaryForAccountWithAccount:v6];

  return self;
}

- (BOOL)_updateDeliveryAccountCredentialIfNecessaryForAccountWithAccount:(id)account
{
  v13 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy && [accountCopy conformsToProtocol:&unk_1F46417C8])
  {
    v6 = [(EMAccountAuthentication *)self _updateDeliveryAccountCredentialIfNecessaryForReceivingAccount:v5];
  }

  else
  {
    v7 = +[EMAccountAuthentication log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v5 identifier];
      v11 = 138412290;
      v12 = identifier;
      _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "Account is not a receiving account. No delivery account to update: %@", &v11, 0xCu);
    }

    v6 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_updateDeliveryAccountCredentialIfNecessaryForReceivingAccount:(id)account
{
  v22 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  deliveryAccount = [accountCopy deliveryAccount];
  v6 = +[EMAccountAuthentication log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [accountCopy identifier];
    v20 = 138412290;
    v21 = identifier;
    _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "Receiving account password changed: %@", &v20, 0xCu);
  }

  v8 = +[EMAccountAuthentication log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = deliveryAccount;
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "Attempt to update password if needed for delivery account %@", &v20, 0xCu);
  }

  if (!deliveryAccount)
  {
    password = +[EMAccountAuthentication log];
    if (os_log_type_enabled(password, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v11 = "No delivery account password found. Nothing to do";
LABEL_13:
      _os_log_impl(&dword_1C6655000, password, OS_LOG_TYPE_DEFAULT, v11, &v20, 2u);
    }

LABEL_14:
    canAuthenticateWithCurrentCredentials = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (![(EMAccountAuthentication *)self _shouldAutoUpdateDeliveryAccount:deliveryAccount forChangedReceivingAccount:accountCopy])
  {
    password = +[EMAccountAuthentication log];
    if (os_log_type_enabled(password, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v11 = "Should not try to update delivery account password";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (([deliveryAccount canAuthenticateWithCurrentCredentials] & 1) == 0)
  {
    password = [deliveryAccount password];
    password2 = [accountCopy password];
    systemAccount = [deliveryAccount systemAccount];
    v16 = [objc_alloc(MEMORY[0x1E6959A30]) initWithPassword:password2];
    [systemAccount setCredential:v16];
    canAuthenticateWithCurrentCredentials = [deliveryAccount canAuthenticateWithCurrentCredentials];
    if (canAuthenticateWithCurrentCredentials)
    {
      [deliveryAccount savePersistentAccount];
      v17 = +[EMAccountAuthentication log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = deliveryAccount;
        _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEFAULT, "Updating password worked for delivery account: %@", &v20, 0xCu);
      }
    }

    else
    {
      v18 = +[EMAccountAuthentication log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = deliveryAccount;
        _os_log_impl(&dword_1C6655000, v18, OS_LOG_TYPE_DEFAULT, "Updating password for %@ did not work. Reverting password", &v20, 0xCu);
      }

      v19 = [objc_alloc(MEMORY[0x1E6959A30]) initWithPassword:password];
      v16 = v19;
      [systemAccount setCredential:v19];
    }

    goto LABEL_15;
  }

  canAuthenticateWithCurrentCredentials = 1;
LABEL_16:

  v12 = *MEMORY[0x1E69E9840];
  return canAuthenticateWithCurrentCredentials;
}

- (BOOL)_shouldAutoUpdateDeliveryAccount:(id)account forChangedReceivingAccount:(id)receivingAccount
{
  accountCopy = account;
  receivingAccountCopy = receivingAccount;
  v8 = [receivingAccountCopy hasPasswordCredential] && objc_msgSend(accountCopy, "hasPasswordCredential") && -[EMAccountAuthentication _hostnamesHaveSameTopLevelDomain:deliveryAccount:](self, "_hostnamesHaveSameTopLevelDomain:deliveryAccount:", receivingAccountCopy, accountCopy);

  return v8;
}

- (BOOL)_hostnamesHaveSameTopLevelDomain:(id)domain deliveryAccount:(id)account
{
  accountCopy = account;
  hostname = [domain hostname];
  hostname2 = [accountCopy hostname];
  if ([hostname isEqualToString:hostname2])
  {
    v8 = 1;
  }

  else
  {
    v9 = [hostname componentsSeparatedByString:@"."];
    v10 = [hostname2 componentsSeparatedByString:@"."];
    v11 = [v9 count];
    v12 = [v10 count];
    v8 = 0;
    if (v11 >= 3)
    {
      v13 = v12;
      if (v12 >= 3)
      {
        v14 = [v9 objectAtIndexedSubscript:v11 - 1];
        v15 = [v10 objectAtIndexedSubscript:v13 - 1];
        if ([v14 isEqualToString:v15])
        {
          v16 = [v9 objectAtIndexedSubscript:v11 - 2];
          v17 = [v10 objectAtIndexedSubscript:v13 - 2];
          v8 = [v16 isEqualToString:v17];
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

  return v8;
}

@end