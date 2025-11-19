@interface DADAgentManager
+ (BOOL)_shouldAccount:(id)a3 syncWhenSyncingParentAccountWithID:(id)a4;
+ (BOOL)wirelessPolicy:(id)a3 isMorePermissiveThanPolicy:(id)a4;
+ (id)sharedManager;
- (BOOL)_clearOrphanedStoresInCalendarDatabase:(CalDatabase *)a3 eventAccountIds:(id)a4;
- (BOOL)_clearOrphanedSubscribedCalendars:(void *)a3 eventAccountIds:(id)a4;
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
- (DADAgentManager)init;
- (NSArray)activeAgents;
- (id)_configFileForAgent:(id)a3;
- (id)accountWithAccountID:(id)a3;
- (id)accountWithAccountID:(id)a3 andClassName:(id)a4;
- (id)accountsProviderWithDBHelper:(id)a3;
- (id)activeAccountBundleIDs;
- (id)agentWithAccountID:(id)a3;
- (id)agentsToSyncForAccountID:(id)a3;
- (id)appleAccountsMatchingClass:(id)a3 errror:(id *)a4;
- (id)changeHistoryClerkWithDBHelper:(id)a3;
- (id)containerProviderWithDBHelper:(id)a3;
- (id)currentPolicyKeyForAccount:(id)a3;
- (id)stateString;
- (unint64_t)disableMonitoringAgents;
- (void)_calDaysToSyncDidChange;
- (void)_cleanOrphanedTrafficLogFilesWithCurrentEventAccountIdentifiers:(id)a3;
- (void)_cleanUpOrphanedLogIfNeeded:(id)a3;
- (void)_clearOrphanedStoresAndTrafficLogFiles;
- (void)_deviceDidWake;
- (void)_deviceWillSleep;
- (void)_handleCellularDataUsageChangedNotification;
- (void)_loadAndStartMonitoringAgents;
- (void)_registerForCTDataUsageNotificaiton;
- (void)_resetMonitoringRequestsAndLoadAgents;
- (void)_sendAccountAnalytics;
- (void)_stopMonitoringAndSaveAgents;
- (void)dealloc;
- (void)disableActiveSync;
- (void)enableActiveSync;
- (void)enableMonitoringAgentsWithToken:(unint64_t)a3;
- (void)getStatusReportDictsWithCompletionBlock:(id)a3;
- (void)handleURLString:(id)a3;
- (void)loadAgents;
- (void)processMeetingRequestDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7 callback:(id)a8;
- (void)registerForBuddy;
- (void)releaseAgents;
- (void)removePendingAccountSetup;
- (void)reportFolderItemsSyncSuccess:(BOOL)a3 forFolderWithID:(id)a4 withItemsCount:(unint64_t)a5 andAccountWithID:(id)a6;
- (void)requestPolicyUpdateForAccount:(id)a3;
- (void)scheduleAgentStartOrStopBlock:(id)a3;
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

uint64_t __32__DADAgentManager_sharedManager__block_invoke()
{
  sharedManager_sSharedDADAgentManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DADAgentManager)init
{
  v21.receiver = self;
  v21.super_class = DADAgentManager;
  v2 = [(DADAgentManager *)&v21 init];
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
          *v20 = 0;
          v9 = "Registered for wake notification";
LABEL_10:
          _os_log_impl(&dword_248524000, v7, v8, v9, v20, 2u);
        }
      }

      else
      {
        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v7, v8))
        {
          *v20 = 0;
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
        *v20 = 0;
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

    v17 = [[DADAgentStopStartController alloc] initWithDelegate:v3];
    startStopController = v3->_startStopController;
    v3->_startStopController = v17;
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
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
    self->_ctServerConnection = 0;
  }

  v7.receiver = self;
  v7.super_class = DADAgentManager;
  [(DADAgentManager *)&v7 dealloc];
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
  v5[3] = &unk_278F1CD70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activeAgentsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__DADAgentManager_activeAgents__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)accountsProviderWithDBHelper:(id)a3
{
  v3 = MEMORY[0x277D03910];
  v4 = a3;
  v5 = [v3 useContactsFramework];
  v6 = MEMORY[0x277D03770];
  if (v5)
  {
    v7 = [v4 contactStore];

    v8 = [v6 providerWithContactStore:v7];
  }

  else
  {
    v9 = [v4 abDB];

    v8 = [v6 providerWithAddressBook:v9];
  }

  return v8;
}

- (id)containerProviderWithDBHelper:(id)a3
{
  v3 = MEMORY[0x277D03910];
  v4 = a3;
  v5 = [v3 useContactsFramework];
  v6 = MEMORY[0x277D03778];
  if (v5)
  {
    v7 = [v4 contactStore];

    v8 = [v6 providerWithContactStore:v7];
  }

  else
  {
    v9 = [v4 abDB];

    v8 = [v6 providerWithAddressBook:v9];
  }

  return v8;
}

- (id)changeHistoryClerkWithDBHelper:(id)a3
{
  v3 = MEMORY[0x277D03910];
  v4 = a3;
  if ([v3 useContactsFramework])
  {
    v5 = [v4 contactStore];

    v6 = [DAChangeHistoryClerk clerkWithContactStore:v5];
  }

  else
  {
    v7 = [v4 abDB];

    v6 = [DAChangeHistoryClerk clerkWithAddressBook:v7];
  }

  return v6;
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

  v6 = [v5 stringByAppendingPathComponent:@"DataAccess"];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  v8 = [v3 account];

  v9 = [v8 accountID];
  v10 = [v6 stringByAppendingPathComponent:v9];

  return v10;
}

- (void)loadAgents
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  type = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v3, type))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, type, "Triggering calendar migration if needed", buf, 2u);
  }

  if ((CalDatabaseMigrateIfNeededOutOfProcess() & 1) == 0)
  {
    v5 = DALoggingwithCategory();
    v6 = *(v4 + 3);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v5, v6, "Trigger calendar migration failed for some reason. Hope for the best?", buf, 2u);
    }
  }

  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, type))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v7, type, "Loading agents", buf, 2u);
  }

  if (loadAgents_onceToken != -1)
  {
    [DADAgentManager loadAgents];
  }

  [MEMORY[0x277D28490] reloadAccounts];
  v8 = MEMORY[0x277CF77E0];
  v9 = sharedDAAccountStore();
  [v8 ensureHolidayAccountExistsWithAccountStore:v9];

  v43 = self;
  objc_sync_enter(v43);
  v45 = objc_opt_new();
  v52 = [MEMORY[0x277CBEB18] array];
  v49 = sharedDAAccountStore();
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [MEMORY[0x277D03970] leafAccountTypes];
  v47 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v47)
  {
    v46 = *v65;
    v10 = *(v4 + 6);
    v51 = *(v4 + 3);
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [v49 accountTypeWithAccountTypeIdentifier:*(*(&v64 + 1) + 8 * i)];
        if (v11)
        {
          v48 = v11;
          v12 = [v49 accountsWithAccountType:?];
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v60 objects:v75 count:16];
          if (v14)
          {
            v15 = *v61;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v61 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v60 + 1) + 8 * j);
                v18 = [MEMORY[0x277D03738] sharedInstance];
                v19 = [v18 daemonAppropriateAccountClassForACAccount:v17];

                if ([(objc_class *)v19 shouldCreateAccountForBackingAccountInfo:v17])
                {
                  v20 = [[v19 alloc] initWithBackingAccountInfo:v17];
                  if (v20)
                  {
                    v21 = DALoggingwithCategory();
                    if (os_log_type_enabled(v21, type))
                    {
                      v22 = NSStringFromClass(v19);
                      *buf = 138412546;
                      v69 = v17;
                      v70 = 2114;
                      v71 = v22;
                      _os_log_impl(&dword_248524000, v21, type, "Creating an agent for account info %@ (%{public}@)", buf, 0x16u);
                    }

                    [v52 addObject:v20];
                  }

                  else
                  {
                    v24 = DALoggingwithCategory();
                    if (os_log_type_enabled(v24, v51))
                    {
                      v25 = NSStringFromClass(v19);
                      *buf = 138412546;
                      v69 = v17;
                      v70 = 2114;
                      v71 = v25;
                      _os_log_impl(&dword_248524000, v24, v51, "Not creating an agent for account info %@ (%{public}@), it refused to init itself", buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v20 = DALoggingwithCategory();
                  if (os_log_type_enabled(v20, v10))
                  {
                    v23 = NSStringFromClass(v19);
                    *buf = 138412546;
                    v69 = v17;
                    v70 = 2114;
                    v71 = v23;
                    _os_log_impl(&dword_248524000, v20, v10, "Not creating an agent for account info %@ (%{public}@) because it should not be created", buf, 0x16u);
                  }
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v60 objects:v75 count:16];
            }

            while (v14);
          }

          v11 = v48;
        }
      }

      v47 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v47);
  }

  v26 = [MEMORY[0x277D03788] sharedKeychain];
  [v26 removePersistentCredentials];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v27 = v52;
  v28 = [v27 countByEnumeratingWithState:&v56 objects:v74 count:16];
  if (v28)
  {
    v29 = *v57;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v57 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v56 + 1) + 8 * k);
        if ([v31 isDisabled])
        {
          v32 = DALoggingwithCategory();
          if (os_log_type_enabled(v32, type))
          {
            v33 = [v31 accountDescription];
            v34 = [v31 publicDescription];
            *buf = 138412546;
            v69 = v33;
            v70 = 2114;
            v71 = v34;
            _os_log_impl(&dword_248524000, v32, type, "Not loading an agent for account %@ (%{public}@), because it is disabled", buf, 0x16u);
          }
        }

        else
        {
          v35 = [v31 agentClass];
          if (v35)
          {
            v32 = [[v35 alloc] initWithAccount:v31];
            [v45 addObject:v32];
            v36 = DALoggingwithCategory();
            if (os_log_type_enabled(v36, type))
            {
              v37 = [v31 accountDescription];
              v38 = [v31 publicDescription];
              *buf = 138412802;
              v69 = v32;
              v70 = 2112;
              v71 = v37;
              v72 = 2114;
              v73 = v38;
              _os_log_impl(&dword_248524000, v36, type, "Loading up agent %@ for account %@ (%{public}@)", buf, 0x20u);
            }
          }

          else
          {
            v32 = DALoggingwithCategory();
            if (os_log_type_enabled(v32, type))
            {
              v39 = [v31 accountDescription];
              v40 = [v31 publicDescription];
              *buf = 138412546;
              v69 = v39;
              v70 = 2114;
              v71 = v40;
              _os_log_impl(&dword_248524000, v32, type, "Not loading an agent for account %@ (%{public}@), because agentClass is nil", buf, 0x16u);
            }
          }
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v56 objects:v74 count:16];
    }

    while (v28);
  }

  if ([v45 count])
  {
    activeAgentsQueue = v43->_activeAgentsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__DADAgentManager_loadAgents__block_invoke_36;
    block[3] = &unk_278F1CD98;
    block[4] = v43;
    v55 = v45;
    dispatch_sync(activeAgentsQueue, block);
  }

  objc_sync_exit(v43);
  [MEMORY[0x277D03760] startDailyAnalyticsReporter];
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t __29__DADAgentManager_loadAgents__block_invoke_36(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)releaseAgents
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(DADAgentManager *)self activeAgents];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7++) shutdown];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  activeAgentsQueue = self->_activeAgentsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__DADAgentManager_releaseAgents__block_invoke;
  block[3] = &unk_278F1CDC0;
  block[4] = self;
  dispatch_sync(activeAgentsQueue, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __32__DADAgentManager_releaseAgents__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
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
  v9 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v9))
  {
    *v12 = 0;
    _os_log_impl(&dword_248524000, v8, v9, "Tearing down connection cache", v12, 2u);
  }

  CFURLConnectionInvalidateConnectionCache();
  v10 = DALoggingwithCategory();
  if (os_log_type_enabled(v10, v9))
  {
    *v12 = 0;
    _os_log_impl(&dword_248524000, v10, v9, "Tore down connection cache", v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
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

- (id)currentPolicyKeyForAccount:(id)a3
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_248524000, v3, v4, "The dataaccessd does not support currentPolicyKeyForAccount method, which is for Exchange accounts", v6, 2u);
  }

  return 0;
}

- (void)requestPolicyUpdateForAccount:(id)a3
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_248524000, v3, v4, "The dataaccessd does not support requestPolicyUpdateForAccount method, which is for Exchange accounts", v5, 2u);
  }
}

- (BOOL)startMonitoringAccountID:(id)a3 folderIDs:(id)a4
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
        _os_log_impl(&dword_248524000, v22, v23, v21, buf, v24);
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
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138412802;
      v29 = v23;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_248524000, v19, v20, "Did not stop monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
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
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138412802;
      v29 = v23;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_248524000, v19, v20, "Did not suspend monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
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
      _os_log_impl(&dword_248524000, v19, v20, "Did not resume monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addPersistMonitoringAccountID:(id)a3 folderIDs:(id)a4 clientID:(id)a5
{
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_248524000, v5, v6, "The dataaccessd does not support addPersistMonitoringAccountID method, which is for Exchange accounts", v8, 2u);
  }

  return 0;
}

- (BOOL)removePersistMonitoringAccountID:(id)a3 folderIDs:(id)a4 clientID:(id)a5
{
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_248524000, v5, v6, "The dataaccessd does not support removePersistMonitoringAccountID method, which is for Exchange accounts", v8, 2u);
  }

  return 0;
}

- (BOOL)clearPersistMonitoringAccountID:(id)a3 clientID:(id)a4
{
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v4, v5))
  {
    *v7 = 0;
    _os_log_impl(&dword_248524000, v4, v5, "The dataaccessd does not support clearPersistMonitoringAccountID method, which is for Exchange accounts", v7, 2u);
  }

  return 0;
}

- (BOOL)_clearOrphanedStoresInCalendarDatabase:(CalDatabase *)a3 eventAccountIds:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v7))
  {
    *buf = 138543362;
    v50 = v4;
    _os_log_impl(&dword_248524000, v5, v7, "ClearOrphanStores : Current DA CalDAV (events) Account IDs : %{public}@", buf, 0xCu);
  }

  v8 = CalDatabaseCopyOfAllStores();
  v43 = v4;
  v41 = [v4 mutableCopy];
  v10 = 0;
  if ([v8 count])
  {
    v11 = 0;
    v12 = *(v6 + 3);
    *&v9 = 138543362;
    v38 = v9;
    v40 = v8;
    v13 = v41;
    while (1)
    {
      v14 = [v8 objectAtIndexedSubscript:{v11, v38}];

      Type = CalStoreGetType();
      if (Type != 1)
      {
        break;
      }

LABEL_35:
      if (++v11 >= [v8 count])
      {
        goto LABEL_38;
      }
    }

    v42 = v11;
    if (Type == 4)
    {
      v10 |= [(DADAgentManager *)self _clearOrphanedSubscribedCalendars:v14 eventAccountIds:v43];
    }

    else if (Type == 2)
    {
      v16 = CalStoreCopyExternalID();
      if (!v16)
      {
LABEL_19:

        goto LABEL_20;
      }

      if ([v13 containsObject:v16])
      {
        [v13 removeObject:v16];
        goto LABEL_19;
      }

      v17 = [v43 containsObject:v16];
      v18 = DALoggingwithCategory();
      v19 = os_log_type_enabled(v18, v12);
      if (v17)
      {
        if (v19)
        {
          *buf = v38;
          v50 = v16;
          v20 = v18;
          v21 = v12;
          v22 = "ClearOrphanStores : ACCOUNTDCOERROR Removing calendar store, as its account id %{public}@ is a duplicate";
          v23 = 12;
LABEL_17:
          _os_log_impl(&dword_248524000, v20, v21, v22, buf, v23);
        }
      }

      else if (v19)
      {
        *buf = 138543618;
        v50 = v16;
        v51 = 2114;
        v52 = v43;
        v20 = v18;
        v21 = v12;
        v22 = "ClearOrphanStores : ACCOUNTDCOERROR Removing calendar store, as its account id %{public}@ isn't one of the account ids I know about: %{public}@";
        v23 = 22;
        goto LABEL_17;
      }

      CalRemoveStore();
      v10 = 1;
      goto LABEL_19;
    }

LABEL_20:
    v24 = CalDatabaseCopyRegisteredClientIdentifiersForPersistentChangeTrackingInStore();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v45;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v44 + 1) + 8 * i);
          if ([v30 hasPrefix:@"com.apple.dataaccessd"])
          {
            v31 = [v30 length];
            if (v31 <= [@"com.apple.dataaccessd" length] + 1 || (objc_msgSend(v30, "substringFromIndex:", objc_msgSend(@"com.apple.dataaccessd", "length") + 1), (v32 = objc_claimAutoreleasedReturnValue()) == 0) || (v33 = v32, v34 = objc_msgSend(v43, "containsObject:", v32), v33, (v34 & 1) == 0))
            {
              v35 = DALoggingwithCategory();
              if (os_log_type_enabled(v35, v12))
              {
                *buf = 138543618;
                v50 = v30;
                v51 = 2114;
                v52 = v43;
                _os_log_impl(&dword_248524000, v35, v12, "ClearOrphanStores : Removing Calendar change tracking client, as its change tracking identifier %{public}@ isn't one of the account ids I know about: %{public}@", buf, 0x16u);
              }

              CalRemoveClientForPersistentChangeTracking();
              v10 = 1;
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v27);
    }

    v8 = v40;
    v13 = v41;
    v11 = v42;
    goto LABEL_35;
  }

  v13 = v41;
LABEL_38:

  v36 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)_clearOrphanedSubscribedCalendars:(void *)a3 eventAccountIds:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v32 = a3;
  v6 = CalStoreCopyCalendars();
  v7 = objc_opt_new();
  v33 = [v6 count];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (!v8)
  {
    v39 = 0;
    v10 = 0;
    goto LABEL_27;
  }

  v9 = v8;
  v39 = 0;
  v10 = 0;
  v11 = *v41;
  v12 = *(MEMORY[0x277D03988] + 6);
  type = *(MEMORY[0x277D03988] + 3);
  v34 = *(MEMORY[0x277D03988] + 4);
  v38 = v7;
  do
  {
    v13 = 0;
    v35 = v9;
    do
    {
      if (*v41 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v40 + 1) + 8 * v13);
      v15 = CalCalendarCopySubCalAccountID();
      if (v15 && ([v5 containsObject:v15] & 1) != 0)
      {
        goto LABEL_12;
      }

      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v12))
      {
        *buf = 138543618;
        v45 = v15;
        v46 = 2114;
        v47 = v5;
        _os_log_impl(&dword_248524000, v16, v12, "Removing subscribed calendar, as it's account id %{public}@ isn't one of the account ids I know about: %{public}@", buf, 0x16u);
      }

      CalRemoveCalendar();
      ++v39;
      if (v15)
      {
        v10 = 1;
LABEL_12:
        v17 = [v7 objectForKeyedSubscript:{v15, v32}];

        if (v17)
        {
          v18 = v12;
          v19 = v11;
          v20 = v5;
          UID = CalCalendarGetUID();
          if (UID >= CalCalendarGetUID())
          {
            v22 = v14;
          }

          else
          {
            v22 = v17;
          }

          v23 = CalCalendarCopyTitle();
          v24 = DALoggingwithCategory();
          if (os_log_type_enabled(v24, type))
          {
            v25 = CalCalendarGetUID();
            v26 = CalCalendarGetUID();
            *buf = 138413058;
            v45 = v23;
            v46 = 2114;
            v47 = v15;
            v48 = 1024;
            v49 = v25;
            v50 = 1024;
            v51 = v26;
            _os_log_impl(&dword_248524000, v24, type, "Removing subscribed calendar %@, as there are two calendars with the same UID for account ID %{public}@. Keeping %i, removing %i", buf, 0x22u);
          }

          CalRemoveCalendar();
          v7 = v38;
          ++v39;
          [v38 setObject:v22 forKeyedSubscript:v15];

          v10 = 1;
          v5 = v20;
          v11 = v19;
          v12 = v18;
          v9 = v35;
        }

        else
        {
          [v7 setObject:v14 forKeyedSubscript:v15];
        }

        goto LABEL_23;
      }

      v27 = CalCalendarCopyTitle();
      v28 = CalCalendarCopyTitle();
      v29 = DALoggingwithCategory();
      if (os_log_type_enabled(v29, v34))
      {
        *buf = 138412546;
        v45 = v27;
        v46 = 2112;
        v47 = v28;
        _os_log_impl(&dword_248524000, v29, v34, "Ignoring calendar in subscribed calendar store without an account ID, %@ (external_id=%@)", buf, 0x16u);
      }

      v10 = 1;
      v7 = v38;
LABEL_23:

      ++v13;
    }

    while (v9 != v13);
    v9 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  }

  while (v9);
LABEL_27:

  if (v33 == v39)
  {
    CalRemoveStore();
    v10 = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (id)appleAccountsMatchingClass:(id)a3 errror:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sharedDAAccountStore();
  v25 = 0;
  v7 = [v6 aa_appleAccountsWithError:&v25];
  v8 = v25;

  if (v7 || !v8)
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v12 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 aa_isAccountClass:{v5, v21}])
          {
            [v11 addObject:v16];
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 138412290;
      v27 = v8;
      _os_log_impl(&dword_248524000, v9, v10, "AppleAccounts returned an error while trying fetch accounts: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  if (a4)
  {
    v17 = v8;
    *a4 = v8;
  }

  v18 = [v11 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_clearOrphanedStoresAndTrafficLogFiles
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DADAgentManager.m" lineNumber:886 description:{@"When clearing orphaned stores, we have an account with no accountID.  That's bad.  account: %@", a3}];
}

- (void)_cleanOrphanedTrafficLogFilesWithCurrentEventAccountIdentifiers:(id)a3
{
  v42[1] = *MEMORY[0x277D85DE8];
  v31 = a3;
  v3 = DACustomLogDirectory();
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v42[0] = *MEMORY[0x277CBE7B0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v38 = 0;
  v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:&v38];
  v8 = v38;

  if (v7)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v27 = v8;
      v28 = v7;
      v29 = v4;
      v30 = v3;
      v12 = @"CalDAVHTTPTraffic.com.apple.remindd.";
      v13 = *v35;
      v14 = @"-latest";
      v32 = v9;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          v16 = v14;
          if (*v35 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v17 path];
          v19 = [v18 lastPathComponent];

          v14 = v16;
          if ([v19 hasPrefix:@"CalDAVHTTPTraffic."] && (objc_msgSend(v19, "hasPrefix:", v12) & 1) == 0)
          {
            if ([v19 hasPrefix:@"CalDAVHTTPTraffic.com.apple.dataaccess.dataaccessd."])
            {
              [(DADAgentManager *)self _cleanUpOrphanedLogIfNeeded:v17];
            }

            else
            {
              v20 = v12;
              v21 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"._"];
              v22 = [v19 componentsSeparatedByCharactersInSet:v21];

              if ([v22 count] >= 2)
              {
                v23 = [v22 objectAtIndexedSubscript:1];
                if ([v23 hasSuffix:v16])
                {
                  v24 = [v23 substringToIndex:{objc_msgSend(v23, "length") - -[__CFString length](v16, "length")}];

                  v23 = v24;
                }

                if (([v31 containsObject:v23] & 1) == 0)
                {
                  [(DADAgentManager *)self _cleanUpOrphanedLogIfNeeded:v17];
                }
              }

              v12 = v20;
              v9 = v32;
              v14 = v16;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
      v4 = v29;
      v3 = v30;
      v8 = v27;
      v7 = v28;
    }
  }

  else
  {
    v9 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 138412290;
      v41 = v8;
      _os_log_impl(&dword_248524000, v9, v25, "Failed to list log directory when trying to clean up oprhaned logs: %@", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpOrphanedLogIfNeeded:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v5 lastPathComponent];

  v21 = 0;
  v7 = *MEMORY[0x277CBE7B0];
  v20 = 0;
  v8 = [v3 getResourceValue:&v21 forKey:v7 error:&v20];
  v9 = v21;
  v10 = v20;
  if ((v8 & 1) == 0)
  {
    v11 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v17))
    {
      *buf = 138543618;
      v23 = v6;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_248524000, v11, v17, "Failed to get last modified date for traffic log file %{public}@: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSinceDate:v9];
  if (fabs(v12) <= 604800.0)
  {
LABEL_9:
    v14 = v10;
    goto LABEL_10;
  }

  v19 = v10;
  v13 = [v4 removeItemAtURL:v3 error:&v19];
  v14 = v19;

  if ((v13 & 1) == 0)
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 138543618;
      v23 = v6;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_248524000, v15, v16, "Failed to remove orphaned log file %{public}@: %@", buf, 0x16u);
    }
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_systemMayNowBeReady
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_startAgentsWhenSystemReadyBlock)
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v13))
    {
      *v25 = 0;
      v14 = "DAAgentManager: NO startAgentWhenSystemReadyBlock defined. This will not load any agents";
      v15 = v25;
      goto LABEL_19;
    }

LABEL_20:

LABEL_21:
    v16 = 0;
    goto LABEL_23;
  }

  v3 = MKBDeviceUnlockedSinceBoot();
  v4 = BYSetupAssistantNeedsToRun();
  v5 = [MEMORY[0x277CF7850] isRunningAsSetupUser];
  v6 = v5;
  if (v3 == 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 | v4))
  {
    if (v3 != 1)
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v8, v9, "Can't start yet, device is still locked", buf, 2u);
      }
    }

    if (v4)
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v10, v11))
      {
        *v27 = 0;
        _os_log_impl(&dword_248524000, v10, v11, "Can't start yet, device is still in buddy", v27, 2u);
      }
    }

    if (!v6)
    {
      goto LABEL_21;
    }

    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v12, v13))
    {
      v26 = 0;
      v14 = "Refusing to load agents because we are running as the setup user";
      v15 = &v26;
LABEL_19:
      _os_log_impl(&dword_248524000, v12, v13, v14, v15, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v16 = MEMORY[0x24C1D1770](v2->_startAgentsWhenSystemReadyBlock);
  startAgentsWhenSystemReadyBlock = v2->_startAgentsWhenSystemReadyBlock;
  v2->_startAgentsWhenSystemReadyBlock = 0;

LABEL_23:
  objc_sync_exit(v2);

  if (v16)
  {
    [MEMORY[0x277CF77C0] removeObserver:v2 name:*MEMORY[0x277D28B28]];
    v2->_registeredForBuddy = 0;
    [MEMORY[0x277CF77C0] removeObserver:v2 name:@"com.apple.purplebuddy.setupdone"];
    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v18, v19))
    {
      *v24 = 0;
      _os_log_impl(&dword_248524000, v18, v19, "DAAgentManager: System Ready Calling Load Agents Block", v24, 2u);
    }

    v16[2](v16);
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v20, v21))
    {
      v23[0] = 0;
      _os_log_impl(&dword_248524000, v20, v21, "DAAgentManager: System Not Yet Ready. We are Not Loading Agents", v23, 2u);
    }
  }

  return v16 != 0;
}

- (void)_resetMonitoringRequestsAndLoadAgents
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_248524000, v3, v4, "DAAgentManager: Clearing disableMonitoringAgentsTokens and Loading Agents", v6, 2u);
  }

  [(DADAgentManager *)self disableMonitoringAgents];
  v5 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  [v5 removeAllObjects];

  [(DADAgentStopStartController *)self->_startStopController reset];
  [(DADAgentManager *)self _loadAndStartMonitoringAgents];
}

- (void)_calDaysToSyncDidChange
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [(DADAgentManager *)self activeAgents];
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [v3 transactionId];
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_248524000, v4, v5, "DATransaction starting, ID: %{public}@", buf, 0xCu);
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
          v17[2] = __42__DADAgentManager__calDaysToSyncDidChange__block_invoke;
          v17[3] = &unk_278F1CD98;
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
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_CTCellularUsagePolicyNotificationQ)
  {
    v3 = dispatch_queue_create("com.apple.dataaccess.ctdatapolicychangeq", 0);
    CTCellularUsagePolicyNotificationQ = self->_CTCellularUsagePolicyNotificationQ;
    self->_CTCellularUsagePolicyNotificationQ = v3;
  }

  if (!self->_ctServerConnection)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = self->_CTCellularUsagePolicyNotificationQ;
    v8 = _CTServerConnectionCreateOnTargetQueue();
    self->_ctServerConnection = v8;
    if (v8)
    {
      v9 = *MEMORY[0x277CC3B50];
      v10 = _CTServerConnectionRegisterForNotification();
      if (v10)
      {
        v11 = DALoggingwithCategory();
        v12 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v11, v12))
        {
          v15 = 138412802;
          v16 = @"kCTPerAppNetworkDataAccessPolicyChangedNotification";
          v17 = 1024;
          v18 = v10;
          v19 = 1024;
          v20 = HIDWORD(v10);
          _os_log_impl(&dword_248524000, v11, v12, "Failed to register CT server notification %@ (domain: %d error: %d).", &v15, 0x18u);
        }

        CFRelease(self->_ctServerConnection);
        self->_ctServerConnection = 0;
      }
    }

    else
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v13, v14))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_248524000, v13, v14, "Failed to create CT server connection", &v15, 2u);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __54__DADAgentManager__registerForCTDataUsageNotificaiton__block_invoke(int a1, CFStringRef theString1)
{
  if (CFStringCompare(theString1, *MEMORY[0x277CC3B50], 0) == kCFCompareEqualTo)
  {
    v2 = +[DADMain sharedMain];
    [v2 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&__block_literal_global_84];
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
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v4, "Received cellular data usage changed notification. Checking if a refresh is required.", buf, 2u);
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
    [DAReachability recordError:0 forHost:0];
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
      type = *(MEMORY[0x277D03988] + 5);
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
              _os_log_impl(&dword_248524000, v29, type, "Refreshing account %{public}@ because wireless data use is now allowed for %{public}@ and might not have been before.", buf, 0x16u);
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
      _os_log_impl(&dword_248524000, v19, v4, "Wireless data usage policy changes do not affect any existing agents; no refreshes will be done.", buf, 2u);
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

- (void)_loadAndStartMonitoringAgents
{
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__DADAgentManager__loadAndStartMonitoringAgents__block_invoke;
  v10[3] = &unk_278F1CE28;
  objc_copyWeak(&v11, &location);
  v3 = MEMORY[0x24C1D1770](v10);
  startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
  self->_startAgentsWhenSystemReadyBlock = v3;

  if ([(DADAgentManager *)self _systemMayNowBeReady])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      *v9 = 0;
      _os_log_impl(&dword_248524000, v5, v6, "DAAgentManager: NO startAgentWhenSystemReadyBlock defined. This will not load any agents", v9, 2u);
    }
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      *v9 = 0;
      _os_log_impl(&dword_248524000, v7, v8, "DAAgentManager: System Not Yet Ready. We will Register for BuddyFinished and KeyBagLock status Notification", v9, 2u);
    }

    [MEMORY[0x277CF77C0] addObserver:self selector:sel__systemMayNowBeReady name:*MEMORY[0x277D28B28]];
    [(DADAgentManager *)self registerForBuddy];
    [(DADAgentManager *)self _systemMayNowBeReady];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __48__DADAgentManager__loadAndStartMonitoringAgents__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v2, v4, "Loading our agents", buf, 2u);
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
      _os_log_impl(&dword_248524000, v7, v8, "Removing CFURLCache entries", buf, 2u);
    }

    CFURLCacheRemoveAllCachedResponses();
    CFRelease(v6);
  }

  [MEMORY[0x277D037D8] resetSyncStatusIfNecessaryForStoresOfType:-3];
  [WeakRetained loadAgents];
  [WeakRetained _clearOrphanedStoresAndTrafficLogFiles];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [WeakRetained activeAgents];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 account];
        if ([v15 keychainAccessibilityType] == 2)
        {
          v16 = [v15 password];
        }

        [v14 startMonitoring];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v11);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, *MEMORY[0x277D038C0], WeakRetained, 0, 1uLL);
  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(v18, *MEMORY[0x277D03718], WeakRetained, 0, 1uLL);
  v19 = dataaccess_get_global_queue();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v19, &__block_literal_global_94);

  v20 = +[DARefreshManager sharedManager];
  [v20 establishAllApsConnections];

  [WeakRetained _registerForCTDataUsageNotificaiton];
  v21 = DALoggingwithCategory();
  if (os_log_type_enabled(v21, v4))
  {
    v22 = [WeakRetained activeAgents];
    *buf = 138412290;
    v30 = v22;
    _os_log_impl(&dword_248524000, v21, v4, "Agents loaded and monitoring.  They are %@", buf, 0xCu);
  }

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 postNotificationName:@"DADAgentsStartedNotification" object:0];

  v24 = *MEMORY[0x277D85DE8];
}

void __48__DADAgentManager__loadAndStartMonitoringAgents__block_invoke_91(int a1, xpc_object_t xdict)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430])}];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v11 = 138543362;
    v12 = v2;
    _os_log_impl(&dword_248524000, v3, v4, "XPC: Received darwin notification: %{public}@", &v11, 0xCu);
  }

  if ([v2 isEqualToString:@"PCPreferencesDidChangeNotification"])
  {
    v5 = DALoggingwithCategory();
    if (os_log_type_enabled(v5, v4))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_248524000, v5, v4, "XPC: Received PCPreferencesDidChangeNotification due to user change", &v11, 2u);
    }

    v6 = +[DARefreshManager sharedManager];
    [v6 pushPreferenceDidChange];
  }

  else if ([v2 isEqualToString:*MEMORY[0x277CF7120]])
  {
    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, v4))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_248524000, v7, v4, "XPC: Received CDBPreferences_Notification_kCalPreferredDaysToSyncKey", &v11, 2u);
    }

    v6 = +[DADAgentManager sharedManager];
    [v6 _calDaysToSyncDidChange];
  }

  else if ([v2 isEqualToString:@"com.apple.dataaccess.checkHolidayCalendarAccount"])
  {
    v8 = DALoggingwithCategory();
    if (os_log_type_enabled(v8, v4))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_248524000, v8, v4, "XPC: Received com.apple.dataaccess.checkHolidayCalendarAccount", &v11, 2u);
    }

    v9 = MEMORY[0x277CF77E0];
    v6 = sharedDAAccountStore();
    [v9 ensureHolidayAccountExistsWithAccountStore:v6];
  }

  else
  {
    v6 = [MEMORY[0x277D037A0] sharedDBWatcher];
    [v6 didReceiveDarwinNotification:v2];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForBuddy
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v4, "REGISTER FOR BUDDY", buf, 2u);
  }

  if (!self->_registeredForBuddy)
  {
    self->_registeredForBuddy = 1;
    [MEMORY[0x277CF77C0] addObserver:self selector:sel__resetMonitoringRequestsAndLoadAgents name:@"com.apple.purplebuddy.setupdone"];
  }

  v5 = +[DADMain sharedMain];
  [v5 boostConnectedActivityPriority];

  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v4))
  {
    *v7 = 0;
    _os_log_impl(&dword_248524000, v6, v4, "EXITING REGISTER FOR BUDDY", v7, 2u);
  }
}

- (void)_stopMonitoringAndSaveAgents
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_startAgentsWhenSystemReadyBlock)
  {
    [MEMORY[0x277CF77C0] removeObserver:self name:*MEMORY[0x277D28B28]];
    self->_registeredForBuddy = 0;
    [MEMORY[0x277CF77C0] removeObserver:self name:@"com.apple.purplebuddy.setupdone"];
    startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
    if (startAgentsWhenSystemReadyBlock)
    {
      self->_startAgentsWhenSystemReadyBlock = 0;
    }
  }

  dispatch_suspend(gDADOperationQueue);
  v4 = [(DADAgentManager *)self activeAgents];
  v5 = [v4 mutableCopy];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v34 = v5;
    _os_log_impl(&dword_248524000, v6, v7, "Agents awaiting shut down are %@", buf, 0xCu);
  }

  v8 = DALoggingwithCategory();
  if (os_log_type_enabled(v8, v7))
  {
    *buf = 138412290;
    v34 = v4;
    _os_log_impl(&dword_248524000, v8, v7, "Stopping our agents (which are %@)", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, v7))
        {
          *buf = 138412290;
          v34 = v13;
          _os_log_impl(&dword_248524000, v14, v7, "Stopping agent %@", buf, 0xCu);
        }

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __47__DADAgentManager__stopMonitoringAndSaveAgents__block_invoke;
        v27[3] = &unk_278F1CE50;
        v28 = v5;
        [v13 requestAgentStopMonitoringWithCompletionBlock:v27];
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v10);
  }

  if ([v5 count])
  {
    v15 = objc_autoreleasePoolPush();
    if ([v5 count])
    {
      v16 = *MEMORY[0x277CBF058];
      do
      {
        v17 = objc_autoreleasePoolPush();
        v18 = DALoggingwithCategory();
        if (os_log_type_enabled(v18, v7))
        {
          v19 = [v5 count];
          *buf = 134218242;
          v34 = v19;
          v35 = 2112;
          v36 = v5;
          _os_log_impl(&dword_248524000, v18, v7, "Still waiting for %lu agents to shut down.  Spinning a run loop. Outstanding agents are %@", buf, 0x16u);
        }

        v20 = CFRunLoopRunInMode(v16, 1.0, 1u);
        objc_autoreleasePoolPop(v17);
      }

      while ([v5 count] && (v20 - 3) < 0xFFFFFFFE);
    }

    objc_autoreleasePoolPop(v15);
    v21 = DALoggingwithCategory();
    if (os_log_type_enabled(v21, v7))
    {
      v22 = [v5 count];
      *buf = 134217984;
      v34 = v22;
      _os_log_impl(&dword_248524000, v21, v7, "Run Loop finished.  Active Agent count is now %ld.", buf, 0xCu);
    }
  }

  [(DADAgentManager *)self releaseAgents];
  v23 = DALoggingwithCategory();
  if (os_log_type_enabled(v23, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v23, v7, "Agents stopped and saved", buf, 2u);
  }

  dispatch_resume(gDADOperationQueue);
  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  [v24 postNotificationName:@"DADAgentsStoppedNotification" object:0];

  v25 = *MEMORY[0x277D85DE8];
}

void __47__DADAgentManager__stopMonitoringAndSaveAgents__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_248524000, v4, v5, "Agent %@ has stopped monitoring", &v9, 0xCu);
  }

  [*(a1 + 32) removeObject:v3];
  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = [*(a1 + 32) count];
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&dword_248524000, v6, v5, "agentsAwaitingShutdown count is now %lu", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_sendAccountAnalytics
{
  v19 = *MEMORY[0x277D85DE8];
  if (AnalyticsIsEventUsed())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(DADAgentManager *)self activeAgents];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
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

          v8 = [*(*(&v12 + 1) + 8 * v7) account];
          v16 = @"type";
          v9 = [v8 accountTypeIdentifier];
          v17 = v9;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

          AnalyticsSendEvent();
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v5);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
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
    v13 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v11, v13))
    {
      v17 = 67109120;
      v18 = a3;
      _os_log_impl(&dword_248524000, v12, v13, "Ignoring call to enableMonitoringAgentsWithToken: with unrecognized token %d", &v17, 8u);
    }
  }

  else
  {
    v14 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v11, v14))
    {
      v17 = 67109120;
      v18 = v10;
      _os_log_impl(&dword_248524000, v12, v14, "DADAgentManager asked to enableMonitoringAgents. New count = %d", &v17, 8u);
    }

    if (!v10)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v14))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_248524000, v15, v14, "DADAgentManager disableMonitoringAgents reached 0. Start Loading Agents..", &v17, 2u);
      }

      [(DADAgentManager *)self _loadAndStartMonitoringAgents];
      [(DADAgentManager *)self _sendAccountAnalytics];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)disableMonitoringAgents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(DADAgentManager *)self nextDisableMonitoringAgentsToken];
  [(DADAgentManager *)self setNextDisableMonitoringAgentsToken:v3 + 1];
  v4 = [objc_alloc(MEMORY[0x277D037F0]) initWithLabel:@"disableMonitoringAgents"];
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v7))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(&dword_248524000, v5, v7, "DATransaction starting, ID: disableMonitoringAgents", v17, 2u);
  }

  v8 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];
  [v8 setObject:v4 forKeyedSubscript:v9];

  v10 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v11 = [v10 count];

  v12 = DALoggingwithCategory();
  v13 = *(v6 + 5);
  if (os_log_type_enabled(v12, v13))
  {
    v17[0] = 67109120;
    v17[1] = v11;
    _os_log_impl(&dword_248524000, v12, v13, "DADAgentManager asked to disableMonitoringAgents. New count = %d", v17, 8u);
  }

  if (v11 == 1)
  {
    v14 = DALoggingwithCategory();
    if (os_log_type_enabled(v14, v13))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&dword_248524000, v14, v13, "DADAgentManager disableMonitoringAgents reached 1. Stop Loading Agents..", v17, 2u);
    }

    [(DADAgentManager *)self _stopMonitoringAndSaveAgents];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v3 + 1;
}

- (void)scheduleAgentStartOrStopBlock:(id)a3
{
  v3 = a3;
  v4 = +[DADMain sharedMain];
  [v4 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v3];
}

- (id)agentsToSyncForAccountID:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [v4 isEqualToString:*MEMORY[0x277D03880]];
  v6 = [(DADAgentManager *)self activeAgents];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      v25 = v8;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = [v11 account];
        v13 = v12;
        if (v5)
        {
          if ([v12 isSubscribedCalendarAccount])
          {
            v14 = [v13 backingAccountInfo];
            [v14 parentAccountIdentifier];
            v15 = v9;
            v16 = v5;
            v17 = v4;
            v19 = v18 = v6;
            v20 = [v19 length];

            v6 = v18;
            v4 = v17;
            v5 = v16;
            v9 = v15;
            v8 = v25;

            if (!v20)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v21 = [v12 accountID];
          v22 = [v21 isEqualToString:v4];

          if ((v22 & 1) != 0 || [objc_opt_class() _shouldAccount:v13 syncWhenSyncingParentAccountWithID:v4])
          {
LABEL_12:
            [v26 addObject:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (BOOL)_shouldAccount:(id)a3 syncWhenSyncingParentAccountWithID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 backingAccountInfo];
  v8 = [v7 parentAccount];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:v6];

  if (v10)
  {
    if ([v5 isDelegateAccount])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v5 isSubscribedCalendarAccount];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
          v15 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v14, v15))
          {
            v16 = [v7 account];
            *buf = 138412290;
            v26 = v16;
            _os_log_impl(&dword_248524000, v14, v15, "Found an EAS Account %@", buf, 0xCu);
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

- (BOOL)resetCertWarningsForAccountWithId:(id)a3 andDataclasses:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(DADAgentManager *)self activeAgents];
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
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    *v9 = 0;
    _os_log_impl(&dword_248524000, v6, v7, "The dataaccessd does not support setFolderIdsThatExternalClientsCareAboutAdded method, which is for Exchange accounts", v9, 2u);
  }

  return 0;
}

- (void)reportFolderItemsSyncSuccess:(BOOL)a3 forFolderWithID:(id)a4 withItemsCount:(unint64_t)a5 andAccountWithID:(id)a6
{
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    *v8 = 0;
    _os_log_impl(&dword_248524000, v6, v7, "The dataaccessd does not support reportFolderItemsSyncSuccess method, which is for Exchange accounts", v8, 2u);
  }
}

- (id)stateString
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  obj = v2;
  [(DADAgentManager *)v2 activeAgents];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v3 = v27 = 0u;
  v4 = [(__CFString *)v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v4)
  {
    v13 = &stru_285AC0920;
    v8 = v3;
    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0;
  v7 = *v27;
  v8 = &stru_285AC0920;
  do
  {
    v9 = 0;
    v10 = v6;
    do
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v6 = *(*(&v26 + 1) + 8 * v9);

      v11 = [v6 stateString];
      if (v11)
      {
        v12 = [(__CFString *)v8 stringByAppendingString:v11];

        v8 = [v12 stringByAppendingString:@"=======\n\n"];
      }

      else
      {
        ++v5;
      }

      ++v9;
      v10 = v6;
    }

    while (v4 != v9);
    v4 = [(__CFString *)v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v4);

  if (v5)
  {
    v13 = [(__CFString *)v8 stringByAppendingFormat:@"(Skipped %lu agents without interesting state)\n\n", v5];
LABEL_14:

    goto LABEL_16;
  }

  v13 = v8;
LABEL_16:
  v14 = [MEMORY[0x277D03790] sharedGateKeeper];
  v15 = [v14 stateString];

  if (v15)
  {
    v16 = [(__CFString *)v13 stringByAppendingString:v15];

    v13 = v16;
  }

  v17 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  v18 = [v17 stateString];

  if (v18)
  {
    v19 = [(__CFString *)v13 stringByAppendingString:v18];

    v13 = v19;
  }

  v20 = [(DADAgentManager *)obj disableMonitoringAgentsTokens];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [(__CFString *)v13 stringByAppendingFormat:@"Outstanding shutdown tokens: %lu\n\n", v21];

    v13 = v22;
  }

  objc_sync_exit(obj);
  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)handleURLString:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = a3;
    v9 = [[v4 alloc] initWithString:v5];

    if (v9)
    {
      v6 = objc_alloc(MEMORY[0x277CB8F58]);
      v7 = [v6 initWithIdentifier:*MEMORY[0x277CB8D10] description:0];
      v8 = [MEMORY[0x277D03738] sharedInstance];
      [v8 loadDaemonBundleForACAccountType:v7];

      [(DADAgentManager *)self handleWebcalURL:v9];
    }
  }
}

- (BOOL)processFolderChange:(id)a3 forAccountWithID:(id)a4 completionBlock:(id)a5
{
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_248524000, v5, v6, "The dataaccessd does not support processFolderChange method, which is for Exchange accounts", v8, 2u);
  }

  return 0;
}

- (void)getStatusReportDictsWithCompletionBlock:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v30 = [MEMORY[0x277D03768] sharedBabysitter];
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
  _hasDataclassWeCareAbout__dataclassesWeCareAbout = [v0 initWithObjects:{*MEMORY[0x277CB9108], *MEMORY[0x277CB9110], *MEMORY[0x277CB90F0], *MEMORY[0x277CB9150], *MEMORY[0x277CB9178], 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)removePendingAccountSetup
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"DADAgentManager.m" lineNumber:1930 description:@"Somebody isn't maintaining their account setup correctly"];

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
  v4 = [MEMORY[0x277D03970] leafAccountTypes];
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
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *__error();
      *buf = 67109120;
      v10 = v7;
      _os_log_impl(&dword_248524000, v5, v6, "unable to signal launchd to keep dataaccessd alive: errno %d", buf, 8u);
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
      _os_log_impl(&dword_248524000, v4, v5, "unable to cleanup launchd semaphore so that dataaccessd can be pressured exit: errno %d", v8, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end