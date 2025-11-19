@interface IMDIDSService
- (BOOL)canManageRegistration;
- (BOOL)isRegistrationUnmanaged;
- (IMDIDSService)initWithBundle:(id)a3 isMainService:(BOOL)a4;
- (IMDIDSService)initWithBundle:(id)a3 subServiceName:(id)a4;
- (IMDIDSService)mainService;
- (NSArray)accountsLoadedFromIdentityServices;
- (NSArray)activeAccountsFromIdentityServices;
- (id)accountFromIDSAccountWithUniqueID:(id)a3;
- (id)imdAccountLoginFromIDSAccountWithType:(int)a3 login:(id)a4;
- (id)newAccountWithAccountDefaults:(id)a3 accountID:(id)a4;
- (void)_loadIDSAccountController;
- (void)account:(id)a3 aliasesChanged:(id)a4;
- (void)account:(id)a3 displayNameChanged:(id)a4;
- (void)account:(id)a3 loginChanged:(id)a4;
- (void)account:(id)a3 profileChanged:(id)a4;
- (void)account:(id)a3 registrationStatusInfoChanged:(id)a4;
- (void)account:(id)a3 vettedAliasesChanged:(id)a4;
- (void)accountAdded:(id)a3;
- (void)accountController:(id)a3 accountAdded:(id)a4;
- (void)accountController:(id)a3 accountDisabled:(id)a4;
- (void)accountController:(id)a3 accountEnabled:(id)a4;
- (void)accountController:(id)a3 accountRemoved:(id)a4;
- (void)accountController:(id)a3 accountUpdated:(id)a4;
- (void)accountRemoved:(id)a3;
- (void)dealloc;
- (void)disableAccount:(id)a3;
- (void)enableAccount:(id)a3;
- (void)refreshRegistrationForAccount:(id)a3;
- (void)registrationFailedForAccount:(id)a3 needsDeletion:(id)a4;
@end

@implementation IMDIDSService

- (void)_loadIDSAccountController
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->_accountController)
  {
    v3 = [objc_alloc(MEMORY[0x277D186C8]) initWithService:sub_22B6E43EC(self)];
    self->_accountController = v3;
    [(IDSAccountController *)v3 addDelegate:self queue:MEMORY[0x277D85CD0]];
    if ([(IMDIDSService *)self canManageRegistration])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v4 = [(IDSAccountController *)self->_accountController accounts];
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v5)
      {
        v7 = v5;
        v8 = *v16;
        *&v6 = 138412290;
        v14 = v6;
        v9 = MEMORY[0x277D85CD0];
        do
        {
          v10 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v11 = *(*(&v15 + 1) + 8 * v10);
            v12 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = v14;
              v20 = v11;
              _os_log_debug_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "Adding registration delegate for account %@", buf, 0xCu);
            }

            [v11 addRegistrationDelegate:self queue:v9];
            ++v10;
          }

          while (v7 != v10);
          v7 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v7);
      }
    }
  }

  [[(IMDIDSService *)self subService] _loadIDSAccountController];
  v13 = *MEMORY[0x277D85DE8];
}

- (IMDIDSService)initWithBundle:(id)a3 subServiceName:(id)a4
{
  v9.receiver = self;
  v9.super_class = IMDIDSService;
  v6 = [(IMDService *)&v9 initWithBundle:?];
  if (v6)
  {
    if ([a4 length])
    {
      v7 = [[IMDIDSService alloc] initWithBundle:a3 isMainService:0];
      v6->_subService = v7;
      [(IMDIDSService *)v7 setMainService:v6];
      [(IMDIDSService *)v6->_subService setSubServiceName:a4];
    }

    [(IMDIDSService *)v6 _loadIDSAccountController];
  }

  return v6;
}

- (IMDIDSService)initWithBundle:(id)a3 isMainService:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = IMDIDSService;
  v5 = [(IMDService *)&v9 initWithBundle:a3];
  v6 = v5;
  if (v5)
  {
    v7 = !v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(IMDIDSService *)v5 _loadIDSAccountController];
  }

  return v6;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(IDSAccountController *)self->_accountController accounts];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) removeRegistrationDelegate:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(IDSAccountController *)self->_accountController removeDelegate:self];

  objc_storeWeak(&self->_mainService, 0);
  v9.receiver = self;
  v9.super_class = IMDIDSService;
  [(IMDService *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)accountFromIDSAccountWithUniqueID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  [(IMDIDSService *)self _loadIDSAccountController];
  v5 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(objc_msgSend(v10 "idsAccount")])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (IMDIDSService)mainService
{
  if (objc_loadWeak(&self->_mainService))
  {

    return objc_loadWeak(&self->_mainService);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = IMDIDSService;
    return [(IMDService *)&v4 mainService];
  }
}

- (BOOL)isRegistrationUnmanaged
{
  if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")] && (IMGetDomainBoolForKey() & 1) != 0)
  {
    return 0;
  }

  v4 = [(IMDService *)self serviceProperties];
  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D1A6A8]];

  return [v5 BOOLValue];
}

- (BOOL)canManageRegistration
{
  if ([(IMDIDSService *)self isSubService])
  {
    return 0;
  }

  else
  {
    return ![(IMDIDSService *)self isRegistrationUnmanaged];
  }
}

- (id)imdAccountLoginFromIDSAccountWithType:(int)a3 login:(id)a4
{
  v5 = MEMORY[0x231897A70](a4, a2);
  v6 = v5;
  if (a3)
  {
    if (a3 <= 2)
    {
      if ([v5 length])
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"E:%@", v6];
      }

      return @"E:";
    }
  }

  else
  {
    if ([v5 length])
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"P:%@", IMFormatPhoneNumber()];
    }

    return @"P:";
  }

  return v6;
}

- (NSArray)accountsLoadedFromIdentityServices
{
  v22 = *MEMORY[0x277D85DE8];
  [(IMDIDSService *)self _loadIDSAccountController];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(IDSAccountController *)self->_accountController accounts];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = *MEMORY[0x277D18AB0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = -[IMDIDSService imdAccountLoginFromIDSAccountWithType:login:](self, "imdAccountLoginFromIDSAccountWithType:login:", [v9 accountType], objc_msgSend(v9, "loginID"));
        v11 = [objc_msgSend(v9 "accountInfo")];
        [v11 setObject:v10 forKey:v7];
        v12 = -[IMDIDSAccount initWithAccountID:defaults:service:idsAccount:]([IMDIDSAccount alloc], "initWithAccountID:defaults:service:idsAccount:", [v9 uniqueID], v11, self, v9);
        [v3 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = [[(IMDIDSService *)self subService] accountsLoadedFromIdentityServices];
  if ([(NSArray *)v13 count])
  {
    [v3 addObjectsFromArray:v13];
  }

  result = v3;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSArray)activeAccountsFromIdentityServices
{
  v3 = [-[IDSAccountController enabledAccounts](self->_accountController "enabledAccounts")];
  v4 = [[(IMDIDSService *)self subService] activeAccountsFromIdentityServices];
  if (![(NSArray *)v4 count])
  {
    return v3;
  }

  return [(NSArray *)v3 arrayByAddingObjectsFromArray:v4];
}

- (void)accountAdded:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if ([a3 service] != self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_11:
    v8.receiver = self;
    v8.super_class = IMDIDSService;
    [(IMDService *)&v8 accountAdded:a3];
    goto LABEL_12;
  }

  v5 = [a3 idsAccount];
  if ([(IMDIDSService *)self canManageRegistration])
  {
    [v5 addRegistrationDelegate:self queue:MEMORY[0x277D85CD0]];
  }

  if ([v5 accountType] != 2)
  {
    if (-[IMDIDSService canManageRegistration](self, "canManageRegistration") && !-[IDSAccountController accountWithUniqueID:](self->_accountController, "accountWithUniqueID:", [v5 uniqueID]))
    {
      v6 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v10 = a3;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "IMDAccount added %@, adding corresponding IDSAccount %@", buf, 0x16u);
      }

      [(IDSAccountController *)self->_accountController addAccount:v5];
    }

    goto LABEL_11;
  }

LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)accountRemoved:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if ([a3 service] != self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = IMDIDSService;
    [(IMDService *)&v8 accountRemoved:a3];
    goto LABEL_9;
  }

  v5 = [a3 idsAccount];
  [v5 removeRegistrationDelegate:self];
  if ([v5 accountType] != 2)
  {
    if ([(IMDIDSService *)self canManageRegistration])
    {
      v6 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v10 = a3;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "IMDAccount removed %@, removing corresponding IDSAccount %@", buf, 0x16u);
      }

      -[IDSAccountController _removeAccount:](self->_accountController, "_removeAccount:", [v5 uniqueID]);
    }

    goto LABEL_8;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (id)newAccountWithAccountDefaults:(id)a3 accountID:(id)a4
{
  v7 = [objc_alloc(MEMORY[0x277D186C0]) initWithDictionary:a3 uniqueID:a4 serviceName:sub_22B6E43EC(self)];
  v8 = [[IMDIDSAccount alloc] initWithAccountID:a4 defaults:a3 service:self idsAccount:v7];

  return v8;
}

- (void)enableAccount:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_activatingAccount && [a3 service] == self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a3 idsAccount];
      if ([(IMDIDSService *)self canManageRegistration])
      {
        v6 = [MEMORY[0x277D19298] registration];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138412290;
          v9 = v5;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Enabling IDSAccount %@", &v8, 0xCu);
        }

        [(IDSAccountController *)self->_accountController enableAccount:v5];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)disableAccount:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_deactivatingAccount && [a3 service] == self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a3 idsAccount];
      if ([v5 accountType] != 2)
      {
        if ([(IMDIDSService *)self canManageRegistration])
        {
          v6 = [MEMORY[0x277D19298] registration];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v8 = 138412290;
            v9 = [v5 uniqueID];
            _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Disabling IDSAccount %@", &v8, 0xCu);
          }

          [(IDSAccountController *)self->_accountController disableAccount:v5];
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)accountController:(id)a3 accountAdded:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = [a4 uniqueID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Received account added %@", &v9, 0xCu);
  }

  if ([(IMDIDSService *)self canManageRegistration])
  {
    [a4 addRegistrationDelegate:self queue:MEMORY[0x277D85CD0]];
  }

  v7 = -[IMDIDSAccount initWithAccountID:defaults:service:idsAccount:]([IMDIDSAccount alloc], "initWithAccountID:defaults:service:idsAccount:", [a4 uniqueID], objc_msgSend(a4, "accountInfo"), self, a4);
  if (v7)
  {
    [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountController:(id)a3 accountUpdated:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = [a4 uniqueID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Received account updates %@", &v9, 0xCu);
  }

  v7 = -[IMDIDSService accountFromIDSAccountWithUniqueID:](self, "accountFromIDSAccountWithUniqueID:", [a4 uniqueID]);
  if ([(IMDIDSService *)self canManageRegistration])
  {
    [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
  }

  [objc_msgSend(v7 "session")];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountController:(id)a3 accountRemoved:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = [a4 uniqueID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Received accountRemoved %@", &v16, 0xCu);
  }

  if ([(IMDIDSService *)self canManageRegistration])
  {
    [a4 removeRegistrationDelegate:self];
  }

  v7 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  if (v7)
  {
    [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  }

  else
  {
    v8 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9E30(a4, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accountController:(id)a3 accountEnabled:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = [a4 uniqueID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Received accountEnabled %@", &v16, 0xCu);
  }

  v7 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  if (v7)
  {
    self->_activatingAccount = 1;
    [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
    self->_activatingAccount = 0;
  }

  else
  {
    v8 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9E9C(a4, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accountController:(id)a3 accountDisabled:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = [a4 uniqueID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Received accountDisabled %@", &v16, 0xCu);
  }

  v7 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  if (v7)
  {
    self->_deactivatingAccount = 1;
    [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
    self->_deactivatingAccount = 0;
  }

  else
  {
    v8 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9F08(a4, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 registrationStatusInfoChanged:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:a3, a4];
  v5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = [v4 accountID];
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "IMDIDSService received registration status changed: %@ (%@)", &v7, 0x16u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 aliasesChanged:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:a3];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = a4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "IMDIDSService received aliases changed to %@: %@ (%@)", &v8, 0x20u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 vettedAliasesChanged:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:a3, a4];
  v5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = [v4 accountID];
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "IMDIDSService received vetted aliases changed: %@ (%@)", &v7, 0x16u);
  }

  -[IMDNicknameController aliasesDidChange:](+[IMDNicknameController sharedInstance](IMDNicknameController, "sharedInstance"), "aliasesDidChange:", [v4 multiplePhoneNumbersTiedToAccount]);
  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 profileChanged:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:a3];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = a4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "IMDIDSService received profile changed to %@: %@ (%@)", &v8, 0x20u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 loginChanged:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:a3];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = a4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "IMDIDSService received login changed to %@: %@ (%@)", &v8, 0x20u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 displayNameChanged:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:a3];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = a4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "IMDIDSService received display name changed to %@: %@ (%@)", &v8, 0x20u);
  }

  [-[IMDBroadcasterProviding broadcasterForListenersSupportingService:](+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)registrationFailedForAccount:(id)a3 needsDeletion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:a3];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = [v5 accountID];
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, " => Registration failed, deactivating...: %@ (%@)", buf, 0x16u);
  }

  [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  if ([a4 BOOLValue])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6E60C8;
    block[3] = &unk_278704F90;
    block[4] = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)refreshRegistrationForAccount:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(IMDIDSService *)self accountFromIDSAccountWithUniqueID:a3];
  v4 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = [v3 accountID];
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "IMDIDSService received refresh registration: %@ (%@)", &v6, 0x16u);
  }

  [objc_msgSend(v3 "session")];
  v5 = *MEMORY[0x277D85DE8];
}

@end