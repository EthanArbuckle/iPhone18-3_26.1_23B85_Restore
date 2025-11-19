@interface ESDAgentManager
+ (id)sharedManager;
- (BOOL)_clearOrphanedStoresInCalendarDatabase:(CalDatabase *)a3 eventAccountIds:(id)a4 toDoAccountIds:(id)a5;
- (BOOL)_hasDataclassWeCareAbout:(id)a3;
- (BOOL)_systemMayNowBeReady;
- (BOOL)addPersistMonitoringAccountID:(id)a3 folderIDs:(id)a4 clientID:(id)a5;
- (BOOL)clearPersistMonitoringAccountID:(id)a3 clientID:(id)a4;
- (BOOL)hasActiveAccounts;
- (BOOL)hasEASAccountConfigured;
- (BOOL)processFolderChange:(id)a3 forAccountWithID:(id)a4 completionBlock:(id)a5;
- (BOOL)removePersistMonitoringAccountID:(id)a3 folderIDs:(id)a4 clientID:(id)a5;
- (BOOL)resetCertWarningsForAccountWithId:(id)a3 andDataclasses:(int64_t)a4;
- (BOOL)resumeMonitoringAccountID:(id)a3 folderIDs:(id)a4;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5 forAccountID:(id)a6;
- (BOOL)startMonitoringAccountID:(id)a3 folderIDs:(id)a4;
- (BOOL)stopMonitoringAccountID:(id)a3 folderIDs:(id)a4;
- (BOOL)suspendMonitoringAccountID:(id)a3 folderIDs:(id)a4;
- (BOOL)updateContentsOfAllFoldersForAccountID:(id)a3 andDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5;
- (BOOL)updateContentsOfFolders:(id)a3 forAccountID:(id)a4 andDataclasses:(int64_t)a5 isUserRequested:(BOOL)a6;
- (BOOL)updateFolderListForAccountID:(id)a3 andDataclasses:(int64_t)a4 requireChangedFolders:(BOOL)a5 isUserRequested:(BOOL)a6;
- (ESDAgentManager)init;
- (NSArray)activeAgents;
- (id)_accountInfoPath;
- (id)_configFileForAgent:(id)a3;
- (id)_phoneVersion;
- (id)accountWithAccountID:(id)a3;
- (id)accountWithAccountID:(id)a3 andClassName:(id)a4;
- (id)accountsProviderWithDBHelper:(id)a3;
- (id)activeAccountBundleIDs;
- (id)agentWithAccountID:(id)a3;
- (id)changeHistoryClerkWithDBHelper:(id)a3;
- (id)currentPolicyKeyForAccount:(id)a3;
- (id)stateString;
- (unint64_t)disableMonitoringAgents;
- (void)_addAccountAggdEntries;
- (void)_calDaysToSyncDidChange;
- (void)_clearOrphanedStores;
- (void)_deviceDidWake;
- (void)_deviceWillSleep;
- (void)_handleCellularDataUsageChangedNotification;
- (void)_loadAndStartExchangeMonitoringAgents;
- (void)_registerForCTDataUsageNotificaiton;
- (void)_resetMonitoringRequestsAndLoadAgents;
- (void)_stopMonitoringAndSaveAgents;
- (void)cleanupLaunchdSemaphore;
- (void)dealloc;
- (void)disableActiveSync;
- (void)disableDaemon;
- (void)enableActiveSync;
- (void)enableDaemon;
- (void)enableMonitoringAgentsWithToken:(unint64_t)a3;
- (void)getStatusReportDictsWithCompletionBlock:(id)a3;
- (void)loadAgents;
- (void)loadExchangeAgents;
- (void)processMeetingRequestDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7 callback:(id)a8;
- (void)registerForBuddy;
- (void)removePendingAccountSetup;
- (void)reportFolderItemsSyncSuccess:(BOOL)a3 forFolderWithID:(id)a4 withItemsCount:(unint64_t)a5 andAccountWithID:(id)a6;
- (void)requestPolicyUpdateForAccount:(id)a3;
- (void)saveAndReleaseAgents;
@end

@implementation ESDAgentManager

+ (id)sharedManager
{
  if (sharedManager_dispatchToken != -1)
  {
    +[ESDAgentManager sharedManager];
  }

  v3 = sharedManager_sSharedESDAgentManager;

  return v3;
}

uint64_t __32__ESDAgentManager_sharedManager__block_invoke()
{
  sharedManager_sSharedESDAgentManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ESDAgentManager)init
{
  v19.receiver = self;
  v19.super_class = ESDAgentManager;
  v2 = [(ESDAgentManager *)&v19 init];
  v3 = v2;
  if (v2)
  {
    __RootDomainConnect = IORegisterForSystemPower(0, &v2->_pmPort, _devicePowerChanged, &v2->_pmNotifier);
    if (__RootDomainConnect)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v3->_pmPort);
      v3->_pmRunLoopSource = RunLoopSource;
      if (RunLoopSource)
      {
        v5 = [MEMORY[0x277D037D0] sharedRunLoop];
        v6 = [v5 getCFRunLoop];
        CFRunLoopAddSource(v6, v3->_pmRunLoopSource, *MEMORY[0x277CBF048]);

        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v7, v8))
        {
          *v18 = 0;
          v9 = "Registered for wake notification";
LABEL_10:
          _os_log_impl(&dword_24A184000, v7, v8, v9, v18, 2u);
        }
      }

      else
      {
        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v7, v8))
        {
          *v18 = 0;
          v9 = "IONotificationPortGetRunLoopSource returned NULL, can't register for wake notification";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v7, v8))
      {
        *v18 = 0;
        v9 = "IORegisterForSystemPower returned MACH_PORT_NULL, can't register for wake notification";
        goto LABEL_10;
      }
    }

    v10 = objc_opt_new();
    watchedIDs = v3->_watchedIDs;
    v3->_watchedIDs = v10;

    v12 = objc_opt_new();
    disableMonitoringAgentsTokens = v3->_disableMonitoringAgentsTokens;
    v3->_disableMonitoringAgentsTokens = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("activeAgentsQueue", v14);
    activeAgentsQueue = v3->_activeAgentsQueue;
    v3->_activeAgentsQueue = v15;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_pmRunLoopSource)
  {
    v3 = [MEMORY[0x277D037D0] sharedRunLoop];
    v4 = [v3 getCFRunLoop];
    CFRunLoopRemoveSource(v4, self->_pmRunLoopSource, *MEMORY[0x277CBF048]);

    CFRunLoopSourceInvalidate(self->_pmRunLoopSource);
  }

  pmPort = self->_pmPort;
  if (pmPort)
  {
    IONotificationPortDestroy(pmPort);
  }

  IODeregisterForSystemPower(&self->_pmNotifier);
  IOServiceClose(__RootDomainConnect);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D28B28], 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v7, self, @"com.apple.purplebuddy.setupdone", 0);
  v8.receiver = self;
  v8.super_class = ESDAgentManager;
  [(ESDAgentManager *)&v8 dealloc];
}

- (NSArray)activeAgents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  activeAgentsQueue = self->_activeAgentsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__ESDAgentManager_activeAgents__block_invoke;
  v5[3] = &unk_278FCE128;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activeAgentsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__ESDAgentManager_activeAgents__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) count];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_24A184000, v5, v6, "ESDAgentManager: Fetching active agents. count = %d, agents = %@", v10, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)accountsProviderWithDBHelper:(id)a3
{
  v3 = a3;
  v4 = [v3 useContacts];
  v5 = MEMORY[0x277D03770];
  if (v4)
  {
    v6 = [v3 contactStore];

    v7 = [v5 providerWithContactStore:v6];
  }

  else
  {
    v8 = [v3 abDB];

    v7 = [v5 providerWithAddressBook:v8];
  }

  return v7;
}

- (id)changeHistoryClerkWithDBHelper:(id)a3
{
  v3 = a3;
  if ([v3 useContacts])
  {
    v4 = [v3 contactStore];

    v5 = [DAChangeHistoryClerk clerkWithContactStore:v4];
  }

  else
  {
    v6 = [v3 abDB];

    v5 = [DAChangeHistoryClerk clerkWithAddressBook:v6];
  }

  return v5;
}

- (id)agentWithAccountID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ESDAgentManager *)self activeAgents];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 account];
        v13 = [v12 accountID];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          v15 = v11;

          v8 = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)accountWithAccountID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ESDAgentManager *)self activeAgents];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v20;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v8 = [*(*(&v19 + 1) + 8 * v11) account];

        v13 = [v8 accountID];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          v15 = v8;

          v9 = v15;
        }

        ++v11;
        v12 = v8;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v16 = v9;

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)accountWithAccountID:(id)a3 andClassName:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = a4;
  NSClassFromString(v20);
  v7 = [(ESDAgentManager *)self activeAgents];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v22;
    while (1)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v10 = [*(*(&v21 + 1) + 8 * v13) account];

        v15 = [v10 accountID];
        if ([v15 isEqualToString:v6])
        {
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_10;
          }

          v15 = v11;
          v11 = v10;
        }

LABEL_10:
        ++v13;
        v14 = v10;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v9)
      {
        goto LABEL_14;
      }
    }
  }

  v10 = 0;
  v11 = 0;
LABEL_14:
  v17 = v11;

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_configFileForAgent:(id)a3
{
  v3 = a3;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 objectAtIndexedSubscript:0];

  v6 = [v5 stringByAppendingPathComponent:@"DataAccess"];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  v8 = [v3 account];

  v9 = [v8 accountID];
  v10 = [v6 stringByAppendingPathComponent:v9];

  return v10;
}

- (id)_accountInfoPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndexedSubscript:0];

  v4 = [v3 stringByAppendingPathComponent:@"DataAccess"];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = [v4 stringByAppendingPathComponent:@"AccountInformation.plist"];

  return v6;
}

- (id)_phoneVersion
{
  v2 = _phoneVersion___phoneVersion;
  if (!_phoneVersion___phoneVersion)
  {
    v3 = _CFCopyServerVersionDictionary();
    if (!v3)
    {
      v3 = _CFCopySystemVersionDictionary();
    }

    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    v5 = _phoneVersion___phoneVersion;
    _phoneVersion___phoneVersion = v4;

    v2 = _phoneVersion___phoneVersion;
  }

  return v2;
}

- (void)loadAgents
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v2, v3))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A184000, v2, v3, "loadAgents should not be called", v4, 2u);
  }
}

- (void)loadExchangeAgents
{
  v130 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  type = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, type))
  {
    v4 = [(ESDAgentManager *)self _phoneVersion];
    *buf = 138412290;
    v122 = v4;
    _os_log_impl(&dword_24A184000, v3, type, "iPhone Version %@", buf, 0xCu);
  }

  v76 = self;
  objc_sync_enter(v76);
  v82 = objc_opt_new();
  v88 = objc_opt_new();
  v86 = objc_opt_new();
  v91 = [MEMORY[0x277CBEB18] array];
  v87 = sharedDAAccountStore();
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v5 = [MEMORY[0x277D079E8] _leafExchangeAccountTypes];
  v6 = [v5 countByEnumeratingWithState:&v115 objects:v129 count:16];
  obj = v5;
  if (v6)
  {
    v81 = 0;
    v83 = *v116;
    v84 = v6;
    v7 = *(MEMORY[0x277D03988] + 3);
    v78 = *MEMORY[0x277CB8C00];
    v77 = *MEMORY[0x277CB8C50];
    do
    {
      v89 = 0;
      do
      {
        if (*v116 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v115 + 1) + 8 * v89);
        v9 = [v87 accountTypeWithAccountTypeIdentifier:v8];
        if (v9)
        {
          v10 = [v87 accountsWithAccountType:v9];
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v111 objects:v128 count:16];
          v85 = v9;
          if (v12)
          {
            v80 = v8;
            v13 = 0;
            v14 = *v112;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v112 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v111 + 1) + 8 * i);
                v17 = [MEMORY[0x277D079F0] sharedInstance];
                v18 = [v17 daemonAppropriateAccountClassForACAccount:v16];

                v19 = [[v18 alloc] initWithBackingAccountInfo:v16];
                if (v19)
                {
                  v20 = DALoggingwithCategory();
                  if (os_log_type_enabled(v20, type))
                  {
                    v21 = NSStringFromClass(v18);
                    *buf = 138412546;
                    v122 = v16;
                    v123 = 2114;
                    v124 = v21;
                    _os_log_impl(&dword_24A184000, v20, type, "Creating an agent for account info %@ (%{public}@)", buf, 0x16u);
                  }

                  [v91 addObject:v19];
                  v13 = 1;
                }

                else
                {
                  v22 = DALoggingwithCategory();
                  if (os_log_type_enabled(v22, v7))
                  {
                    v23 = NSStringFromClass(v18);
                    *buf = 138412546;
                    v122 = v16;
                    v123 = 2114;
                    v124 = v23;
                    _os_log_impl(&dword_24A184000, v22, v7, "Not creating an agent for account info %@ (%{public}@), it refused to init itself", buf, 0x16u);
                  }
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v111 objects:v128 count:16];
            }

            while (v12);

            v9 = v85;
            if (!v81 && (v13 & 1) != 0)
            {
              v81 = ([v80 isEqualToString:v78] & 1) != 0 || objc_msgSend(v80, "isEqualToString:", v77);
            }
          }

          else
          {
          }
        }

        ++v89;
      }

      while (v89 != v84);
      v24 = [obj countByEnumeratingWithState:&v115 objects:v129 count:16];
      v84 = v24;
    }

    while (v24);
  }

  else
  {
    v81 = 0;
  }

  v25 = [MEMORY[0x277D03788] sharedKeychain];
  [v25 removePersistentCredentials];

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v26 = v91;
  v27 = [v26 countByEnumeratingWithState:&v107 objects:v127 count:16];
  if (v27)
  {
    v92 = *v108;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v108 != v92)
        {
          objc_enumerationMutation(v26);
        }

        v29 = *(*(&v107 + 1) + 8 * j);
        v30 = [v29 accountID];
        if (v30)
        {
          [v86 addObject:v30];
        }

        if ([v29 isDisabled])
        {
          v31 = DALoggingwithCategory();
          if (os_log_type_enabled(v31, type))
          {
            v32 = [v29 accountDescription];
            v33 = [v29 accountID];
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            *buf = 138543874;
            v122 = v32;
            v123 = 2112;
            v124 = v33;
            v125 = 2114;
            v126 = v35;
            _os_log_impl(&dword_24A184000, v31, type, "Not loading an agent for account %{public}@ (%@) (%{public}@), because it is disabled", buf, 0x20u);
          }
        }

        else
        {
          v36 = [MEMORY[0x277D079F0] sharedInstance];
          v37 = [v29 backingAccountInfo];
          v38 = [v36 agentClassForACAccount:v37];

          if (v38)
          {
            v39 = DALoggingwithCategory();
            if (os_log_type_enabled(v39, type))
            {
              v40 = [v29 accountDescription];
              v41 = [v29 accountID];
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              *buf = 138543874;
              v122 = v40;
              v123 = 2112;
              v124 = v41;
              v125 = 2114;
              v126 = v43;
              _os_log_impl(&dword_24A184000, v39, type, "Loading up agent for account %{public}@ (%@) (%{public}@)", buf, 0x20u);
            }

            v44 = [v29 accountID];
            [v88 addObject:v44];

            v31 = [[v38 alloc] initWithAccount:v29];
            [v82 addObject:v31];
          }

          else
          {
            v31 = DALoggingwithCategory();
            if (os_log_type_enabled(v31, type))
            {
              v45 = [v29 accountDescription];
              v46 = [v29 accountID];
              v47 = objc_opt_class();
              v48 = NSStringFromClass(v47);
              *buf = 138543874;
              v122 = v45;
              v123 = 2112;
              v124 = v46;
              v125 = 2114;
              v126 = v48;
              _os_log_impl(&dword_24A184000, v31, type, "Not loading an agent for account %{public}@ (%@) (%{public}@), because agentClass is nil", buf, 0x20u);
            }
          }
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v107 objects:v127 count:16];
    }

    while (v27);
  }

  if ([v82 count])
  {
    activeAgentsQueue = v76->_activeAgentsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ESDAgentManager_loadExchangeAgents__block_invoke;
    block[3] = &unk_278FCDB98;
    block[4] = v76;
    v106 = v82;
    dispatch_sync(activeAgentsQueue, block);
    [(ESDAgentManager *)v76 enableDaemon];
  }

  if (v81)
  {
    v50 = DALoggingwithCategory();
    if (os_log_type_enabled(v50, type))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v50, type, "Enable active sync", buf, 2u);
    }

    [(ESDAgentManager *)v76 enableActiveSync];
  }

  else
  {
    v51 = DALoggingwithCategory();
    if (os_log_type_enabled(v51, type))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v51, type, "Disable active sync", buf, 2u);
    }

    [(ESDAgentManager *)v76 disableActiveSync];
  }

  objc_sync_exit(v76);
  v90 = objc_opt_new();
  v52 = objc_alloc(MEMORY[0x277CBEA60]);
  v53 = [(ESDAgentManager *)v76 _accountInfoPath];
  v54 = [v52 initWithContentsOfFile:v53];

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  typea = v54;
  v55 = [typea countByEnumeratingWithState:&v101 objects:v120 count:16];
  if (v55)
  {
    v56 = *v102;
    v57 = *MEMORY[0x277D03828];
    do
    {
      for (k = 0; k != v55; ++k)
      {
        if (*v102 != v56)
        {
          objc_enumerationMutation(typea);
        }

        v59 = *(*(&v101 + 1) + 8 * k);
        v60 = [v59 objectForKeyedSubscript:@"Identifier"];
        if (v60 && ([v88 containsObject:v60] & 1) == 0)
        {
          v61 = [v59 objectForKeyedSubscript:@"DAAgentClass"];
          v62 = v61;
          if (v61)
          {
            v63 = NSClassFromString(v61);
            if (v63)
            {
              if (objc_opt_respondsToSelector())
              {
                [(objc_class *)v63 cleanUpFilesForAccountWithId:v60];
              }
            }
          }

          v64 = [v59 objectForKeyedSubscript:v57];
          if (v64)
          {
            [v90 addObject:v64];
          }
        }
      }

      v55 = [typea countByEnumeratingWithState:&v101 objects:v120 count:16];
    }

    while (v55);
  }

  if ([v90 count])
  {
    v65 = [MEMORY[0x277D262A0] sharedConnection];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v93 = v90;
    v66 = [v93 countByEnumeratingWithState:&v97 objects:v119 count:16];
    if (v66)
    {
      v67 = *v98;
      v68 = *(MEMORY[0x277D03988] + 3);
      do
      {
        for (m = 0; m != v66; ++m)
        {
          if (*v98 != v67)
          {
            objc_enumerationMutation(v93);
          }

          v70 = *(*(&v97 + 1) + 8 * m);
          v96 = 0;
          v71 = [v65 applyRestrictionDictionary:0 clientType:@"com.apple.eas.account" clientUUID:v70 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v96];
          v72 = v96;
          if ((v71 & 1) == 0)
          {
            v73 = DALoggingwithCategory();
            if (os_log_type_enabled(v73, v68))
            {
              *buf = 138412546;
              v122 = v70;
              v123 = 2112;
              v124 = v72;
              _os_log_impl(&dword_24A184000, v73, v68, "Error when cleaning up client restrictions for persistentUUID %@.  Error %@", buf, 0x16u);
            }
          }
        }

        v66 = [v93 countByEnumeratingWithState:&v97 objects:v119 count:16];
      }

      while (v66);
    }
  }

  v74 = [MEMORY[0x277D262A0] sharedConnection];
  [v74 removeOrphanedClientRestrictionsWithCompletion:0];

  [MEMORY[0x277D03758] startDailyAggDReporter];
  v75 = *MEMORY[0x277D85DE8];
}

void __37__ESDAgentManager_loadExchangeAgents__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [*(a1 + 40) count];
    v8 = *(a1 + 40);
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_24A184000, v5, v6, "ESDAgentManager: Settings active agents. count = %d, agents = %@", v10, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)saveAndReleaseAgents
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = objc_opt_new();
  [(ESDAgentManager *)self activeAgents];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v3 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v23 = *v29;
    v5 = *MEMORY[0x277D03828];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 account];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 accountID];
        v12 = [v8 persistentUUID];
        v13 = v12;
        v32[0] = @"DAAgentClass";
        v32[1] = @"Identifier";
        if (v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = &stru_285D58A48;
        }

        v33[0] = v10;
        v33[1] = v14;
        v32[2] = v5;
        if (v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = &stru_285D58A48;
        }

        v33[2] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
        [v24 addObject:v16];
        [v7 shutdown];
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v4);
  }

  v17 = [(ESDAgentManager *)self _accountInfoPath];
  [v24 writeToFile:v17 atomically:1];

  v18 = [MEMORY[0x277D262A0] sharedConnection];
  [v18 removeOrphanedClientRestrictionsWithCompletion:0];

  activeAgentsQueue = self->_activeAgentsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ESDAgentManager_saveAndReleaseAgents__block_invoke;
  block[3] = &unk_278FCDB98;
  v26 = obj;
  v27 = self;
  v20 = obj;
  dispatch_sync(activeAgentsQueue, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __39__ESDAgentManager_saveAndReleaseAgents__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) count];
    v5 = *(a1 + 32);
    v9[0] = 67109378;
    v9[1] = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_24A184000, v2, v3, "ESDAgentManager: Clearing active agents. previous count = %d, previous agents = %@", v9, 0x12u);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deviceWillSleep
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(ESDAgentManager *)self activeAgents];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v14 + 1) + 8 * i) account];
        [v7 deviceWillSleep];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v9))
  {
    *v13 = 0;
    _os_log_impl(&dword_24A184000, v8, v9, "Tearing down connection cache", v13, 2u);
  }

  CFURLConnectionInvalidateConnectionCache();
  v10 = [MEMORY[0x277CCAD30] sharedSession];
  [v10 flushWithCompletionHandler:&__block_literal_global_56];
  v11 = DALoggingwithCategory();
  if (os_log_type_enabled(v11, v9))
  {
    *v13 = 0;
    _os_log_impl(&dword_24A184000, v11, v9, "Tore down connection cache", v13, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deviceDidWake
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(ESDAgentManager *)self activeAgents];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) account];
        [v7 deviceDidWake];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)currentPolicyKeyForAccount:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ESDAgentManager *)self activeAgents];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 account];
        v11 = [v10 accountID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = [v9 account];
          v14 = [v13 policyManager];
          v6 = [v14 currentPolicyKey];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)requestPolicyUpdateForAccount:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ESDAgentManager *)self activeAgents];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 account];
        v12 = [v11 accountID];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v16 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 4);
          if (os_log_type_enabled(v16, v17))
          {
            *buf = 138412290;
            v27 = v4;
            _os_log_impl(&dword_24A184000, v16, v17, "Received policy update request through XPC for account with ID %@. Setting this as user initiated.", buf, 0xCu);
          }

          v18 = [v10 account];
          [v18 setWasUserInitiated:1];

          v19 = [v10 account];
          v20 = [v19 policyManager];
          [v20 requestPolicyUpdate];

          v14 = v5;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&dword_24A184000, v14, v15, "problem handling policy update request: no known account with ID %@", buf, 0xCu);
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)startMonitoringAccountID:(id)a3 folderIDs:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v28 = a4;
  [(ESDAgentManager *)self activeAgents];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v31;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v30 + 1) + 8 * i);
      v14 = [v13 account];
      v15 = [v14 accountID];
      v16 = [v15 isEqualToString:v6];

      if (v16)
      {
        v17 = [v13 account];
        v10 = [v17 monitorFoldersWithIDs:v28];

        v9 = 1;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  }

  while (v8);
  if ((v10 & 1) == 0)
  {
    if (v9)
    {
      v19 = DALoggingwithCategory();
      v20 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 138412290;
        v35 = v28;
        v21 = "Did not start monitoring folder ids %@, because the agent said nope";
        v22 = v19;
        v23 = v20;
        v24 = 12;
LABEL_17:
        _os_log_impl(&dword_24A184000, v22, v23, v21, buf, v24);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

LABEL_15:
    v19 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v25))
    {
      *buf = 138412802;
      v35 = v28;
      v36 = 2112;
      v37 = v6;
      v38 = 2112;
      v39 = obj;
      v21 = "Did not start monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@";
      v22 = v19;
      v23 = v25;
      v24 = 32;
      goto LABEL_17;
    }

LABEL_18:

    v18 = 0;
    goto LABEL_19;
  }

  v18 = 1;
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)stopMonitoringAccountID:(id)a3 folderIDs:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = [(ESDAgentManager *)self activeAgents];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v25;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      v14 = [v13 account];
      v15 = [v14 accountID];
      v16 = [v15 isEqualToString:v6];

      if (v16)
      {
        v17 = [v13 account];
        [v17 stopMonitoringFoldersWithIDs:v23];

        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  }

  while (v9);
  if (v10)
  {
    v18 = 1;
  }

  else
  {
LABEL_12:
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138412802;
      v29 = v23;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_24A184000, v19, v20, "Did not stop monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)suspendMonitoringAccountID:(id)a3 folderIDs:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = [(ESDAgentManager *)self activeAgents];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v25;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      v14 = [v13 account];
      v15 = [v14 accountID];
      v16 = [v15 isEqualToString:v6];

      if (v16)
      {
        v17 = [v13 account];
        [v17 suspendMonitoringFoldersWithIDs:v23];

        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  }

  while (v9);
  if (v10)
  {
    v18 = 1;
  }

  else
  {
LABEL_12:
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138412802;
      v29 = v23;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_24A184000, v19, v20, "Did not suspend monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)resumeMonitoringAccountID:(id)a3 folderIDs:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = [(ESDAgentManager *)self activeAgents];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v25;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      v14 = [v13 account];
      v15 = [v14 accountID];
      v16 = [v15 isEqualToString:v6];

      if (v16)
      {
        v17 = [v13 account];
        [v17 resumeMonitoringFoldersWithIDs:v23];

        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  }

  while (v9);
  if (v10)
  {
    v18 = 1;
  }

  else
  {
LABEL_12:
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138412802;
      v29 = v23;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_24A184000, v19, v20, "Did not resume monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addPersistMonitoringAccountID:(id)a3 folderIDs:(id)a4 clientID:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v32 = a4;
  v31 = a5;
  [(ESDAgentManager *)self activeAgents];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *v35;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v35 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v34 + 1) + 8 * i);
      v16 = [v15 account];
      v17 = [v16 accountID];
      v18 = [v17 isEqualToString:v8];

      if (v18)
      {
        v19 = [v15 account];
        v20 = [MEMORY[0x277CBEB98] setWithArray:v32];
        v12 = [v19 setFolderIdsForPersistentPushAdded:v20 deleted:0 clientID:v31];

        v11 = 1;
      }
    }

    v10 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  }

  while (v10);
  if ((v12 & 1) == 0)
  {
    if (v11)
    {
      v22 = DALoggingwithCategory();
      v23 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v22, v23))
      {
        *buf = 138412290;
        v39 = v32;
        v24 = "Did not add persistent monitoring folder ids %@, because the agent said nope";
        v25 = v22;
        v26 = v23;
        v27 = 12;
LABEL_17:
        _os_log_impl(&dword_24A184000, v25, v26, v24, buf, v27);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

LABEL_15:
    v22 = DALoggingwithCategory();
    v28 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v22, v28))
    {
      *buf = 138412802;
      v39 = v32;
      v40 = 2112;
      v41 = v8;
      v42 = 2112;
      v43 = obj;
      v24 = "Did not add persistent monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@";
      v25 = v22;
      v26 = v28;
      v27 = 32;
      goto LABEL_17;
    }

LABEL_18:

    v21 = 0;
    goto LABEL_19;
  }

  v21 = 1;
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)removePersistMonitoringAccountID:(id)a3 folderIDs:(id)a4 clientID:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v27 = a4;
  v26 = a5;
  v9 = [(ESDAgentManager *)self activeAgents];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v29;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v28 + 1) + 8 * i);
      v16 = [v15 account];
      v17 = [v16 accountID];
      v18 = [v17 isEqualToString:v8];

      if (v18)
      {
        v19 = [v15 account];
        v20 = [MEMORY[0x277CBEB98] setWithArray:v27];
        [v19 setFolderIdsForPersistentPushAdded:0 deleted:v20 clientID:v26];

        v12 = 1;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
  }

  while (v11);
  if (v12)
  {
    v21 = 1;
  }

  else
  {
LABEL_12:
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v22, v23))
    {
      *buf = 138412802;
      v33 = v27;
      v34 = 2112;
      v35 = v8;
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_24A184000, v22, v23, "Did not remove persistent monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v21 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)clearPersistMonitoringAccountID:(id)a3 clientID:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = [(ESDAgentManager *)self activeAgents];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v25;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      v14 = [v13 account];
      v15 = [v14 accountID];
      v16 = [v15 isEqualToString:v6];

      if (v16)
      {
        v17 = [v13 account];
        [v17 clearFolderIdsForPersistentPushWithClientID:v23];

        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  }

  while (v9);
  if (v10)
  {
    v18 = 1;
  }

  else
  {
LABEL_12:
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_24A184000, v19, v20, "Did not clear persistent monitoring folders, because I have no agent containing account id %@.  Agents: %@", buf, 0x16u);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_clearOrphanedStores
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ESDAgentManager.m" lineNumber:702 description:{@"When clearing orphaned stores, we have an account with no accountID.  That's bad.  account: %@", a3}];
}

- (BOOL)_clearOrphanedStoresInCalendarDatabase:(CalDatabase *)a3 eventAccountIds:(id)a4 toDoAccountIds:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v39 = a4;
  v38 = a5;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    *buf = 138412290;
    v46 = v39;
    _os_log_impl(&dword_24A184000, v6, v8, "ClearOrphanStores : Current DA CalDAV (events) Account IDs : %@", buf, 0xCu);
  }

  v9 = CalDatabaseCopyOfAllStores();
  v11 = 0;
  if ([v9 count])
  {
    type = *(v7 + 7);
    v12 = *(v7 + 3);
    v13 = 0;
    v14 = *MEMORY[0x277D07AE0];
    *&v10 = 134218240;
    v33 = v10;
    v34 = v9;
    do
    {
      [v9 objectAtIndexedSubscript:{v13, v33}];

      v15 = CalStoreGetType();
      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, type))
      {
        *buf = v33;
        v46 = v13;
        v47 = 1024;
        *v48 = v15;
        _os_log_impl(&dword_24A184000, v16, type, "ClearOrphanStores : curStore %lu has store type %d", buf, 0x12u);
      }

      if (v15 == 1)
      {
        v17 = CalStoreCopyExternalID();
        if (v17 && ([v39 containsObject:v17] & 1) == 0 && (objc_msgSend(v38, "containsObject:", v17) & 1) == 0)
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v12))
          {
            *buf = 138412802;
            v46 = v17;
            v47 = 2112;
            *v48 = v39;
            *&v48[8] = 2112;
            *&v48[10] = v38;
            _os_log_impl(&dword_24A184000, v18, v12, "ClearOrphanStores : ACCOUNTDCOERROR Removing calendar store, as its account id %@ isn't one of the account ids I know about: %@ | %@", buf, 0x20u);
          }

          CalRemoveStore();
          v11 = 1;
        }

        v35 = v13;
        v36 = v17;
        v19 = CalDatabaseCopyRegisteredClientIdentifiersForPersistentChangeTrackingInStore();
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, type))
        {
          UID = CalStoreGetUID();
          *buf = 138412802;
          v46 = v36;
          v47 = 1024;
          *v48 = UID;
          *&v48[4] = 2112;
          *&v48[6] = v19;
          _os_log_impl(&dword_24A184000, v20, type, "ClearOrphanStores : account id %@ store id %d has change tracking ids %@", buf, 0x1Cu);
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v22 = v19;
        v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v41;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v41 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v40 + 1) + 8 * i);
              if ([v27 hasPrefix:v14])
              {
                v28 = [v27 length];
                if (v28 > [v14 length])
                {
                  v29 = [v27 substringFromIndex:{objc_msgSend(v14, "length")}];
                  if (v29 && (([v39 containsObject:v29] & 1) != 0 || objc_msgSend(v38, "containsObject:", v29)))
                  {

                    continue;
                  }
                }

                v30 = DALoggingwithCategory();
                if (os_log_type_enabled(v30, v12))
                {
                  *buf = 138412802;
                  v46 = v27;
                  v47 = 2112;
                  *v48 = v39;
                  *&v48[8] = 2112;
                  *&v48[10] = v38;
                  _os_log_impl(&dword_24A184000, v30, v12, "ClearOrphanStores : Removing Calendar change tracking client, as its change tracking identifier %@ isn't one of the account ids I know about: %@ | %@", buf, 0x20u);
                }

                CalRemoveClientForPersistentChangeTracking();
                v11 = 1;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v24);
        }

        v9 = v34;
        v13 = v35;
      }

      ++v13;
    }

    while (v13 < [v9 count]);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (BOOL)_systemMayNowBeReady
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277D03988];
  if (!v2->_startAgentsWhenSystemReadyBlock)
  {
    startAgentsWhenSystemReadyBlock = DALoggingwithCategory();
    v11 = v3[3];
    if (os_log_type_enabled(startAgentsWhenSystemReadyBlock, v11))
    {
      LOWORD(v22[0]) = 0;
      v12 = "ESAgentManager: NO startAgentWhenSystemReadyBlock defined. This will not load any agents";
      goto LABEL_14;
    }

LABEL_15:
    v13 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v4 = MKBDeviceUnlockedSinceBoot();
  v5 = BYSetupAssistantNeedsToRun();
  v6 = DALoggingwithCategory();
  v7 = v3[6];
  if (os_log_type_enabled(v6, v7))
  {
    v22[0] = 67109376;
    v22[1] = v4 == 1;
    v23 = 1024;
    v24 = v5 ^ 1;
    _os_log_impl(&dword_24A184000, v6, v7, "ESAgentManager: Device is Unlocked %d and PastBuddy is %d", v22, 0xEu);
  }

  if (!(v5 & 1 | (v4 != 1)))
  {
    v13 = MEMORY[0x24C212500](v2->_startAgentsWhenSystemReadyBlock);
    startAgentsWhenSystemReadyBlock = v2->_startAgentsWhenSystemReadyBlock;
    v2->_startAgentsWhenSystemReadyBlock = 0;
    goto LABEL_17;
  }

  if (v4 != 1)
  {
    v8 = DALoggingwithCategory();
    v9 = v3[5];
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(&dword_24A184000, v8, v9, "Can't start yet, device is still locked", v22, 2u);
    }
  }

  if (v5)
  {
    startAgentsWhenSystemReadyBlock = DALoggingwithCategory();
    v11 = v3[5];
    if (os_log_type_enabled(startAgentsWhenSystemReadyBlock, v11))
    {
      LOWORD(v22[0]) = 0;
      v12 = "Can't start yet, device is still in buddy";
LABEL_14:
      _os_log_impl(&dword_24A184000, startAgentsWhenSystemReadyBlock, v11, v12, v22, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v13 = 0;
LABEL_18:
  objc_sync_exit(v2);

  if (v13)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v2, *MEMORY[0x277D28B28], 0);
    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v15, v2, @"com.apple.purplebuddy.setupdone", 0);
    v16 = DALoggingwithCategory();
    v17 = v3[6];
    if (os_log_type_enabled(v16, v17))
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(&dword_24A184000, v16, v17, "ESAgentManager: System Ready Calling Load Agents Block", v22, 2u);
    }

    v13[2](v13);
  }

  else
  {
    v18 = DALoggingwithCategory();
    v19 = v3[6];
    if (os_log_type_enabled(v18, v19))
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(&dword_24A184000, v18, v19, "ESAgentManager: System Not Yet Ready. We are Not Loading Agents", v22, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (void)_resetMonitoringRequestsAndLoadAgents
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_24A184000, v3, v4, "ESAgentManager: Clearing disableMonitoringAgentsTokens and Loading Agents", v6, 2u);
  }

  v5 = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  [v5 removeAllObjects];

  [(ESDAgentManager *)self _loadAndStartExchangeMonitoringAgents];
}

- (void)_calDaysToSyncDidChange
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [(ESDAgentManager *)self activeAgents];
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [v3 transactionId];
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_24A184000, v4, v5, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v2;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = v12;
          v14 = dataaccess_get_global_queue();
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __42__ESDAgentManager__calDaysToSyncDidChange__block_invoke;
          v17[3] = &unk_278FCDB98;
          v18 = v13;
          v19 = v3;
          v15 = v13;
          dispatch_async(v14, v17);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_registerForCTDataUsageNotificaiton
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = dispatch_queue_create("com.apple.dataaccess.ctdatapolicychangeq", 0);
  CTCellularUsagePolicyNotificationQ = self->_CTCellularUsagePolicyNotificationQ;
  self->_CTCellularUsagePolicyNotificationQ = v3;

  v5 = *MEMORY[0x277CBECE8];
  v6 = self->_CTCellularUsagePolicyNotificationQ;
  v7 = _CTServerConnectionCreateOnTargetQueue();
  self->_ctServerConnection = v7;
  if (!v7)
  {
    v10 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v16))
    {
      LOWORD(v18) = 0;
      v12 = "Failed to create CT server connection";
      v13 = v10;
      v14 = v16;
      v15 = 2;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v8 = *MEMORY[0x277CC3B50];
  v9 = _CTServerConnectionRegisterForNotification();
  if (v9)
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v18 = 138412802;
      v19 = @"kCTPerAppNetworkDataAccessPolicyChangedNotification";
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = HIDWORD(v9);
      v12 = "Failed to register CT server notification %@ (domain: %d error: %d).";
      v13 = v10;
      v14 = v11;
      v15 = 24;
LABEL_7:
      _os_log_impl(&dword_24A184000, v13, v14, v12, &v18, v15);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v17 = *MEMORY[0x277D85DE8];
}

void __54__ESDAgentManager__registerForCTDataUsageNotificaiton__block_invoke(int a1, CFStringRef theString1)
{
  if (CFStringCompare(theString1, *MEMORY[0x277CC3B50], 0) == kCFCompareEqualTo)
  {
    v2 = +[ESDMain sharedMain];
    [v2 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&__block_literal_global_80];
  }
}

void __54__ESDAgentManager__registerForCTDataUsageNotificaiton__block_invoke_2()
{
  v0 = +[ESDAgentManager sharedManager];
  [v0 _handleCellularDataUsageChangedNotification];
}

- (void)_handleCellularDataUsageChangedNotification
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(ESDAgentManager *)self activeAgents];
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v19;
    key = *MEMORY[0x277CC3988];
    v14 = *MEMORY[0x277CC4368];
    v6 = *MEMORY[0x277CC3990];
    *type = *(MEMORY[0x277D03988] + 6);
    *&v3 = 138543362;
    v12 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        ctServerConnection = self->_ctServerConnection;
        v9 = [*(*(&v18 + 1) + 8 * i) account];
        v10 = [v9 onBehalfOfBundleIdentifier];
        _CTServerConnectionCopyCellularUsagePolicy();
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_loadAndStartExchangeMonitoringAgents
{
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ESDAgentManager__loadAndStartExchangeMonitoringAgents__block_invoke;
  v12[3] = &unk_278FCE170;
  objc_copyWeak(&v13, &location);
  v3 = MEMORY[0x24C212500](v12);
  startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
  self->_startAgentsWhenSystemReadyBlock = v3;

  if ([(ESDAgentManager *)self _systemMayNowBeReady])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      *v11 = 0;
      _os_log_impl(&dword_24A184000, v5, v6, "ESAgentManager: NO startAgentWhenSystemReadyBlock defined. This will not load any agents", v11, 2u);
    }
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      *v11 = 0;
      _os_log_impl(&dword_24A184000, v7, v8, "ESAgentManager: System Not Yet Ready. We will Register for BuddyFinished and KeyBagLock status Notification", v11, 2u);
    }

    [(ESDAgentManager *)self enableDaemon];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _systemReadyCheckFired, *MEMORY[0x277D28B28], 0, CFNotificationSuspensionBehaviorDrop);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, self, _systemReadyCheckFired, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorDrop);
    [(ESDAgentManager *)self _systemMayNowBeReady];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __56__ESDAgentManager__loadAndStartExchangeMonitoringAgents__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v2, v4, "Loading Exchange agents", buf, 2u);
  }

  v5 = CFURLCacheCopySharedURLCache();
  if (v5)
  {
    v6 = v5;
    v7 = DALoggingwithCategory();
    v8 = *(v3 + 7);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v7, v8, "Removing CFURLCache entries", buf, 2u);
    }

    CFURLCacheRemoveAllCachedResponses();
    CFRelease(v6);
  }

  [MEMORY[0x277D037D8] resetSyncStatusIfNecessaryForStoresOfType:2];
  [WeakRetained loadExchangeAgents];
  [WeakRetained _clearOrphanedStores];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [WeakRetained activeAgents];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v14 account];
        if ([v15 keychainAccessibilityType] == 2)
        {
          v16 = [v15 password];
        }

        [v14 startMonitoring];
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, *MEMORY[0x277D038C0], WeakRetained, 0, 1uLL);
  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(v18, *MEMORY[0x277D03718], WeakRetained, 0, 1uLL);
  v19 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v19, WeakRetained, _pcPreferencesDidChange, @"PCPreferencesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v20 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v20, WeakRetained, _calDaysToSyncDidChange, *MEMORY[0x277CF7120], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v21 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v21, WeakRetained, _calDaysToSyncDidChange, *MEMORY[0x277CF7128], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v22 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v22, WeakRetained, _calDatabaseDidChange, @"_CalDatabaseChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v23 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v23, WeakRetained, _abDataBaseDidChangeByOtherProcess, @"__ABDataBaseChangedByOtherProcessNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v24 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v24, WeakRetained, _noteContextDidChange, @"NoteContextDarwinNotificationWithLoggedChanges", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  [WeakRetained _registerForCTDataUsageNotificaiton];
  v25 = DALoggingwithCategory();
  if (os_log_type_enabled(v25, v4))
  {
    v26 = WeakRetained[1];
    *buf = 138412290;
    v33 = v26;
    _os_log_impl(&dword_24A184000, v25, v4, "Agents loaded and monitoring.  They are %@", buf, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)registerForBuddy
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v3, v4, "REGISTER FOR BUDDY", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _systemReadyCheckFired, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorDrop);
  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v4))
  {
    *v7 = 0;
    _os_log_impl(&dword_24A184000, v6, v4, "EXITING REGISTER FOR BUDDY", v7, 2u);
  }
}

- (void)_stopMonitoringAndSaveAgents
{
  v46 = *MEMORY[0x277D85DE8];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"PCPreferencesDidChangeNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x277CF7120], 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, *MEMORY[0x277CF7128], 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, @"_CalDatabaseChangedNotification", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v7, self, @"__ABDataBaseChangedByOtherProcessNotification", 0);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v8, self, @"NoteContextDarwinNotificationWithLoggedChanges", 0);
  if (self->_startAgentsWhenSystemReadyBlock)
  {
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v9, self, *MEMORY[0x277D28B28], 0);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v10, self, @"com.apple.purplebuddy.setupdone", 0);
    startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
    if (startAgentsWhenSystemReadyBlock)
    {
      self->_startAgentsWhenSystemReadyBlock = 0;
    }
  }

  dispatch_suspend(gDADOperationQueue);
  v12 = [(ESDAgentManager *)self activeAgents];
  v13 = [v12 mutableCopy];
  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412290;
    v42 = v13;
    _os_log_impl(&dword_24A184000, v14, v15, "Agents awaiting shut down are %@", buf, 0xCu);
  }

  v16 = DALoggingwithCategory();
  if (os_log_type_enabled(v16, v15))
  {
    *buf = 138412290;
    v42 = v12;
    _os_log_impl(&dword_24A184000, v16, v15, "Stopping our agents (which are %@)", buf, 0xCu);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v12;
  v17 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v15))
        {
          *buf = 138412290;
          v42 = v21;
          _os_log_impl(&dword_24A184000, v22, v15, "Stopping agent %@", buf, 0xCu);
        }

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __47__ESDAgentManager__stopMonitoringAndSaveAgents__block_invoke;
        v35[3] = &unk_278FCE198;
        v36 = v13;
        [v21 requestAgentStopMonitoringWithCompletionBlock:v35];
      }

      v18 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v18);
  }

  if ([v13 count])
  {
    v23 = objc_autoreleasePoolPush();
    if ([v13 count])
    {
      v24 = *MEMORY[0x277CBF058];
      do
      {
        v25 = objc_autoreleasePoolPush();
        v26 = DALoggingwithCategory();
        if (os_log_type_enabled(v26, v15))
        {
          v27 = [v13 count];
          *buf = 134218242;
          v42 = v27;
          v43 = 2112;
          v44 = v13;
          _os_log_impl(&dword_24A184000, v26, v15, "Still waiting for %lu agents to shut down.  Spinning a run loop. Outstanding agents are %@", buf, 0x16u);
        }

        v28 = CFRunLoopRunInMode(v24, 1.0, 1u);
        objc_autoreleasePoolPop(v25);
      }

      while ([v13 count] && (v28 - 3) < 0xFFFFFFFE);
    }

    objc_autoreleasePoolPop(v23);
    v29 = DALoggingwithCategory();
    if (os_log_type_enabled(v29, v15))
    {
      v30 = [v13 count];
      *buf = 134217984;
      v42 = v30;
      _os_log_impl(&dword_24A184000, v29, v15, "Run Loop finished.  Active Agent count is now %ld.", buf, 0xCu);
    }
  }

  [(ESDAgentManager *)self saveAndReleaseAgents];
  v31 = DALoggingwithCategory();
  if (os_log_type_enabled(v31, v15))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v31, v15, "Agents stopped and saved", buf, 2u);
  }

  dispatch_resume(gDADOperationQueue);
  v32 = [MEMORY[0x277CCAB98] defaultCenter];
  [v32 postNotificationName:@"ESDAgentsStoppedNotification" object:0];

  v33 = *MEMORY[0x277D85DE8];
}

void __47__ESDAgentManager__stopMonitoringAndSaveAgents__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_24A184000, v4, v5, "Agent %@ has stopped monitoring", &v9, 0xCu);
  }

  [*(a1 + 32) removeObject:v3];
  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = [*(a1 + 32) count];
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&dword_24A184000, v6, v5, "agentsAwaitingShutdown count is now %lu", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountAggdEntries
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [(ESDAgentManager *)self activeAgents];
  [v2 count];
  ADClientSetValueForScalarKey();
  if ([v2 count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v4)
    {
      v27 = v2;
      v28 = 0;
      v32 = 0;
      v33 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *v35;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v34 + 1) + 8 * i) account];
          v10 = [v9 accountTypeIdentifier];
          v11 = [v10 isEqualToString:@"com.apple.account.SubscribedCalendar"];

          if (v11)
          {
            ++v6;
          }

          else
          {
            v12 = [v9 accountTypeIdentifier];
            v13 = [v12 isEqualToString:@"com.apple.account.CalDAV"];

            if (v13)
            {
              ++v5;
            }

            else
            {
              v14 = [v9 accountTypeIdentifier];
              v15 = [v14 isEqualToString:@"com.apple.account.CardDAV"];

              if (v15)
              {
                ++v33;
              }

              else
              {
                v16 = [v9 accountTypeIdentifier];
                v17 = [v16 isEqualToString:@"com.apple.account.BookmarkDAV"];

                if (v17)
                {
                  ++v32;
                }

                else
                {
                  v18 = [v9 accountTypeIdentifier];
                  v19 = [v18 isEqualToString:@"com.apple.account.Exchange"];

                  if (v19)
                  {
                    ++v31;
                  }

                  else
                  {
                    v20 = [v9 accountTypeIdentifier];
                    v21 = [v20 isEqualToString:@"com.apple.account.Hotmail"];

                    if (v21)
                    {
                      ++v30;
                    }

                    else
                    {
                      v22 = [v9 accountTypeIdentifier];
                      v23 = [v22 isEqualToString:@"com.apple.account.LDAP"];

                      if (v23)
                      {
                        ++v28;
                      }

                      else
                      {
                        v24 = [v9 accountTypeIdentifier];
                        v25 = [v24 isEqualToString:@"com.apple.account.IMAPNotes"];

                        v29 += v25;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v4);
      v2 = v27;
    }
  }

  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();

  v26 = *MEMORY[0x277D85DE8];
}

- (void)enableMonitoringAgentsWithToken:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  v6 = [v5 count];

  v7 = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v7 removeObjectForKey:v8];

  v9 = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  v10 = [v9 count];

  v11 = DALoggingwithCategory();
  v12 = v11;
  if (v10 == v6)
  {
    v13 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v11, v13))
    {
      v17 = 67109120;
      v18 = a3;
      _os_log_impl(&dword_24A184000, v12, v13, "Ignoring call to enableMonitoringAgentsWithToken: with unrecognized token %d", &v17, 8u);
    }
  }

  else
  {
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v11, v14))
    {
      v17 = 67109120;
      v18 = v10;
      _os_log_impl(&dword_24A184000, v12, v14, "ESDAgentManager asked to enableMonitoringAgents. New count = %d", &v17, 8u);
    }

    if (!v10)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v14))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_24A184000, v15, v14, "ESDAgentManager disableMonitoringAgents reached 0. Start Loading Agents..", &v17, 2u);
      }

      [(ESDAgentManager *)self _loadAndStartExchangeMonitoringAgents];
      [(ESDAgentManager *)self _addAccountAggdEntries];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)disableMonitoringAgents
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(ESDAgentManager *)self nextDisableMonitoringAgentsToken];
  [(ESDAgentManager *)self setNextDisableMonitoringAgentsToken:v3 + 1];
  v4 = [objc_alloc(MEMORY[0x277D037F0]) initWithLabel:@"disableMonitoringAgents"];
  v5 = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  v8 = [v7 count];

  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v10))
  {
    v14[0] = 67109120;
    v14[1] = v8;
    _os_log_impl(&dword_24A184000, v9, v10, "ESDAgentManager asked to disableMonitoringAgents. New count = %d", v14, 8u);
  }

  if (v8 == 1)
  {
    v11 = DALoggingwithCategory();
    if (os_log_type_enabled(v11, v10))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_24A184000, v11, v10, "ESDAgentManager disableMonitoringAgents reached 1. Stop Loading Agents..", v14, 2u);
    }

    [(ESDAgentManager *)self _stopMonitoringAndSaveAgents];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3 + 1;
}

- (BOOL)updateFolderListForAccountID:(id)a3 andDataclasses:(int64_t)a4 requireChangedFolders:(BOOL)a5 isUserRequested:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  [(ESDAgentManager *)self activeAgents];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v28 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v23 = v7;
    v24 = v6;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v16 account];
        v18 = [v17 accountID];
        v19 = [v18 isEqualToString:v10];

        if (v19)
        {
          if ([v17 enabledForAnyDADataclasses:a4])
          {
            [v16 refreshFolderListRequireChangedFolders:v23 isUserRequested:v24];
          }

          v20 = 1;
          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)updateContentsOfFolders:(id)a3 forAccountID:(id)a4 andDataclasses:(int64_t)a5 isUserRequested:(BOOL)a6
{
  v30 = a6;
  v40 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v9 = a4;
  v10 = [v9 isEqualToString:*MEMORY[0x277D03880]];
  [(ESDAgentManager *)self activeAgents];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v38 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = a5;
    v33 = 0;
    v14 = *v36;
    while (2)
    {
      v15 = 0;
      v34 = v13;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * v15);
        v17 = [v16 account];
        v18 = v17;
        if (v10)
        {
          if ([v17 isSubscribedCalendarAccount])
          {
            [v18 backingAccountInfo];
            v19 = v14;
            v20 = v10;
            v21 = v11;
            v23 = v22 = v9;
            v24 = [v23 parentAccountIdentifier];
            v25 = [v24 length];

            v9 = v22;
            v11 = v21;
            v10 = v20;
            v14 = v19;
            v13 = v34;
            if (!v25)
            {
              if ([v18 enabledForAnyDADataclasses:v32])
              {
                [v16 syncFolderIDs:v31 forDataclasses:v32 isUserRequested:v30];
              }

              v33 = 1;
            }
          }
        }

        else
        {
          v26 = [v17 accountID];
          v27 = [v26 isEqualToString:v9];

          if (v27)
          {
            if ([v18 enabledForAnyDADataclasses:v32])
            {
              [v16 syncFolderIDs:v31 forDataclasses:v32 isUserRequested:v30];
            }

            v33 = 1;
            goto LABEL_20;
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_20:

  v28 = *MEMORY[0x277D85DE8];
  return v33 & 1;
}

- (BOOL)updateContentsOfAllFoldersForAccountID:(id)a3 andDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5
{
  v28 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 isEqualToString:*MEMORY[0x277D03880]];
  [(ESDAgentManager *)self activeAgents];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v35 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = 0;
    v12 = *v33;
    v30 = a4;
    v31 = *v33;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        v15 = [v14 account];
        v16 = v15;
        if (v8)
        {
          if ([v15 isSubscribedCalendarAccount])
          {
            v17 = v8;
            v18 = v9;
            v19 = v7;
            v20 = [v16 backingAccountInfo];
            v21 = [v20 parentAccountIdentifier];
            v22 = [v21 length];

            if (v22)
            {
              v7 = v19;
              v9 = v18;
              v8 = v17;
              v12 = v31;
            }

            else
            {
              v7 = v19;
              v9 = v18;
              v8 = v17;
              v12 = v31;
              if ([v16 enabledForAnyDADataclasses:v30])
              {
                [v14 syncFolderIDs:0 forDataclasses:v30 isUserRequested:v28];
                v29 = 1;
              }
            }
          }
        }

        else
        {
          v23 = [v15 accountID];
          v24 = [v23 isEqualToString:v7];

          if (v24)
          {
            if ([v16 enabledForAnyDADataclasses:v30])
            {
              [v14 syncFolderIDs:0 forDataclasses:v30 isUserRequested:v28];
            }

            v29 = 1;
            goto LABEL_21;
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v25 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v11 = v25;
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

- (id)activeAccountBundleIDs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = [(ESDAgentManager *)self activeAgents];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(ESDAgentManager *)self activeAgents];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) account];
        v12 = [v11 onBehalfOfBundleIdentifier];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)hasEASAccountConfigured
{
  v28 = *MEMORY[0x277D85DE8];
  [(ESDAgentManager *)self activeAgents];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v2 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v20 = *v22;
    v4 = *MEMORY[0x277CB8C50];
    v5 = *MEMORY[0x277CB8C00];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 account];
        v9 = [v8 accountTypeIdentifier];
        if ([v9 isEqualToString:v4])
        {

LABEL_13:
          v14 = DALoggingwithCategory();
          v15 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v14, v15))
          {
            v16 = [v7 account];
            *buf = 138412290;
            v26 = v16;
            _os_log_impl(&dword_24A184000, v14, v15, "Found an EAS Account %@", buf, 0xCu);
          }

          v13 = 1;
          goto LABEL_16;
        }

        v10 = [v7 account];
        v11 = [v10 accountTypeIdentifier];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          goto LABEL_13;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      v13 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)processMeetingRequestDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7 callback:(id)a8
{
  v42 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v32 = a6;
  v14 = a7;
  v15 = a8;
  [(ESDAgentManager *)self activeAgents];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = v40 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        v22 = [v21 account];
        v23 = [v22 accountID];
        v24 = [v23 isEqualToString:v14];

        if (v24)
        {
          v28 = v34;
          v27 = v35;
          v30 = v32;
          v29 = v33;
          [v21 processMeetingRequestDatas:v35 deliveryIdsToClear:v34 deliveryIdsToSoftClear:v33 inFolderWithId:v32 callback:v15];

          goto LABEL_13;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v25 = DALoggingwithCategory();
  v26 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v25, v26))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v25, v26, "ProcessMeetingRequests: account agent not found", buf, 2u);
  }

  v15[2](v15, 0);
  v28 = v34;
  v27 = v35;
  v30 = v32;
  v29 = v33;
LABEL_13:

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetCertWarningsForAccountWithId:(id)a3 andDataclasses:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(ESDAgentManager *)self activeAgents];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = 1;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) account];
        v14 = v13;
        if (v6)
        {
          v15 = [v13 accountID];
          v16 = [v15 isEqualToString:v6];

          if (v16)
          {
            if ([v14 enabledForAnyDADataclasses:a4])
            {
              LOBYTE(v11) = v11 & [v14 resetCertWarnings];
            }

            goto LABEL_18;
          }
        }

        else if ([v13 enabledForAnyDADataclasses:a4])
        {
          v11 &= [v14 resetCertWarnings];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5 forAccountID:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(ESDAgentManager *)self activeAgents];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v34 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v29 = v12;
    v30 = v10;
    v17 = *v32;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = [v19 account];
        v21 = [v20 accountID];
        v22 = [v21 isEqualToString:v13];

        if (v22)
        {
          v10 = v30;
          if (v30)
          {
            v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v30];
          }

          else
          {
            v24 = 0;
          }

          v12 = v29;
          if (v11)
          {
            v25 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
          }

          else
          {
            v25 = 0;
          }

          v26 = [v19 account];
          v23 = [v26 setFolderIdsThatExternalClientsCareAboutAdded:v24 deleted:v25 foldersTag:v29];

          goto LABEL_18;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v23 = 0;
    v12 = v29;
    v10 = v30;
  }

  else
  {
    v23 = 0;
  }

LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)reportFolderItemsSyncSuccess:(BOOL)a3 forFolderWithID:(id)a4 withItemsCount:(unint64_t)a5 andAccountWithID:(id)a6
{
  v22 = a5;
  v23 = a3;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a6;
  v10 = [(ESDAgentManager *)self activeAgents];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 account];
        v17 = [v16 accountID];
        v18 = [v17 isEqualToString:v9];

        if (v18)
        {
          v19 = [v15 account];
          v20 = v19;
          if (v23)
          {
            [v19 removeFolderIDFromPingBlacklist:v8];
            if (v22)
            {
              [v20 removeFromAllPingHistoryBlacklistForFolderID:v8];
            }
          }

          else
          {
            [v19 addFolderIDToPingBlacklist:v8];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  [(ESDAgentManager *)v2 activeAgents];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v3 = v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v21;
    v7 = &stru_285D58A48;
    do
    {
      v8 = 0;
      v9 = v5;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v5 = *(*(&v20 + 1) + 8 * v8);

        v10 = [v5 stateString];
        v11 = [(__CFString *)v7 stringByAppendingString:v10];

        v7 = [v11 stringByAppendingString:@"=======\n\n"];

        ++v8;
        v9 = v5;
      }

      while (v4 != v8);
      v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  else
  {
    v7 = &stru_285D58A48;
  }

  v12 = [MEMORY[0x277D03790] sharedGateKeeper];
  v13 = [v12 stateString];

  if (v13)
  {
    v14 = [(__CFString *)v7 stringByAppendingString:v13];

    v7 = v14;
  }

  v15 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  v16 = [v15 stateString];

  if (v16)
  {
    v17 = [(__CFString *)v7 stringByAppendingString:v16];

    v7 = v17;
  }

  objc_sync_exit(v2);
  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)processFolderChange:(id)a3 forAccountWithID:(id)a4 completionBlock:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(ESDAgentManager *)self activeAgents];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v21 = v8;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 account];
        v17 = [v16 accountID];
        v18 = [v17 isEqualToString:v9];

        if (v18)
        {
          v8 = v21;
          [v15 processDAFolderChange:v21 withCompletionBlock:v10];
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v8 = v21;
  }

LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)getStatusReportDictsWithCompletionBlock:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v30 = [MEMORY[0x277D03768] sharedBabysitter];
  [(ESDAgentManager *)self activeAgents];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = [v9 account];
        v11 = [v10 statusReport];

        if (v11)
        {
          v12 = [v9 account];
          v13 = objc_opt_respondsToSelector();
          v14 = [v9 account];
          v15 = v14;
          if (v13)
          {
            [v14 waiterID];
          }

          else
          {
            [v14 accountID];
          }
          v16 = ;

          [v11 setSyncingAllowed:{objc_msgSend(v30, "accountWithIDShouldContinue:", v16)}];
          v17 = [v9 account];
          v18 = [v17 protocolVersion];
          [v11 setProtocolVersion:v18];

          [v4 addObject:v11];
        }

        v19 = [v9 account];
        [v19 resetStatusReport];
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v4;
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v20 = 0;
  }

  v28[2](v28, v20);

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasDataclassWeCareAbout:(id)a3
{
  v3 = _hasDataclassWeCareAbout__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [ESDAgentManager _hasDataclassWeCareAbout:];
  }

  v5 = [v4 intersectsSet:_hasDataclassWeCareAbout__dataclassesWeCareAbout];

  return v5;
}

uint64_t __44__ESDAgentManager__hasDataclassWeCareAbout___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  _hasDataclassWeCareAbout__dataclassesWeCareAbout = [v0 initWithObjects:{*MEMORY[0x277CB9108], *MEMORY[0x277CB9110], *MEMORY[0x277CB90F0], *MEMORY[0x277CB9190], *MEMORY[0x277CB90D0], *MEMORY[0x277CB9150], *MEMORY[0x277CB9178], 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)removePendingAccountSetup
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"ESDAgentManager.m" lineNumber:1507 description:@"Somebody isn't maintaining their account setup correctly"];

  *a4 = *a3;
}

- (BOOL)hasActiveAccounts
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = sharedDAAccountStore();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [MEMORY[0x277D079E8] _leafExchangeAccountTypes];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v23 = v4;
    v21 = *v29;
    do
    {
      v8 = 0;
      v22 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 accountTypeWithAccountTypeIdentifier:*(*(&v28 + 1) + 8 * v8)];
        if (v9)
        {
          v10 = [v3 accountsWithAccountType:v9];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v24 + 1) + 8 * i) enabledDataclasses];
                v17 = [(ESDAgentManager *)self _hasDataclassWeCareAbout:v16];

                if (v17)
                {

                  v18 = 1;
                  v4 = v23;
                  goto LABEL_21;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v6 = v22;
          v4 = v23;
          v7 = v21;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v18 = 0;
    }

    while (v6);
  }

  else
  {
    v18 = 0;
  }

LABEL_21:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)enableDaemon
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = launchdSemaphorePath();
  v3 = open(v2, 512, 256);
  if (v3 == -1)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *__error();
      *buf = 67109120;
      v10 = v7;
      _os_log_impl(&dword_24A184000, v5, v6, "unable to signal launchd to start dataaccessd: errno %d", buf, 8u);
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = *MEMORY[0x277D85DE8];

    close(v3);
  }
}

- (void)disableDaemon
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = launchdSemaphorePath();
  v3 = unlink(v2);
  if (!v3 || v3 == -1 && *__error() == 2)
  {
    v4 = *MEMORY[0x277D85DE8];
    v5 = *MEMORY[0x277D07AE8];

    notify_post(v5);
  }

  else
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *__error();
      v10[0] = 67109120;
      v10[1] = v8;
      _os_log_impl(&dword_24A184000, v6, v7, "unable to signal launchd to stop dataaccessd: errno %d", v10, 8u);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)cleanupLaunchdSemaphore
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = launchdSemaphorePath();
  v3 = unlink(v2);
  if (v3 && (v3 != -1 || *__error() != 2))
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *__error();
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_24A184000, v4, v5, "unable to cleanup launchd semaphore: errno %d", v8, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enableActiveSync
{
  v11 = *MEMORY[0x277D85DE8];
  active = launchdActiveSyncPath();
  v3 = open(active, 512, 256);
  if (v3 == -1)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *__error();
      *buf = 67109120;
      v10 = v7;
      _os_log_impl(&dword_24A184000, v5, v6, "unable to signal launchd to keep dataaccessd alive: errno %d", buf, 8u);
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = *MEMORY[0x277D85DE8];

    close(v3);
  }
}

- (void)disableActiveSync
{
  v9 = *MEMORY[0x277D85DE8];
  active = launchdActiveSyncPath();
  v3 = unlink(active);
  if (v3 && (v3 != -1 || *__error() != 2))
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *__error();
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_24A184000, v4, v5, "unable to cleanup launchd semaphore so that dataaccessd can be pressured exit: errno %d", v8, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end