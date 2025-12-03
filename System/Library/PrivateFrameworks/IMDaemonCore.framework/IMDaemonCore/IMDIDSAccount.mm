@interface IMDIDSAccount
- (BOOL)canMakeDowngradeRoutingChecks;
- (BOOL)multiplePhoneNumbersTiedToAccount;
- (IMDIDSAccount)initWithAccountID:(id)d defaults:(id)defaults service:(id)service idsAccount:(id)account;
- (id)accountDefaults;
- (id)description;
- (void)writeAccountDefaults:(id)defaults;
@end

@implementation IMDIDSAccount

- (id)accountDefaults
{
  accountInfo = [(IDSAccount *)self->_idsAccount accountInfo];
  v4 = [accountInfo mutableCopy];

  v5 = *MEMORY[0x277D18AB0];
  v6 = [v4 objectForKey:*MEMORY[0x277D18AB0]];
  service = [(IMDAccount *)self service];
  v8 = [service imdAccountLoginFromIDSAccountWithType:-[IDSAccount accountType](self->_idsAccount login:{"accountType"), v6}];

  [v4 setObject:v8 forKey:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accountID = [(IMDAccount *)self accountID];
  idsAccount = [(IMDIDSAccount *)self idsAccount];
  v6 = [v3 stringWithFormat:@"<IMDIDSAccount:%p, ID:%@, idsAccount:%@ >", self, accountID, idsAccount];

  return v6;
}

- (IMDIDSAccount)initWithAccountID:(id)d defaults:(id)defaults service:(id)service idsAccount:(id)account
{
  accountCopy = account;
  v15.receiver = self;
  v15.super_class = IMDIDSAccount;
  v12 = [(IMDAccount *)&v15 initWithAccountID:d defaults:defaults service:service];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_idsAccount, account);
  }

  return v13;
}

- (void)writeAccountDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if ([(IDSAccount *)self->_idsAccount accountType]!= 2)
  {
    service = [(IMDAccount *)self service];
    canManageRegistration = [service canManageRegistration];

    if (canManageRegistration)
    {
      registration = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
      {
        sub_22B7D9C74();
      }

      if ([defaultsCopy count])
      {
        v8 = [defaultsCopy mutableCopy];
        v9 = *MEMORY[0x277D19420];
        v10 = [v8 objectForKey:*MEMORY[0x277D19420]];
        if (v10)
        {
          v11 = v10;
          registration2 = [MEMORY[0x277D19298] registration];
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
          {
            sub_22B7D9CF8();
          }

          v13 = MEMORY[0x231897A70](v11);

          if ([v13 length])
          {
            [v8 setObject:v13 forKey:v9];
            registration3 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEBUG))
            {
              sub_22B7D9D60();
            }
          }

          else
          {
            [v8 removeObjectForKey:v9];
            registration3 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEBUG))
            {
              sub_22B7D9DC8();
            }
          }
        }

        else
        {
          v13 = 0;
        }

        [(IDSAccount *)self->_idsAccount updateAccountWithAccountInfo:v8];
      }
    }
  }
}

- (BOOL)canMakeDowngradeRoutingChecks
{
  idsAccount = [(IMDIDSAccount *)self idsAccount];
  v3 = [idsAccount accountType] == 0;

  return v3;
}

- (BOOL)multiplePhoneNumbersTiedToAccount
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  idsAccount = [(IMDIDSAccount *)self idsAccount];
  devices = [idsAccount devices];

  v4 = [devices countByEnumeratingWithState:&v26 objects:v31 count:16];
  v5 = v4 != 0;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(devices);
        }

        linkedUserURIs = [*(*(&v26 + 1) + 8 * i) linkedUserURIs];
        v11 = [linkedUserURIs count];

        if (((v11 != 0) & v7) != 0)
        {
          goto LABEL_20;
        }

        v7 |= v11 != 0;
      }

      v6 = [devices countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    if (v7)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = +[IMDAccountController sharedInstance];
      devices = [v12 accounts];

      v13 = [devices countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (!v13)
      {
LABEL_19:
        v5 = 0;
        goto LABEL_21;
      }

      v14 = v13;
      v15 = *v23;
LABEL_12:
      v16 = 0;
      while (1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(devices);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount2 = [v17 idsAccount];
          accountType = [idsAccount2 accountType];

          if (!accountType)
          {
            break;
          }
        }

        if (v14 == ++v16)
        {
          v14 = [devices countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v14)
          {
            goto LABEL_12;
          }

          goto LABEL_19;
        }
      }

LABEL_20:
      v5 = 1;
      goto LABEL_21;
    }

    v5 = 0;
  }

  else
  {
LABEL_21:
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

@end