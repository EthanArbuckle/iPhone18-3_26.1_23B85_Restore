@interface IMDAccount
- (BOOL)_isUsableForSending;
- (BOOL)canMakeDowngradeRoutingChecks;
- (BOOL)isActive;
- (BOOL)isDisabled;
- (BOOL)isSMSRelayCapable;
- (BOOL)wasDisabledAutomatically;
- (IMDAccount)initWithAccountID:(id)a3 defaults:(id)a4 service:(id)a5;
- (NSArray)aliases;
- (NSArray)replicationSessions;
- (NSDictionary)registrationAlertInfo;
- (NSString)loginID;
- (id)_registrationInfo;
- (id)accountInfoToPost;
- (id)description;
- (id)profileInfo;
- (int)registrationError;
- (int64_t)accountType;
- (int64_t)profileValidationStatus;
- (int64_t)registrationStatus;
- (void)_createReplicationSessionsIfNecessary;
- (void)createSessionIfNecessary;
- (void)dealloc;
- (void)postAccountCapabilities;
- (void)releaseSession;
- (void)resetReplicationSessions;
- (void)setIsManaged:(BOOL)a3;
- (void)writeAccountDefaults:(id)a3;
@end

@implementation IMDAccount

- (id)accountInfoToPost
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(IMDAccount *)self accountID];
  if (v4)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19688], v4);
  }

  v5 = [(IMDAccount *)self accountDefaults];
  v6 = [v5 count];

  if (v6)
  {
    v7 = *MEMORY[0x277D19678];
    v8 = [(IMDAccount *)self accountDefaults];
    CFDictionarySetValue(v3, v7, v8);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[IMDServiceSession capabilities](self->_session, "capabilities")}];
  if (v9)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19670], v9);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDAccount loginStatus](self, "loginStatus")}];
  if (v10)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19690], v10);
  }

  v11 = [(IMDAccount *)self serviceLoginStatusMessage];
  if (v11)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19698], v11);
  }

  v12 = [(IMDServiceSession *)self->_session buddyProperties];
  v13 = [v12 copy];

  if ([v13 count])
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19668], v13);
  }

  v14 = [(IMDServiceSession *)self->_session groups];
  v15 = [v14 count];

  if (v15)
  {
    v16 = *MEMORY[0x277D19680];
    v17 = [(IMDServiceSession *)self->_session groups];
    CFDictionarySetValue(v3, v16, v17);
  }

  return v3;
}

- (BOOL)isActive
{
  v3 = +[IMDAccountController sharedAccountController];
  v4 = [(IMDAccount *)self accountID];
  v5 = [v3 isAccountActive:v4];

  return v5;
}

- (NSString)loginID
{
  v3 = [(IMDAccount *)self accountDefaults];
  v4 = [v3 objectForKey:*MEMORY[0x277D19420]];

  loginID = self->_loginID;
  p_loginID = &self->_loginID;
  if (![(NSString *)loginID isEqualToString:v4])
  {
    objc_storeStrong(p_loginID, v4);
  }

  v7 = *p_loginID;
  v8 = v7;

  return v7;
}

- (IMDAccount)initWithAccountID:(id)a3 defaults:(id)a4 service:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = IMDAccount;
  v12 = [(IMDAccount *)&v24 init];
  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v26 = v9;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Creating account id: %@    defaults: %@    on service: %@", buf, 0x20u);
      }
    }

    objc_storeStrong(&v12->_accountID, a3);
    objc_storeStrong(&v12->_service, a5);
    v14 = [MEMORY[0x277D192A8] sharedInstance];
    [v14 addListener:v12];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = [v10 mutableCopy];
      accountDefaults = v12->_accountDefaults;
      v12->_accountDefaults = v15;
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v20 = v12->_accountDefaults;
      v12->_accountDefaults = v19;

      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = objc_opt_class();
          *buf = 138412546;
          v26 = v10;
          v27 = 2112;
          v28 = v22;
          v23 = v22;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "IMDAccount: incoming 'defaults' is not a dictionary, %@, %@", buf, 0x16u);
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D192A8] sharedInstance];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = IMDAccount;
  [(IMDAccount *)&v4 dealloc];
}

- (int64_t)accountType
{
  v3 = [(IMDAccount *)self loginID];
  v4 = [v3 rangeOfString:@"P:"];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 2;
  }

  v5 = [(IMDAccount *)self service];
  v6 = [v5 supportsAuthorization];

  return v6;
}

- (void)setIsManaged:(BOOL)a3
{
  v5 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v7 = [v5 dictionaryWithObject:v6 forKey:*MEMORY[0x277D19428]];
  [(IMDAccount *)self writeAccountDefaults:v7];

  self->_managed = a3;
}

- (BOOL)canMakeDowngradeRoutingChecks
{
  if ([(IMDAccount *)self accountType]!= 2)
  {
    return 0;
  }

  v3 = [(IMDAccount *)self service];
  v4 = [v3 supportsCapability:*MEMORY[0x277D1A5D0]];

  return v4;
}

- (BOOL)wasDisabledAutomatically
{
  v2 = [(IMDAccount *)self accountDefaults];
  v3 = [v2 objectForKey:@"AccountManaged"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isDisabled
{
  v3 = +[IMDLocalDaemon sharedDaemon];
  v4 = [v3 parentalControls];
  LOBYTE(self) = [v4 disableAccount:self];

  return self;
}

- (void)writeAccountDefaults:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = self;
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ - write account defaults: %@", buf, 0x16u);
    }
  }

  if ([v4 count])
  {
    v6 = [v4 mutableCopy];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v4 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v4 objectForKey:v11];
          if ([v12 isNull] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v12, "length"))
          {
            [v6 removeObjectForKey:v11];
            [(NSMutableDictionary *)self->_accountDefaults removeObjectForKey:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [(NSMutableDictionary *)self->_accountDefaults addEntriesFromDictionary:v6];
  }

  v13 = +[IMDBroadcastController sharedProvider];
  v14 = [(IMDAccount *)self service];
  v15 = [v13 broadcasterForListenersSupportingService:v14];
  v16 = [(IMDAccount *)self accountID];
  v17 = [(IMDAccount *)self accountDefaults];
  v18 = [v17 copy];
  [v15 account:v16 defaultsChanged:v18];

  v19 = [(IMDAccount *)self session];
  [v19 accountDefaultsChanged:v4];

  if ([v4 count] && !-[IMDAccount isLoading](self, "isLoading") && !-[IMDAccount isManaged](self, "isManaged"))
  {
    v20 = [(IMDAccount *)self service];
    [v20 delayedSaveSettings];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)postAccountCapabilities
{
  context = objc_autoreleasePoolPush();
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [(IMDAccount *)self service];
  v15 = [v3 broadcasterForListenersSupportingService:v4];

  v5 = [(IMDAccount *)self session];
  v6 = [(IMDAccount *)self accountID];
  v7 = [(IMDAccount *)self accountDefaults];
  v8 = [v5 blockList];
  v9 = [v5 allowList];
  v10 = [v5 blockingMode];
  v11 = [v5 blockIdleStatus];
  v12 = [v5 capabilities];
  v13 = [(IMDAccount *)self loginStatus];
  v14 = [(IMDAccount *)self serviceLoginStatusMessage];
  [v15 account:v6 defaults:v7 blockList:v8 allowList:v9 blockingMode:v10 blockIdleStatus:v11 status:0 capabilities:v12 serviceLoginStatus:v13 loginStatusMessage:v14];

  objc_autoreleasePoolPop(context);
}

- (void)createSessionIfNecessary
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(IMDAccount *)self isDisabled])
  {
    v3 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "%@: Account is restricted, not creating session", &v23, 0xCu);
    }

LABEL_27:

    goto LABEL_28;
  }

  if ([(IMDAccount *)self wasDisabledAutomatically])
  {
    [(IMDAccount *)self setWasDisabledAutomatically:0];
  }

  v4 = [(IMDAccount *)self session];

  if (!v4)
  {
    v5 = [(IMDAccount *)self service];
    v3 = [v5 mainService];

    if ([v3 supportsOneSessionForAllAccounts])
    {
      v6 = [IMDServiceSession existingServiceSessionForService:v3];
      [(IMDAccount *)self setSession:v6];
    }

    if (self->_session)
    {
      v7 = [(IMDAccount *)self session];
      [v7 addAccount:self];

      v8 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        session = self->_session;
        v23 = 138412546;
        v24 = self;
        v25 = 2112;
        v26 = session;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "%@: Reused existing session: %@", &v23, 0x16u);
      }
    }

    else
    {
      v10 = [objc_alloc(-[NSObject sessionClass](v3 "sessionClass"))];
      [(IMDAccount *)self setSession:v10];

      v8 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_session;
        v12 = [v3 internalName];
        v13 = NSStringFromClass([v3 sessionClass]);
        v23 = 138413058;
        v24 = self;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "%@: Created active session: %@ of service type: %@   (Session class: %@)", &v23, 0x2Au);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = self;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "%@: Telling session it became active", &v23, 0xCu);
      }
    }

    v15 = [(IMDAccount *)self session];
    [v15 sessionDidBecomeActive];

    v16 = [(IMDAccount *)self service];
    v17 = [v16 shouldForceAccountsConnected];

    if (v17)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          v24 = self;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "%@: Forcing login", &v23, 0xCu);
        }
      }

      v19 = [(IMDAccount *)self session];
      [v19 login];
    }

    v20 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(IMDAccount *)self session];
      v23 = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "%@: Done setting up session: %@", &v23, 0x16u);
    }

    goto LABEL_27;
  }

LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_createReplicationSessionsIfNecessary
{
  v42 = *MEMORY[0x277D85DE8];
  if (!self->_replicationSessions)
  {
    v4 = [(IMDAccount *)self session];
    if (v4)
    {
      v5 = [(IMDAccount *)self service];
      v6 = [v5 mainService];
      v7 = [v6 replicationServices];
      v8 = [v7 count];

      if (v8)
      {
        v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v9 = [(IMDAccount *)self service];
        v10 = [v9 mainService];
        v11 = [v10 replicationServices];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = v11;
        v12 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v12)
        {
          v14 = *v32;
          *&v13 = 138412802;
          v28 = v13;
          do
          {
            v15 = 0;
            do
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v31 + 1) + 8 * v15);
              v17 = +[IMDAccountController sharedAccountController];
              v18 = [v17 activeAccountsForService:v16];

              v19 = [(IMDAccount *)self session];
              v20 = [v19 preferredAccountForReplicationOnService:v16 eligibleAccounts:v18];

              if (v20)
              {
                v21 = objc_alloc([v16 sessionClass]);
                v22 = [(IMDAccount *)self session];
                v23 = [v21 initWithAccount:v20 service:v16 replicatingForSession:v22];

                [v23 sessionDidBecomeActive];
                [v30 addObject:v23];
              }

              else if (IMOSLoggingEnabled())
              {
                v24 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  v25 = [(IMDAccount *)self loginID];
                  *buf = v28;
                  v36 = self;
                  v37 = 2112;
                  v38 = v16;
                  v39 = 2112;
                  v40 = v25;
                  _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Cannot create replication session for %@, no account found for %@ (loginID: %@)", buf, 0x20u);
                }
              }

              ++v15;
            }

            while (v12 != v15);
            v12 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v12);
        }

        v26 = [v30 copy];
        replicationSessions = self->_replicationSessions;
        self->_replicationSessions = v26;
      }
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)releaseSession
{
  v3 = [(IMDAccount *)self session];
  [v3 sessionWillBecomeInactiveWithAccount:self];

  [(IMDAccount *)self setSession:0];
}

- (NSArray)replicationSessions
{
  [(IMDAccount *)self createSessionIfNecessary];
  [(IMDAccount *)self _createReplicationSessionsIfNecessary];
  replicationSessions = self->_replicationSessions;

  return replicationSessions;
}

- (void)resetReplicationSessions
{
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting replication session for %@", &v7, 0xCu);
    }
  }

  replicationSessions = self->_replicationSessions;
  self->_replicationSessions = 0;

  v5 = [(IMDAccount *)self session];
  [v5 _replicationSessionsChanged];

  v6 = *MEMORY[0x277D85DE8];
}

- (NSArray)aliases
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [(IMDAccount *)self accountDefaults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D193F0]];

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = *MEMORY[0x277D193E8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:{v9, v17}];
        v12 = [v11 lowercaseString];
        v13 = [v12 trimmedString];

        if (v13)
        {
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 allObjects];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_registrationInfo
{
  v2 = [(IMDAccount *)self accountDefaults];
  v3 = [v2 objectForKey:*MEMORY[0x277D19468]];

  return v3;
}

- (int64_t)registrationStatus
{
  v2 = [(IMDAccount *)self _registrationInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D19470]];
  v4 = [v3 intValue];

  return v4;
}

- (int)registrationError
{
  v2 = [(IMDAccount *)self _registrationInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D19460]];
  v4 = [v3 intValue];

  return v4;
}

- (NSDictionary)registrationAlertInfo
{
  v2 = [(IMDAccount *)self _registrationInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D19458]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMDAccount *)self accountID];
  v5 = [(IMDAccount *)self service];
  v6 = [v3 stringWithFormat:@"<IMDAccount:%p, ID:%@, Service:%@ >", self, v4, v5];

  return v6;
}

- (id)profileInfo
{
  v2 = [(IMDAccount *)self accountDefaults];
  v3 = [v2 objectForKey:*MEMORY[0x277D19430]];

  return v3;
}

- (int64_t)profileValidationStatus
{
  v2 = [(IMDAccount *)self profileInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D19438]];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)isSMSRelayCapable
{
  v2 = [(IMDAccount *)self accountDefaults];
  v3 = [v2 objectForKey:*MEMORY[0x277D19000]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)_isUsableForSending
{
  v3 = MEMORY[0x277D1A898];
  v4 = +[IMDAccountController sharedInstance];
  v5 = [v4 accounts];
  LOBYTE(self) = [v3 isAccountUsableForSendingWithAllAccounts:v5 account:self];

  return self;
}

@end