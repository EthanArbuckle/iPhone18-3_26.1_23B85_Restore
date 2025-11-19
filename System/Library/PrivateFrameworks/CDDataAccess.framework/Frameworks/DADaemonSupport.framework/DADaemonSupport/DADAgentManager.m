@interface DADAgentManager
+ (BOOL)wirelessPolicy:(id)a3 isMorePermissiveThanPolicy:(id)a4;
+ (id)sharedManager;
- (BOOL)_hasDataclassWeCareAbout:(id)a3;
- (BOOL)_systemMayNowBeReady;
- (BOOL)hasActiveAccounts;
- (BOOL)hasEASAccountConfigured;
- (BOOL)resumeMonitoringAccountID:(id)a3 syncKeyMap:(id)a4;
- (BOOL)startMonitoringAccountID:(id)a3 syncKeyMap:(id)a4;
- (BOOL)stopMonitoringAccountID:(id)a3 folderIDs:(id)a4;
- (BOOL)suspendMonitoringAccountID:(id)a3 folderIDs:(id)a4;
- (BOOL)updateContentsOfAllFoldersForAccountID:(id)a3 andDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5;
- (BOOL)updateContentsOfAllFoldersForAccountIDs:(id)a3;
- (BOOL)updateContentsOfFolders:(id)a3 forAccountID:(id)a4 andDataclasses:(int64_t)a5 isUserRequested:(BOOL)a6;
- (BOOL)updateFolderListForAccountID:(id)a3 andDataclasses:(int64_t)a4 requireChangedFolders:(BOOL)a5 isUserRequested:(BOOL)a6;
- (DADAgentManager)init;
- (NSArray)activeAgents;
- (id)_accountInfoPath;
- (id)_configFileForAgent:(id)a3;
- (id)accountWithAccountID:(id)a3;
- (id)accountWithAccountID:(id)a3 andClassName:(id)a4;
- (id)activeAccountBundleIDs;
- (id)agentWithAccountID:(id)a3;
- (id)stateString;
- (unint64_t)disableMonitoringAgents;
- (void)_addAccountAggdEntries;
- (void)_clearOrphanedStores;
- (void)_deviceDidWake;
- (void)_deviceWillSleep;
- (void)_handleCellularDataUsageChangedNotification;
- (void)_loadAndStartMonitoringAgents:(BOOL)a3;
- (void)_registerForCTDataUsageNotificaiton;
- (void)_resetMonitoringRequestsAndLoadAgents;
- (void)_stopMonitoringAndSaveAgents;
- (void)dealloc;
- (void)disableActiveSync;
- (void)enableActiveSync;
- (void)enableMonitoringAgentsWithToken:(unint64_t)a3;
- (void)getStatusReportDictsWithCompletionBlock:(id)a3;
- (void)loadAgents:(BOOL)a3;
- (void)processMeetingRequestDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7 callback:(id)a8;
- (void)registerForBuddy;
- (void)removePendingAccountSetup;
- (void)saveAndReleaseAgents;
- (void)setRem_xpcEventHandler:(id)a3;
- (void)unregisterForBuddy;
@end

@implementation DADAgentManager

+ (id)sharedManager
{
  if (sharedManager_dispatchToken != -1)
  {
    +[DADAgentManager sharedManager];
  }

  v3 = sharedManager_sSharedDADAgentManager;

  return v3;
}

void __31__DADAgentManager_activeAgents__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) count];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2424DF000, v5, v6, "DADAgentManager: Fetching active agents. count = %d, agents = %@", v10, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSArray)activeAgents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  activeAgentsQueue = self->_activeAgentsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__DADAgentManager_activeAgents__block_invoke;
  v5[3] = &unk_278D52A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activeAgentsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_deviceDidWake
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(DADAgentManager *)self activeAgents];
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

- (void)setRem_xpcEventHandler:(id)a3
{
  v4 = DADAgentManagerDADREMXPCEventHandlerKey;
  v5 = MEMORY[0x245D102E0](a3, a2);
  objc_setAssociatedObject(self, v4, v5, 0x303);
}

uint64_t __32__DADAgentManager_sharedManager__block_invoke()
{
  sharedManager_sSharedDADAgentManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DADAgentManager)init
{
  v19.receiver = self;
  v19.super_class = DADAgentManager;
  v2 = [(DADAgentManager *)&v19 init];
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
        v5 = [MEMORY[0x277CF3A20] sharedRunLoop];
        v6 = [v5 getCFRunLoop];
        CFRunLoopAddSource(v6, v3->_pmRunLoopSource, *MEMORY[0x277CBF048]);

        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277CF3AF0] + 6);
        if (os_log_type_enabled(v7, v8))
        {
          *v18 = 0;
          v9 = "Registered for wake notification";
LABEL_10:
          _os_log_impl(&dword_2424DF000, v7, v8, v9, v18, 2u);
        }
      }

      else
      {
        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277CF3AF0] + 4);
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
      v8 = *(MEMORY[0x277CF3AF0] + 4);
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
    v3 = [MEMORY[0x277CF3A20] sharedRunLoop];
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
  buddyStateObserver = self->_buddyStateObserver;
  self->_buddyStateObserver = 0;

  v7.receiver = self;
  v7.super_class = DADAgentManager;
  [(DADAgentManager *)&v7 dealloc];
}

- (id)agentWithAccountID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DADAgentManager *)self activeAgents];
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
  v5 = [(DADAgentManager *)self activeAgents];
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
  v7 = [(DADAgentManager *)self activeAgents];
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

  v6 = [v5 stringByAppendingPathComponent:@"Reminders/DataAccess"];
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

  v4 = [v3 stringByAppendingPathComponent:@"Reminders/DataAccess"];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = [v4 stringByAppendingPathComponent:@"AccountInformation.plist"];

  return v6;
}

- (void)loadAgents:(BOOL)a3
{
  v97 = a3;
  v162 = *MEMORY[0x277D85DE8];
  v95 = self;
  objc_sync_enter(v95);
  v98 = objc_opt_new();
  v105 = objc_opt_new();
  v103 = objc_opt_new();
  v99 = [MEMORY[0x277CBEB18] array];
  v3 = [(DADAgentManager *)v95 rem_storeProvider];
  v4 = [v3 rem_storeForDataAccess];

  v94 = v4;
  if (!v4)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v5, *(MEMORY[0x277CF3AF0] + 3)))
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v5, v6, "loadAgents: Cannot get REM store when DA loads agents.", buf, 2u);
    }
  }

  v104 = sharedDAAccountStore();
  v109 = [MEMORY[0x277CBEB38] dictionary];
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v7 = [MEMORY[0x277CF39F8] _leafAccountTypes];
  v8 = [v7 countByEnumeratingWithState:&v144 objects:v161 count:16];
  obj = v7;
  if (v8)
  {
    v100 = *v145;
    v117 = *MEMORY[0x277CB9190];
    v9 = *(MEMORY[0x277CF3AF0] + 6);
    v111 = *MEMORY[0x277D44918];
    type = *(MEMORY[0x277CF3AF0] + 3);
    do
    {
      v10 = 0;
      v101 = v8;
      do
      {
        if (*v145 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v107 = v10;
        v11 = *(*(&v144 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = [v104 accountTypeWithAccountTypeIdentifier:v11];
        if (v12)
        {
          v102 = v12;
          v13 = [v104 accountsWithAccountType:?];
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v140 objects:v160 count:16];
          if (!v15)
          {
            goto LABEL_30;
          }

          v16 = *v141;
          while (1)
          {
            v17 = 0;
            do
            {
              if (*v141 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v140 + 1) + 8 * v17);
              v19 = [v18 identifier];
              if (!v19)
              {
                v23 = DALoggingwithCategory();
                if (os_log_type_enabled(v23, type))
                {
                  v25 = [v18 accountDescription];
                  *buf = 138412290;
                  v151 = v25;
                  _os_log_impl(&dword_2424DF000, v23, type, "loadAgents: ERROR: Can't load agent for this AC account because does not have an account identifier! {acAccount: %@}.", buf, 0xCu);
                }

                goto LABEL_25;
              }

              if (([v18 isEnabledToSyncDataclass:v117] & 1) == 0)
              {
                v23 = DALoggingwithCategory();
                if (os_log_type_enabled(v23, v9))
                {
                  v26 = [v18 accountDescription];
                  *buf = 138412546;
                  v151 = v26;
                  v152 = 2114;
                  v153 = v19;
                  _os_log_impl(&dword_2424DF000, v23, v9, "loadAgents: Skip loading agent for this AC account because it is not enabled for reminders {acAccount: %@ %{public}@}.", buf, 0x16u);
                }

                goto LABEL_25;
              }

              v20 = [v18 accountProperties];
              v21 = [v20 valueForKey:v111];
              v22 = v21 == 0;

              if (!v22)
              {
                v23 = DALoggingwithCategory();
                if (os_log_type_enabled(v23, v9))
                {
                  v24 = [v18 accountDescription];
                  *buf = 138412546;
                  v151 = v24;
                  v152 = 2114;
                  v153 = v19;
                  _os_log_impl(&dword_2424DF000, v23, v9, "loadAgents: Skip loading agent for this AC account because it is a delegate {acAccount: %@ %{public}@}.", buf, 0x16u);
                }

LABEL_25:

                goto LABEL_26;
              }

              [v109 setObject:v18 forKey:v19];
LABEL_26:

              ++v17;
            }

            while (v15 != v17);
            v27 = [v14 countByEnumeratingWithState:&v140 objects:v160 count:16];
            v15 = v27;
            if (!v27)
            {
LABEL_30:

              v12 = v102;
              break;
            }
          }
        }

        objc_autoreleasePoolPop(context);
        v10 = v107 + 1;
      }

      while (v107 + 1 != v101);
      v8 = [obj countByEnumeratingWithState:&v144 objects:v161 count:16];
    }

    while (v8);
  }

  v28 = [v109 allKeys];
  v139 = 0;
  v118 = [v94 fetchAccountsWithExternalIdentifiers:v28 error:&v139];
  v108 = v139;
  if (v108)
  {
    v29 = DALoggingwithCategory();
    v30 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = [v108 localizedDescription];
      *buf = 138543618;
      v151 = v31;
      v152 = 2114;
      v153 = v28;
      _os_log_impl(&dword_2424DF000, v29, v30, "ERROR: loadAgents: Could not fetch accounts with exteranl identifiers to load agents (error: %{public}@, identifiers: %{public}@)", buf, 0x16u);
    }
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  typea = v28;
  v32 = [typea countByEnumeratingWithState:&v135 objects:v159 count:16];
  if (v32)
  {
    v33 = *v136;
    v34 = *(MEMORY[0x277CF3AF0] + 5);
    v110 = *(MEMORY[0x277CF3AF0] + 3);
    v35 = *(MEMORY[0x277CF3AF0] + 4);
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v136 != v33)
        {
          objc_enumerationMutation(typea);
        }

        v37 = *(*(&v135 + 1) + 8 * i);
        v38 = [v109 objectForKey:v37];
        v39 = [v118 objectForKey:v37];
        if (v39)
        {
          v40 = [MEMORY[0x277CF3A00] sharedInstance];
          v41 = [v40 daemonAppropriateAccountClassForACAccount:v38];

          v42 = [[v41 alloc] initWithBackingAccountInfo:v38];
          if (v42)
          {
            v43 = DALoggingwithCategory();
            if (os_log_type_enabled(v43, v34))
            {
              v44 = NSStringFromClass(v41);
              *buf = 138412546;
              v151 = v38;
              v152 = 2114;
              v153 = v44;
              _os_log_impl(&dword_2424DF000, v43, v34, "loadAgents: Creating an agent for account info %@ (%{public}@)", buf, 0x16u);
            }

            [v99 addObject:v42];
          }

          else
          {
            v47 = DALoggingwithCategory();
            if (os_log_type_enabled(v47, v110))
            {
              v48 = NSStringFromClass(v41);
              *buf = 138412546;
              v151 = v38;
              v152 = 2114;
              v153 = v48;
              _os_log_impl(&dword_2424DF000, v47, v110, "loadAgents: Not creating an agent for account info %@ (%{public}@), it refused to init itself", buf, 0x16u);
            }
          }
        }

        else
        {
          v42 = DALoggingwithCategory();
          if (os_log_type_enabled(v42, v35))
          {
            v45 = [v38 accountDescription];
            v46 = [v38 identifier];
            *buf = 138412546;
            v151 = v45;
            v152 = 2114;
            v153 = v46;
            _os_log_impl(&dword_2424DF000, v42, v35, "loadAgents: LOOKATME: Skip loading agent for this AC account because REM account is missing {acAccount: %@ %{public}@}.", buf, 0x16u);
          }
        }
      }

      v32 = [typea countByEnumeratingWithState:&v135 objects:v159 count:16];
    }

    while (v32);
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v112 = v99;
  v49 = [v112 countByEnumeratingWithState:&v131 objects:v158 count:16];
  if (v49)
  {
    v50 = *v132;
    v51 = *(MEMORY[0x277CF3AF0] + 5);
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v132 != v50)
        {
          objc_enumerationMutation(v112);
        }

        v53 = *(*(&v131 + 1) + 8 * j);
        v54 = [v53 accountID];
        if (v54)
        {
          [v103 addObject:v54];
        }

        if ([v53 isDisabled])
        {
          v55 = DALoggingwithCategory();
          if (os_log_type_enabled(v55, v51))
          {
            v56 = [v53 accountDescription];
            v57 = [v53 accountID];
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            *buf = 138543874;
            v151 = v56;
            v152 = 2112;
            v153 = v57;
            v154 = 2114;
            v155 = v59;
            _os_log_impl(&dword_2424DF000, v55, v51, "loadAgents: Not loading an agent for account %{public}@ (%@) (%{public}@), because it is disabled", buf, 0x20u);
          }
        }

        else
        {
          v60 = [v53 agentClass];
          if (v60)
          {
            v61 = [v53 accountID];
            [v105 addObject:v61];

            if (v97)
            {
              v62 = [v60 launchingAgentWithAccount:v53];
            }

            else
            {
              v62 = [[v60 alloc] initWithAccount:v53];
            }

            v55 = v62;
            [v98 addObject:v62];
            v67 = DALoggingwithCategory();
            if (os_log_type_enabled(v67, v51))
            {
              v68 = [v53 accountDescription];
              v69 = [v53 accountID];
              v70 = objc_opt_class();
              v71 = NSStringFromClass(v70);
              *buf = 138413058;
              v151 = v55;
              v152 = 2114;
              v153 = v68;
              v154 = 2112;
              v155 = v69;
              v156 = 2114;
              v157 = v71;
              _os_log_impl(&dword_2424DF000, v67, v51, "loadAgents: Loading up agent %@ for account %{public}@ (%@) (%{public}@)", buf, 0x2Au);
            }
          }

          else
          {
            v55 = DALoggingwithCategory();
            if (os_log_type_enabled(v55, v51))
            {
              v63 = [v53 accountDescription];
              v64 = [v53 accountID];
              v65 = objc_opt_class();
              v66 = NSStringFromClass(v65);
              *buf = 138543874;
              v151 = v63;
              v152 = 2112;
              v153 = v64;
              v154 = 2114;
              v155 = v66;
              _os_log_impl(&dword_2424DF000, v55, v51, "loadAgents: Not loading an agent for account %{public}@ (%@) (%{public}@), because agentClass is nil", buf, 0x20u);
            }
          }
        }
      }

      v49 = [v112 countByEnumeratingWithState:&v131 objects:v158 count:16];
    }

    while (v49);
  }

  if ([v98 count])
  {
    activeAgentsQueue = v95->_activeAgentsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__DADAgentManager_loadAgents___block_invoke;
    block[3] = &unk_278D52AB0;
    block[4] = v95;
    v130 = v98;
    dispatch_sync(activeAgentsQueue, block);
  }

  objc_sync_exit(v95);
  v113 = objc_opt_new();
  v73 = objc_alloc(MEMORY[0x277CBEA60]);
  v74 = [(DADAgentManager *)v95 _accountInfoPath];
  v75 = [v73 initWithContentsOfFile:v74];

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v119 = v75;
  v76 = [v119 countByEnumeratingWithState:&v125 objects:v149 count:16];
  if (v76)
  {
    v77 = *v126;
    v78 = *MEMORY[0x277CF3A58];
    do
    {
      for (k = 0; k != v76; ++k)
      {
        if (*v126 != v77)
        {
          objc_enumerationMutation(v119);
        }

        v80 = *(*(&v125 + 1) + 8 * k);
        v81 = [v80 objectForKeyedSubscript:@"Identifier"];
        if (v81 && ([v105 containsObject:v81] & 1) == 0)
        {
          v82 = [v80 objectForKeyedSubscript:v78];
          if (v82)
          {
            [v113 addObject:v82];
          }
        }
      }

      v76 = [v119 countByEnumeratingWithState:&v125 objects:v149 count:16];
    }

    while (v76);
  }

  if ([v113 count])
  {
    v83 = [MEMORY[0x277D262A0] sharedConnection];
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    typeb = v113;
    v84 = [typeb countByEnumeratingWithState:&v121 objects:v148 count:16];
    if (v84)
    {
      v85 = *v122;
      v86 = *(MEMORY[0x277CF3AF0] + 3);
      do
      {
        for (m = 0; m != v84; ++m)
        {
          if (*v122 != v85)
          {
            objc_enumerationMutation(typeb);
          }

          v88 = *(*(&v121 + 1) + 8 * m);
          v120 = 0;
          v89 = [v83 applyRestrictionDictionary:0 clientType:@"com.apple.eas.account" clientUUID:v88 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v120];
          v90 = v120;
          if ((v89 & 1) == 0)
          {
            v91 = DALoggingwithCategory();
            if (os_log_type_enabled(v91, v86))
            {
              *buf = 138412546;
              v151 = v88;
              v152 = 2112;
              v153 = v90;
              _os_log_impl(&dword_2424DF000, v91, v86, "Error when cleaning up client restrictions for persistentUUID %@.  Error %@", buf, 0x16u);
            }
          }
        }

        v84 = [typeb countByEnumeratingWithState:&v121 objects:v148 count:16];
      }

      while (v84);
    }
  }

  v92 = [MEMORY[0x277D262A0] sharedConnection];
  [v92 removeOrphanedClientRestrictionsWithCompletion:0];

  v93 = *MEMORY[0x277D85DE8];
}

void __30__DADAgentManager_loadAgents___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [*(a1 + 40) count];
    v8 = *(a1 + 40);
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2424DF000, v5, v6, "DADAgentManager: loadAgents: Settings active agents. count = %d, agents = %@", v10, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)saveAndReleaseAgents
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = objc_opt_new();
  [(DADAgentManager *)self activeAgents];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v3 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v23 = *v29;
    v5 = *MEMORY[0x277CF3A58];
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
          v14 = &stru_2854C04E8;
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
          v15 = &stru_2854C04E8;
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

  v17 = [(DADAgentManager *)self _accountInfoPath];
  [v24 writeToFile:v17 atomically:1];

  v18 = [MEMORY[0x277D262A0] sharedConnection];
  [v18 removeOrphanedClientRestrictionsWithCompletion:0];

  activeAgentsQueue = self->_activeAgentsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DADAgentManager_saveAndReleaseAgents__block_invoke;
  block[3] = &unk_278D52AB0;
  v26 = obj;
  v27 = self;
  v20 = obj;
  dispatch_sync(activeAgentsQueue, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __39__DADAgentManager_saveAndReleaseAgents__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) count];
    v5 = *(a1 + 32);
    v9[0] = 67109378;
    v9[1] = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_2424DF000, v2, v3, "DADAgentManager: Clearing active agents. previous count = %d, previous agents = %@", v9, 0x12u);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deviceWillSleep
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(DADAgentManager *)self activeAgents];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v13 + 1) + 8 * i) account];
        [v7 deviceWillSleep];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v8, v9))
  {
    *v12 = 0;
    _os_log_impl(&dword_2424DF000, v8, v9, "Tearing down connection cache", v12, 2u);
  }

  CFURLConnectionInvalidateConnectionCache();
  v10 = DALoggingwithCategory();
  if (os_log_type_enabled(v10, v9))
  {
    *v12 = 0;
    _os_log_impl(&dword_2424DF000, v10, v9, "Tore down connection cache", v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)startMonitoringAccountID:(id)a3 syncKeyMap:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v28 = a4;
  [(DADAgentManager *)self activeAgents];
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
        v10 = [v13 monitorFoldersWithSyncKeyMap:v28];
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
      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = [v28 allKeys];
        *buf = 138543362;
        v35 = v20;
        v21 = "Did not start monitoring folder ids %{public}@, because the agent said nope";
        v22 = v18;
        v23 = v19;
        v24 = 12;
LABEL_17:
        _os_log_impl(&dword_2424DF000, v22, v23, v21, buf, v24);

        goto LABEL_18;
      }

      goto LABEL_18;
    }

LABEL_15:
    v18 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v18, v25))
    {
      v20 = [v28 allKeys];
      *buf = 138543874;
      v35 = v20;
      v36 = 2114;
      v37 = v6;
      v38 = 2112;
      v39 = obj;
      v21 = "Did not start monitoring folder ids %{public}@, because I have no agent containing account id %{public}@.  Agents: %@";
      v22 = v18;
      v23 = v25;
      v24 = 32;
      goto LABEL_17;
    }

LABEL_18:

    v17 = 0;
    goto LABEL_19;
  }

  v17 = 1;
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)stopMonitoringAccountID:(id)a3 folderIDs:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = [(DADAgentManager *)self activeAgents];
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
    v20 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138543874;
      v29 = v23;
      v30 = 2114;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_2424DF000, v19, v20, "Did not stop monitoring folder ids %{public}@, because I have no agent containing account id %{public}@.  Agents: %@", buf, 0x20u);
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
  v7 = [(DADAgentManager *)self activeAgents];
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
    v20 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138543874;
      v29 = v23;
      v30 = 2114;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_2424DF000, v19, v20, "Did not suspend monitoring folder ids %{public}@, because I have no agent containing account id %{public}@.  Agents: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)resumeMonitoringAccountID:(id)a3 syncKeyMap:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = [(DADAgentManager *)self activeAgents];
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
        [v13 resumeMonitoringFoldersWithSyncKeyMap:v23];
        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  }

  while (v9);
  if (v10)
  {
    v17 = 1;
  }

  else
  {
LABEL_12:
    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = [v23 allKeys];
      *buf = 138543874;
      v29 = v20;
      v30 = 2114;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_2424DF000, v18, v19, "Did not resume monitoring folder ids %{public}@, because I have no agent containing account id %{public}@.  Agents: %@", buf, 0x20u);
    }

    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_clearOrphanedStores
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DADAgentManager.m" lineNumber:982 description:{@"When clearing orphaned stores, we have an account with no accountID.  That's bad.  account: %@", a3}];
}

- (BOOL)_systemMayNowBeReady
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CF3AF0];
  if (v2->_startAgentsWhenSystemReadyBlock)
  {
    v4 = +[DADBuddyStateObserver hasPassedBuddy];
    v5 = DALoggingwithCategory();
    v6 = *(v3 + 5);
    if (os_log_type_enabled(v5, v6))
    {
      v16[0] = 67109120;
      v16[1] = v4;
      _os_log_impl(&dword_2424DF000, v5, v6, "DAAgentManager: Device PastBuddy is %d", v16, 8u);
    }

    if (v4)
    {
      v7 = MEMORY[0x245D102E0](v2->_startAgentsWhenSystemReadyBlock);
      startAgentsWhenSystemReadyBlock = v2->_startAgentsWhenSystemReadyBlock;
      v2->_startAgentsWhenSystemReadyBlock = 0;
      goto LABEL_12;
    }

    startAgentsWhenSystemReadyBlock = DALoggingwithCategory();
    if (os_log_type_enabled(startAgentsWhenSystemReadyBlock, v6))
    {
      LOWORD(v16[0]) = 0;
      v9 = "Can't start yet, device is still in buddy";
      goto LABEL_10;
    }
  }

  else
  {
    startAgentsWhenSystemReadyBlock = DALoggingwithCategory();
    v6 = *(v3 + 3);
    if (os_log_type_enabled(startAgentsWhenSystemReadyBlock, v6))
    {
      LOWORD(v16[0]) = 0;
      v9 = "DAAgentManager: NO startAgentWhenSystemReadyBlock defined. This will not load any agents";
LABEL_10:
      _os_log_impl(&dword_2424DF000, startAgentsWhenSystemReadyBlock, v6, v9, v16, 2u);
    }
  }

  v7 = 0;
LABEL_12:

  objc_sync_exit(v2);
  if (v7)
  {
    [(DADAgentManager *)v2 unregisterForBuddy];
    v10 = DALoggingwithCategory();
    v11 = *(v3 + 5);
    if (os_log_type_enabled(v10, v11))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_2424DF000, v10, v11, "DAAgentManager: System Ready Calling Load Agents Block", v16, 2u);
    }

    v7[2](v7);
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = *(v3 + 5);
    if (os_log_type_enabled(v12, v13))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_2424DF000, v12, v13, "DAAgentManager: System Not Yet Ready. We are Not Loading Agents", v16, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (void)_resetMonitoringRequestsAndLoadAgents
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_2424DF000, v3, v4, "DAAgentManager: Clearing disableMonitoringAgentsTokens and Loading Agents", v6, 2u);
  }

  v5 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  [v5 removeAllObjects];

  [(DADAgentManager *)self _loadAndStartMonitoringAgents:1];
}

- (void)_registerForCTDataUsageNotificaiton
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.dataaccess.ctdatapolicychangeq", v3);
  CTCellularUsagePolicyNotificationQ = self->_CTCellularUsagePolicyNotificationQ;
  self->_CTCellularUsagePolicyNotificationQ = v4;

  v6 = *MEMORY[0x277CBECE8];
  v7 = self->_CTCellularUsagePolicyNotificationQ;
  v8 = _CTServerConnectionCreateOnTargetQueue();
  self->_ctServerConnection = v8;
  if (!v8)
  {
    v11 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v11, v17))
    {
      LOWORD(v19) = 0;
      v13 = "Failed to create CT server connection";
      v14 = v11;
      v15 = v17;
      v16 = 2;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v9 = *MEMORY[0x277CC3B50];
  v10 = _CTServerConnectionRegisterForNotification();
  if (v10)
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      v19 = 138412802;
      v20 = @"kCTPerAppNetworkDataAccessPolicyChangedNotification";
      v21 = 1024;
      v22 = v10;
      v23 = 1024;
      v24 = HIDWORD(v10);
      v13 = "Failed to register CT server notification %@ (domain: %d error: %d).";
      v14 = v11;
      v15 = v12;
      v16 = 24;
LABEL_7:
      _os_log_impl(&dword_2424DF000, v14, v15, v13, &v19, v16);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];
}

void __54__DADAgentManager__registerForCTDataUsageNotificaiton__block_invoke(int a1, CFStringRef theString1)
{
  if (CFStringCompare(theString1, *MEMORY[0x277CC3B50], 0) == kCFCompareEqualTo)
  {
    v2 = +[DADMain sharedMain];
    [v2 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&__block_literal_global_51];
  }
}

void __54__DADAgentManager__registerForCTDataUsageNotificaiton__block_invoke_2()
{
  v0 = +[DADAgentManager sharedManager];
  [v0 _handleCellularDataUsageChangedNotification];
}

- (void)_handleCellularDataUsageChangedNotification
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v3, v4, "Received cellular data usage changed notification. Checking if a refresh is required.", buf, 2u);
  }

  v5 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = [(DADAgentManager *)self activeAgents];
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v51;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v50 + 1) + 8 * i) account];
        v12 = [v11 onBehalfOfBundleIdentifier];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v8);
  }

  v39 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v40 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v13 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v47;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v46 + 1) + 8 * j);
        v45 = 0;
        ctServerConnection = self->_ctServerConnection;
        _CTServerConnectionCopyCellularUsagePolicy();
      }

      v14 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v14);
  }

  objc_storeStrong(&self->_wirelessPolicies, v39);
  if ([v40 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = [(DADAgentManager *)self activeAgents];
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v58 count:16];
    if (v20)
    {
      v22 = v20;
      v23 = *v42;
      type = *(MEMORY[0x277CF3AF0] + 5);
      *&v21 = 138543618;
      v36 = v21;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v41 + 1) + 8 * k);
          v26 = [v25 account];
          v27 = [v26 onBehalfOfBundleIdentifier];

          if ([v40 containsObject:v27])
          {
            v28 = v19;
            v29 = DALoggingwithCategory();
            if (os_log_type_enabled(v29, type))
            {
              v30 = [v25 account];
              v31 = [v30 accountID];
              *buf = v36;
              v55 = v31;
              v56 = 2114;
              v57 = v27;
              _os_log_impl(&dword_2424DF000, v29, type, "Refreshing account %{public}@ because wireless data use is now allowed for %{public}@ and might not have been before.", buf, 0x16u);
            }

            v32 = [v25 account];
            v33 = [v32 accountID];
            v34 = [v25 account];
            -[DADAgentManager updateContentsOfAllFoldersForAccountID:andDataclasses:isUserRequested:](self, "updateContentsOfAllFoldersForAccountID:andDataclasses:isUserRequested:", v33, [v34 enabledDataclassesBitmask], 0);

            v19 = v28;
          }
        }

        v22 = [v19 countByEnumeratingWithState:&v41 objects:v58 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v19 = DALoggingwithCategory();
    if (os_log_type_enabled(v19, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v19, v4, "Wireless data usage policy changes do not affect any existing agents; no refreshes will be done.", buf, 2u);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

+ (BOOL)wirelessPolicy:(id)a3 isMorePermissiveThanPolicy:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = *MEMORY[0x277CC3988];
      v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC3988]];
      v10 = *MEMORY[0x277CC4368];
      v11 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4368]];
    }

    else
    {
      v11 = *MEMORY[0x277CC3998];
      v9 = v11;
      v8 = *MEMORY[0x277CC3988];
      v10 = *MEMORY[0x277CC4368];
    }

    v13 = v11;
    v14 = [v5 objectForKeyedSubscript:v8];
    v15 = [v5 objectForKeyedSubscript:v10];
    v16 = *MEMORY[0x277CC3990];
    if ([v14 isEqualToString:*MEMORY[0x277CC3990]])
    {
      v17 = [v9 isEqualToString:v16] ^ 1;
    }

    else
    {
      LOBYTE(v17) = 0;
    }

    if ([v15 isEqualToString:v16])
    {
      v18 = [v13 isEqualToString:v16] ^ 1;
    }

    else
    {
      LOBYTE(v18) = 0;
    }

    v12 = v17 | v18;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (void)_loadAndStartMonitoringAgents:(BOOL)a3
{
  v5 = dataaccess_get_global_queue();
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__DADAgentManager__loadAndStartMonitoringAgents___block_invoke;
  v11[3] = &unk_278D52B20;
  objc_copyWeak(&v12, &location);
  v13 = a3;
  v6 = MEMORY[0x245D102E0](v11);
  startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
  self->_startAgentsWhenSystemReadyBlock = v6;

  if (![(DADAgentManager *)self _systemMayNowBeReady])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v8, v9))
    {
      *v10 = 0;
      _os_log_impl(&dword_2424DF000, v8, v9, "DAAgentManager: System Not Yet Ready. We will Register for BuddyFinished Notification", v10, 2u);
    }

    [(DADAgentManager *)self registerForBuddy];
    [(DADAgentManager *)self _systemMayNowBeReady];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __49__DADAgentManager__loadAndStartMonitoringAgents___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v3, v5, "Loading our agents", buf, 2u);
  }

  v6 = CFURLCacheCopySharedURLCache();
  if (v6)
  {
    v7 = v6;
    v8 = DALoggingwithCategory();
    v9 = *(v4 + 7);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v8, v9, "Removing CFURLCache entries", buf, 2u);
    }

    CFURLCacheRemoveAllCachedResponses();
    CFRelease(v7);
  }

  [WeakRetained loadAgents:*(a1 + 40)];
  [WeakRetained _clearOrphanedStores];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [WeakRetained activeAgents];
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [v15 account];
        if ([v16 keychainAccessibilityType] == 2)
        {
          v17 = [v16 password];
        }

        [v15 startMonitoring];
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v12);
  }

  v18 = [WeakRetained rem_xpcEventHandler];
  v19 = dataaccess_get_global_queue();
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__DADAgentManager__loadAndStartMonitoringAgents___block_invoke_56;
  handler[3] = &unk_278D52AF8;
  v20 = v18;
  v26 = v20;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v19, handler);

  v21 = +[DARefreshManager sharedManager];
  [v21 establishAllApsConnections];

  [WeakRetained _registerForCTDataUsageNotificaiton];
  v22 = DALoggingwithCategory();
  if (os_log_type_enabled(v22, v5))
  {
    v23 = [WeakRetained activeAgents];
    *buf = 138412290;
    v32 = v23;
    _os_log_impl(&dword_2424DF000, v22, v5, "Agents loaded and monitoring.  They are %@", buf, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __49__DADAgentManager__loadAndStartMonitoringAgents___block_invoke_56(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(v3, *MEMORY[0x277D86430])}];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v6, v7))
  {
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_2424DF000, v6, v7, "XPC: Received darwin notification: %{public}@", &v11, 0xCu);
  }

  if ([v5 isEqualToString:@"PCPreferencesDidChangeNotification"])
  {
    v8 = DALoggingwithCategory();
    if (os_log_type_enabled(v8, v7))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_2424DF000, v8, v7, "XPC: Received PCPreferencesDidChangeNotification due to user change", &v11, 2u);
    }

    v9 = +[DARefreshManager sharedManager];
    [v9 pushPreferenceDidChange];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForBuddy
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2424DF000, v3, v4, "REGISTER FOR BUDDY", buf, 2u);
  }

  buddyStateObserver = self->_buddyStateObserver;
  if (!buddyStateObserver)
  {
    v6 = [DADBuddyStateObserver alloc];
    v7 = dataaccess_get_global_queue();
    v8 = [(DADBuddyStateObserver *)v6 initWithQueue:v7];
    v9 = self->_buddyStateObserver;
    self->_buddyStateObserver = v8;

    objc_initWeak(buf, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__DADAgentManager_registerForBuddy__block_invoke;
    v11[3] = &unk_278D52A18;
    objc_copyWeak(&v12, buf);
    [(DADBuddyStateObserver *)self->_buddyStateObserver setBuddyDidFinishHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
    buddyStateObserver = self->_buddyStateObserver;
  }

  [(DADBuddyStateObserver *)buddyStateObserver start];
  v10 = DALoggingwithCategory();
  if (os_log_type_enabled(v10, v4))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2424DF000, v10, v4, "EXITING REGISTER FOR BUDDY", buf, 2u);
  }
}

void __35__DADAgentManager_registerForBuddy__block_invoke(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v2, v3))
  {
    *v6 = 0;
    _os_log_impl(&dword_2424DF000, v2, v3, "DAAgentManager: Received buddy finished notification.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _resetMonitoringRequestsAndLoadAgents];
  }
}

- (void)unregisterForBuddy
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v3, v4, "UNREGISTER FOR BUDDY", buf, 2u);
  }

  [(DADBuddyStateObserver *)self->_buddyStateObserver stop];
  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_2424DF000, v5, v4, "EXITING UNREGISTER FOR BUDDY", v6, 2u);
  }
}

- (void)_stopMonitoringAndSaveAgents
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = dataaccess_get_global_queue();
  dispatch_assert_queue_V2(v3);

  if (self->_startAgentsWhenSystemReadyBlock)
  {
    [(DADAgentManager *)self unregisterForBuddy];
    startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
    if (startAgentsWhenSystemReadyBlock)
    {
      self->_startAgentsWhenSystemReadyBlock = 0;
    }
  }

  dispatch_suspend(gDADOperationQueue);
  v5 = [(DADAgentManager *)self activeAgents];
  v6 = [v5 mutableCopy];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&dword_2424DF000, v7, v8, "Agents awaiting shut down are %@", buf, 0xCu);
  }

  v29 = self;

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v8))
  {
    *buf = 138412290;
    v38 = v5;
    _os_log_impl(&dword_2424DF000, v9, v8, "Stopping our agents (which are %@)", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    v13 = *(MEMORY[0x277CF3AF0] + 5);
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = DALoggingwithCategory();
        if (os_log_type_enabled(v16, v13))
        {
          *buf = 138412290;
          v38 = v15;
          _os_log_impl(&dword_2424DF000, v16, v13, "Stopping agent %@", buf, 0xCu);
        }

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __47__DADAgentManager__stopMonitoringAndSaveAgents__block_invoke;
        v31[3] = &unk_278D52B48;
        v32 = v6;
        [v15 requestAgentStopMonitoringWithCompletionBlock:v31];
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [v6 count];
    v19 = *(MEMORY[0x277CF3AF0] + 5);
    if (v18)
    {
      v20 = *MEMORY[0x277CBF058];
      do
      {
        v21 = objc_autoreleasePoolPush();
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v19))
        {
          v23 = [v6 count];
          *buf = 134218242;
          v38 = v23;
          v39 = 2112;
          v40 = v6;
          _os_log_impl(&dword_2424DF000, v22, v19, "Still waiting for %lu agents to shut down.  Spinning a run loop. Outstanding agents are %@", buf, 0x16u);
        }

        v24 = CFRunLoopRunInMode(v20, 1.0, 1u);
        objc_autoreleasePoolPop(v21);
      }

      while ([v6 count] && (v24 - 3) < 0xFFFFFFFE);
    }

    objc_autoreleasePoolPop(v17);
    v25 = DALoggingwithCategory();
    if (os_log_type_enabled(v25, v19))
    {
      v26 = [v6 count];
      *buf = 134217984;
      v38 = v26;
      _os_log_impl(&dword_2424DF000, v25, v19, "Run Loop finished.  Active Agent count is now %ld.", buf, 0xCu);
    }
  }

  [(DADAgentManager *)v29 saveAndReleaseAgents];
  v27 = DALoggingwithCategory();
  if (os_log_type_enabled(v27, v8))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v27, v8, "Agents stopped and saved", buf, 2u);
  }

  dispatch_resume(gDADOperationQueue);
  v28 = *MEMORY[0x277D85DE8];
}

void __47__DADAgentManager__stopMonitoringAndSaveAgents__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277CF3AF0];
  v6 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v4, v6))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2424DF000, v4, v6, "Agent %@ has stopped monitoring", &v11, 0xCu);
  }

  [*(a1 + 32) removeObject:v3];
  v7 = DALoggingwithCategory();
  v8 = *(v5 + 6);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_2424DF000, v7, v8, "agentsAwaitingShutdown count is now %lu", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountAggdEntries
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [(DADAgentManager *)self activeAgents];
  [v2 count];
  ADClientSetValueForScalarKey();
  if ([v2 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v4)
    {
      v25 = v2;
      v26 = 0;
      v29 = 0;
      v30 = 0;
      v27 = 0;
      v28 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *v32;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v31 + 1) + 8 * i) account];
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
                ++v30;
              }

              else
              {
                v16 = [v9 accountTypeIdentifier];
                v17 = [v16 isEqualToString:@"com.apple.account.Exchange"];

                if (v17)
                {
                  ++v29;
                }

                else
                {
                  v18 = [v9 accountTypeIdentifier];
                  v19 = [v18 isEqualToString:@"com.apple.account.Hotmail"];

                  if (v19)
                  {
                    ++v28;
                  }

                  else
                  {
                    v20 = [v9 accountTypeIdentifier];
                    v21 = [v20 isEqualToString:@"com.apple.account.LDAP"];

                    if (v21)
                    {
                      ++v26;
                    }

                    else
                    {
                      v22 = [v9 accountTypeIdentifier];
                      v23 = [v22 isEqualToString:@"com.apple.account.IMAPNotes"];

                      v27 += v23;
                    }
                  }
                }
              }
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v4);
      v2 = v25;
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

  v24 = *MEMORY[0x277D85DE8];
}

- (void)enableMonitoringAgentsWithToken:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v6 = [v5 count];

  v7 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v7 removeObjectForKey:v8];

  v9 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v10 = [v9 count];

  v11 = DALoggingwithCategory();
  v12 = v11;
  if (v10 == v6)
  {
    v13 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v11, v13))
    {
      v17 = 67109120;
      v18 = a3;
      _os_log_impl(&dword_2424DF000, v12, v13, "Ignoring call to enableMonitoringAgentsWithToken: with unrecognized token %d", &v17, 8u);
    }
  }

  else
  {
    v14 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v11, v14))
    {
      v17 = 67109120;
      v18 = v10;
      _os_log_impl(&dword_2424DF000, v12, v14, "DADAgentManager asked to enableMonitoringAgents. New count = %d", &v17, 8u);
    }

    if (!v10)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v14))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_2424DF000, v15, v14, "DADAgentManager disableMonitoringAgents reached 0. Start Loading Agents..", &v17, 2u);
      }

      [(DADAgentManager *)self _loadAndStartMonitoringAgents:0];
      [(DADAgentManager *)self _addAccountAggdEntries];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)disableMonitoringAgents
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(DADAgentManager *)self nextDisableMonitoringAgentsToken];
  [(DADAgentManager *)self setNextDisableMonitoringAgentsToken:v3 + 1];
  v4 = [objc_alloc(MEMORY[0x277CF3A30]) initWithLabel:@"disableMonitoringAgents"];
  v5 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v8 = [v7 count];

  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v9, v10))
  {
    v14[0] = 67109120;
    v14[1] = v8;
    _os_log_impl(&dword_2424DF000, v9, v10, "DADAgentManager asked to disableMonitoringAgents. New count = %d", v14, 8u);
  }

  if (v8 == 1)
  {
    v11 = DALoggingwithCategory();
    if (os_log_type_enabled(v11, v10))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_2424DF000, v11, v10, "DADAgentManager disableMonitoringAgents reached 1. Stop Loading Agents..", v14, 2u);
    }

    [(DADAgentManager *)self _stopMonitoringAndSaveAgents];
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
  [(DADAgentManager *)self activeAgents];
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
  v6 = a6;
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  [(DADAgentManager *)self activeAgents];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v29 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v25 = a5;
    v24 = v6;
    v15 = *v27;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 account];
        v19 = [v18 accountID];
        v20 = [v19 isEqualToString:v11];

        if (v20)
        {
          if ([v18 enabledForAnyDADataclasses:v25])
          {
            [v17 syncFolderIDs:v10 forDataclasses:v25 isUserRequested:v24];
          }

          v21 = 1;
          goto LABEL_13;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)updateContentsOfAllFoldersForAccountID:(id)a3 andDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  [(DADAgentManager *)self activeAgents];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v21 = v5;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 account];
        v16 = [v15 accountID];
        v17 = [v16 isEqualToString:v8];

        if (v17)
        {
          if ([v15 enabledForAnyDADataclasses:a4])
          {
            [v14 syncFolderIDs:0 forDataclasses:a4 isUserRequested:v21];
          }

          v18 = 1;
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)updateContentsOfAllFoldersForAccountIDs:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(DADAgentManager *)self activeAgents];
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v26 + 1) + 8 * i) account];
          v13 = [v12 accountID];
          [v5 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    v18 = 1;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v18 = v18 && [(DADAgentManager *)self updateContentsOfAllFoldersForAccountID:*(*(&v22 + 1) + 8 * j) andDataclasses:16 isUserRequested:1, v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)activeAccountBundleIDs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = [(DADAgentManager *)self activeAgents];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(DADAgentManager *)self activeAgents];
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
  [(DADAgentManager *)self activeAgents];
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
          v15 = *(MEMORY[0x277CF3AF0] + 6);
          if (os_log_type_enabled(v14, v15))
          {
            v16 = [v7 account];
            *buf = 138412290;
            v26 = v16;
            _os_log_impl(&dword_2424DF000, v14, v15, "Found an EAS Account %@", buf, 0xCu);
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
  v39 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v14 = a7;
  v15 = a8;
  [(DADAgentManager *)self activeAgents];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = v37 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v34 + 1) + 8 * i);
        v22 = [v21 account];
        v23 = [v22 accountID];
        v24 = [v23 isEqualToString:v14];

        if (v24)
        {
          v26 = v32;
          v25 = v33;
          v28 = v30;
          v27 = v31;
          [v21 processMeetingRequestDatas:v33 deliveryIdsToClear:v32 deliveryIdsToSoftClear:v31 inFolderWithId:v30 callback:v15];

          goto LABEL_11;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v15[2](v15, 0);
  v26 = v32;
  v25 = v33;
  v28 = v30;
  v27 = v31;
LABEL_11:

  v29 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[DADBuddyStateObserver hasPassedBuddy];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v6 = [v4 stringWithFormat:@"PastBuddy: %@", v5];
  v7 = [&stru_2854C04E8 stringByAppendingString:v6];

  v8 = [v7 stringByAppendingString:@"\n=======\n"];

  if (v2->_startAgentsWhenSystemReadyBlock)
  {
    v9 = [v8 stringByAppendingString:@"XXX: startAgentsWhenSystemReadyBlock is non-nil"];

    v8 = [v9 stringByAppendingString:@"\n=======\n"];
  }

  [(DADAgentManager *)v2 activeAgents];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v24;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v23 + 1) + 8 * v14);

        v16 = [v12 stateString];
        v17 = [v8 stringByAppendingString:v16];

        v8 = [v17 stringByAppendingString:@"=======\n"];

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v18 = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
  v19 = [v18 stateString];

  if (v19)
  {
    v20 = [v8 stringByAppendingString:v19];

    v8 = v20;
  }

  objc_sync_exit(v2);
  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)getStatusReportDictsWithCompletionBlock:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v30 = [MEMORY[0x277CF3A10] sharedBabysitter];
  [(DADAgentManager *)self activeAgents];
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
    [DADAgentManager _hasDataclassWeCareAbout:];
  }

  v5 = [v4 intersectsSet:_hasDataclassWeCareAbout__dataclassesWeCareAbout];

  return v5;
}

uint64_t __44__DADAgentManager__hasDataclassWeCareAbout___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = *MEMORY[0x277CB9110];
  _hasDataclassWeCareAbout__dataclassesWeCareAbout = [v0 initWithObjects:{*MEMORY[0x277CB9108], *MEMORY[0x277CB9110], *MEMORY[0x277CB90F0], *MEMORY[0x277CB9190], *MEMORY[0x277CB9150], *MEMORY[0x277CB9178], 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)removePendingAccountSetup
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"DADAgentManager.m" lineNumber:2101 description:@"Somebody isn't maintaining their account setup correctly"];

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
  v4 = [MEMORY[0x277CF39F8] _leafAccountTypes];
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
                v17 = [(DADAgentManager *)self _hasDataclassWeCareAbout:v16];

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

- (void)enableActiveSync
{
  v11 = *MEMORY[0x277D85DE8];
  active = launchdActiveSyncPath();
  v3 = open(active, 512, 256);
  if (v3 == -1)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *__error();
      *buf = 67109120;
      v10 = v7;
      _os_log_impl(&dword_2424DF000, v5, v6, "unable to signal launchd to keep dataaccessd alive: errno %d", buf, 8u);
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
    v5 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *__error();
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_2424DF000, v4, v5, "unable to cleanup launchd semaphore so that dataaccessd can be pressured exit: errno %d", v8, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end