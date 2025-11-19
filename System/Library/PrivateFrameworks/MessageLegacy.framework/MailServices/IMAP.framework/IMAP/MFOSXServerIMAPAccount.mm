@interface MFOSXServerIMAPAccount
+ (id)_authSchemeForAuthenticationMethod:(id)a3;
+ (id)newChildAccountWithParentAccount:(id)a3 error:(id *)a4;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
- (id)displayName;
- (void)dealloc;
@end

@implementation MFOSXServerIMAPAccount

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFOSXServerIMAPAccount;
  [(IMAPAccount *)&v3 dealloc];
}

- (id)displayName
{
  if ([(MFAccount *)self parentAccount])
  {
    v3 = [(MFAccount *)self parentAccount];

    return [(ACAccount *)v3 accountDescription];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MFOSXServerIMAPAccount;
    return [(MailAccount *)&v5 displayName];
  }
}

+ (id)newChildAccountWithParentAccount:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_20;
  }

  v7 = *MEMORY[0x277CB9150];
  v8 = [a3 propertiesForDataclass:*MEMORY[0x277CB9150]];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  if (([a3 isProvisionedForDataclass:v7] & 1) != 0 || (v10 = objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", @"OSXServerIMAPErrorDomain", 2, 0)) == 0)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [a3 childAccounts];
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      v15 = *MEMORY[0x277CB8C68];
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([objc_msgSend(objc_msgSend(*(*(&v34 + 1) + 8 * i) "accountType")])
          {
            v10 = [MEMORY[0x277D28410] errorWithDomain:@"OSXServerIMAPErrorDomain" code:1 localizedDescription:0];
            goto LABEL_15;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
        v10 = 0;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_15:
  v17 = [v8 objectForKeyedSubscript:@"EmailAccountName"];
  if (!v17)
  {
    v17 = [a3 username];
  }

  v18 = [v8 objectForKeyedSubscript:*MEMORY[0x277CB8AD0]];
  if (v10)
  {
    if (a4)
    {
      v19 = 0;
      *a4 = v10;
      goto LABEL_31;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_31;
  }

  v20 = v18;
  [v9 setObject:v17 forKeyedSubscript:*MEMORY[0x277D282F0]];
  v21 = [v8 objectForKeyedSubscript:@"EmailAddresses"];
  if (!v21)
  {
    v22 = [v8 objectForKeyedSubscript:@"EmailAddress"];
    if (!v22)
    {
      v23 = [v8 objectForKeyedSubscript:@"EmailDomain"];
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v20;
      }

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", v17, v24];
    }

    v38 = v22;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  }

  [v9 setObject:v21 forKeyedSubscript:*MEMORY[0x277D28358]];
  v25 = [a3 accountDescription];
  [v9 setObject:v25 forKeyedSubscript:*MEMORY[0x277D282E0]];
  [v9 setObject:v20 forKeyedSubscript:*MEMORY[0x277D28368]];
  v26 = [v8 objectForKeyedSubscript:*MEMORY[0x277CB8AD8]];
  [v9 setObject:v26 forKeyedSubscript:*MEMORY[0x277D28370]];
  v27 = *MEMORY[0x277CB8AE0];
  v28 = [v8 objectForKeyedSubscript:*MEMORY[0x277CB8AE0]];
  [v9 setObject:v28 forKeyedSubscript:*MEMORY[0x277D28378]];
  if ([a3 userFullName])
  {
    v29 = [a3 userFullName];
    [v9 setObject:v29 forKeyedSubscript:*MEMORY[0x277D28360]];
  }

  v30 = [a1 _authSchemeForAuthenticationMethod:{objc_msgSend(v8, "objectForKeyedSubscript:", @"IncomingMailServerAuthentication"}];
  [v9 setObject:v30 forKeyedSubscript:*MEMORY[0x277D282C0]];
  v19 = [objc_opt_class() accountWithProperties:v9];
  [v19 setPath:{objc_msgSend(objc_opt_class(), "defaultPathForAccountWithHostname:username:", v20, v17)}];
  [v19 setUsesSSL:{objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", v27), "BOOLValue")}];
  v31 = [v19 persistentAccount];
  [v31 setParentAccount:a3];
  [v31 setAuthenticationType:*MEMORY[0x277CB90B8]];
LABEL_31:
  v32 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)_authSchemeForAuthenticationMethod:(id)a3
{
  if ([a3 isEqualToString:@"EmailAuthCRAMMD5"])
  {
    v4 = MEMORY[0x277D282A0];
    return *v4;
  }

  if ([a3 isEqualToString:@"EmailAuthNTLM"])
  {
    v4 = MEMORY[0x277D282B0];
    return *v4;
  }

  if ([a3 isEqualToString:@"EmailAuthHTTPMD5"])
  {
    return *MEMORY[0x277D282A8];
  }

  else
  {
    return &stru_2869E1DA0;
  }
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3
{
  deliveryAccount = self->_deliveryAccount;
  if (deliveryAccount)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (!v4)
  {
    deliveryAccount = objc_alloc_init(MFOSXServerSMTPAccount);
    [(MFOSXServerSMTPAccount *)deliveryAccount setMailAccount:self];
    self->_deliveryAccount = &deliveryAccount->super.super;
  }

  return deliveryAccount;
}

@end