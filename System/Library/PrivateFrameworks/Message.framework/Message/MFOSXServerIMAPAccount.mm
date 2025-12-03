@interface MFOSXServerIMAPAccount
+ (id)_authSchemeForAuthenticationMethod:(id)method;
+ (id)newChildAccountWithParentAccount:(id)account error:(id *)error;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed;
- (id)displayName;
@end

@implementation MFOSXServerIMAPAccount

- (id)displayName
{
  parentAccount = [(MFAccount *)self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [(MFAccount *)self parentAccount];
    accountDescription = [parentAccount2 accountDescription];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MFOSXServerIMAPAccount;
    accountDescription = [(MailAccount *)&v7 displayName];
  }

  return accountDescription;
}

+ (id)newChildAccountWithParentAccount:(id)account error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = accountCopy;
  if (accountCopy)
  {
    selfCopy = self;
    v8 = *MEMORY[0x1E6959B28];
    v47 = [accountCopy propertiesForDataclass:*MEMORY[0x1E6959B28]];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (([v7 isProvisionedForDataclass:v8] & 1) != 0 || (+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"OSXServerIMAPErrorDomain", 2, 0), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      childAccounts = [v7 childAccounts];
      v11 = [childAccounts countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v11)
      {
        v12 = *v49;
        v13 = *MEMORY[0x1E6959898];
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v49 != v12)
            {
              objc_enumerationMutation(childAccounts);
            }

            accountType = [*(*(&v48 + 1) + 8 * i) accountType];
            identifier = [accountType identifier];
            v17 = [identifier isEqualToString:v13];

            if (v17)
            {
              v9 = [MFError errorWithDomain:@"OSXServerIMAPErrorDomain" code:1 localizedDescription:0];
              goto LABEL_15;
            }
          }

          v11 = [childAccounts countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v9 = 0;
LABEL_15:
    }

    v19 = [v47 objectForKeyedSubscript:@"EmailAccountName"];
    v20 = v19;
    if (v19)
    {
      username = v19;
    }

    else
    {
      username = [v7 username];
    }

    v22 = username;

    v23 = [v47 objectForKeyedSubscript:*MEMORY[0x1E6959768]];
    if (v9)
    {
      if (error)
      {
        v24 = v9;
        v18 = 0;
        *error = v9;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      [dictionary setObject:v22 forKeyedSubscript:@"Username"];
      v25 = [v47 objectForKeyedSubscript:@"EmailAddresses"];
      if (v25)
      {
        [dictionary setObject:v25 forKeyedSubscript:@"EmailAddresses"];
      }

      else
      {
        v26 = [v47 objectForKeyedSubscript:@"EmailAddress"];
        if (!v26)
        {
          v27 = [v47 objectForKeyedSubscript:@"EmailDomain"];
          v28 = v27;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = v23;
          }

          v30 = v29;

          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%@", v22, v30];
        }

        v52 = v26;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
        [dictionary setObject:v31 forKeyedSubscript:@"EmailAddresses"];
      }

      accountDescription = [v7 accountDescription];
      [dictionary setObject:accountDescription forKeyedSubscript:@"DisplayName"];

      [dictionary setObject:v23 forKeyedSubscript:@"Hostname"];
      v33 = [v47 objectForKeyedSubscript:*MEMORY[0x1E6959770]];
      [dictionary setObject:v33 forKeyedSubscript:@"PortNumber"];

      v34 = *MEMORY[0x1E6959778];
      v35 = [v47 objectForKeyedSubscript:*MEMORY[0x1E6959778]];
      [dictionary setObject:v35 forKeyedSubscript:@"SSLEnabled"];

      userFullName = [v7 userFullName];

      if (userFullName)
      {
        userFullName2 = [v7 userFullName];
        [dictionary setObject:userFullName2 forKeyedSubscript:@"FullUserName"];
      }

      v38 = [v47 objectForKeyedSubscript:@"IncomingMailServerAuthentication"];
      v39 = [selfCopy _authSchemeForAuthenticationMethod:v38];
      [dictionary setObject:v39 forKeyedSubscript:@"AuthenticationScheme"];

      v18 = [objc_opt_class() accountWithProperties:dictionary];
      defaultPath = [v18 defaultPath];
      [v18 setPath:defaultPath];

      v41 = [v47 objectForKeyedSubscript:v34];
      [v18 setUsesSSL:{objc_msgSend(v41, "BOOLValue")}];

      persistentAccount = [v18 persistentAccount];
      [persistentAccount setParentAccount:v7];
      [persistentAccount setAuthenticationType:*MEMORY[0x1E6959AC8]];
    }
  }

  else
  {
    v18 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)_authSchemeForAuthenticationMethod:(id)method
{
  methodCopy = method;
  if ([methodCopy isEqualToString:@"EmailAuthCRAMMD5"])
  {
    v4 = MEMORY[0x1E699B018];
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([methodCopy isEqualToString:@"EmailAuthNTLM"])
  {
    v4 = MEMORY[0x1E699B028];
    goto LABEL_7;
  }

  if ([methodCopy isEqualToString:@"EmailAuthHTTPMD5"])
  {
    v4 = MEMORY[0x1E699B020];
    goto LABEL_7;
  }

  v5 = &stru_1F273A5E0;
LABEL_8:

  return v5;
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed
{
  deliveryAccount = self->_deliveryAccount;
  if (deliveryAccount)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MFOSXServerSMTPAccount);
    [(MFOSXServerSMTPAccount *)v6 setMailAccount:self];
    v7 = self->_deliveryAccount;
    self->_deliveryAccount = &v6->super.super;

    deliveryAccount = self->_deliveryAccount;
  }

  return deliveryAccount;
}

@end