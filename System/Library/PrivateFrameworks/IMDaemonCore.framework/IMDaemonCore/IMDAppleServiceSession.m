@interface IMDAppleServiceSession
+ (id)idsAccounts;
- (BOOL)isiMessageServiceIDSAccount:(id)a3;
- (IDSAccount)idsAccount;
- (IMDAppleServiceSession)initWithAccount:(id)a3 service:(id)a4;
- (NSArray)aliases;
- (NSArray)registeredURIs;
- (NSArray)vettedAliases;
- (NSString)callerURI;
- (id)_aliasStringsForIDSAccount:(id)a3;
- (id)_aliases;
- (id)_aliasesForIDSAccount:(id)a3;
- (id)_findMatchingURI:(id)a3;
- (id)callerURIForIDSAccount:(id)a3;
- (id)callerURIForMessageGUID:(id)a3 idsAccount:(id)a4;
- (id)chatForOutgoingMessage:(id)a3 fromIdentifier:(id)a4 isInProxyMode:(BOOL)a5 createIfNotExists:(BOOL)a6;
- (id)idsAccountForURI:(id)a3 IDSServiceName:(id)a4;
- (id)imdAccountForIDSAccount:(id)a3;
- (int64_t)_validationStatusForAlias:(id)a3 onAccount:(id)a4;
- (int64_t)validationStatusForAlias:(id)a3;
- (void)_updateAccountStatusToUnregistered:(BOOL)a3 withAccount:(id)a4;
- (void)addAliases:(id)a3 account:(id)a4;
- (void)authenticateAccount:(id)a3;
- (void)dealloc;
- (void)handler:(id)a3 outgoingPlainTextMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 messageGUID:(id)a8 timeStamp:(id)a9 isBeingReplayed:(BOOL)a10 storageContext:(id)a11;
- (void)loginServiceSessionWithAccount:(id)a3;
- (void)logoutServiceSessionWithAccount:(id)a3;
- (void)passwordUpdatedWithAccount:(id)a3;
- (void)reIdentify;
- (void)refreshRegistration;
- (void)registerAccount:(id)a3;
- (void)removeAliases:(id)a3 account:(id)a4;
- (void)reregister;
- (void)resetCallerIDForIDSAccount:(id)a3;
- (void)sessionDidBecomeActive;
- (void)sessionWillBecomeInactiveWithAccount:(id)a3;
- (void)tryToRepairCallerID:(id)a3 forIDSAccount:(id)a4;
- (void)unregisterAccount:(id)a3;
- (void)unvalidateAliases:(id)a3 account:(id)a4;
- (void)updateAuthorizationCredentials:(id)a3 token:(id)a4 account:(id)a5;
- (void)validateAliases:(id)a3 account:(id)a4;
- (void)validateProfileWithAccount:(id)a3;
@end

@implementation IMDAppleServiceSession

- (IMDAppleServiceSession)initWithAccount:(id)a3 service:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = IMDAppleServiceSession;
  v5 = [(IMDServiceSession *)&v12 initWithAccount:a3 service:?];
  if (v5)
  {
    v6 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "%@: Initialized!  (Environment: %@)", buf, 0x16u);
    }

    v5->_GUID = [MEMORY[0x277CCACA8] stringGUID];
    v5->_serviceName = [a4 internalName];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    GUID = self->_GUID;
    *buf = 138412290;
    v8 = GUID;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc service session: %@", buf, 0xCu);
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v6.receiver = self;
  v6.super_class = IMDAppleServiceSession;
  [(IMDServiceSession *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (IDSAccount)idsAccount
{
  v3 = [(IMDServiceSession *)self account];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IMDInconsistencyResolved(self);

    return [(IMDAccount *)v3 idsAccount];
  }

  else
  {
    if ([(IMDServiceSession *)self isActive])
    {
      [(IMDServiceSession *)self accounts];
      IMDNoticedInconsistency(self, @"********** We don't have an IDSAccount, please file a radar ********** State: service session = %@, accounts = %@", v5, v6, v7, v8, v9, v10, self);
    }

    return 0;
  }
}

- (id)imdAccountForIDSAccount:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(IMDServiceSession *)self isReplicating])
  {
    v5 = *MEMORY[0x277D85DE8];

    return [(IMDServiceSession *)self account];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(IMDServiceSession *)self accounts];
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 idsAccount] == a3)
          {
            IMDInconsistencyResolved(self);
            goto LABEL_18;
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if ([(IMDServiceSession *)self isActive])
    {
      [(IMDServiceSession *)self accounts];
      IMDNoticedInconsistency(self, @"********** We couldn't find an IMDAccount for the IDSAccount, please file a radar ********** State: service session = %@, IDSAccount = %@, accounts = %@", v13, v14, v15, v16, v17, v18, self);
    }

    v12 = 0;
LABEL_18:
    v19 = *MEMORY[0x277D85DE8];
    return v12;
  }
}

- (NSArray)registeredURIs
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = self;
  v4 = [objc_opt_class() idsAccounts];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = [v9 im_registeredURIs];
        v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v25 + 1) + 8 * j) _URIFromFZIDType:{objc_msgSend(*(*(&v25 + 1) + 8 * j), "_FZBestGuessFZIDType")}];
              if ([v15 length])
              {
                [v3 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    IMDInconsistencyResolved(v24);
    result = [v3 allObjects];
  }

  else
  {
    if ([(IMDServiceSession *)v24 isActive])
    {
      [objc_opt_class() idsAccounts];
      IMDNoticedInconsistency(v24, @"********** Requesting registered URIs but we don't have an IDSAccount, please file a radar ********** State: service session = %@, accounts = %@", v17, v18, v19, v20, v21, v22, v24);
    }

    result = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateAccountStatusToUnregistered:(BOOL)a3 withAccount:(id)a4
{
  v5 = a3;
  if (a3 || [a4 registrationStatus] >= 2)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
    [v6 setObject:v7 forKey:*MEMORY[0x277D19460]];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v6 setObject:v8 forKey:*MEMORY[0x277D19470]];
    [a4 writeAccountDefaults:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v6, *MEMORY[0x277D19468])}];

    if (v5)
    {
      v9 = MEMORY[0x277CBEAC0];
      v10 = [MEMORY[0x277CBEB68] null];
      [a4 writeAccountDefaults:{objc_msgSend(v9, "dictionaryWithObject:forKey:", v10, *MEMORY[0x277D193F0])}];
    }
  }

  v11 = MEMORY[0x277CBEAC0];
  v12 = [MEMORY[0x277CBEB68] null];
  v13 = [v11 dictionaryWithObject:v12 forKey:*MEMORY[0x277D19408]];

  [a4 writeAccountDefaults:v13];
}

- (void)sessionDidBecomeActive
{
  v13 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[IMDAppleServiceSession sessionDidBecomeActive]";
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v4 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(IMDServiceSession *)self accountID];
    v6 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    *buf = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Session activating: %@ on Environment: %@", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = IMDAppleServiceSession;
  [(IMDServiceSession *)&v8 sessionDidBecomeActive];
  [(IMDAppleServiceSession *)self refreshRegistration];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sessionWillBecomeInactiveWithAccount:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[IMDAppleServiceSession sessionWillBecomeInactiveWithAccount:]";
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(IMDServiceSession *)self accountID];
    v8 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Session deactivating: %@ on Environment: %@", buf, 0x16u);
  }

  IMDInconsistencyResolved(self);
  v10.receiver = self;
  v10.super_class = IMDAppleServiceSession;
  [(IMDServiceSession *)&v10 sessionWillBecomeInactiveWithAccount:a3];
  [(IMDAppleServiceSession *)self _updateAccountStatusToUnregistered:0 withAccount:a3];
  [(IMDAppleServiceSession *)self refreshRegistration];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)loginServiceSessionWithAccount:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "AppleServiceSession: %@", &v7, 0xCu);
    }
  }

  [(IMDServiceSession *)self refreshServiceCapabilities];
  [(IMDServiceSession *)self serviceSessionDidLoginWithAccount:a3];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logoutServiceSessionWithAccount:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "AppleServiceSession: %@", &v7, 0xCu);
    }
  }

  if ([a3 loginStatus] != 2)
  {
    [a3 setLoginStatus:0 message:0];
    [(IMDServiceSession *)self serviceSessionDidLogoutWithAccount:a3];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAccount:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    v23 = 2112;
    v24 = a3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Client requested re-authenticate (Environment: %@) account: %@", buf, 0x16u);
  }

  if ([a3 length])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(IMDServiceSession *)self accounts];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v17;
      *&v8 = 138412290;
      v15 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([objc_msgSend(v12 accountID])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [MEMORY[0x277D19298] registration];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v15;
                v22 = v12;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Found account to re-authenticate account: %@", buf, 0xCu);
              }

              [objc_msgSend(v12 "idsAccount")];
            }
          }
        }

        v9 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerAccount:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Client requested re-register (Environment: %@)", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(IMDServiceSession *)self accounts];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    *&v8 = 138412290;
    v15 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([objc_msgSend(v12 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v22 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Found account to re-register account: %@", buf, 0xCu);
            }

            [objc_msgSend(v12 "idsAccount")];
          }
        }
      }

      v9 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAccount:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = [objc_msgSend(MEMORY[0x277D07DB0] "sharedInstance")];
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Client requested de-register (Environment: %@)", buf, 0xCu);
  }

  v6 = [(IMDServiceSession *)self account];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = self;
  v7 = [(IMDServiceSession *)self accounts];
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([(NSString *)[(IMDAccount *)v12 accountID] isEqualToString:a3])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v22 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Found account to de-register account: %@", buf, 0xCu);
            }

            [-[IMDAccount idsAccount](v12 "idsAccount")];
            v6 = v12;
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(IMDAppleServiceSession *)v15 _updateAccountStatusToUnregistered:1 withAccount:v6];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)passwordUpdatedWithAccount:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = a3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Client requested password updated (account: %@)", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(IMDServiceSession *)self accounts];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    *&v8 = 138412290;
    v15 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([objc_msgSend(v12 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v22 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Found account to update password account: %@", buf, 0xCu);
            }

            [objc_msgSend(v12 "idsAccount")];
          }
        }
      }

      v9 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateAuthorizationCredentials:(id)a3 token:(id)a4 account:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = a5;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Client updateAuthorizationCredentials (account: %@)", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(IMDServiceSession *)self accounts];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v21;
    *&v12 = 138412290;
    v19 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([objc_msgSend(v16 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v19;
              v26 = v16;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Found account to updateAuthorizationCredentials: %@", buf, 0xCu);
            }

            [objc_msgSend(v16 "idsAccount")];
          }
        }
      }

      v13 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (int64_t)_validationStatusForAlias:(id)a3 onAccount:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  result = [a3 length];
  if (result)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(IMDAppleServiceSession *)self _aliasesForIDSAccount:a4, 0];
    result = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v16;
      v11 = *MEMORY[0x277D18A88];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(v13 objectForKey:{v11), "isEqualToString:", a3}])
          {
            result = [objc_msgSend(v13 objectForKey:{*MEMORY[0x277D18A90]), "intValue"}];
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        result = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_aliasStringsForIDSAccount:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(IMDAppleServiceSession *)self _aliasesForIDSAccount:a3, 0];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = *MEMORY[0x277D18A88];
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) objectForKey:v10];
        if ([v12 length])
        {
          if (MEMORY[0x231897A50](v12))
          {
            v12 = IMCanonicalizeFormattedString();
          }

          [v5 addObject:v12];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  result = v5;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_aliases
{
  v3 = [(IMDAppleServiceSession *)self idsAccount];

  return [(IMDAppleServiceSession *)self _aliasesForIDSAccount:v3];
}

- (id)_aliasesForIDSAccount:(id)a3
{
  v3 = [a3 aliases];

  return [v3 __imArrayByApplyingBlock:&unk_283F1B4E8];
}

- (void)removeAliases:(id)a3 account:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = a3;
    v33 = 2112;
    v34 = a4;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Client request to remove aliases: %@ account: %@", buf, 0x16u);
  }

  v7 = [(IMDAppleServiceSession *)self idsAccount];
  v8 = [(IMDServiceSession *)self account];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = self;
  v9 = [(IMDServiceSession *)self accounts];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ([(NSString *)[(IMDAccount *)v14 accountID] isEqualToString:a4])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = [(IMDAccount *)v14 idsAccount];
            v15 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v32 = a3;
              v33 = 2112;
              v34 = v14;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Found account to remove aliases: %@  account: %@", buf, 0x16u);
            }

            v8 = v14;
          }
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v16 = [a3 __imArrayByApplyingBlock:&unk_283F1B508];
  if ([v16 count])
  {
    v17 = [-[IMDAppleServiceSession _aliasesForIDSAccount:](v24 _aliasesForIDSAccount:{v7), "count"}];
    if (v17 - 1 >= 0)
    {
      v18 = v17;
      v19 = *MEMORY[0x277D18A88];
      v20 = *MEMORY[0x277D19408];
      while (1)
      {
        v21 = [objc_msgSend(-[IMDAppleServiceSession _aliasesForIDSAccount:](v24 _aliasesForIDSAccount:{v7), "objectAtIndex:", --v18), "objectForKey:", v19}];
        if ([v16 containsObject:v21])
        {
          v22 = [(NSDictionary *)[(IMDAccount *)v8 accountDefaults] objectForKey:v20];
          if ([v22 length])
          {
            if ([v22 isEqualToString:v21])
            {
              break;
            }
          }
        }

        if (v18 <= 0)
        {
          goto LABEL_24;
        }
      }

      -[IMDAccount writeAccountDefaults:](v8, "writeAccountDefaults:", [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CBEB68] forKey:{"null"), v20}]);
    }

LABEL_24:
    [(IDSAccount *)v7 removeAliases:v16];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addAliases:(id)a3 account:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = a3;
    v25 = 2112;
    v26 = a4;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Client request to add aliases: %@  account: %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(IMDServiceSession *)self accounts];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
    *&v10 = 138412546;
    v17 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([objc_msgSend(v14 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v24 = a3;
              v25 = 2112;
              v26 = v14;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Found account to add aliases: %@  account: %@", buf, 0x16u);
            }

            [objc_msgSend(v14 "idsAccount")];
          }
        }
      }

      v11 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)validateAliases:(id)a3 account:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = a3;
    v25 = 2112;
    v26 = a4;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Client request to validate: %@  account: %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(IMDServiceSession *)self accounts];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
    *&v10 = 138412546;
    v17 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([objc_msgSend(v14 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v24 = a3;
              v25 = 2112;
              v26 = v14;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Found account to validate aliases: %@  account: %@", buf, 0x16u);
            }

            [objc_msgSend(v14 "idsAccount")];
          }
        }
      }

      v11 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)unvalidateAliases:(id)a3 account:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = a3;
    v25 = 2112;
    v26 = a4;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Client request to unvalidate: %@  account: %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(IMDServiceSession *)self accounts];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
    *&v10 = 138412546;
    v17 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([objc_msgSend(v14 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v24 = a3;
              v25 = 2112;
              v26 = v14;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Found account to unvalidate aliases: %@  account: %@", buf, 0x16u);
            }

            [objc_msgSend(v14 "idsAccount")];
          }
        }
      }

      v11 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)validateProfileWithAccount:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = a3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Client request to validate profile info: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(IMDServiceSession *)self accounts];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    *&v8 = 138412290;
    v15 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([objc_msgSend(v12 accountID])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [MEMORY[0x277D19298] registration];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v22 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Found account to validate profile info account: %@", buf, 0xCu);
            }

            [objc_msgSend(v12 "idsAccount")];
          }
        }
      }

      v9 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resetCallerIDForIDSAccount:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (-[IMDAppleServiceSession _isDeviceRegisteredForAccount:](self, "_isDeviceRegisteredForAccount:") && [objc_msgSend(a3 "vettedAliases")])
  {
    v5 = [a3 accountInfo];
    v6 = [v5 objectForKey:*MEMORY[0x277D18A98]];
    v7 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = [a3 uniqueID];
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Checking specified caller ID: %@ on account: %@, accountDefaults: %@", &v15, 0x20u);
    }

    if ([v6 length])
    {
      v8 = [(IMDAppleServiceSession *)self validationStatusForAlias:v6 onAccount:a3];
      v9 = [MEMORY[0x277D19298] registration];
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8 == 3)
      {
        if (v10)
        {
          LOWORD(v15) = 0;
          v11 = " Caller ID is valid, registered and in good shape, moving along";
          v12 = v9;
LABEL_11:
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, v11, &v15, 2u);
        }
      }

      else
      {
        if (v10)
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Caller ID isn't validated, try repair if we find another account with the same caller id. clearing caller ID settings for current account", &v15, 2u);
        }

        [(IMDAppleServiceSession *)self tryToRepairCallerID:v6 forIDSAccount:a3];
        [a3 setDisplayName:0];
      }
    }

    else
    {
      v13 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        v11 = "No caller ID specified, moving along";
        v12 = v13;
        goto LABEL_11;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)tryToRepairCallerID:(id)a3 forIDSAccount:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(IMDAppleServiceSession *)self isiMessageServiceIDSAccount:a4])
  {
    v7 = [objc_msgSend(IMPreferredAccountMap() objectForKey:{*MEMORY[0x277D1A620]), "objectForKey:", @"guid"}];
    v8 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v7;
      v31 = 2112;
      v32 = [a4 uniqueID];
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "CallerID Repair - Current preferred account: [%@], account to repair: [%@]", buf, 0x16u);
    }

    if ([v7 isEqualToString:{objc_msgSend(a4, "uniqueID")}])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = [objc_opt_class() idsAccounts];
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        v12 = v10;
        v13 = *v25;
        *&v11 = 138412546;
        v23 = v11;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            if (([v15 isEqual:{a4, v23, v24}] & 1) == 0 && -[IMDAppleServiceSession isiMessageServiceIDSAccount:](self, "isiMessageServiceIDSAccount:", v15))
            {
              v16 = [MEMORY[0x277D19298] registration];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v15 uniqueID];
                v18 = [v15 displayName];
                *buf = v23;
                v30 = v17;
                v31 = 2112;
                v32 = v18;
                _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "CallerID Repair - Found another iMessage account: [%@], displayName: [%@]", buf, 0x16u);
              }

              if ([a3 isEqualToString:{objc_msgSend(v15, "displayName")}])
              {
                IMRegisterForPreferredAccountChangeNotificationsInternal();
                v19 = [MEMORY[0x277D19298] registration];
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [v15 uniqueID];
                  *buf = v23;
                  v30 = a3;
                  v31 = 2112;
                  v32 = v20;
                  _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "CallerID Repair - Found a match for callerID: [%@], update preferred account to: [%@] for iMessage", buf, 0x16u);
                }

                v21 = *MEMORY[0x277D1A620];
                [v15 uniqueID];
                IMUpdatePreferredAccountForService();
              }
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)isiMessageServiceIDSAccount:(id)a3
{
  v3 = [a3 serviceName];

  return [v3 isEqualToString:@"com.apple.madrid"];
}

- (void)refreshRegistration
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [objc_opt_class() idsAccounts];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(IMDAppleServiceSession *)self resetCallerIDForIDSAccount:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reregister
{
  v2 = [(IMDAppleServiceSession *)self idsAccount];

  MEMORY[0x2821F9670](v2, sel__reregisterAndReidentify_);
}

- (void)reIdentify
{
  v2 = [(IMDAppleServiceSession *)self idsAccount];

  MEMORY[0x2821F9670](v2, sel__reregisterAndReidentify_);
}

- (NSArray)vettedAliases
{
  v2 = [(IMDAppleServiceSession *)self idsAccount];

  return [(IDSAccount *)v2 vettedAliases];
}

- (NSArray)aliases
{
  v3 = [(IMDAppleServiceSession *)self idsAccount];

  return [(IMDAppleServiceSession *)self _aliasStringsForIDSAccount:v3];
}

- (int64_t)validationStatusForAlias:(id)a3
{
  [(IMDAppleServiceSession *)self idsAccount];

  return MEMORY[0x2821F9670](self, sel__validationStatusForAlias_onAccount_);
}

- (id)callerURIForMessageGUID:(id)a3 idsAccount:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  if (![a3 length])
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA3BC(v10);
    }

    goto LABEL_18;
  }

  if (!a4)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA378(v14);
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v7 = [+[IMDMessageStore sharedInstance](IMDMessageStore messageWithGUID:"messageWithGUID:", a3];
  if (v7 && (v8 = v7, [objc_msgSend(v7 "destinationCallerID")]))
  {
    v9 = -[IMDAppleServiceSession _findMatchingURI:](self, "_findMatchingURI:", [v8 destinationCallerID]);
    if (v9)
    {
      goto LABEL_19;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = a3;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No message found for message GUID '%@' or no destinationCallerID", &v19, 0xCu);
    }
  }

  v12 = [+[IMDMessageStore sharedInstance](IMDMessageStore chatForMessageGUID:"chatForMessageGUID:", a3];
  v13 = v12;
  if (v12 && [objc_msgSend(v12 "lastAddressedLocalHandle")])
  {
    v9 = -[IMDAppleServiceSession _findMatchingURI:](self, "_findMatchingURI:", [v13 lastAddressedLocalHandle]);
    if (v9)
    {
      goto LABEL_19;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = a3;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "No chat found for message GUID '%@' or no lastAddressedLocalHandle", &v19, 0xCu);
    }
  }

  v9 = [(IMDAppleServiceSession *)self callerURIForIDSAccount:a4];
  if (![v9 length])
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA300(a4, v18);
    }
  }

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_findMatchingURI:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  if (![a3 length])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_28;
    }

    v20 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "No handle provided to find matching URI";
    v18 = v20;
    v19 = 2;
    goto LABEL_27;
  }

  v5 = [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v6 addObjectsFromArray:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "aliases")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = a3;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Checking if local handle '%@' is in registered URIs: %@", buf, 0x16u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v11)
  {
    v12 = *v25;
    v13 = *MEMORY[0x277D18AB8];
    while (2)
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v24 + 1) + 8 * j);
        if (([v15 isEqualToIgnoringCase:v13] & 1) == 0 && objc_msgSend(a3, "isEqualToIgnoringCase:", v15))
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v34 = a3;
              _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Found matching alias: %@", buf, 0xCu);
            }
          }

          result = [a3 _bestGuessURIFromCanicalizedID];
          goto LABEL_33;
        }
      }

      v11 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = a3;
      v17 = "Local handle '%@' not found in registered URIs";
      v18 = v16;
      v19 = 12;
LABEL_27:
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
    }
  }

LABEL_28:
  result = 0;
LABEL_33:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)callerURI
{
  v3 = [(IMDAppleServiceSession *)self idsAccount];

  return [(IMDAppleServiceSession *)self callerURIForIDSAccount:v3];
}

- (id)callerURIForIDSAccount:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  if ([a3 accountType] || (v21 = objc_msgSend(objc_msgSend(a3, "loginID"), "_URIFromCanonicalizedPhoneNumber"), !objc_msgSend(v21, "length")))
  {
    v5 = [a3 im_registeredURIs];
    if ([v5 count])
    {
      v6 = [a3 accountInfo];
      [v6 objectForKey:*MEMORY[0x277D18A98]];
      v7 = [v5 __imArrayByApplyingBlock:&unk_283F1B528];
      v8 = _IDSCopyCallerID();
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v31 = self;
          v32 = 2112;
          v33 = v8;
          v34 = 2112;
          v35 = v7;
          v36 = 2112;
          v37 = a3;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "%@ callerID - choosing %@ from %@, idsAccount %@", buf, 0x2Au);
        }
      }

      v10 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v31 = self;
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v7;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "%@ callerID - choosing %@ from %@", buf, 0x20u);
      }

      v11 = [v8 lowercaseString];
      v12 = [(IMDAppleServiceSession *)self _aliasStringsForIDSAccount:a3];
      v13 = [v11 length];
      v14 = MEMORY[0x277D18AB8];
      if (v13 && [v12 containsObject:v11] && !objc_msgSend(v11, "_appearsToBeDSID") || (v27 = 0u, v28 = 0u, v25 = 0u, v26 = 0u, (v15 = objc_msgSend(v12, "countByEnumeratingWithState:objects:count:", &v25, v29, 16)) == 0))
      {
LABEL_20:
        v19 = v11;
      }

      else
      {
        v16 = *v26;
        v17 = *v14;
LABEL_13:
        v18 = 0;
        while (1)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v25 + 1) + 8 * v18);
          if (([v19 isEqualToIgnoringCase:v17] & 1) == 0 && !objc_msgSend(v19, "_appearsToBeDSID"))
          {
            break;
          }

          if (v15 == ++v18)
          {
            v15 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v15)
            {
              goto LABEL_13;
            }

            goto LABEL_20;
          }
        }
      }

      if (([v5 containsObject:v19] & 1) == 0)
      {
        if ([0 isEqualToIgnoringCase:*v14])
        {
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v31 = 0;
              v32 = 2112;
              v33 = v5;
              _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, " ** Selected display ID: %@  was not in URIs set: %@", buf, 0x16u);
            }
          }
        }

        v19 = [v5 __imFirstObject];
      }

      v21 = [v19 _URIFromFZIDType:{objc_msgSend(v19, "_FZBestGuessFZIDType")}];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v31 = a3;
          v32 = 2112;
          v33 = [a3 registeredURIs];
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "callerURI - No bindings !!, idsAccount %@ registeredURIs %@", buf, 0x16u);
        }
      }

      v21 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)idsAccounts
{
  if (qword_281421308 != -1)
  {
    sub_22B7DA400();
  }

  v2 = [qword_281421310 accounts];
  if (![objc_msgSend(qword_281421318 "accounts")])
  {
    return v2;
  }

  return MEMORY[0x2821F9670](v2, sel_setByAddingObjectsFromSet_);
}

- (id)idsAccountForURI:(id)a3 IDSServiceName:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [objc_opt_class() idsAccounts];
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v8)
  {
    v10 = *v20;
    *&v9 = 138412546;
    v18 = v9;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([objc_msgSend(v12 serviceName] && (v13 = objc_msgSend(v12, "im_registeredURIs"), objc_msgSend(a3, "_stripFZIDPrefix"), objc_msgSend(v13, "containsObject:", IMCanonicalizeFormattedString())))
        {
          if ([v12 canSend])
          {
            v7 = v12;
            goto LABEL_20;
          }

          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = v18;
              v24 = v12;
              v25 = 2112;
              v26 = a3;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "IDS Account (%@) registered for: %@ but registration status was wrong. Saving for later", buf, 0x16u);
            }
          }

          v7 = v12;
        }

        else if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v24 = v7;
            v25 = 2112;
            v26 = a3;
            v27 = 2112;
            v28 = a4;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "IDS Account (%@) not registered for: %@, serviceName: %@, moving on", buf, 0x20u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)handler:(id)a3 outgoingPlainTextMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 messageGUID:(id)a8 timeStamp:(id)a9 isBeingReplayed:(BOOL)a10 storageContext:(id)a11
{
  v16 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = [[(IMDServiceSession *)self service] internalName];
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Outgoing plain text messages are unsupported on %@.", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)chatForOutgoingMessage:(id)a3 fromIdentifier:(id)a4 isInProxyMode:(BOOL)a5 createIfNotExists:(BOOL)a6
{
  v51 = a6;
  v6 = a5;
  v79 = *MEMORY[0x277D85DE8];
  v9 = [(IMDServiceSession *)self service];
  v55 = a3;
  if ([(IMDService *)v9 supportsCapability:*MEMORY[0x277D1A560]])
  {
    v10 = [a3 objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v53 = [v10 objectForKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
  }

  else
  {
    v53 = 0;
  }

  v11 = [(IMDServiceSession *)self service];
  if ([(IMDService *)v11 supportsCapability:*MEMORY[0x277D1A558]])
  {
    v12 = a3;
    v13 = [a3 objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v52 = [v13 objectForKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];
    v14 = [a3 objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v54 = [v14 objectForKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
  }

  else
  {
    v54 = 0;
    v52 = 0;
    v12 = a3;
  }

  obj = [objc_msgSend(v12 objectForKey:{IMDCTMessageDictionaryReceipientsKey), "__imArrayByApplyingBlock:", &unk_283F1B568}];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = obj;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "ChatForOutgoingMessage recipients %@", buf, 0xCu);
    }
  }

  v16 = [+[IMDRelayServiceController sharedInstance](IMDRelayServiceController _isDefaultPairedDeviceRelayingLocally:"_isDefaultPairedDeviceRelayingLocally:", a4];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v17 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v17)
  {
    v18 = v16 || v6;
    v19 = *v67;
    if (v16 || v6)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    if (v16)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v57 = v21;
    v58 = v20;
    if (v6)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v67 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [objc_msgSend(MEMORY[0x277D18998] "sharedInstance")];
        v25 = IMOSLoggingEnabled();
        if (((v24 ^ 1 | v18) & 1) == 0)
        {
          if (v25)
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "One of the recipients of this outgoing message is an emergency number, Not processing message", buf, 2u);
            }
          }

          v34 = 0;
          goto LABEL_73;
        }

        if (v25)
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v27 = @"NO";
            if (v24)
            {
              v27 = @"YES";
            }

            *&buf[4] = v27;
            v72 = 2112;
            v73 = v58;
            v74 = 2112;
            v75 = v57;
            v76 = 2112;
            v77 = v22;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Will send SMS, recipient is Emergency %@, shouldRelayEmergencyTextFromPairedDevice: %@, isDefaultPairedDeviceRelayingLocally: %@, isInProxyMode %@ ", buf, 0x2Au);
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v59 = _ChatStyleFromChatStyleString([v55 objectForKey:IMDRelayMessageDictionaryChatStyleKey]);
  v65 = v59;
  if (v59 == 45)
  {
    v29 = [obj __imFirstObject];
    *buf = v29;
    v30 = MEMORY[0x277CBEAC0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:2];
    [v28 addObject:{objc_msgSend(v30, "dictionaryWithObjectsAndKeys:", v31, *MEMORY[0x277D192F8], v29, *MEMORY[0x277D193A8], 0)}];
    v32 = -[IMDChatRegistry existingChatForID:account:](+[IMDChatRegistry sharedInstance](IMDChatRegistry, "sharedInstance"), "existingChatForID:account:", [obj __imFirstObject], -[IMDServiceSession account](self, "account"));
LABEL_53:
    v34 = v32;
    goto LABEL_54;
  }

  *buf = [+[IMDChatRegistry sharedInstance](IMDChatRegistry generateUnusedChatIdentifierForGroupChatWithAccount:"generateUnusedChatIdentifierForGroupChatWithAccount:", [(IMDServiceSession *)self account]];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v35 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v35)
  {
    v36 = *v62;
    v37 = *MEMORY[0x277D192F8];
    v38 = *MEMORY[0x277D193A8];
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v62 != v36)
        {
          objc_enumerationMutation(obj);
        }

        [v28 addObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", 2), v37, *(*(&v61 + 1) + 8 * j), v38, 0)}];
      }

      v35 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v35);
  }

  v40 = +[IMDChatRegistry sharedInstance];
  v41 = [(IMDServiceSession *)self account];
  if ([[(IMDServiceSession *)self service] groupsMergeDisplayNames])
  {
    v42 = v53;
  }

  else
  {
    v42 = 0;
  }

  v34 = [(IMDChatRegistry *)v40 existingChatForIDs:obj account:v41 displayName:v42 groupID:v52 style:43];
  if (!v34 && v54)
  {
    v43 = +[IMDChatRegistry sharedInstance];
    v44 = [(IMDServiceSession *)self account];
    if ([[(IMDServiceSession *)self service] groupsMergeDisplayNames])
    {
      v45 = v53;
    }

    else
    {
      v45 = 0;
    }

    v32 = [(IMDChatRegistry *)v43 existingChatForIDs:obj account:v44 displayName:v45 originalGroupID:v54 style:43];
    goto LABEL_53;
  }

LABEL_54:
  if (v34)
  {
    *buf = [v34 chatIdentifier];
    v65 = [v34 style];
  }

  else
  {
    [(IMDServiceSession *)self canonicalizeChatIdentifier:buf style:&v65];
    if (v51)
    {
      [(IMDServiceSession *)self didJoinChat:*buf style:v65 displayName:v53 groupID:v52 originalGroupID:v54 handleInfo:v28];
      v46 = +[IMDChatRegistry sharedInstance];
      if (v59 == 45)
      {
        v47 = -[IMDChatRegistry existingChatForID:account:](v46, "existingChatForID:account:", [obj __imFirstObject], -[IMDServiceSession account](self, "account"));
      }

      else
      {
        v47 = [(IMDChatRegistry *)v46 existingChatForIDs:obj account:[(IMDServiceSession *)self account] displayName:v53 groupID:v52 style:43];
      }

      v34 = v47;
    }

    else
    {
      v34 = 0;
    }
  }

  if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")])
  {
    if (!v54)
    {
      goto LABEL_72;
    }

    v48 = *MEMORY[0x277D19780];
    if (([objc_msgSend(v34 identifiersForDomain:{*MEMORY[0x277D19780]), "containsObject:", v54}] & 1) != 0 || !-[IMDServiceSession allowedToOverwriteOriginalGroupIDForChat:](self, "allowedToOverwriteOriginalGroupIDForChat:", v34))
    {
      goto LABEL_72;
    }

    [v34 assignIdentifier:v54 forDomain:v48 isHistoricalIdentifier:1];
  }

  else
  {
    if (!v54 || ([objc_msgSend(v34 "originalGroupID")] & 1) != 0 || !-[IMDServiceSession allowedToOverwriteOriginalGroupIDForChat:](self, "allowedToOverwriteOriginalGroupIDForChat:", v34))
    {
      goto LABEL_72;
    }

    [v34 setOriginalGroupID:v54];
  }

  [+[IMDChatStore sharedInstance](IMDChatStore storeChat:"storeChat:", v34];
  [-[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](self broadcasterForChatListenersWithBlackholeStatus:{objc_msgSend(v34, "isBlackholed")), "chat:updated:", objc_msgSend(v34, "guid"), objc_msgSend(v34, "dictionaryRepresentation")}];
LABEL_72:

LABEL_73:
  v49 = *MEMORY[0x277D85DE8];
  return v34;
}

@end