@interface IMDAccountController
+ (IMDAccountController)sharedInstance;
- (BOOL)_isAccountActive:(id)a3 forService:(id)a4;
- (BOOL)_isOperationalForAccount:(id)a3;
- (BOOL)accountAssociatedWithHandle:(id)a3;
- (BOOL)activeAccountsAreEligibleForFilterUnknownSendersByDefault;
- (BOOL)activeAccountsAreEligibleForHawking;
- (BOOL)hasActivePhoneAccount;
- (BOOL)isAccountActive:(id)a3;
- (BOOL)receiverIsCandidateForHawking:(id)a3;
- (BOOL)receiverIsCandidateForJunk:(id)a3 forAccount:(id)a4;
- (IMDAccountController)init;
- (NSArray)activeAccounts;
- (NSArray)activeSessions;
- (NSArray)connectedAccounts;
- (NSArray)connectingAccounts;
- (id)_operationalAccounts;
- (id)accountForHandle:(id)a3;
- (id)accountForIDSAccountUniqueID:(id)a3;
- (id)accountsForLoginID:(id)a3 onService:(id)a4;
- (id)accountsForService:(id)a3;
- (id)activeAccountsForService:(id)a3;
- (id)activeAccountsWithServiceCapability:(id)a3;
- (id)activeAliases;
- (id)anySessionForServiceName:(id)a3;
- (id)connectedAccountsForService:(id)a3;
- (id)connectingAccountsForService:(id)a3;
- (id)sessionForAccount:(id)a3;
- (id)sessionForReplicationSourceServiceName:(id)a3 replicatingAccount:(id)a4;
- (void)_rebuildOperationalAccountsCache;
- (void)_resetAccountReplicationSessions;
- (void)account:(id)a3 isActiveChanged:(BOOL)a4;
- (void)activateAccount:(id)a3;
- (void)activateAccounts:(id)a3;
- (void)addAccount:(id)a3;
- (void)deactivateAccount:(id)a3;
- (void)deactivateAccounts:(id)a3 force:(BOOL)a4;
- (void)dealloc;
- (void)deferredSave;
- (void)load;
- (void)removeAccount:(id)a3;
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
  v2 = [(IMDAccountController *)self accounts];
  v3 = [v2 __imArrayByFilteringWithBlock:&unk_283F192A8];

  return v3;
}

- (IMDAccountController)init
{
  v5.receiver = self;
  v5.super_class = IMDAccountController;
  v2 = [(IMDAccountController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__daemonWillShutdown_ name:@"__kIMDaemonWillShutdownNotification" object:0];
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
          v9 = [v8 idsAccount];
          [v9 removeDelegate:self];
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
      v8 = [v7 allServices];
      v9 = [v8 arrayByApplyingSelector:sel_internalName];
      v10 = v9;
      v11 = @"NO";
      if (self->_isFirstLoad)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v108 = v9;
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
            v108 = v86;
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
              v108 = self;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "service: %@ has been discontinued. Loading default disabled account", buf, 0xCu);
            }
          }

          v84 = [(IMDAccountController *)v86 createDiscontinuedAccount];
          [(IMDAccountController *)self addAccount:v84];
          goto LABEL_123;
        }

        v16 = [(IMDAccountController *)v86 isIDSBased];
        v84 = [(IMDAccountController *)v86 serviceDefaults];
        if (v16)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v108 = v86;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, " Not loading accounts from defaults, appears to be IDS Based: %@", buf, 0xCu);
            }
          }

          v18 = [(IMDAccountController *)v86 accountsLoadedFromIdentityServices];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v108 = v18;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, " Found accounts: %@", buf, 0xCu);
            }
          }

          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v20 = v18;
          v21 = [(IMDAccountController *)v20 countByEnumeratingWithState:&v91 objects:v104 count:16];
          if (v21)
          {
            v22 = *v92;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v92 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v91 + 1) + 8 * j);
                if (IMOSLoggingEnabled())
                {
                  v25 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v108 = v24;
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

              v21 = [(IMDAccountController *)v20 countByEnumeratingWithState:&v91 objects:v104 count:16];
            }

            while (v21);
          }

          v27 = [(IMDAccountController *)v86 activeAccountsFromIdentityServices];
          if ([v27 count])
          {
            [(IMDAccountController *)self activateAccounts:v27];
          }

          v85 = 0;
        }

        else
        {
          v85 = [v84 objectForKey:v76];

          v28 = [(IMDAccountController *)self accountsForService:v86];
          v29 = [v28 count];

          v30 = [(IMDAccountController *)v86 requiresSingleAccount];
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v31 = [v85 allKeys];
          v32 = [v31 countByEnumeratingWithState:&v95 objects:v105 count:16];
          if (v32)
          {
            v33 = *v96;
            do
            {
              for (k = 0; k != v32; ++k)
              {
                if (*v96 != v33)
                {
                  objc_enumerationMutation(v31);
                }

                v35 = *(*(&v95 + 1) + 8 * k);
                v36 = [(IMDAccountController *)self accountForAccountID:v35];
                v37 = v36 != 0;

                if (!(v37 | (v29 > 0) & v30))
                {
                  if (IMOSLoggingEnabled())
                  {
                    v38 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v108 = v35;
                      _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "   Creating account with ID: %@", buf, 0xCu);
                    }
                  }

                  v39 = [v85 objectForKey:v35];
                  if (![v39 count])
                  {
                    v40 = [(IMDAccountController *)v86 defaultAccountSettings];

                    v39 = v40;
                  }

                  v41 = [[IMDAccount alloc] initWithAccountID:v35 defaults:v39 service:v86];
                  [(IMDAccount *)v41 setLoading:1];
                  [(IMDAccountController *)self addAccount:v41];
                  [(IMDAccount *)v41 setLoading:0];

                  ++v29;
                }
              }

              v32 = [v31 countByEnumeratingWithState:&v95 objects:v105 count:16];
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

          v42 = [(IMDAccountController *)v86 serviceProperties];
          v43 = [v42 objectForKey:v75];
          v44 = [v43 intValue] == 0;

          if (v44)
          {
            goto LABEL_81;
          }

          v20 = [MEMORY[0x277CCACA8] stringGUID];
          if (IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v108 = v20;
              _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "   Creating persistent session with ID: %@", buf, 0xCu);
            }
          }

          v27 = [(IMDAccountController *)v86 defaultAccountSettings];
          v46 = [[IMDAccount alloc] initWithAccountID:v20 defaults:v27 service:v86];
          [(IMDAccountController *)self addAccount:v46];
          if ([(IMDAccountController *)v86 shouldCreateActiveAccounts])
          {
            if (IMOSLoggingEnabled())
            {
              v47 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v108 = v20;
                _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "  Service wants new accounts active, setting active: %@", buf, 0xCu);
              }
            }

            [(IMDAccountController *)self activateAccount:v20];
          }
        }

LABEL_81:
        v48 = [v84 objectForKey:v78];
        v82 = [v84 objectForKey:v77];
        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v108 = v48;
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
              v51 = [v85 allKeys];
              *buf = 138412290;
              v108 = v51;
              _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "  Service wants accounts always active, setting active: %@", buf, 0xCu);
            }
          }

          v52 = [v85 allKeys];
          [(IMDAccountController *)self activateAccounts:v52];
        }

        if (v82)
        {
          if (IMOSLoggingEnabled())
          {
            v53 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v108 = v82;
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
                      v108 = v59;
                      _os_log_impl(&dword_22B4CC000, v61, OS_LOG_TYPE_INFO, "  * Logging in previously logged in account: %@", buf, 0xCu);
                    }
                  }

                  [(IMDAccountController *)v59 createSessionIfNecessary];
                  v62 = [(IMDAccountController *)v59 session];
                  [v62 login];
                }

                else if (v60)
                {
                  v63 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v108 = v58;
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
            v108 = v86;
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
    v67 = [(IMDAccountController *)self accountsForService:v66];
    v68 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v108 = v66;
      v109 = 2112;
      v110 = v67;
      _os_log_impl(&dword_22B4CC000, v68, OS_LOG_TYPE_DEFAULT, "iMessage service found: %@    accounts: %@", buf, 0x16u);
    }

    if ([v67 count])
    {
      v69 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(&v69->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, &v69->super, OS_LOG_TYPE_DEFAULT, "   We have iMessage acounts, good to go", buf, 2u);
      }

      goto LABEL_142;
    }

    v69 = [[IMDAccount alloc] initWithAccountID:@"PlaceholderAccount" defaults:0 service:v66];
    v70 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v108 = v69;
      _os_log_impl(&dword_22B4CC000, v70, OS_LOG_TYPE_DEFAULT, "   Empty iMessage accounts, created one: %@", buf, 0xCu);
    }

    if (v69)
    {
      [(IMDAccountController *)self addAccount:v69];
      v71 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v72 = "   Added, and moving along";
LABEL_140:
        _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_DEFAULT, v72, buf, 2u);
      }
    }

    else
    {
      v71 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v72 = "   No account created";
        goto LABEL_140;
      }
    }

LABEL_142:
    goto LABEL_143;
  }

  v67 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_DEFAULT, "No iMessage service found", buf, 2u);
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
    v4 = [v3 allServices];

    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) saveSettings];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)activateAccount:(id)a3
{
  if (a3)
  {
    v4 = IMSingleObjectArray();
    [(IMDAccountController *)self activateAccounts:v4];
  }
}

- (void)activateAccounts:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isFirstLoad)
  {
    v48 = 0;
  }

  else
  {
    v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v5 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v4;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Activating accounts: %@", buf, 0xCu);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
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
            v63 = v10;
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
            v13 = [(IMDAccountController *)v10 service];
            if (IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v63 = v13;
                _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "      Found service: %@", buf, 0xCu);
              }
            }

            if ([(IMDAccountController *)v13 isDiscontinued])
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
              v17 = [(IMDAccountController *)v13 internalName];
              v18 = [(NSMutableDictionary *)activeAccounts objectForKey:v17];
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
                    v63 = v9;
                    v64 = 2112;
                    v65 = v19;
                    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "      Adding account: %@ to active set: %@", buf, 0x16u);
                  }
                }

                if ([(IMDAccountController *)v13 supportsOneSessionForAllAccounts]&& [(IMDAccountController *)v19 count])
                {
                  v21 = [(IMDAccountController *)v19 lastObject];
                  v22 = [(IMDAccountController *)self accountForAccountID:v21];

                  v23 = [v22 session];
                  if (v23)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v24 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v63 = v23;
                        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Reusing session: %@", buf, 0xCu);
                      }
                    }

                    [(IMDAccountController *)v10 setSession:v23];
                    [(IMDAccountController *)v23 addAccount:v10];
                    [(IMDAccountController *)v23 sessionDidBecomeActive];
                    v25 = [(IMDAccountController *)v10 service];
                    v26 = [v25 shouldForceAccountsConnected];

                    if (v26)
                    {
                      if (IMOSLoggingEnabled())
                      {
                        v27 = OSLogHandleForIMFoundationCategory();
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                        {
                          *buf = 138412290;
                          v63 = self;
                          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "%@: Forcing login", buf, 0xCu);
                        }
                      }

                      v28 = [(IMDAccountController *)v10 session];
                      [v28 loginWithAccount:v10];
                    }
                  }
                }

                [(IMDAccountController *)v19 addObject:v9];
                [v48 addObject:v13];
                if (IMOSLoggingEnabled())
                {
                  v29 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v63 = v19;
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

                v33 = [(IMDAccountController *)v13 internalName];
                [(NSMutableDictionary *)v30 setObject:v19 forKey:v33];

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

                [(IMDAccountController *)v13 enableAccount:v10];
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
        v44 = [v39 internalName];
        [v41 activeAccountsChanged:v43 forService:v44];
      }

      v36 = [v51 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v36);
  }

  if ([v51 count])
  {
    [(IMDAccountController *)self _rebuildOperationalAccountsCache];
  }

  v45 = self;
  if (!self->_isLoading)
  {
    [(IMDAccountController *)self save];
    v45 = self;
  }

  [(IMDAccountController *)v45 _checkPowerAssertion];

  v46 = *MEMORY[0x277D85DE8];
}

- (void)deactivateAccounts:(id)a3 force:(BOOL)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = v5;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Deactivating accounts: %@", buf, 0xCu);
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
  obj = v5;
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
        v13 = [v12 service];
        v14 = v13;
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

        if (!v13)
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

        if (a4 || ([v13 shouldForceAccountsActive] & 1) == 0)
        {
          activeAccounts = self->_activeAccounts;
          v16 = [v14 internalName];
          v17 = [(NSMutableDictionary *)activeAccounts objectForKey:v16];
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

            v22 = [v14 internalName];
            [(NSMutableDictionary *)v19 setObject:v18 forKey:v22];

            v23 = [v12 session];
            if (v23 && [v12 loginStatus] >= 3)
            {
              v24 = [v12 session];
              [v24 logout];
            }

            [v14 disableAccount:v12];
            [v23 removeAccount:v12];
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
        v34 = [v29 internalName];
        [v31 activeAccountsChanged:v33 forService:v34];
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

- (void)deactivateAccount:(id)a3
{
  if (a3)
  {
    v4 = IMSingleObjectArray();
    [(IMDAccountController *)self deactivateAccounts:v4];
  }
}

- (BOOL)_isAccountActive:(id)a3 forService:(id)a4
{
  activeAccounts = self->_activeAccounts;
  v6 = a3;
  v7 = [a4 internalName];
  v8 = [(NSMutableDictionary *)activeAccounts objectForKey:v7];
  v9 = [v8 containsObject:v6];

  return v9;
}

- (BOOL)isAccountActive:(id)a3
{
  v4 = a3;
  v5 = [(IMDAccountController *)self accountForAccountID:v4];
  v6 = [v5 service];
  LOBYTE(self) = [(IMDAccountController *)self _isAccountActive:v4 forService:v6];

  return self;
}

- (void)addAccount:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v57 = v4;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Add account: %@", buf, 0xCu);
      }
    }

    v6 = [v4 accountID];
    v44 = [(IMDAccountController *)self accountForAccountID:v6];

    if (v44)
    {
      v45 = v44;
      v7 = [v4 accountDefaults];
      [v45 writeAccountDefaults:v7];
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

      v11 = [v4 accountID];
      [(NSMutableDictionary *)accounts setObject:v4 forKey:v11];

      v45 = v4;
    }

    if (!self->_isFirstLoad)
    {
      v12 = +[IMDBroadcastController sharedProvider];
      v13 = [v4 service];
      v14 = [v12 broadcasterForListenersSupportingService:v13];
      v15 = [v45 accountID];
      v16 = [v45 accountDefaults];
      v17 = [v4 service];
      v18 = [v17 internalName];
      [v14 accountAdded:v15 defaults:v16 service:v18];

      [(IMDAccountController *)self _rebuildOperationalAccountsCache];
      [v45 writeAccountDefaults:0];
      [v45 postAccountCapabilities];
      if (!self->_isFirstLoad && !self->_isLoading)
      {
        v19 = [v4 service];
        [v19 accountAdded:v4];

        v20 = +[IMDServiceController sharedController];
        v43 = [v20 serviceWithName:*MEMORY[0x277D1A620]];

        v21 = [v4 service];
        LODWORD(v20) = v21 == v43;

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
                v27 = [v26 loginID];
                if (![v27 length])
                {

LABEL_26:
                  v30 = v26;

                  if (v30)
                  {
                    v31 = v30 == v4;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  if (!v31)
                  {
                    v32 = [MEMORY[0x277D19298] registration];
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v57 = v30;
                      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, "*** Removing placeholder account: %@", buf, 0xCu);
                    }

                    [(IMDAccountController *)self removeAccount:v30];
                  }

                  goto LABEL_33;
                }

                v28 = [v26 accountID];
                v29 = [v28 isEqualToIgnoringCase:@"PlaceholderAccount"];

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
        v33 = [(IMDAccountController *)self accounts];
        v34 = [v33 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v46 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39 = [v38 idsAccount];
                [v39 addDelegate:self queue:v36];
              }
            }

            v34 = [v33 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v34);
        }
      }
    }

    v40 = [v4 service];
    if ([v40 shouldForceAccountsActive])
    {
      v41 = [v4 accountID];
      [(IMDAccountController *)self activateAccount:v41];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)removeAccount:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Remove account: %@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v6 = [(NSMutableDictionary *)self->_accounts allKeysForObject:v4];
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
            v12 = [v4 service];
            v13 = [(IMDAccountController *)self _isAccountActive:v11 forService:v12];

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
        [v4 writeAccountDefaults:0];
        v15 = +[IMDBroadcastController sharedProvider];
        v16 = [v4 service];
        v17 = [v15 broadcasterForListenersSupportingService:v16];
        v18 = [v4 accountID];
        [v17 accountRemoved:v18];

        [(IMDAccountController *)self _rebuildOperationalAccountsCache];
        v19 = [v4 service];
        [v19 accountRemoved:v4];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v4 idsAccount];
        [v20 removeDelegate:self];
      }
    }

    [(IMDAccountController *)self save];
  }

  [(IMDAccountController *)self _checkPowerAssertion];

  v21 = *MEMORY[0x277D85DE8];
}

- (id)accountsForLoginID:(id)a3 onService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMDAccountController *)self accounts];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B4EBF10;
  v13[3] = &unk_278702A18;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 __imArrayByFilteringWithBlock:v13];

  return v11;
}

- (id)accountForHandle:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v12 = [v11 service];
        v13 = [v12 internalName];
        v14 = [v13 isEqualToString:*v9];

        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v11 idsAccount];
            v16 = [v15 aliasStrings];

            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v17 = v16;
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

                  if ([*(*(&v25 + 1) + 8 * j) isEqualToString:v4])
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

- (id)accountsForService:(id)a3
{
  v4 = a3;
  v5 = [(IMDAccountController *)self accounts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EC2C4;
  v9[3] = &unk_278702A40;
  v10 = v4;
  v6 = v4;
  v7 = [v5 __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (id)activeAccountsForService:(id)a3
{
  v4 = a3;
  v5 = [(IMDAccountController *)self activeAccounts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EC3D4;
  v9[3] = &unk_278702A40;
  v10 = v4;
  v6 = v4;
  v7 = [v5 __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (id)activeAccountsWithServiceCapability:(id)a3
{
  v4 = a3;
  v5 = [(IMDAccountController *)self activeAccounts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B4EC4E4;
  v9[3] = &unk_278702A88;
  v10 = v4;
  v6 = v4;
  v7 = [v5 __imArrayByFilteringWithBlock:v9];

  return v7;
}

- (NSArray)connectedAccounts
{
  v2 = [(IMDAccountController *)self activeAccounts];
  v3 = [v2 __imArrayByFilteringWithBlock:&unk_283F192C8];

  return v3;
}

- (id)connectedAccountsForService:(id)a3
{
  v3 = [(IMDAccountController *)self activeAccountsForService:a3];
  v4 = [v3 __imArrayByFilteringWithBlock:&unk_283F192E8];

  return v4;
}

- (NSArray)connectingAccounts
{
  v2 = [(IMDAccountController *)self activeAccounts];
  v3 = [v2 __imArrayByFilteringWithBlock:&unk_283F19308];

  return v3;
}

- (id)connectingAccountsForService:(id)a3
{
  v3 = [(IMDAccountController *)self activeAccountsForService:a3];
  v4 = [v3 __imArrayByFilteringWithBlock:&unk_283F19328];

  return v4;
}

- (BOOL)accountAssociatedWithHandle:(id)a3
{
  v3 = [(IMDAccountController *)self accountForHandle:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)accountForIDSAccountUniqueID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(IMDAccountController *)self accounts];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 idsAccount];
          v11 = [v10 uniqueID];
          v12 = [v11 caseInsensitiveCompare:v4];

          if (!v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = [(IMDAccountController *)self activeAccounts];
  v3 = [v2 __imArrayByApplyingBlock:&unk_283F19348 filter:&unk_283F19368];

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
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEA60] array];
  }

  v6 = v5;

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)sessionForAccount:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDAccountController *)self accountForAccountID:v4];
  v6 = [v5 session];
  if (!v6)
  {
    v7 = [v5 service];
    v8 = [IMDServiceSession existingServiceSessionForService:v7];

    if (!v8 || ([v5 createSessionIfNecessary], objc_msgSend(v5, "session"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          accounts = self->_accounts;
          v13 = 138412802;
          v14 = v4;
          v15 = 2112;
          v16 = v5;
          v17 = 2112;
          v18 = accounts;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Could not find a service session for string: %@, account: %@, allAccounts: %@", &v13, 0x20u);
        }
      }

      v6 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)anySessionForServiceName:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMDServiceController sharedController];
  v5 = [v4 serviceWithName:v3];

  if (v5)
  {
    v6 = +[IMDAccountController sharedInstance];
    v7 = [v6 activeAccountsForService:v5];
    v8 = [v7 __imFirstObject];

    if (v8)
    {
      v9 = [v8 session];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v21 = 138412290;
          v22 = v8;
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
          v17 = [v16 accounts];
          v21 = 138412802;
          v22 = v3;
          v23 = 2112;
          v24 = v15;
          v25 = 2112;
          v26 = v17;
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
        v22 = v3;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "IMDAccountController: Could not find a service for string: %@", &v21, 0xCu);
      }
    }

    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)sessionForReplicationSourceServiceName:(id)a3 replicatingAccount:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v32 = a4;
  v6 = +[IMDServiceController sharedController];
  v31 = [v6 serviceWithName:v30];

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
          v11 = [v10 replicationSessions];
          v12 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v12)
          {
            v13 = *v34;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v34 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v33 + 1) + 8 * i);
                v16 = [v15 replicationService];
                v17 = [v16 internalName];
                v18 = [v32 service];
                v19 = [v18 internalName];
                v20 = [v17 isEqualToString:v19];

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
                      v44 = v32;
                      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found source session %@ for replicating account %@", buf, 0x16u);
                    }
                  }

                  v22 = v15;

                  goto LABEL_28;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
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
      v42 = v30;
      v43 = 2112;
      v44 = v32;
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

  v5 = [(IMDAccountController *)self _operationalAccounts];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Rebuilding operational accounts, old: (%@)  new: (%@)", &v12, 0x16u);
    }
  }

  v7 = [v5 count];
  if (v7 != -[NSSet count](v3, "count") || ([v5 isEqualToSet:v3] & 1) == 0)
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
  v2 = [(IMDAccountController *)self activeAccounts];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetReplicationSessions];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    v6 = [(IMDAccountController *)self activeAccounts];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([(IMDAccountController *)self _isOperationalForAccount:v11])
          {
            [(NSSet *)v4 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    objc_storeStrong(p_operationalAccountsCache, v4);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_isOperationalForAccount:(id)a3
{
  v3 = a3;
  if ([v3 isActive])
  {
    v4 = [v3 service];
    v5 = [v4 supportsRegistration];
    v6 = !v5 || [v3 accountType] != 2 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(v3, "idsAccount"), v7 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)account:(id)a3 isActiveChanged:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 serviceName];
  v8 = [v7 isEqualToString:@"com.apple.madrid"];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 canSend];
      v11 = @"NO";
      if (v4)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *v18 = 138413058;
      *&v18[4] = v6;
      if (v10)
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
    v14 = [(IMDAccountController *)self _nicknameController];
    v15 = v14;
    if (v4)
    {
      [v14 newDeviceDidSignIntoiMessage];
    }

    else
    {
      [v14 deviceSignedOutOfiMessage];
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
          v9 = [v8 idsAccount];
          v10 = [v9 aliasStrings];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v11 = v10;
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

  v17 = [v3 allObjects];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)activeAccountsAreEligibleForFilterUnknownSendersByDefault
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [(IMDAccountController *)self activeAccounts];
  if ([v2 count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v44;
      v7 = MEMORY[0x277D1A600];
      v34 = v2;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v44 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v43 + 1) + 8 * i);
          v10 = [v9 service];
          v11 = [v10 internalName];
          v12 = [v11 isEqualToString:*v7];

          if ((v12 & 1) == 0)
          {
            v13 = [v9 idsAccount];
            v14 = [v13 regionID];

            if ([MEMORY[0x277D1AC58] accountRegionIsCandidateForHawking:v14] & 1) != 0 || (objc_msgSend(MEMORY[0x277D1AC58], "receiverIsCandidateForDefaultAppleSMSFilter"))
            {
              goto LABEL_39;
            }

            v15 = [v9 aliases];
            v16 = [v15 count];

            if (v16)
            {
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v17 = [v9 aliases];
              v18 = [v17 countByEnumeratingWithState:&v39 objects:v48 count:16];
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
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v39 + 1) + 8 * v21);
                  if ([MEMORY[0x277D1AC58] receiverIsCandidateForHawking:{v22, v33}] & 1) != 0 || (objc_msgSend(MEMORY[0x277D1AC58], "receiverIsCandidateForDefaultAppleSMSFilter:", v22))
                  {
                    break;
                  }

                  if (v19 == ++v21)
                  {
                    v19 = [v17 countByEnumeratingWithState:&v39 objects:v48 count:16];
                    v6 = v33;
                    if (v19)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_20;
                  }
                }

LABEL_36:
                v2 = v34;

                v30 = 1;
                goto LABEL_40;
              }

LABEL_20:

              v7 = MEMORY[0x277D1A600];
            }

            else
            {
              v23 = MEMORY[0x277D1AC58];
              v17 = [v9 loginID];
              if ([v23 receiverIsCandidateForHawking:v17])
              {
                goto LABEL_36;
              }

              v24 = MEMORY[0x277D1AC58];
              v25 = [v9 loginID];
              LOBYTE(v24) = [v24 receiverIsCandidateForDefaultAppleSMSFilter:v25];

              if (v24)
              {
LABEL_39:
                v30 = 1;
                v2 = v34;
                goto LABEL_40;
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
        v2 = v34;
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
    v14 = v38 = 0u;
    v26 = [v14 countByEnumeratingWithState:&v35 objects:v47 count:16];
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
            objc_enumerationMutation(v14);
          }

          if ([MEMORY[0x277D1AC58] receiverIsCandidateForDefaultAppleSMSFilter:*(*(&v35 + 1) + 8 * j)])
          {
            v30 = 1;
            goto LABEL_38;
          }
        }

        v27 = [v14 countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v30 = 0;
LABEL_38:
    v3 = v14;
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
          v10 = [v8 service];
          v11 = [v10 internalName];
          v12 = [v11 isEqualToString:*MEMORY[0x277D1A600]];

          if ((v12 & 1) == 0)
          {
            v13 = [v8 idsAccount];
            v14 = [v13 regionID];

            if ([MEMORY[0x277D1AC58] accountRegionIsCandidateForHawking:v14])
            {
LABEL_22:

              v22 = 1;
              goto LABEL_24;
            }

            v15 = [v8 idsAccount];
            v16 = [v15 aliasStrings];

            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v17 = v16;
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

- (BOOL)receiverIsCandidateForHawking:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
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
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v19 = 138412546;
            v20 = v7;
            v21 = 2112;
            v22 = v8;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for spam filtering.", &v19, 0x16u);
          }

          goto LABEL_30;
        }
      }

      else if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v19 = 138412546;
          v20 = v7;
          v21 = 2112;
          v22 = v8;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is not a candidate for spam filtering.", &v19, 0x16u);
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

    v12 = [v8 idsAccount];
    v11 = [v12 regionID];

    v9 = [MEMORY[0x277D1AC58] accountRegionIsCandidateForHawking:v11];
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
          v22 = v11;
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
        v22 = v11;
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
        v9 = [v8 service];
        v10 = [v9 internalName];
        v11 = [v10 isEqualToString:*v6];

        if ((v11 & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v8 idsAccount];
            v13 = [v12 aliasStrings];

            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v14 = v13;
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

- (BOOL)receiverIsCandidateForJunk:(id)a3 forAccount:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = MEMORY[0x231897A70](v5);
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
      v11 = [MEMORY[0x277D1AC58] telephonyCountryCodesEligibleForJunkFiltering];
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v12)
      {
        v13 = *v32;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v11);
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

          v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          v15 = [v6 idsAccount];
          v16 = [v15 regionID];

          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v38 = v8;
              v39 = 2112;
              v40 = v16;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Receiving ID: %@ has region: %@", buf, 0x16u);
            }
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v18 = [MEMORY[0x277D1AC58] accountRegionsEligibleForJunkFiltering];
          v12 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v12)
          {
            v19 = *v28;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v28 != v19)
                {
                  objc_enumerationMutation(v18);
                }

                if ([*(*(&v27 + 1) + 8 * j) isEqualToString:v16])
                {
                  if (IMOSLoggingEnabled())
                  {
                    v24 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v38 = v16;
                      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Region (%@) is a candidate for Oscar filtering.", buf, 0xCu);
                    }
                  }

                  LOBYTE(v12) = 1;
                  goto LABEL_50;
                }
              }

              v12 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            v38 = v6;
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
    sub_22B7CF628(v5, v7);
  }

  LOBYTE(v12) = 0;
LABEL_52:

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

@end