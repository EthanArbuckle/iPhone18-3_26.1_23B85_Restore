@interface IMDAccountController
+ (IMDAccountController)sharedInstance;
- (BOOL)_isAccountActive:(id)active forService:(id)service;
- (BOOL)_isOperationalForAccount:(id)account;
- (BOOL)accountAssociatedWithHandle:(id)handle;
- (BOOL)activeAccountsAreEligibleForFilterUnknownSendersByDefault;
- (BOOL)activeAccountsAreEligibleForHawking;
- (BOOL)hasActivePhoneAccount;
- (BOOL)isAccountActive:(id)active;
- (BOOL)receiverIsCandidateForHawking:(id)hawking;
- (BOOL)receiverIsCandidateForJunk:(id)junk forAccount:(id)account;
- (IMDAccountController)init;
- (NSArray)activeAccounts;
- (NSArray)activeSessions;
- (NSArray)connectedAccounts;
- (NSArray)connectingAccounts;
- (id)_operationalAccounts;
- (id)accountForHandle:(id)handle;
- (id)accountForIDSAccountUniqueID:(id)d;
- (id)accountsForLoginID:(id)d onService:(id)service;
- (id)accountsForService:(id)service;
- (id)activeAccountsForService:(id)service;
- (id)activeAccountsWithServiceCapability:(id)capability;
- (id)activeAliases;
- (id)anySessionForServiceName:(id)name;
- (id)connectedAccountsForService:(id)service;
- (id)connectingAccountsForService:(id)service;
- (id)sessionForAccount:(id)account;
- (id)sessionForReplicationSourceServiceName:(id)name replicatingAccount:(id)account;
- (void)_rebuildOperationalAccountsCache;
- (void)_resetAccountReplicationSessions;
- (void)account:(id)account isActiveChanged:(BOOL)changed;
- (void)activateAccount:(id)account;
- (void)activateAccounts:(id)accounts;
- (void)addAccount:(id)account;
- (void)deactivateAccount:(id)account;
- (void)deactivateAccounts:(id)accounts force:(BOOL)force;
- (void)dealloc;
- (void)deferredSave;
- (void)load;
- (void)removeAccount:(id)account;
- (void)save;
@end

@implementation IMDAccountController

+ (IMDAccountController)sharedInstance
{
  if (qword_2814210F0 != -1)
  {
    sub_22B7CF5EC();
  }

  v3 = qword_281420F58;

  return v3;
}

- (NSArray)activeAccounts
{
  accounts = [(IMDAccountController *)self accounts];
  v3 = [accounts __imArrayByFilteringWithBlock:&unk_283F192A8];

  return v3;
}

- (IMDAccountController)init
{
  v5.receiver = self;
  v5.super_class = IMDAccountController;
  v2 = [(IMDAccountController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__daemonWillShutdown_ name:@"__kIMDaemonWillShutdownNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_accounts;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount = [v8 idsAccount];
          [idsAccount removeDelegate:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = IMDAccountController;
  [(IMDAccountController *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)load
{
  v111 = *MEMORY[0x277D85DE8];
  self->_isLoading = 1;
  activeAccounts = self->_activeAccounts;
  self->_isFirstLoad = activeAccounts == 0;
  if (!activeAccounts)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = self->_activeAccounts;
    self->_activeAccounts = Mutable;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = +[IMDServiceController sharedController];
      allServices = [v7 allServices];
      v9 = [allServices arrayByApplyingSelector:sel_internalName];
      v10 = v9;
      v11 = @"NO";
      if (self->_isFirstLoad)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      selfCopy = v9;
      v109 = 2112;
      v110 = v11;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Loading services: %@ (First load: %@)", buf, 0x16u);
    }
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v12 = +[IMDServiceController sharedController];
  obj = [v12 allServices];

  v81 = [obj countByEnumeratingWithState:&v99 objects:v106 count:16];
  if (v81)
  {
    v80 = *v100;
    v76 = *MEMORY[0x277D193D0];
    v75 = *MEMORY[0x277D19018];
    v13 = *MEMORY[0x277D19418];
    v77 = *MEMORY[0x277D19418];
    v78 = *MEMORY[0x277D193E0];
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v100 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v86 = *(*(&v99 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v86;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Loading service: %@", buf, 0xCu);
          }
        }

        if ([(IMDAccountController *)v86 isDiscontinued])
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = self;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "service: %@ has been discontinued. Loading default disabled account", buf, 0xCu);
            }
          }

          createDiscontinuedAccount = [(IMDAccountController *)v86 createDiscontinuedAccount];
          [(IMDAccountController *)self addAccount:createDiscontinuedAccount];
          goto LABEL_123;
        }

        isIDSBased = [(IMDAccountController *)v86 isIDSBased];
        createDiscontinuedAccount = [(IMDAccountController *)v86 serviceDefaults];
        if (isIDSBased)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = v86;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, " Not loading accounts from defaults, appears to be IDS Based: %@", buf, 0xCu);
            }
          }

          accountsLoadedFromIdentityServices = [(IMDAccountController *)v86 accountsLoadedFromIdentityServices];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = accountsLoadedFromIdentityServices;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, " Found accounts: %@", buf, 0xCu);
            }
          }

          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          stringGUID = accountsLoadedFromIdentityServices;
          v21 = [(IMDAccountController *)stringGUID countByEnumeratingWithState:&v91 objects:v104 count:16];
          if (v21)
          {
            v22 = *v92;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v92 != v22)
                {
                  objc_enumerationMutation(stringGUID);
                }

                v24 = *(*(&v91 + 1) + 8 * j);
                if (IMOSLoggingEnabled())
                {
                  v25 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    selfCopy = v24;
                    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, " Loading: %@", buf, 0xCu);
                  }
                }

                [(IMDAccountController *)v24 setLoading:1];
                [(IMDAccountController *)self addAccount:v24];
                [(IMDAccountController *)v24 setLoading:0];
                if (IMOSLoggingEnabled())
                {
                  v26 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, " Done", buf, 2u);
                  }
                }
              }

              v21 = [(IMDAccountController *)stringGUID countByEnumeratingWithState:&v91 objects:v104 count:16];
            }

            while (v21);
          }

          activeAccountsFromIdentityServices = [(IMDAccountController *)v86 activeAccountsFromIdentityServices];
          if ([activeAccountsFromIdentityServices count])
          {
            [(IMDAccountController *)self activateAccounts:activeAccountsFromIdentityServices];
          }

          v85 = 0;
        }

        else
        {
          v85 = [createDiscontinuedAccount objectForKey:v76];

          v28 = [(IMDAccountController *)self accountsForService:v86];
          v29 = [v28 count];

          requiresSingleAccount = [(IMDAccountController *)v86 requiresSingleAccount];
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          allKeys = [v85 allKeys];
          v32 = [allKeys countByEnumeratingWithState:&v95 objects:v105 count:16];
          if (v32)
          {
            v33 = *v96;
            do
            {
              for (k = 0; k != v32; ++k)
              {
                if (*v96 != v33)
                {
                  objc_enumerationMutation(allKeys);
                }

                v35 = *(*(&v95 + 1) + 8 * k);
                v36 = [(IMDAccountController *)self accountForAccountID:v35];
                v37 = v36 != 0;

                if (!(v37 | (v29 > 0) & requiresSingleAccount))
                {
                  if (IMOSLoggingEnabled())
                  {
                    v38 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      selfCopy = v35;
                      _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "   Creating account with ID: %@", buf, 0xCu);
                    }
                  }

                  v39 = [v85 objectForKey:v35];
                  if (![v39 count])
                  {
                    defaultAccountSettings = [(IMDAccountController *)v86 defaultAccountSettings];

                    v39 = defaultAccountSettings;
                  }

                  v41 = [[IMDAccount alloc] initWithAccountID:v35 defaults:v39 service:v86];
                  [(IMDAccount *)v41 setLoading:1];
                  [(IMDAccountController *)self addAccount:v41];
                  [(IMDAccount *)v41 setLoading:0];

                  ++v29;
                }
              }

              v32 = [allKeys countByEnumeratingWithState:&v95 objects:v105 count:16];
            }

            while (v32);
          }

          if ([v85 count])
          {
            goto LABEL_81;
          }

          if (v29 > 0)
          {
            goto LABEL_81;
          }

          serviceProperties = [(IMDAccountController *)v86 serviceProperties];
          v43 = [serviceProperties objectForKey:v75];
          v44 = [v43 intValue] == 0;

          if (v44)
          {
            goto LABEL_81;
          }

          stringGUID = [MEMORY[0x277CCACA8] stringGUID];
          if (IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = stringGUID;
              _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "   Creating persistent session with ID: %@", buf, 0xCu);
            }
          }

          activeAccountsFromIdentityServices = [(IMDAccountController *)v86 defaultAccountSettings];
          v46 = [[IMDAccount alloc] initWithAccountID:stringGUID defaults:activeAccountsFromIdentityServices service:v86];
          [(IMDAccountController *)self addAccount:v46];
          if ([(IMDAccountController *)v86 shouldCreateActiveAccounts])
          {
            if (IMOSLoggingEnabled())
            {
              v47 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                selfCopy = stringGUID;
                _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "  Service wants new accounts active, setting active: %@", buf, 0xCu);
              }
            }

            [(IMDAccountController *)self activateAccount:stringGUID];
          }
        }

LABEL_81:
        v48 = [createDiscontinuedAccount objectForKey:v78];
        v82 = [createDiscontinuedAccount objectForKey:v77];
        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v48;
            _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "  Setting active accounts: %@", buf, 0xCu);
          }
        }

        if (v48)
        {
          [(IMDAccountController *)self activateAccounts:v48];
        }

        if (((-[IMDAccountController disallowDeactivation](v86, "disallowDeactivation") & 1) != 0 || -[IMDAccountController shouldForceAccountsActive](v86, "shouldForceAccountsActive")) && [v85 count])
        {
          if (IMOSLoggingEnabled())
          {
            v50 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              allKeys2 = [v85 allKeys];
              *buf = 138412290;
              selfCopy = allKeys2;
              _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "  Service wants accounts always active, setting active: %@", buf, 0xCu);
            }
          }

          allKeys3 = [v85 allKeys];
          [(IMDAccountController *)self activateAccounts:allKeys3];
        }

        if (v82)
        {
          if (IMOSLoggingEnabled())
          {
            v53 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = v82;
              _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_INFO, "Logging in previously logged in accounts: %@", buf, 0xCu);
            }
          }

          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v54 = v82;
          v55 = [(IMDAccountController *)v54 countByEnumeratingWithState:&v87 objects:v103 count:16];
          if (v55)
          {
            v56 = *v88;
            do
            {
              for (m = 0; m != v55; ++m)
              {
                if (*v88 != v56)
                {
                  objc_enumerationMutation(v54);
                }

                v58 = *(*(&v87 + 1) + 8 * m);
                v59 = [(IMDAccountController *)self accountForAccountID:v58];
                v60 = IMOSLoggingEnabled();
                if (v59)
                {
                  if (v60)
                  {
                    v61 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      selfCopy = v59;
                      _os_log_impl(&dword_22B4CC000, v61, OS_LOG_TYPE_INFO, "  * Logging in previously logged in account: %@", buf, 0xCu);
                    }
                  }

                  [(IMDAccountController *)v59 createSessionIfNecessary];
                  session = [(IMDAccountController *)v59 session];
                  [session login];
                }

                else if (v60)
                {
                  v63 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    selfCopy = v58;
                    _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "  * No account found for account ID: %@", buf, 0xCu);
                  }
                }
              }

              v55 = [(IMDAccountController *)v54 countByEnumeratingWithState:&v87 objects:v103 count:16];
            }

            while (v55);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v64 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v86;
            _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "Done loading service: %@", buf, 0xCu);
          }
        }

LABEL_123:
      }

      v81 = [obj countByEnumeratingWithState:&v99 objects:v106 count:16];
    }

    while (v81);
  }

  v65 = +[IMDServiceController sharedController];
  v66 = [v65 serviceWithName:*MEMORY[0x277D1A620]];

  if (v66)
  {
    registration5 = [(IMDAccountController *)self accountsForService:v66];
    registration = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = v66;
      v109 = 2112;
      v110 = registration5;
      _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "iMessage service found: %@    accounts: %@", buf, 0x16u);
    }

    if ([registration5 count])
    {
      registration2 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(&registration2->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, &registration2->super, OS_LOG_TYPE_DEFAULT, "   We have iMessage acounts, good to go", buf, 2u);
      }

      goto LABEL_142;
    }

    registration2 = [[IMDAccount alloc] initWithAccountID:@"PlaceholderAccount" defaults:0 service:v66];
    registration3 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = registration2;
      _os_log_impl(&dword_22B4CC000, registration3, OS_LOG_TYPE_DEFAULT, "   Empty iMessage accounts, created one: %@", buf, 0xCu);
    }

    if (registration2)
    {
      [(IMDAccountController *)self addAccount:registration2];
      registration4 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v72 = "   Added, and moving along";
LABEL_140:
        _os_log_impl(&dword_22B4CC000, registration4, OS_LOG_TYPE_DEFAULT, v72, buf, 2u);
      }
    }

    else
    {
      registration4 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v72 = "   No account created";
        goto LABEL_140;
      }
    }

LABEL_142:
    goto LABEL_143;
  }

  registration5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, registration5, OS_LOG_TYPE_DEFAULT, "No iMessage service found", buf, 2u);
  }

LABEL_143:

  if (IMOSLoggingEnabled())
  {
    v73 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "Done loading all services", buf, 2u);
    }
  }

  *&self->_isLoading = 0;
  [(IMDAccountController *)self _checkPowerAssertion];

  v74 = *MEMORY[0x277D85DE8];
}

- (void)deferredSave
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];

  [(IMDAccountController *)self performSelector:sel_save withObject:0 afterDelay:10.0];
}

- (void)save
{
  v15 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];
  if (!self->_isLoading)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = +[IMDServiceController sharedController];
    allServices = [v3 allServices];

    v5 = [allServices countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(allServices);
          }

          [*(*(&v10 + 1) + 8 * v8++) saveSettings];
        }

        while (v6 != v8);
        v6 = [allServices countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)activateAccount:(id)account
{
  if (account)
  {
    v4 = IMSingleObjectArray();
    [(IMDAccountController *)self activateAccounts:v4];
  }
}

- (void)activateAccounts:(id)accounts
{
  v67 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  if (self->_isFirstLoad)
  {
    v48 = 0;
  }

  else
  {
    v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = accountsCopy;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Activating accounts: %@", buf, 0xCu);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = accountsCopy;
  v6 = [(IMDAccountController *)obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v6)
  {
    v50 = *v58;
    *&v7 = 138412546;
    v47 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        v10 = [(IMDAccountController *)self accountForAccountID:v9, v47];
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = v10;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "   Found account: %@", buf, 0xCu);
          }
        }

        if (v10)
        {
          if ([(IMDAccountController *)v10 isDisabled])
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "      => Disabled, continuing", buf, 2u);
              }
            }
          }

          else
          {
            service = [(IMDAccountController *)v10 service];
            if (IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                selfCopy = service;
                _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "      Found service: %@", buf, 0xCu);
              }
            }

            if ([(IMDAccountController *)service isDiscontinued])
            {
              if (IMOSLoggingEnabled())
              {
                v15 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "      => Service discontinued, skipping.", buf, 2u);
                }
              }
            }

            else
            {
              activeAccounts = self->_activeAccounts;
              internalName = [(IMDAccountController *)service internalName];
              v18 = [(NSMutableDictionary *)activeAccounts objectForKey:internalName];
              v19 = [v18 mutableCopy];

              if (!v19)
              {
                v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              if (([(IMDAccountController *)v19 containsObject:v9]& 1) == 0)
              {
                if (IMOSLoggingEnabled())
                {
                  v20 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                  {
                    *buf = v47;
                    selfCopy = v9;
                    v64 = 2112;
                    v65 = v19;
                    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "      Adding account: %@ to active set: %@", buf, 0x16u);
                  }
                }

                if ([(IMDAccountController *)service supportsOneSessionForAllAccounts]&& [(IMDAccountController *)v19 count])
                {
                  lastObject = [(IMDAccountController *)v19 lastObject];
                  v22 = [(IMDAccountController *)self accountForAccountID:lastObject];

                  session = [v22 session];
                  if (session)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v24 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        selfCopy = session;
                        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Reusing session: %@", buf, 0xCu);
                      }
                    }

                    [(IMDAccountController *)v10 setSession:session];
                    [(IMDAccountController *)session addAccount:v10];
                    [(IMDAccountController *)session sessionDidBecomeActive];
                    service2 = [(IMDAccountController *)v10 service];
                    shouldForceAccountsConnected = [service2 shouldForceAccountsConnected];

                    if (shouldForceAccountsConnected)
                    {
                      if (IMOSLoggingEnabled())
                      {
                        v27 = OSLogHandleForIMFoundationCategory();
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                        {
                          *buf = 138412290;
                          selfCopy = self;
                          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "%@: Forcing login", buf, 0xCu);
                        }
                      }

                      session2 = [(IMDAccountController *)v10 session];
                      [session2 loginWithAccount:v10];
                    }
                  }
                }

                [(IMDAccountController *)v19 addObject:v9];
                [v48 addObject:service];
                if (IMOSLoggingEnabled())
                {
                  v29 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    selfCopy = v19;
                    _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "      Active account set is: %@", buf, 0xCu);
                  }
                }

                v30 = self->_activeAccounts;
                if (!v30)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  v32 = self->_activeAccounts;
                  self->_activeAccounts = Mutable;

                  v30 = self->_activeAccounts;
                }

                internalName2 = [(IMDAccountController *)service internalName];
                [(NSMutableDictionary *)v30 setObject:v19 forKey:internalName2];

                if (IMOSLoggingEnabled())
                {
                  v34 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "      Building sesssion", buf, 2u);
                  }
                }

                [(IMDAccountController *)v10 createSessionIfNecessary];
                if (IMOSLoggingEnabled())
                {
                  v35 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "      Enable the associated account", buf, 2u);
                  }
                }

                [(IMDAccountController *)service enableAccount:v10];
              }
            }
          }
        }
      }

      v6 = [(IMDAccountController *)obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v6);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = v48;
  v36 = [v51 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v36)
  {
    v37 = *v54;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(v51);
        }

        v39 = *(*(&v53 + 1) + 8 * j);
        v40 = +[IMDBroadcastController sharedProvider];
        v41 = [v40 broadcasterForListenersSupportingService:v39];
        v42 = [(IMDAccountController *)self activeAccountsForService:v39];
        v43 = [v42 arrayByApplyingSelector:sel_accountID];
        internalName3 = [v39 internalName];
        [v41 activeAccountsChanged:v43 forService:internalName3];
      }

      v36 = [v51 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v36);
  }

  if ([v51 count])
  {
    [(IMDAccountController *)self _rebuildOperationalAccountsCache];
  }

  selfCopy3 = self;
  if (!self->_isLoading)
  {
    [(IMDAccountController *)self save];
    selfCopy3 = self;
  }

  [(IMDAccountController *)selfCopy3 _checkPowerAssertion];

  v46 = *MEMORY[0x277D85DE8];
}

- (void)deactivateAccounts:(id)accounts force:(BOOL)force
{
  v53 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = accountsCopy;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Deactivating accounts: %@", buf, 0xCu);
  }

  if (self->_isFirstLoad)
  {
    v37 = 0;
  }

  else
  {
    v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = accountsCopy;
  v7 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v7)
  {
    v9 = *v46;
    *&v8 = 138412290;
    v36 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = [(IMDAccountController *)self accountForAccountID:v11, v36];
        service = [v12 service];
        v14 = service;
        if (!v12)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_34;
          }

          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = v36;
            v52 = v11;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Tried to deactivate an account, but found no account: %@", buf, 0xCu);
          }

LABEL_33:

          goto LABEL_34;
        }

        if (!service)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_34;
          }

          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = v36;
            v52 = v11;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Tried to deactivate an account, but found no service; %@", buf, 0xCu);
          }

          goto LABEL_33;
        }

        if (force || ([service shouldForceAccountsActive] & 1) == 0)
        {
          activeAccounts = self->_activeAccounts;
          internalName = [v14 internalName];
          v17 = [(NSMutableDictionary *)activeAccounts objectForKey:internalName];
          v18 = [v17 mutableCopy];

          if (!v18)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          if (([v18 containsObject:v11] & 1) != 0 || objc_msgSend(v12, "isAccountKeyCDPSyncingOrWaitingForUser"))
          {
            [v18 removeObject:v11];
            [v37 addObject:v14];
            v19 = self->_activeAccounts;
            if (!v19)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              v21 = self->_activeAccounts;
              self->_activeAccounts = Mutable;

              v19 = self->_activeAccounts;
            }

            internalName2 = [v14 internalName];
            [(NSMutableDictionary *)v19 setObject:v18 forKey:internalName2];

            session = [v12 session];
            if (session && [v12 loginStatus] >= 3)
            {
              session2 = [v12 session];
              [session2 logout];
            }

            [v14 disableAccount:v12];
            [session removeAccount:v12];
            [v12 releaseSession];
          }
        }

LABEL_34:
      }

      v7 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v7);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = v37;
  v26 = [v39 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v26)
  {
    v27 = *v42;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v39);
        }

        v29 = *(*(&v41 + 1) + 8 * j);
        v30 = +[IMDBroadcastController sharedProvider];
        v31 = [v30 broadcasterForListenersSupportingService:v29];
        v32 = [(IMDAccountController *)self activeAccountsForService:v29];
        v33 = [v32 arrayByApplyingSelector:sel_accountID];
        internalName3 = [v29 internalName];
        [v31 activeAccountsChanged:v33 forService:internalName3];
      }

      v26 = [v39 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v26);
  }

  if ([v39 count])
  {
    [(IMDAccountController *)self _rebuildOperationalAccountsCache];
  }

  if (!self->_isLoading)
  {
    [(IMDAccountController *)self save];
  }

  [(IMDAccountController *)self _checkPowerAssertion];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)deactivateAccount:(id)account
{
  if (account)
  {
    v4 = IMSingleObjectArray();
    [(IMDAccountController *)self deactivateAccounts:v4];
  }
}

- (BOOL)_isAccountActive:(id)active forService:(id)service
{
  activeAccounts = self->_activeAccounts;
  activeCopy = active;
  internalName = [service internalName];
  v8 = [(NSMutableDictionary *)activeAccounts objectForKey:internalName];
  v9 = [v8 containsObject:activeCopy];

  return v9;
}

- (BOOL)isAccountActive:(id)active
{
  activeCopy = active;
  v5 = [(IMDAccountController *)self accountForAccountID:activeCopy];
  service = [v5 service];
  LOBYTE(self) = [(IMDAccountController *)self _isAccountActive:activeCopy forService:service];

  return self;
}

- (void)addAccount:(id)account
{
  v58 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (accountCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v57 = accountCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Add account: %@", buf, 0xCu);
      }
    }

    accountID = [accountCopy accountID];
    v44 = [(IMDAccountController *)self accountForAccountID:accountID];

    if (v44)
    {
      v45 = v44;
      accountDefaults = [accountCopy accountDefaults];
      [v45 writeAccountDefaults:accountDefaults];
    }

    else
    {
      accounts = self->_accounts;
      if (!accounts)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v10 = self->_accounts;
        self->_accounts = Mutable;

        accounts = self->_accounts;
      }

      accountID2 = [accountCopy accountID];
      [(NSMutableDictionary *)accounts setObject:accountCopy forKey:accountID2];

      v45 = accountCopy;
    }

    if (!self->_isFirstLoad)
    {
      v12 = +[IMDBroadcastController sharedProvider];
      service = [accountCopy service];
      v14 = [v12 broadcasterForListenersSupportingService:service];
      accountID3 = [v45 accountID];
      accountDefaults2 = [v45 accountDefaults];
      service2 = [accountCopy service];
      internalName = [service2 internalName];
      [v14 accountAdded:accountID3 defaults:accountDefaults2 service:internalName];

      [(IMDAccountController *)self _rebuildOperationalAccountsCache];
      [v45 writeAccountDefaults:0];
      [v45 postAccountCapabilities];
      if (!self->_isFirstLoad && !self->_isLoading)
      {
        service3 = [accountCopy service];
        [service3 accountAdded:accountCopy];

        v20 = +[IMDServiceController sharedController];
        v43 = [v20 serviceWithName:*MEMORY[0x277D1A620]];

        service4 = [accountCopy service];
        LODWORD(v20) = service4 == v43;

        if (v20)
        {
          [(IMDAccountController *)self accountsForService:v43];
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v22 = v51 = 0u;
          v23 = [v22 countByEnumeratingWithState:&v50 objects:v55 count:16];
          if (v23)
          {
            v24 = *v51;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v51 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v50 + 1) + 8 * i);
                loginID = [v26 loginID];
                if (![loginID length])
                {

LABEL_26:
                  v30 = v26;

                  if (v30)
                  {
                    v31 = v30 == accountCopy;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  if (!v31)
                  {
                    registration = [MEMORY[0x277D19298] registration];
                    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v57 = v30;
                      _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "*** Removing placeholder account: %@", buf, 0xCu);
                    }

                    [(IMDAccountController *)self removeAccount:v30];
                  }

                  goto LABEL_33;
                }

                accountID4 = [v26 accountID];
                v29 = [accountID4 isEqualToIgnoringCase:@"PlaceholderAccount"];

                if (v29)
                {
                  goto LABEL_26;
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v50 objects:v55 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v30 = 0;
LABEL_33:
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        accounts = [(IMDAccountController *)self accounts];
        v34 = [accounts countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v34)
        {
          v35 = *v47;
          v36 = MEMORY[0x277D85CD0];
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v47 != v35)
              {
                objc_enumerationMutation(accounts);
              }

              v38 = *(*(&v46 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                idsAccount = [v38 idsAccount];
                [idsAccount addDelegate:self queue:v36];
              }
            }

            v34 = [accounts countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v34);
        }
      }
    }

    service5 = [accountCopy service];
    if ([service5 shouldForceAccountsActive])
    {
      accountID5 = [accountCopy accountID];
      [(IMDAccountController *)self activateAccount:accountID5];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)removeAccount:(id)account
{
  v29 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Remove account: %@", buf, 0xCu);
    }
  }

  if (accountCopy)
  {
    v6 = [(NSMutableDictionary *)self->_accounts allKeysForObject:accountCopy];
    v7 = v6;
    if (v6)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        v9 = *v23;
        do
        {
          v10 = 0;
          do
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v22 + 1) + 8 * v10);
            service = [accountCopy service];
            v13 = [(IMDAccountController *)self _isAccountActive:v11 forService:service];

            if (v13)
            {
              [(IMDAccountController *)self deactivateAccount:v11 force:1];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v8);
      }

      [(NSMutableDictionary *)self->_accounts removeObjectsForKeys:v7];
      if (![(NSMutableDictionary *)self->_accounts count])
      {
        accounts = self->_accounts;
        self->_accounts = 0;
      }

      if (!self->_isLoading)
      {
        [accountCopy writeAccountDefaults:0];
        v15 = +[IMDBroadcastController sharedProvider];
        service2 = [accountCopy service];
        v17 = [v15 broadcasterForListenersSupportingService:service2];
        accountID = [accountCopy accountID];
        [v17 accountRemoved:accountID];

        [(IMDAccountController *)self _rebuildOperationalAccountsCache];
        service3 = [accountCopy service];
        [service3 accountRemoved:accountCopy];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        idsAccount = [accountCopy idsAccount];
        [idsAccount removeDelegate:self];
      }
    }

    [(IMDAccountController *)self save];
  }

  [(IMDAccountController *)self _checkPowerAssertion];

  v21 = *MEMORY[0x277D85DE8];
}

- (id)accountsForLoginID:(id)d onService:(id)service
{
  dCopy = d;
  serviceCopy = service;
  accounts = [(IMDAccountController *)self accounts];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B4EBF10;
  v13[3] = &unk_278702A18;
  v14 = serviceCopy;
  v15 = dCopy;
  v9 = dCopy;
  v10 = serviceCopy;
  v11 = [accounts __imArrayByFilteringWithBlock:v13];

  return v11;
}

- (id)accountForHandle:(id)handle
{
  v35 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  [(IMDAccountController *)self activeAccounts];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v9 = MEMORY[0x277D1A620];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        service = [v11 service];
        internalName = [service internalName];
        v14 = [internalName isEqualToString:*v9];

        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            idsAccount = [v11 idsAccount];
            aliasStrings = [idsAccount aliasStrings];

            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v17 = aliasStrings;
            v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v26;
              while (2)
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v26 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  if ([*(*(&v25 + 1) + 8 * j) isEqualToString:handleCopy])
                  {
                    v22 = v11;

                    goto LABEL_22;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v9 = MEMORY[0x277D1A620];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v22 = 0;
    }

    while (v7);
  }

  else
  {
    v22 = 0;
  }

LABEL_22:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)accountsForService:(id)service
{
  serviceCopy = service;
  accounts = [(IMDAccountController *)self accounts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EC2C4;
  v9[3] = &unk_278702A40;
  v10 = serviceCopy;
  v6 = serviceCopy;
  v7 = [accounts __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (id)activeAccountsForService:(id)service
{
  serviceCopy = service;
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EC3D4;
  v9[3] = &unk_278702A40;
  v10 = serviceCopy;
  v6 = serviceCopy;
  v7 = [activeAccounts __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (id)activeAccountsWithServiceCapability:(id)capability
{
  capabilityCopy = capability;
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EC4E4;
  v9[3] = &unk_278702A88;
  v10 = capabilityCopy;
  v6 = capabilityCopy;
  v7 = [activeAccounts __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (NSArray)connectedAccounts
{
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v3 = [activeAccounts __imArrayByFilteringWithBlock:&unk_283F192C8];

  return v3;
}

- (id)connectedAccountsForService:(id)service
{
  v3 = [(IMDAccountController *)self activeAccountsForService:service];
  v4 = [v3 __imArrayByFilteringWithBlock:&unk_283F192E8];

  return v4;
}

- (NSArray)connectingAccounts
{
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v3 = [activeAccounts __imArrayByFilteringWithBlock:&unk_283F19308];

  return v3;
}

- (id)connectingAccountsForService:(id)service
{
  v3 = [(IMDAccountController *)self activeAccountsForService:service];
  v4 = [v3 __imArrayByFilteringWithBlock:&unk_283F19328];

  return v4;
}

- (BOOL)accountAssociatedWithHandle:(id)handle
{
  v3 = [(IMDAccountController *)self accountForHandle:handle];
  v4 = v3 != 0;

  return v4;
}

- (id)accountForIDSAccountUniqueID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  accounts = [(IMDAccountController *)self accounts];
  v6 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount = [v9 idsAccount];
          uniqueID = [idsAccount uniqueID];
          v12 = [uniqueID caseInsensitiveCompare:dCopy];

          if (!v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSArray)activeSessions
{
  v11 = *MEMORY[0x277D85DE8];
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v3 = [activeAccounts __imArrayByApplyingBlock:&unk_283F19348 filter:&unk_283F19368];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "activeSessions = %@", &v9, 0xCu);
    }
  }

  if (v3)
  {
    array = v3;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v6 = array;

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)sessionForAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = [(IMDAccountController *)self accountForAccountID:accountCopy];
  session = [v5 session];
  if (!session)
  {
    service = [v5 service];
    v8 = [IMDServiceSession existingServiceSessionForService:service];

    if (!v8 || ([v5 createSessionIfNecessary], objc_msgSend(v5, "session"), (session = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          accounts = self->_accounts;
          v13 = 138412802;
          v14 = accountCopy;
          v15 = 2112;
          v16 = v5;
          v17 = 2112;
          v18 = accounts;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Could not find a service session for string: %@, account: %@, allAccounts: %@", &v13, 0x20u);
        }
      }

      session = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return session;
}

- (id)anySessionForServiceName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = +[IMDServiceController sharedController];
  v5 = [v4 serviceWithName:nameCopy];

  if (v5)
  {
    v6 = +[IMDAccountController sharedInstance];
    v7 = [v6 activeAccountsForService:v5];
    __imFirstObject = [v7 __imFirstObject];

    if (__imFirstObject)
    {
      session = [__imFirstObject session];
      v10 = session;
      if (session)
      {
        v11 = session;
      }

      else if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v21 = 138412290;
          v22 = __imFirstObject;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "IMDAccountController: Could not find a session for account: %@", &v21, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = +[IMDAccountController sharedInstance];
          v15 = [v14 accountsForService:v5];
          v16 = +[IMDAccountController sharedInstance];
          accounts = [v16 accounts];
          v21 = 138412802;
          v22 = nameCopy;
          v23 = 2112;
          v24 = v15;
          v25 = 2112;
          v26 = accounts;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "IMDAccountController: Could not find an account for serviceString: %@, accountsForService: %@, accounts: %@", &v21, 0x20u);
        }
      }

      v10 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = nameCopy;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "IMDAccountController: Could not find a service for string: %@", &v21, 0xCu);
      }
    }

    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)sessionForReplicationSourceServiceName:(id)name replicatingAccount:(id)account
{
  v47 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accountCopy = account;
  v6 = +[IMDServiceController sharedController];
  v31 = [v6 serviceWithName:nameCopy];

  if (v31)
  {
    [(IMDAccountController *)self activeAccountsForService:v31];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v28 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v28)
    {
      v7 = *v38;
      v26 = *v38;
      do
      {
        v8 = 0;
        do
        {
          if (*v38 != v7)
          {
            v9 = v8;
            objc_enumerationMutation(obj);
            v8 = v9;
          }

          v27 = v8;
          v10 = *(*(&v37 + 1) + 8 * v8);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          replicationSessions = [v10 replicationSessions];
          v12 = [replicationSessions countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v12)
          {
            v13 = *v34;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v34 != v13)
                {
                  objc_enumerationMutation(replicationSessions);
                }

                v15 = *(*(&v33 + 1) + 8 * i);
                replicationService = [v15 replicationService];
                internalName = [replicationService internalName];
                service = [accountCopy service];
                internalName2 = [service internalName];
                v20 = [internalName isEqualToString:internalName2];

                if (v20)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v23 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v42 = v15;
                      v43 = 2112;
                      v44 = accountCopy;
                      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found source session %@ for replicating account %@", buf, 0x16u);
                    }
                  }

                  v22 = v15;

                  goto LABEL_28;
                }
              }

              v12 = [replicationSessions countByEnumeratingWithState:&v33 objects:v45 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v8 = v27 + 1;
          v7 = v26;
        }

        while (v27 + 1 != v28);
        v28 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
        v7 = v26;
      }

      while (v28);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v42 = nameCopy;
      v43 = 2112;
      v44 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "IMDAccountController: No source session on service %@ for replicating account %@", buf, 0x16u);
    }
  }

  v22 = 0;
LABEL_28:

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_rebuildOperationalAccountsCache
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = self->_operationalAccountsCache;
  operationalAccountsCache = self->_operationalAccountsCache;
  self->_operationalAccountsCache = 0;

  _operationalAccounts = [(IMDAccountController *)self _operationalAccounts];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = _operationalAccounts;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Rebuilding operational accounts, old: (%@)  new: (%@)", &v12, 0x16u);
    }
  }

  v7 = [_operationalAccounts count];
  if (v7 != -[NSSet count](v3, "count") || ([_operationalAccounts isEqualToSet:v3] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Removing replication sessions due to account rebuild", &v12, 2u);
      }
    }

    [(IMDAccountController *)self _resetAccountReplicationSessions];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Operational accounts changed", &v12, 2u);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kIMDBadgeUtilitiesOperationalAccountsChangedNotification", 0, 0, 1u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetAccountReplicationSessions
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  v3 = [activeAccounts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(activeAccounts);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetReplicationSessions];
      }

      while (v4 != v6);
      v4 = [activeAccounts countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_operationalAccounts
{
  v19 = *MEMORY[0x277D85DE8];
  p_operationalAccountsCache = &self->_operationalAccountsCache;
  operationalAccountsCache = self->_operationalAccountsCache;
  if (operationalAccountsCache)
  {
    v4 = operationalAccountsCache;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    activeAccounts = [(IMDAccountController *)self activeAccounts];
    v7 = [activeAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(activeAccounts);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([(IMDAccountController *)self _isOperationalForAccount:v11])
          {
            [(NSSet *)v4 addObject:v11];
          }
        }

        v8 = [activeAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    objc_storeStrong(p_operationalAccountsCache, v4);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_isOperationalForAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy isActive])
  {
    service = [accountCopy service];
    supportsRegistration = [service supportsRegistration];
    v6 = !supportsRegistration || [accountCopy accountType] != 2 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(accountCopy, "idsAccount"), v7 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)account:(id)account isActiveChanged:(BOOL)changed
{
  changedCopy = changed;
  v22 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  serviceName = [accountCopy serviceName];
  v8 = [serviceName isEqualToString:@"com.apple.madrid"];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      canSend = [accountCopy canSend];
      v11 = @"NO";
      if (changedCopy)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *v18 = 138413058;
      *&v18[4] = accountCopy;
      if (canSend)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *&v18[14] = v12;
      *&v18[12] = 2112;
      *&v18[22] = 2112;
      if (v8)
      {
        v11 = @"YES";
      }

      v19 = v13;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "IDS account %@ is active %@ can send %@ is madrid account %@", v18, 0x2Au);
    }
  }

  if (v8)
  {
    _nicknameController = [(IMDAccountController *)self _nicknameController];
    v15 = _nicknameController;
    if (changedCopy)
    {
      [_nicknameController newDeviceDidSignIntoiMessage];
    }

    else
    {
      [_nicknameController deviceSignedOutOfiMessage];
    }
  }

  v16 = [IMDBadgeUtilities sharedInstance:*v18];
  [v16 updateBadgeInCaseOfMistakenLoginInvalidation];

  [(IMDAccountController *)self _rebuildOperationalAccountsCache];
  v17 = *MEMORY[0x277D85DE8];
}

- (id)activeAliases
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  [(IMDAccountController *)self activeAccountsWithServiceCapability:*MEMORY[0x277D1A578]];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount = [v8 idsAccount];
          aliasStrings = [idsAccount aliasStrings];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v11 = aliasStrings;
          v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v22;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v21 + 1) + 8 * j);
                if ([v16 length] && ((IMStringIsEmail() & 1) != 0 || MEMORY[0x231897A50](v16)))
                {
                  [v3 addObject:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v13);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  allObjects = [v3 allObjects];

  v18 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (BOOL)activeAccountsAreEligibleForFilterUnknownSendersByDefault
{
  v50 = *MEMORY[0x277D85DE8];
  activeAccounts = [(IMDAccountController *)self activeAccounts];
  if ([activeAccounts count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v3 = activeAccounts;
    v4 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v44;
      v7 = MEMORY[0x277D1A600];
      v34 = activeAccounts;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v44 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v43 + 1) + 8 * i);
          service = [v9 service];
          internalName = [service internalName];
          v12 = [internalName isEqualToString:*v7];

          if ((v12 & 1) == 0)
          {
            idsAccount = [v9 idsAccount];
            regionID = [idsAccount regionID];

            if ([MEMORY[0x277D1AC58] accountRegionIsCandidateForHawking:regionID] & 1) != 0 || (objc_msgSend(MEMORY[0x277D1AC58], "receiverIsCandidateForDefaultAppleSMSFilter"))
            {
              goto LABEL_39;
            }

            aliases = [v9 aliases];
            v16 = [aliases count];

            if (v16)
            {
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              aliases2 = [v9 aliases];
              v18 = [aliases2 countByEnumeratingWithState:&v39 objects:v48 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v40;
                v33 = v6;
LABEL_13:
                v21 = 0;
                while (1)
                {
                  if (*v40 != v20)
                  {
                    objc_enumerationMutation(aliases2);
                  }

                  v22 = *(*(&v39 + 1) + 8 * v21);
                  if ([MEMORY[0x277D1AC58] receiverIsCandidateForHawking:{v22, v33}] & 1) != 0 || (objc_msgSend(MEMORY[0x277D1AC58], "receiverIsCandidateForDefaultAppleSMSFilter:", v22))
                  {
                    break;
                  }

                  if (v19 == ++v21)
                  {
                    v19 = [aliases2 countByEnumeratingWithState:&v39 objects:v48 count:16];
                    v6 = v33;
                    if (v19)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_20;
                  }
                }

LABEL_36:
                activeAccounts = v34;

                v30 = 1;
                goto LABEL_40;
              }

LABEL_20:

              v7 = MEMORY[0x277D1A600];
            }

            else
            {
              v23 = MEMORY[0x277D1AC58];
              aliases2 = [v9 loginID];
              if ([v23 receiverIsCandidateForHawking:aliases2])
              {
                goto LABEL_36;
              }

              v24 = MEMORY[0x277D1AC58];
              loginID = [v9 loginID];
              LOBYTE(v24) = [v24 receiverIsCandidateForDefaultAppleSMSFilter:loginID];

              if (v24)
              {
LABEL_39:
                v30 = 1;
                activeAccounts = v34;
                goto LABEL_40;
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
        activeAccounts = v34;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [MEMORY[0x277D1A8F8] IMPhoneNumbersEnabledForMultipleSubscriptionDevice];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    regionID = v38 = 0u;
    v26 = [regionID countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      while (2)
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(regionID);
          }

          if ([MEMORY[0x277D1AC58] receiverIsCandidateForDefaultAppleSMSFilter:*(*(&v35 + 1) + 8 * j)])
          {
            v30 = 1;
            goto LABEL_38;
          }
        }

        v27 = [regionID countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v30 = 0;
LABEL_38:
    v3 = regionID;
LABEL_40:
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)activeAccountsAreEligibleForHawking
{
  v35 = *MEMORY[0x277D85DE8];
  [(IMDAccountController *)self activeAccounts];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = v32 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v6 = 0x2786FF000uLL;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = *(v6 + 2576);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          service = [v8 service];
          internalName = [service internalName];
          v12 = [internalName isEqualToString:*MEMORY[0x277D1A600]];

          if ((v12 & 1) == 0)
          {
            idsAccount = [v8 idsAccount];
            regionID = [idsAccount regionID];

            if ([MEMORY[0x277D1AC58] accountRegionIsCandidateForHawking:regionID])
            {
LABEL_22:

              v22 = 1;
              goto LABEL_24;
            }

            idsAccount2 = [v8 idsAccount];
            aliasStrings = [idsAccount2 aliasStrings];

            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v17 = aliasStrings;
            v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v26;
              while (2)
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v26 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  if ([MEMORY[0x277D1AC58] receiverIsCandidateForHawking:*(*(&v25 + 1) + 8 * j)])
                  {

                    goto LABEL_22;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v6 = 0x2786FF000;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v22 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)receiverIsCandidateForHawking:(id)hawking
{
  v23 = *MEMORY[0x277D85DE8];
  hawkingCopy = hawking;
  if ([hawkingCopy length])
  {
    v5 = IMChatCanonicalIDSIDsForAddress();
    v6 = MEMORY[0x231897A70]();

    v7 = [MEMORY[0x277D1AC58] mapID:v6 usingKey:*MEMORY[0x277D1AD68]];

    if (MEMORY[0x231897A50](v7))
    {
      v8 = IMCountryCodeForNumber();
      v9 = [v8 isEqualToString:@"cn"];
      v10 = IMOSLoggingEnabled();
      if (v9)
      {
        if (v10)
        {
          regionID = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(regionID, OS_LOG_TYPE_INFO))
          {
            v19 = 138412546;
            v20 = v7;
            v21 = 2112;
            v22 = v8;
            _os_log_impl(&dword_22B4CC000, regionID, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for spam filtering.", &v19, 0x16u);
          }

          goto LABEL_30;
        }
      }

      else if (v10)
      {
        regionID = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(regionID, OS_LOG_TYPE_INFO))
        {
          v19 = 138412546;
          v20 = v7;
          v21 = 2112;
          v22 = v8;
          _os_log_impl(&dword_22B4CC000, regionID, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is not a candidate for spam filtering.", &v19, 0x16u);
        }

        goto LABEL_30;
      }

LABEL_31:

      goto LABEL_32;
    }

    if (!IMStringIsEmail())
    {
      LOBYTE(v9) = 0;
LABEL_32:

      goto LABEL_33;
    }

    v8 = [(IMDAccountController *)self accountForHandle:v7];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v19 = 138412546;
          v20 = v8;
          v21 = 2112;
          v22 = objc_opt_class();
          v16 = v22;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Found an account (%@) that isn't IMDIDS (%@), can't determien region -- falling through.", &v19, 0x16u);
        }
      }

      LOBYTE(v9) = 0;
      goto LABEL_31;
    }

    idsAccount = [v8 idsAccount];
    regionID = [idsAccount regionID];

    v9 = [MEMORY[0x277D1AC58] accountRegionIsCandidateForHawking:regionID];
    v13 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v19 = 138412546;
          v20 = v7;
          v21 = 2112;
          v22 = regionID;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Receiving id (%@) with region (%@) is a candidate for spam filtering.", &v19, 0x16u);
        }

LABEL_29:
      }
    }

    else if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v19 = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = regionID;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Receiving id (%@) with region (%@) is not a candidate for spam filtering.", &v19, 0x16u);
      }

      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  LOBYTE(v9) = 0;
LABEL_33:

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)hasActivePhoneAccount
{
  v32 = *MEMORY[0x277D85DE8];
  [(IMDAccountController *)self activeAccounts];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = v29 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    v6 = MEMORY[0x277D1A600];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        service = [v8 service];
        internalName = [service internalName];
        v11 = [internalName isEqualToString:*v6];

        if ((v11 & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            idsAccount = [v8 idsAccount];
            aliasStrings = [idsAccount aliasStrings];

            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v14 = aliasStrings;
            v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v23;
              while (2)
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v23 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  if (MEMORY[0x231897A50](*(*(&v22 + 1) + 8 * j)))
                  {

                    v19 = 1;
                    goto LABEL_22;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v19 = 0;
    }

    while (v4);
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)receiverIsCandidateForJunk:(id)junk forAccount:(id)account
{
  v41 = *MEMORY[0x277D85DE8];
  junkCopy = junk;
  accountCopy = account;
  if (accountCopy)
  {
    v7 = MEMORY[0x231897A70](junkCopy);
    v8 = [MEMORY[0x277D1AC58] mapID:v7 usingKey:*MEMORY[0x277D1A880]];
    if (MEMORY[0x231897A50]())
    {
      v9 = IMCountryCodeForNumber();
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v38 = v8;
          v39 = 2112;
          v40 = v9;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Receiving ID: %@ has country code: %@", buf, 0x16u);
        }
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      telephonyCountryCodesEligibleForJunkFiltering = [MEMORY[0x277D1AC58] telephonyCountryCodesEligibleForJunkFiltering];
      v12 = [telephonyCountryCodesEligibleForJunkFiltering countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v12)
      {
        v13 = *v32;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(telephonyCountryCodesEligibleForJunkFiltering);
            }

            if ([*(*(&v31 + 1) + 8 * i) isEqualToString:v9])
            {
              if (IMOSLoggingEnabled())
              {
                v21 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v38 = v8;
                  v39 = 2112;
                  v40 = v9;
                  _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for Oscar filtering.", buf, 0x16u);
                }
              }

              LOBYTE(v12) = 1;
              goto LABEL_39;
            }
          }

          v12 = [telephonyCountryCodesEligibleForJunkFiltering countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_39:
    }

    else
    {
      if (IMStringIsEmail())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount = [accountCopy idsAccount];
          regionID = [idsAccount regionID];

          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v38 = v8;
              v39 = 2112;
              v40 = regionID;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Receiving ID: %@ has region: %@", buf, 0x16u);
            }
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          accountRegionsEligibleForJunkFiltering = [MEMORY[0x277D1AC58] accountRegionsEligibleForJunkFiltering];
          v12 = [accountRegionsEligibleForJunkFiltering countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v12)
          {
            v19 = *v28;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v28 != v19)
                {
                  objc_enumerationMutation(accountRegionsEligibleForJunkFiltering);
                }

                if ([*(*(&v27 + 1) + 8 * j) isEqualToString:regionID])
                {
                  if (IMOSLoggingEnabled())
                  {
                    v24 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v38 = regionID;
                      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Region (%@) is a candidate for Oscar filtering.", buf, 0xCu);
                    }
                  }

                  LOBYTE(v12) = 1;
                  goto LABEL_50;
                }
              }

              v12 = [accountRegionsEligibleForJunkFiltering countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_50:

          goto LABEL_51;
        }

        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v38 = accountCopy;
            v39 = 2112;
            v40 = objc_opt_class();
            v23 = v40;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Found an account (%@) that isn't IMDIDS (%@), can't determine region -- falling through.", buf, 0x16u);
          }
        }
      }

      LOBYTE(v12) = 0;
    }

LABEL_51:

    goto LABEL_52;
  }

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_22B7CF628(junkCopy, v7);
  }

  LOBYTE(v12) = 0;
LABEL_52:

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

@end