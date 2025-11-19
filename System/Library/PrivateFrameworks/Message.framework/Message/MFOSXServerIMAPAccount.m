@interface MFOSXServerIMAPAccount
+ (id)_authSchemeForAuthenticationMethod:(id)a3;
+ (id)newChildAccountWithParentAccount:(id)a3 error:(id *)a4;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
- (id)displayName;
@end

@implementation MFOSXServerIMAPAccount

- (id)displayName
{
  v3 = [(MFAccount *)self parentAccount];

  if (v3)
  {
    v4 = [(MFAccount *)self parentAccount];
    v5 = [v4 accountDescription];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MFOSXServerIMAPAccount;
    v5 = [(MailAccount *)&v7 displayName];
  }

  return v5;
}

+ (id)newChildAccountWithParentAccount:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v45 = a1;
    v8 = *MEMORY[0x1E6959B28];
    v47 = [v6 propertiesForDataclass:*MEMORY[0x1E6959B28]];
    v46 = [MEMORY[0x1E695DF90] dictionary];
    if (([v7 isProvisionedForDataclass:v8] & 1) != 0 || (+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"OSXServerIMAPErrorDomain", 2, 0), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v10 = [v7 childAccounts];
      v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v48 + 1) + 8 * i) accountType];
            v16 = [v15 identifier];
            v17 = [v16 isEqualToString:v13];

            if (v17)
            {
              v9 = [MFError errorWithDomain:@"OSXServerIMAPErrorDomain" code:1 localizedDescription:0];
              goto LABEL_15;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
      v21 = v19;
    }

    else
    {
      v21 = [v7 username];
    }

    v22 = v21;

    v23 = [v47 objectForKeyedSubscript:*MEMORY[0x1E6959768]];
    if (v9)
    {
      if (a4)
      {
        v24 = v9;
        v18 = 0;
        *a4 = v9;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      [v46 setObject:v22 forKeyedSubscript:@"Username"];
      v25 = [v47 objectForKeyedSubscript:@"EmailAddresses"];
      if (v25)
      {
        [v46 setObject:v25 forKeyedSubscript:@"EmailAddresses"];
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
        [v46 setObject:v31 forKeyedSubscript:@"EmailAddresses"];
      }

      v32 = [v7 accountDescription];
      [v46 setObject:v32 forKeyedSubscript:@"DisplayName"];

      [v46 setObject:v23 forKeyedSubscript:@"Hostname"];
      v33 = [v47 objectForKeyedSubscript:*MEMORY[0x1E6959770]];
      [v46 setObject:v33 forKeyedSubscript:@"PortNumber"];

      v34 = *MEMORY[0x1E6959778];
      v35 = [v47 objectForKeyedSubscript:*MEMORY[0x1E6959778]];
      [v46 setObject:v35 forKeyedSubscript:@"SSLEnabled"];

      v36 = [v7 userFullName];

      if (v36)
      {
        v37 = [v7 userFullName];
        [v46 setObject:v37 forKeyedSubscript:@"FullUserName"];
      }

      v38 = [v47 objectForKeyedSubscript:@"IncomingMailServerAuthentication"];
      v39 = [v45 _authSchemeForAuthenticationMethod:v38];
      [v46 setObject:v39 forKeyedSubscript:@"AuthenticationScheme"];

      v18 = [objc_opt_class() accountWithProperties:v46];
      v40 = [v18 defaultPath];
      [v18 setPath:v40];

      v41 = [v47 objectForKeyedSubscript:v34];
      [v18 setUsesSSL:{objc_msgSend(v41, "BOOLValue")}];

      v42 = [v18 persistentAccount];
      [v42 setParentAccount:v7];
      [v42 setAuthenticationType:*MEMORY[0x1E6959AC8]];
    }
  }

  else
  {
    v18 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)_authSchemeForAuthenticationMethod:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"EmailAuthCRAMMD5"])
  {
    v4 = MEMORY[0x1E699B018];
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"EmailAuthNTLM"])
  {
    v4 = MEMORY[0x1E699B028];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"EmailAuthHTTPMD5"])
  {
    v4 = MEMORY[0x1E699B020];
    goto LABEL_7;
  }

  v5 = &stru_1F273A5E0;
LABEL_8:

  return v5;
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3
{
  deliveryAccount = self->_deliveryAccount;
  if (deliveryAccount)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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