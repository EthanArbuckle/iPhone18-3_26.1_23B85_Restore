@interface IMDAccount
- (BOOL)_isUsableForSending;
- (BOOL)canMakeDowngradeRoutingChecks;
- (BOOL)isActive;
- (BOOL)isDisabled;
- (BOOL)isSMSRelayCapable;
- (BOOL)wasDisabledAutomatically;
- (IMDAccount)initWithAccountID:(id)d defaults:(id)defaults service:(id)service;
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
- (void)setIsManaged:(BOOL)managed;
- (void)writeAccountDefaults:(id)defaults;
@end

@implementation IMDAccount

- (id)accountInfoToPost
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  accountID = [(IMDAccount *)self accountID];
  if (accountID)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19688], accountID);
  }

  accountDefaults = [(IMDAccount *)self accountDefaults];
  v6 = [accountDefaults count];

  if (v6)
  {
    v7 = *MEMORY[0x277D19678];
    accountDefaults2 = [(IMDAccount *)self accountDefaults];
    CFDictionarySetValue(v3, v7, accountDefaults2);
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

  serviceLoginStatusMessage = [(IMDAccount *)self serviceLoginStatusMessage];
  if (serviceLoginStatusMessage)
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19698], serviceLoginStatusMessage);
  }

  buddyProperties = [(IMDServiceSession *)self->_session buddyProperties];
  v13 = [buddyProperties copy];

  if ([v13 count])
  {
    CFDictionarySetValue(v3, *MEMORY[0x277D19668], v13);
  }

  groups = [(IMDServiceSession *)self->_session groups];
  v15 = [groups count];

  if (v15)
  {
    v16 = *MEMORY[0x277D19680];
    groups2 = [(IMDServiceSession *)self->_session groups];
    CFDictionarySetValue(v3, v16, groups2);
  }

  return v3;
}

- (BOOL)isActive
{
  v3 = +[IMDAccountController sharedAccountController];
  accountID = [(IMDAccount *)self accountID];
  v5 = [v3 isAccountActive:accountID];

  return v5;
}

- (NSString)loginID
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v4 = [accountDefaults objectForKey:*MEMORY[0x277D19420]];

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

- (IMDAccount)initWithAccountID:(id)d defaults:(id)defaults service:(id)service
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  defaultsCopy = defaults;
  serviceCopy = service;
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
        v26 = dCopy;
        v27 = 2112;
        v28 = defaultsCopy;
        v29 = 2112;
        v30 = serviceCopy;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Creating account id: %@    defaults: %@    on service: %@", buf, 0x20u);
      }
    }

    objc_storeStrong(&v12->_accountID, d);
    objc_storeStrong(&v12->_service, service);
    mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
    [mEMORY[0x277D192A8] addListener:v12];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = [defaultsCopy mutableCopy];
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
          v26 = defaultsCopy;
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
  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

  v4.receiver = self;
  v4.super_class = IMDAccount;
  [(IMDAccount *)&v4 dealloc];
}

- (int64_t)accountType
{
  loginID = [(IMDAccount *)self loginID];
  v4 = [loginID rangeOfString:@"P:"];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 2;
  }

  service = [(IMDAccount *)self service];
  supportsAuthorization = [service supportsAuthorization];

  return supportsAuthorization;
}

- (void)setIsManaged:(BOOL)managed
{
  v5 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v7 = [v5 dictionaryWithObject:v6 forKey:*MEMORY[0x277D19428]];
  [(IMDAccount *)self writeAccountDefaults:v7];

  self->_managed = managed;
}

- (BOOL)canMakeDowngradeRoutingChecks
{
  if ([(IMDAccount *)self accountType]!= 2)
  {
    return 0;
  }

  service = [(IMDAccount *)self service];
  v4 = [service supportsCapability:*MEMORY[0x277D1A5D0]];

  return v4;
}

- (BOOL)wasDisabledAutomatically
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKey:@"AccountManaged"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isDisabled
{
  v3 = +[IMDLocalDaemon sharedDaemon];
  parentalControls = [v3 parentalControls];
  LOBYTE(self) = [parentalControls disableAccount:self];

  return self;
}

- (void)writeAccountDefaults:(id)defaults
{
  v31 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v29 = 2112;
      v30 = defaultsCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ - write account defaults: %@", buf, 0x16u);
    }
  }

  if ([defaultsCopy count])
  {
    v6 = [defaultsCopy mutableCopy];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    allKeys = [defaultsCopy allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [defaultsCopy objectForKey:v11];
          if ([v12 isNull] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v12, "length"))
          {
            [v6 removeObjectForKey:v11];
            [(NSMutableDictionary *)self->_accountDefaults removeObjectForKey:v11];
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [(NSMutableDictionary *)self->_accountDefaults addEntriesFromDictionary:v6];
  }

  v13 = +[IMDBroadcastController sharedProvider];
  service = [(IMDAccount *)self service];
  v15 = [v13 broadcasterForListenersSupportingService:service];
  accountID = [(IMDAccount *)self accountID];
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v18 = [accountDefaults copy];
  [v15 account:accountID defaultsChanged:v18];

  session = [(IMDAccount *)self session];
  [session accountDefaultsChanged:defaultsCopy];

  if ([defaultsCopy count] && !-[IMDAccount isLoading](self, "isLoading") && !-[IMDAccount isManaged](self, "isManaged"))
  {
    service2 = [(IMDAccount *)self service];
    [service2 delayedSaveSettings];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)postAccountCapabilities
{
  context = objc_autoreleasePoolPush();
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDAccount *)self service];
  v15 = [v3 broadcasterForListenersSupportingService:service];

  session = [(IMDAccount *)self session];
  accountID = [(IMDAccount *)self accountID];
  accountDefaults = [(IMDAccount *)self accountDefaults];
  blockList = [session blockList];
  allowList = [session allowList];
  blockingMode = [session blockingMode];
  blockIdleStatus = [session blockIdleStatus];
  capabilities = [session capabilities];
  loginStatus = [(IMDAccount *)self loginStatus];
  serviceLoginStatusMessage = [(IMDAccount *)self serviceLoginStatusMessage];
  [v15 account:accountID defaults:accountDefaults blockList:blockList allowList:allowList blockingMode:blockingMode blockIdleStatus:blockIdleStatus status:0 capabilities:capabilities serviceLoginStatus:loginStatus loginStatusMessage:serviceLoginStatusMessage];

  objc_autoreleasePoolPop(context);
}

- (void)createSessionIfNecessary
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(IMDAccount *)self isDisabled])
  {
    registration = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      selfCopy6 = self;
      _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "%@: Account is restricted, not creating session", &v23, 0xCu);
    }

LABEL_27:

    goto LABEL_28;
  }

  if ([(IMDAccount *)self wasDisabledAutomatically])
  {
    [(IMDAccount *)self setWasDisabledAutomatically:0];
  }

  session = [(IMDAccount *)self session];

  if (!session)
  {
    service = [(IMDAccount *)self service];
    registration = [service mainService];

    if ([registration supportsOneSessionForAllAccounts])
    {
      v6 = [IMDServiceSession existingServiceSessionForService:registration];
      [(IMDAccount *)self setSession:v6];
    }

    if (self->_session)
    {
      session2 = [(IMDAccount *)self session];
      [session2 addAccount:self];

      registration2 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        session = self->_session;
        v23 = 138412546;
        selfCopy6 = self;
        v25 = 2112;
        v26 = session;
        _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "%@: Reused existing session: %@", &v23, 0x16u);
      }
    }

    else
    {
      v10 = [objc_alloc(-[NSObject sessionClass](registration "sessionClass"))];
      [(IMDAccount *)self setSession:v10];

      registration2 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_session;
        internalName = [registration internalName];
        v13 = NSStringFromClass([registration sessionClass]);
        v23 = 138413058;
        selfCopy6 = self;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = internalName;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_22B4CC000, registration2, OS_LOG_TYPE_DEFAULT, "%@: Created active session: %@ of service type: %@   (Session class: %@)", &v23, 0x2Au);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        selfCopy6 = self;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "%@: Telling session it became active", &v23, 0xCu);
      }
    }

    session3 = [(IMDAccount *)self session];
    [session3 sessionDidBecomeActive];

    service2 = [(IMDAccount *)self service];
    shouldForceAccountsConnected = [service2 shouldForceAccountsConnected];

    if (shouldForceAccountsConnected)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          selfCopy6 = self;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "%@: Forcing login", &v23, 0xCu);
        }
      }

      session4 = [(IMDAccount *)self session];
      [session4 login];
    }

    registration3 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      session5 = [(IMDAccount *)self session];
      v23 = 138412546;
      selfCopy6 = self;
      v25 = 2112;
      v26 = session5;
      _os_log_impl(&dword_22B4CC000, registration3, OS_LOG_TYPE_DEFAULT, "%@: Done setting up session: %@", &v23, 0x16u);
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
    session = [(IMDAccount *)self session];
    if (session)
    {
      service = [(IMDAccount *)self service];
      mainService = [service mainService];
      replicationServices = [mainService replicationServices];
      v8 = [replicationServices count];

      if (v8)
      {
        v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
        service2 = [(IMDAccount *)self service];
        mainService2 = [service2 mainService];
        replicationServices2 = [mainService2 replicationServices];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = replicationServices2;
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

              session2 = [(IMDAccount *)self session];
              v20 = [session2 preferredAccountForReplicationOnService:v16 eligibleAccounts:v18];

              if (v20)
              {
                v21 = objc_alloc([v16 sessionClass]);
                session3 = [(IMDAccount *)self session];
                v23 = [v21 initWithAccount:v20 service:v16 replicatingForSession:session3];

                [v23 sessionDidBecomeActive];
                [v30 addObject:v23];
              }

              else if (IMOSLoggingEnabled())
              {
                v24 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  loginID = [(IMDAccount *)self loginID];
                  *buf = v28;
                  selfCopy = self;
                  v37 = 2112;
                  v38 = v16;
                  v39 = 2112;
                  v40 = loginID;
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
  session = [(IMDAccount *)self session];
  [session sessionWillBecomeInactiveWithAccount:self];

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
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting replication session for %@", &v7, 0xCu);
    }
  }

  replicationSessions = self->_replicationSessions;
  self->_replicationSessions = 0;

  session = [(IMDAccount *)self session];
  [session _replicationSessionsChanged];

  v6 = *MEMORY[0x277D85DE8];
}

- (NSArray)aliases
{
  v22 = *MEMORY[0x277D85DE8];
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKeyedSubscript:*MEMORY[0x277D193F0]];

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
        lowercaseString = [v11 lowercaseString];
        trimmedString = [lowercaseString trimmedString];

        if (trimmedString)
        {
          [v4 addObject:trimmedString];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];

  v15 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)_registrationInfo
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKey:*MEMORY[0x277D19468]];

  return v3;
}

- (int64_t)registrationStatus
{
  _registrationInfo = [(IMDAccount *)self _registrationInfo];
  v3 = [_registrationInfo objectForKey:*MEMORY[0x277D19470]];
  intValue = [v3 intValue];

  return intValue;
}

- (int)registrationError
{
  _registrationInfo = [(IMDAccount *)self _registrationInfo];
  v3 = [_registrationInfo objectForKey:*MEMORY[0x277D19460]];
  intValue = [v3 intValue];

  return intValue;
}

- (NSDictionary)registrationAlertInfo
{
  _registrationInfo = [(IMDAccount *)self _registrationInfo];
  v3 = [_registrationInfo objectForKey:*MEMORY[0x277D19458]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accountID = [(IMDAccount *)self accountID];
  service = [(IMDAccount *)self service];
  v6 = [v3 stringWithFormat:@"<IMDAccount:%p, ID:%@, Service:%@ >", self, accountID, service];

  return v6;
}

- (id)profileInfo
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKey:*MEMORY[0x277D19430]];

  return v3;
}

- (int64_t)profileValidationStatus
{
  profileInfo = [(IMDAccount *)self profileInfo];
  v3 = [profileInfo objectForKey:*MEMORY[0x277D19438]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)isSMSRelayCapable
{
  accountDefaults = [(IMDAccount *)self accountDefaults];
  v3 = [accountDefaults objectForKey:*MEMORY[0x277D19000]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_isUsableForSending
{
  v3 = MEMORY[0x277D1A898];
  v4 = +[IMDAccountController sharedInstance];
  accounts = [v4 accounts];
  LOBYTE(self) = [v3 isAccountUsableForSendingWithAllAccounts:accounts account:self];

  return self;
}

@end