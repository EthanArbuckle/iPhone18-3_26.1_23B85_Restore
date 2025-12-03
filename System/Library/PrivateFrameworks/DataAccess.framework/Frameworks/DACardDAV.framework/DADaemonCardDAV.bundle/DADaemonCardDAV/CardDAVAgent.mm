@interface CardDAVAgent
+ (OS_os_log)os_log_summary;
- (BOOL)APSTopicHasValidPrefix:(id)prefix;
- (BOOL)_syncResultForFolderWithURL:(id)l newTag:(id)tag newSyncToken:(id)token actions:(id)actions changeIdContext:(id)context isInitialSync:(BOOL)sync arePartialResults:(BOOL)results externalURLForNewLocation:(id)self0;
- (BOOL)_updateMeCard;
- (BOOL)isAccountOwnerChildInFamilyCircle;
- (BOOL)isPrimaryICloudAccount;
- (CardDAVAgent)initWithAccount:(id)account;
- (NSString)onBehalfOfBundleIdentifier;
- (NSString)scheduleIdentifier;
- (NSString)waiterID;
- (id)actionsDataSource;
- (id)actionsFinalizer;
- (id)actionsHandler;
- (id)contactsProvider;
- (id)containerProvider;
- (id)databaseHelper;
- (id)groupsProvider;
- (id)initialActionsDataSource;
- (id)password;
- (id)publicContainerProviderSummaryInfo;
- (id)setupCardDAVDelegateManager:(id)manager;
- (id)username;
- (void)_addressBookSyncTask:(id)task failedWithErrorCode:(int64_t)code;
- (void)_appendSyncRequest:(id)request;
- (void)_contactsDidChange;
- (void)_finishInitialSyncForFolderWithURL:(id)l context:(id)context;
- (void)_fireWaitingFolderItemSyncRequests;
- (void)_handlePotential503Error:(id)error;
- (void)_holdingDataClassLock_refreshPropertiesOfAllContactFoldersWithCompletion:(id)completion;
- (void)_pushInitialSyncActionsForFolderWithURL:(id)l context:(id)context;
- (void)_reallySyncRequest:(id)request;
- (void)_setUpABNotifications;
- (void)_successfullyFinishedInitialSyncForFolderWithID:(id)d context:(id)context;
- (void)_syncRequest:(id)request;
- (void)_tearDownABNotifications;
- (void)_validateAndSync:(BOOL)sync;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error;
- (void)contactsFolderWithId:(id)id successfullyPushedActions:(id)actions;
- (void)failedToFinishInitialSync:(id)sync error:(id)error;
- (void)failedToRetrieveAddressBookURLsWithError:(id)error;
- (void)failedToUpdateServerMeCardWithError:(id)error;
- (void)refreshCollections:(id)collections withReason:(int)reason;
- (void)refreshPropertiesOfAllContactFoldersWithCompletion:(id)completion;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block;
- (void)startMonitoring;
- (void)successfullyFinishedInitalUploadForFolderWithID:(id)d container:(id)container guardianRestrictedUUIDs:(id)ds guardianRestrictedHREFs:(id)fs blacklistedUUIDs:(id)iDs blacklistedHREFs:(id)eFs context:(id)context;
- (void)successfullyRetrievedAddressBookURLs;
- (void)successfullyUpdatedServerMeCardWithURL:(id)l;
- (void)syncFolderIDs:(id)ds forDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (void)syncResultForContactsFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag newSyncToken:(id)token actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)self0 moreAvailable:(BOOL)self1 moreLocalChangesAvailable:(BOOL)self2 pushedActions:(id)self3;
- (void)syncResultForContactsFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag newSyncToken:(id)token actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)self0 moreAvailable:(BOOL)self1 moreLocalChangesAvailable:(BOOL)self2 pushedActions:(id)self3 externalURLForNewLocation:(id)self4;
@end

@implementation CardDAVAgent

+ (OS_os_log)os_log_summary
{
  if (qword_46F18 != -1)
  {
    sub_2560C();
  }

  v3 = qword_46F20;

  return v3;
}

- (CardDAVAgent)initWithAccount:(id)account
{
  accountCopy = account;
  v16.receiver = self;
  v16.super_class = CardDAVAgent;
  v5 = [(CardDAVAgent *)&v16 initWithAccount:accountCopy];
  if (v5)
  {
    v6 = objc_alloc_init(NSLock);
    folderItemSyncRequestLock = v5->_folderItemSyncRequestLock;
    v5->_folderItemSyncRequestLock = v6;

    v8 = +[NSMutableDictionary dictionary];
    folderURLToHeldAsideGroups = v5->_folderURLToHeldAsideGroups;
    v5->_folderURLToHeldAsideGroups = v8;

    v10 = +[NSMutableDictionary dictionary];
    folderURLToSyncInfo = v5->_folderURLToSyncInfo;
    v5->_folderURLToSyncInfo = v10;

    backingAccountInfo = [accountCopy backingAccountInfo];
    v13 = [(CardDAVAgent *)v5 setupCardDAVDelegateManager:backingAccountInfo];
    delegateManager = v5->_delegateManager;
    v5->_delegateManager = v13;
  }

  return v5;
}

- (id)databaseHelper
{
  account = [(CardDAVAgent *)self account];
  databaseHelper = [account databaseHelper];

  return databaseHelper;
}

- (id)setupCardDAVDelegateManager:(id)manager
{
  managerCopy = manager;
  parentAccount = [managerCopy parentAccount];
  v6 = [parentAccount aa_isAccountClass:AAAccountClassPrimary];

  if (v6)
  {
    v7 = objc_alloc_init(CardDAViCloudDelegateInfoProvider);
    v8 = [CardDAVDelegateManager alloc];
    identifier = [managerCopy identifier];
    databaseHelper = [(CardDAVAgent *)self databaseHelper];
    v11 = [(CardDAVDelegateManager *)v8 initWithDelegateInfoProvider:v7 accountID:identifier databaseHelper:databaseHelper];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)contactsProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVAgent *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [DAContactsProvider providerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[DAContactsProvider providerWithAddressBook:](DAContactsProvider, "providerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (id)containerProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVAgent *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [DAContainerProvider providerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[DAContainerProvider providerWithAddressBook:](DAContainerProvider, "providerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (id)groupsProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVAgent *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [DAGroupsProvider providerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[DAGroupsProvider providerWithAddressBook:](DAGroupsProvider, "providerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (id)initialActionsDataSource
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVAgent *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [CardDAVInitialActionsDataSource dataSourceWithContactStore:contactStore];
  }

  else
  {
    v7 = +[CardDAVInitialActionsDataSource dataSourceWithAddressBook:](CardDAVInitialActionsDataSource, "dataSourceWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (id)actionsDataSource
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVAgent *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [CardDAVActionsDataSource dataSourceWithContactStore:contactStore];
  }

  else
  {
    v7 = +[CardDAVActionsDataSource dataSourceWithAddressBook:](CardDAVActionsDataSource, "dataSourceWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (id)actionsHandler
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVAgent *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [CardDAVActionsHandler handlerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[CardDAVActionsHandler handlerWithAddressBook:](CardDAVActionsHandler, "handlerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (id)actionsFinalizer
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVAgent *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [CardDAVActionsFinalizer finalizerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[CardDAVActionsFinalizer finalizerWithAddressBook:](CardDAVActionsFinalizer, "finalizerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (void)_validateAndSync:(BOOL)sync
{
  if (sync)
  {
    account = [(CardDAVAgent *)self account];
    [account setWasUserInitiated:1];
  }

  if ([(CardDAVAgent *)self isWaitingForPassword])
  {
    os_log_summary = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
    {
      account2 = [(CardDAVAgent *)self account];
      accountDescription = [account2 accountDescription];
      account3 = [(CardDAVAgent *)self account];
      publicDescription = [account3 publicDescription];
      *buf = 138412546;
      v24 = accountDescription;
      v25 = 2114;
      v26 = publicDescription;
      v11 = "Account %@ (%{public}@) is waiting for a password, so we're going to ignore this refresh request";
LABEL_9:
      _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
    }
  }

  else
  {
    account4 = [(CardDAVAgent *)self account];
    shouldFailAllTasks = [account4 shouldFailAllTasks];

    if (shouldFailAllTasks)
    {
      os_log_summary = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [(CardDAVAgent *)self account];
        accountDescription = [account2 accountDescription];
        account3 = [(CardDAVAgent *)self account];
        publicDescription = [account3 publicDescription];
        *buf = 138412546;
        v24 = accountDescription;
        v25 = 2114;
        v26 = publicDescription;
        v11 = "Account %@ (%{public}@) thinks it should fail all tasks.  Doing so";
        goto LABEL_9;
      }
    }

    else
    {
      account5 = [(CardDAVAgent *)self account];
      shouldAutodiscoverAccountProperties = [account5 shouldAutodiscoverAccountProperties];

      if (!shouldAutodiscoverAccountProperties)
      {
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_3E90;
        v21[3] = &unk_3C8D0;
        v21[4] = self;
        syncCopy = sync;
        [(CardDAVAgent *)self _probeAndSyncWithBlock:v21];
        return;
      }

      os_log_summary2 = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(os_log_summary2, OS_LOG_TYPE_DEFAULT))
      {
        account6 = [(CardDAVAgent *)self account];
        accountDescription2 = [account6 accountDescription];
        account7 = [(CardDAVAgent *)self account];
        publicDescription2 = [account7 publicDescription];
        *buf = 138412546;
        v24 = accountDescription2;
        v25 = 2114;
        v26 = publicDescription2;
        _os_log_impl(&dword_0, os_log_summary2, OS_LOG_TYPE_DEFAULT, "Account %@ (%{public}@) doesn't have a principal URL. Running autodiscovery.", buf, 0x16u);
      }

      os_log_summary = [(CardDAVAgent *)self account];
      [os_log_summary discoverInitialPropertiesWithConsumer:self];
    }
  }
}

- (void)_setUpABNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_contactsDidChange" name:CNContactStoreDidChangeNotification object:0];
}

- (void)_contactsDidChange
{
  if ([(CardDAVAgent *)self isMonitoring])
  {
    os_log_summary = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
    {
      account = [(CardDAVAgent *)self account];
      accountDescription = [account accountDescription];
      account2 = [(CardDAVAgent *)self account];
      publicDescription = [account2 publicDescription];
      v8 = 138412546;
      v9 = accountDescription;
      v10 = 2114;
      v11 = publicDescription;
      _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "Handling CNContactStoreDidChangeNotification for account %@ (%{public}@); sync will occur", &v8, 0x16u);
    }

    [(CardDAVAgent *)self _validateAndSync:1];
  }
}

- (void)_tearDownABNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CNContactStoreDidChangeNotification object:0];
}

- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error
{
  validCopy = valid;
  accountCopy = account;
  errorCopy = error;
  if (validCopy && (-[CardDAVAgent account](self, "account"), v10 = objc_claimAutoreleasedReturnValue(), [v10 principalPath], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v12, v13))
    {
      account = [(CardDAVAgent *)self account];
      accountDescription = [account accountDescription];
      publicDescription = [accountCopy publicDescription];
      *buf = 138412546;
      v27 = accountDescription;
      v28 = 2114;
      v29 = publicDescription;
      _os_log_impl(&dword_0, v12, v13, "Account %@ (%{public}@) was successfully autodiscovered, saving account settings", buf, 0x16u);
    }

    account2 = [(CardDAVAgent *)self account];
    [account2 setShouldDoInitialAutodiscovery:0];

    account3 = [(CardDAVAgent *)self account];
    [account3 saveAccountProperties];

    [(CardDAVAgent *)self refreshFolderListRequireChangedFolders:0 isUserRequested:1];
  }

  else
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:DAAccountValidationDomain])
    {
      code = [errorCopy code];

      if (code == &stru_20.flags + 2)
      {
        [(CardDAVAgent *)self setIsWaitingForPassword:1];
        account4 = [(CardDAVAgent *)self account];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_44D4;
        v24[3] = &unk_3C8F8;
        v24[4] = self;
        v25 = accountCopy;
        [account4 handleValidationError:errorCopy completion:v24];

        goto LABEL_14;
      }
    }

    else
    {
    }

    if (statusAndErrorIndicateWeShouldTurnOnReachability())
    {
      v22 = DALoggingwithCategory();
      v23 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v22, v23))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v22, v23, "We'll refresh if we find a better network connection.", buf, 2u);
      }

      [(CardDAVAgent *)self setSyncWhenReachable:1];
    }
  }

LABEL_14:
}

- (void)startMonitoring
{
  account = [(CardDAVAgent *)self account];
  v4 = [account enabledForDADataclass:2];

  if (v4)
  {
    [(CardDAVAgent *)self setIsMonitoring:1];
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4874;
    v8[3] = &unk_3C920;
    v8[4] = self;
    objc_copyWeak(&v9, &location);
    [(CardDAVAgent *)self observeReachabilityWithBlock:v8];
    [(CardDAVAgent *)self _setUpABNotifications];
    os_log_summary = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
    {
      publicDescription = [(CardDAVAgent *)self publicDescription];
      *buf = 138543362;
      v12 = publicDescription;
      _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "DA just woke up; sync will occur with %{public}@.", buf, 0xCu);
    }

    [(CardDAVAgent *)self _validateAndSync:0];
    v7 = +[DARefreshManager sharedManager];
    [v7 registerDelegate:self];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(CardDAVAgent *)self setIsMonitoring:0];
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    publicDescription = [(CardDAVAgent *)self publicDescription];
    v14 = 138543362;
    v15 = publicDescription;
    _os_log_impl(&dword_0, v5, v6, "The CardDAV agent was told to stop monitoring with %{public}@.", &v14, 0xCu);
  }

  [(CardDAVAgent *)self stopObservingReachability];
  [(CardDAVAgent *)self _tearDownABNotifications];
  account = [(CardDAVAgent *)self account];
  taskManager = [account taskManager];
  [taskManager shutdown];

  v10 = +[DALocalDBGateKeeper sharedGateKeeper];
  account2 = [(CardDAVAgent *)self account];
  [v10 unregisterWaiterForDataclassLocks:account2];

  v12 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v12 unregisterWaiterForDataclassLocks:self];

  v13 = +[DARefreshManager sharedManager];
  [v13 unregisterDelegate:self];

  blockCopy[2](blockCopy, self);
}

- (void)syncFolderIDs:(id)ds forDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  dsCopy = ds;
  if (requestedCopy)
  {
    account = [(CardDAVAgent *)self account];
    [account setShouldUseOpportunisticSockets:0];

    account2 = [(CardDAVAgent *)self account];
    [account2 setWasUserInitiated:1];
  }

  if (dsCopy)
  {
    v27 = dsCopy;
    v10 = objc_opt_new();
    selfCopy = self;
    account3 = [(CardDAVAgent *)self account];
    addressBooksByFolderURL = [account3 addressBooksByFolderURL];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      v17 = _CPLog_to_os_log_type[3];
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [NSURL URLWithString:*(*(&v28 + 1) + 8 * i)];
          v20 = [addressBooksByFolderURL objectForKeyedSubscript:v19];
          if (v20)
          {
            [v13 addObject:v20];
          }

          else
          {
            v21 = DALoggingwithCategory();
            if (os_log_type_enabled(v21, v17))
            {
              *buf = 138412546;
              v33 = v19;
              v34 = 2112;
              v35 = addressBooksByFolderURL;
              _os_log_impl(&dword_0, v21, v17, "Asked to sync folder with id %@, but I only know of these folders %@", buf, 0x16u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v15);
    }

    [(CardDAVAgent *)selfCopy _appendSyncRequestsForFolders:v13 remoteChanges:1];
    dsCopy = v27;
  }

  else
  {
    account4 = [(CardDAVAgent *)self account];
    addressBooks = [account4 addressBooks];
    v24 = [addressBooks count];

    if (v24)
    {
      [(CardDAVAgent *)self _syncAllContactFoldersWithRemoteChanges:1];
    }

    else
    {
      os_log_summary = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "DA retry machinations; sync will occur", buf, 2u);
      }

      [(CardDAVAgent *)self _validateAndSync:0];
    }
  }
}

- (void)failedToFinishInitialSync:(id)sync error:(id)error
{
  syncCopy = sync;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:DAErrorDomain])
  {
    code = [errorCopy code];

    if (code == &dword_4 + 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v11, v12))
  {
    Name = sel_getName(a2);
    code2 = [errorCopy code];
    domain2 = [errorCopy domain];
    *buf = 136316162;
    v39 = Name;
    v40 = 2112;
    v41 = syncCopy;
    v42 = 2048;
    v43 = code2;
    v44 = 2114;
    v45 = domain2;
    v46 = 2112;
    v47 = errorCopy;
    _os_log_impl(&dword_0, v11, v12, "Yikes: %s %@ error code:%ld error domain:%{public}@ error:%@", buf, 0x34u);
  }

LABEL_8:
  v16 = [NSURL URLWithString:syncCopy];
  [(NSMutableDictionary *)self->_folderURLToSyncInfo removeObjectForKey:v16];
  [(CardDAVAgent *)self _handlePotential503Error:errorCopy];
  if ([errorCopy DA_isFailedDependencyError])
  {
    account = [(CardDAVAgent *)self account];
    homeURL = [account homeURL];
    v19 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      databaseHelper = [(CardDAVAgent *)self databaseHelper];
      account2 = [(CardDAVAgent *)self account];
      changeTrackingID = [account2 changeTrackingID];
      [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
    }

    containerProvider = [(CardDAVAgent *)self containerProvider];
    account3 = [(CardDAVAgent *)self account];
    syncStoreIdentifier = [account3 syncStoreIdentifier];
    v26 = [containerProvider containerWithExternalIdentifier:v19 forAccountWithExternalIdentifier:syncStoreIdentifier];

    if (v26)
    {
      syncData = [v26 syncData];
      if (!syncData || ([NSPropertyListSerialization propertyListFromData:syncData mutabilityOption:1 format:0 errorDescription:0], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v28 = [NSMutableDictionary dictionaryWithCapacity:1];
      }

      [v28 setObject:&__kCFBooleanTrue forKeyedSubscript:@"CTagIsSuspect"];
      v29 = [NSPropertyListSerialization dataFromPropertyList:v28 format:200 errorDescription:0];
      [v26 setSyncData:v29];
      if (+[DABehaviorOptions useContactsFramework])
      {
        v37 = v19;
        v30 = objc_alloc_init(CNSaveRequest);
        [v26 updateSaveRequest:v30];
        databaseHelper2 = [(CardDAVAgent *)self databaseHelper];
        [databaseHelper2 addSaveRequest:v30];

        databaseHelper3 = [(CardDAVAgent *)self databaseHelper];
        [databaseHelper3 executeAllSaveRequests];

        v19 = v37;
      }
    }

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      databaseHelper4 = [(CardDAVAgent *)self databaseHelper];
      [databaseHelper4 abCloseDBAndSave:v26 != 0];
    }

    os_log_summary = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "Initial sync failed, queue retry", buf, 2u);
    }

    [(CardDAVAgent *)self _syncAllContactFoldersWithRemoteChanges:1];
  }

  v35 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v35 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

  v36 = +[DARefreshManager sharedManager];
  [v36 delegateDidCompleteRefresh:self];

  [(CardDAVAgent *)self setLastRetryTimeout:0.0];
  [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (void)successfullyUpdatedServerMeCardWithURL:(id)l
{
  v4 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v4 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

  v5 = +[DARefreshManager sharedManager];
  [v5 delegateDidCompleteRefresh:self];

  [(CardDAVAgent *)self setLastRetryTimeout:0.0];

  [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (void)failedToUpdateServerMeCardWithError:(id)error
{
  v4 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v4 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

  v5 = +[DARefreshManager sharedManager];
  [v5 delegateDidCompleteRefresh:self];

  [(CardDAVAgent *)self setLastRetryTimeout:0.0];
  os_log_summary = [objc_opt_class() os_log_summary];
  if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "Me-card sync failed, queue retry", v7, 2u);
  }

  [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (BOOL)_updateMeCard
{
  selfCopy = self;
  account = [(CardDAVAgent *)self account];
  LOBYTE(selfCopy) = [account updateMeCardWithWithConsumer:selfCopy];

  return selfCopy;
}

- (void)_successfullyFinishedInitialSyncForFolderWithID:(id)d context:(id)context
{
  contextCopy = context;
  v6 = [NSURL URLWithString:d];
  [(NSMutableDictionary *)self->_folderURLToSyncInfo removeObjectForKey:v6];
  bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
  self->_bulkUploadUUIDBlacklist = 0;

  bulkUploadHREFBlacklist = self->_bulkUploadHREFBlacklist;
  self->_bulkUploadHREFBlacklist = 0;

  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    databaseHelper = [(CardDAVAgent *)self databaseHelper];
    account = [(CardDAVAgent *)self account];
    changeTrackingID = [account changeTrackingID];
    [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
  }

  account2 = [(CardDAVAgent *)self account];
  homeURL = [account2 homeURL];
  v14 = [v6 da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

  containerProvider = [(CardDAVAgent *)self containerProvider];
  account3 = [(CardDAVAgent *)self account];
  syncStoreIdentifier = [account3 syncStoreIdentifier];
  v18 = [containerProvider containerWithExternalIdentifier:v14 forAccountWithExternalIdentifier:syncStoreIdentifier];

  if (v18)
  {
    syncData = [v18 syncData];
    if (syncData)
    {
      v20 = [NSPropertyListSerialization propertyListFromData:syncData mutabilityOption:1 format:0 errorDescription:0];
      [v20 setObject:&__kCFBooleanFalse forKeyedSubscript:@"NeedInitialSync"];
      [v20 removeObjectForKey:@"CTagIsSuspect"];
      v21 = [NSPropertyListSerialization dataFromPropertyList:v20 format:200 errorDescription:0];
      [v18 setSyncData:v21];
      if (+[DABehaviorOptions useContactsFramework])
      {
        v22 = objc_alloc_init(CNSaveRequest);
        [v18 updateSaveRequest:v22];
        databaseHelper2 = [(CardDAVAgent *)self databaseHelper];
        [databaseHelper2 addSaveRequest:v22];
      }
    }

    actionsFinalizer = [(CardDAVAgent *)self actionsFinalizer];
    account4 = [(CardDAVAgent *)self account];
    changeTrackingID2 = [account4 changeTrackingID];
    v27 = [actionsFinalizer clearChangeHistoriesWithChangeIdContext:contextCopy pushedActions:0 inContainer:v18 changeTrackingID:changeTrackingID2];

    account5 = [(CardDAVAgent *)self account];
    v29 = v27 | [account5 setBestMeCard];
    if (syncData)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      if (!v30)
      {
        goto LABEL_18;
      }

      databaseHelper3 = [(CardDAVAgent *)self databaseHelper];
      [databaseHelper3 executeAllSaveRequests];
      goto LABEL_17;
    }
  }

  else
  {
    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      goto LABEL_18;
    }

    v30 = 0;
  }

  databaseHelper3 = [(CardDAVAgent *)self databaseHelper];
  [databaseHelper3 abCloseDBAndSave:v30];
LABEL_17:

LABEL_18:
  if (![(CardDAVAgent *)self _updateMeCard])
  {
    v32 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v32 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

    v33 = +[DARefreshManager sharedManager];
    [v33 delegateDidCompleteRefresh:self];

    [(CardDAVAgent *)self setLastRetryTimeout:0.0];
    [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
  }
}

- (void)_pushInitialSyncActionsForFolderWithURL:(id)l context:(id)context
{
  lCopy = l;
  contextCopy = context;
  v98 = 0;
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    databaseHelper = [(CardDAVAgent *)self databaseHelper];
    account = [(CardDAVAgent *)self account];
    changeTrackingID = [account changeTrackingID];
    [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
  }

  account2 = [(CardDAVAgent *)self account];
  homeURL = [account2 homeURL];
  v74 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

  containerProvider = [(CardDAVAgent *)self containerProvider];
  account3 = [(CardDAVAgent *)self account];
  syncStoreIdentifier = [account3 syncStoreIdentifier];
  v76 = [containerProvider containerWithExternalIdentifier:v74 forAccountWithExternalIdentifier:syncStoreIdentifier];

  if (v76)
  {
    syncData = [v76 syncData];
    if (syncData)
    {
      v15 = [NSPropertyListSerialization propertyListFromData:syncData mutabilityOption:0 format:0 errorDescription:0];
    }

    else
    {
      v15 = 0;
    }

    v16 = [CardDAVPropertiesHelper maxImageSizeFromSyncDict:v15];
    v70 = v15;
    v17 = [CardDAVPropertiesHelper maxResourceSizeFromSyncDict:v15];
    cTag = [v76 cTag];
    v18 = objc_opt_new();
    v19 = objc_opt_new();
    contactsProvider = [(CardDAVAgent *)self contactsProvider];
    v73 = [contactsProvider contactsInContainer:v76];

    v94 = 0;
    v95 = &v94;
    v96 = 0x2020000000;
    v97 = 0;
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v93 = 0;
    if ([v76 isGuardianRestricted])
    {
      isPrimaryICloudAccount = [(CardDAVAgent *)self isPrimaryICloudAccount];
    }

    else
    {
      isPrimaryICloudAccount = 0;
    }

    if (!(([v73 count] == 0) | isPrimaryICloudAccount & 1))
    {
      memset(&stats, 0, sizeof(stats));
      malloc_zone_statistics(0, &stats);
      size_in_use = stats.size_in_use;
      Current = CFAbsoluteTimeGetCurrent();
      *&stats.blocks_in_use = 0;
      stats.size_in_use = &stats;
      stats.max_size_in_use = 0x2020000000;
      LOBYTE(stats.size_allocated) = 1;
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_6308;
      v81[3] = &unk_3C948;
      v84 = &v90;
      p_stats = &stats;
      v81[4] = self;
      v86 = &v94;
      v87 = a2;
      v82 = v19;
      v83 = v18;
      v88 = Current;
      v89 = size_in_use;
      v24 = objc_retainBlock(v81);
      v25 = objc_autoreleasePoolPush();
      initialActionsDataSource = [(CardDAVAgent *)self initialActionsDataSource];
      databaseHelper2 = [(CardDAVAgent *)self databaseHelper];
      [initialActionsDataSource generateActionsForContacts:v73 databaseHelper:databaseHelper2 inFolderWithURL:lCopy blacklistedUUIDs:self->_bulkUploadUUIDBlacklist blacklistedURLs:self->_bulkUploadHREFBlacklist maxImageSize:v16 maxResourceSize:v17 outTouchedDB:&v98 reportingBlock:v24];

      objc_autoreleasePoolPop(v25);
      _Block_object_dispose(&stats, 8);
    }

    v28 = v91[3];
    v29 = [v73 count];
    v30 = DALoggingwithCategory();
    v31 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v30, v31))
    {
      v32 = "";
      v33 = v95[3];
      if (v28 == v29)
      {
        v32 = " (pushed all)";
      }

      stats.blocks_in_use = 67109378;
      *(&stats.blocks_in_use + 1) = v33;
      LOWORD(stats.size_in_use) = 2080;
      *(&stats.size_in_use + 2) = v32;
      _os_log_impl(&dword_0, v30, v31, "Pushing %d people%s", &stats, 0x12u);
    }

    if (v28 == v29 && !v95[3])
    {
      groupsProvider = [(CardDAVAgent *)self groupsProvider];
      v68 = [groupsProvider groupsInContainer:v76];

      v67 = v16;
      v35 = v17;
      initialActionsDataSource2 = [(CardDAVAgent *)self initialActionsDataSource];
      isPrimaryICloudAccount2 = [(CardDAVAgent *)self isPrimaryICloudAccount];
      isAccountOwnerChildInFamilyCircle = [(CardDAVAgent *)self isAccountOwnerChildInFamilyCircle];
      databaseHelper3 = [(CardDAVAgent *)self databaseHelper];
      bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
      bulkUploadHREFBlacklist = self->_bulkUploadHREFBlacklist;
      LOBYTE(v66) = [v76 isGuardianRestricted];
      v42 = [initialActionsDataSource2 actionsForGroups:v68 isPrimaryAppleAccount:isPrimaryICloudAccount2 isU18Account:isAccountOwnerChildInFamilyCircle databaseHelper:databaseHelper3 inFolderWithURL:lCopy blacklistedUUIDs:bulkUploadUUIDBlacklist blacklistedURLs:bulkUploadHREFBlacklist maxImageSize:v67 maxResourceSize:v35 containerIsRestricted:v66 outTouchedDB:&v98];

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v43 = v42;
      v44 = [v43 countByEnumeratingWithState:&v77 objects:v99 count:16];
      if (!v44)
      {
        goto LABEL_30;
      }

      v45 = *v78;
      while (1)
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v78 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v47 = *(*(&v77 + 1) + 8 * i);
          action = [v47 action];
          v49 = [action itemChangeType] == &dword_0 + 1;

          if (v49)
          {
            action2 = [v47 action];
            externalURL = [v47 externalURL];
            [v19 setObject:action2 forKeyedSubscript:externalURL];
          }

          else
          {
            action3 = [v47 action];
            v53 = [action3 itemChangeType] == 0;

            if (!v53)
            {
              continue;
            }

            action2 = [v47 action];
            externalURL = [v47 externalUUID];
            [v18 setObject:action2 forKeyedSubscript:externalURL];
          }
        }

        v44 = [v43 countByEnumeratingWithState:&v77 objects:v99 count:16];
        if (!v44)
        {
LABEL_30:

          break;
        }
      }
    }

    if (v70)
    {
      v54 = [v70 objectForKeyedSubscript:@"BulkRequests"];
      v55 = [v54 objectForKeyedSubscript:cdXMLMMeBulkCRUD];
      v56 = v55;
      v57 = v55 != 0;
      if (v55)
      {
        v58 = [v55 objectForKeyedSubscript:cdXMLMMeBulkMaxResources];
        integerValue = [v58 integerValue];

        v60 = [v56 objectForKeyedSubscript:cdXMLMMeBulkMaxSize];
        integerValue2 = [v60 integerValue];
      }

      else
      {
        integerValue = 0;
        integerValue2 = 0;
      }
    }

    else
    {
      v57 = 0;
      integerValue = 0;
      integerValue2 = 0;
    }

    if ((v98 & 1) != 0 || [v18 count] || objc_msgSend(v19, "count"))
    {
      account4 = [(CardDAVAgent *)self account];
      absoluteString = [lCopy absoluteString];
      v64 = [account4 finishInitialSyncOfContactsFolder:absoluteString previousTag:cTag uuidsToAddActions:v18 hrefsToModDeleteActions:v19 useCRUD:v57 maxResources:integerValue maxSize:integerValue2 consumer:self context:contextCopy];
      v98 |= v64;
    }

    else
    {
      account4 = [lCopy absoluteString];
      [(CardDAVAgent *)self _successfullyFinishedInitialSyncForFolderWithID:account4 context:contextCopy];
    }

    _Block_object_dispose(&v90, 8);
    _Block_object_dispose(&v94, 8);
  }

  if (!+[DABehaviorOptions useContactsFramework])
  {
    databaseHelper4 = [(CardDAVAgent *)self databaseHelper];
    [databaseHelper4 abCloseDBAndSave:v98];
    goto LABEL_46;
  }

  if (v98 == 1)
  {
    databaseHelper4 = [(CardDAVAgent *)self databaseHelper];
    [databaseHelper4 executeAllSaveRequests];
LABEL_46:
  }
}

- (void)_finishInitialSyncForFolderWithURL:(id)l context:(id)context
{
  bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
  contextCopy = context;
  lCopy = l;
  [(NSMutableSet *)bulkUploadUUIDBlacklist removeAllObjects];
  [(NSMutableSet *)self->_bulkUploadHREFBlacklist removeAllObjects];
  initialActionsDataSource = [(CardDAVAgent *)self initialActionsDataSource];
  [initialActionsDataSource prepareToGenerateInitialActionsWithContext:contextCopy];

  [(CardDAVAgent *)self _pushInitialSyncActionsForFolderWithURL:lCopy context:contextCopy];
}

- (void)successfullyFinishedInitalUploadForFolderWithID:(id)d container:(id)container guardianRestrictedUUIDs:(id)ds guardianRestrictedHREFs:(id)fs blacklistedUUIDs:(id)iDs blacklistedHREFs:(id)eFs context:(id)context
{
  containerCopy = container;
  dsCopy = ds;
  fsCopy = fs;
  iDsCopy = iDs;
  eFsCopy = eFs;
  contextCopy = context;
  v20 = [NSURL URLWithString:d];
  if ([iDsCopy count])
  {
    bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
    if (!bulkUploadUUIDBlacklist)
    {
      v22 = +[NSMutableSet set];
      v23 = self->_bulkUploadUUIDBlacklist;
      self->_bulkUploadUUIDBlacklist = v22;

      bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
    }

    allObjects = [iDsCopy allObjects];
    [(NSMutableSet *)bulkUploadUUIDBlacklist addObjectsFromArray:allObjects];
  }

  if ([eFsCopy count])
  {
    bulkUploadHREFBlacklist = self->_bulkUploadHREFBlacklist;
    if (!bulkUploadHREFBlacklist)
    {
      v26 = +[NSMutableSet set];
      v27 = self->_bulkUploadHREFBlacklist;
      self->_bulkUploadHREFBlacklist = v26;

      bulkUploadHREFBlacklist = self->_bulkUploadHREFBlacklist;
    }

    allObjects2 = [eFsCopy allObjects];
    [(NSMutableSet *)bulkUploadHREFBlacklist addObjectsFromArray:allObjects2];
  }

  v29 = [fsCopy count];
  if ([dsCopy count] + v29)
  {
    v56 = v20;
    v52 = eFsCopy;
    v53 = iDsCopy;
    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      databaseHelper = [(CardDAVAgent *)self databaseHelper];
      account = [(CardDAVAgent *)self account];
      changeTrackingID = [account changeTrackingID];
      [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
    }

    v55 = dsCopy;
    allObjects3 = [dsCopy allObjects];
    v54 = fsCopy;
    allObjects4 = [fsCopy allObjects];
    v35 = +[NSMutableArray array];
    v36 = +[NSMutableArray array];
    contactsProvider = [(CardDAVAgent *)self contactsProvider];
    v38 = [contactsProvider contactsWithExternalUUIDs:allObjects3 container:containerCopy];

    contactsProvider2 = [(CardDAVAgent *)self contactsProvider];
    v40 = [contactsProvider2 contactsWithExternalHREFs:allObjects4 container:containerCopy];

    groupsProvider = [(CardDAVAgent *)self groupsProvider];
    v50 = allObjects3;
    v42 = allObjects3;
    v43 = allObjects4;
    v44 = [groupsProvider groupsWithExternalUUIDs:v42 container:containerCopy];

    groupsProvider2 = [(CardDAVAgent *)self groupsProvider];
    v46 = [groupsProvider2 groupsWithExternalHREFs:allObjects4 container:containerCopy];

    if (v38)
    {
      [v35 addObjectsFromArray:v38];
    }

    if (v40)
    {
      [v35 addObjectsFromArray:v40];
    }

    if (v44)
    {
      [v36 addObjectsFromArray:v44];
    }

    v51 = contextCopy;
    if (v46)
    {
      [v36 addObjectsFromArray:v46];
    }

    v47 = [[ABMoveLocalAction alloc] initWithContacts:v35 groups:v36];
    actionsHandler = [(CardDAVAgent *)self actionsHandler];
    [actionsHandler handleAction:v47 forContainer:containerCopy inAccount:0 withFolderURL:v56 isInitialSync:1 arePartialResults:0 syncInfo:0 heldAsideGroups:0 internalReference:0];

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      databaseHelper2 = [(CardDAVAgent *)self databaseHelper];
      [databaseHelper2 abCloseDBAndSave:1];
    }

    fsCopy = v54;
    dsCopy = v55;
    eFsCopy = v52;
    iDsCopy = v53;
    contextCopy = v51;
    v20 = v56;
  }

  [(CardDAVAgent *)self _pushInitialSyncActionsForFolderWithURL:v20 context:contextCopy];
}

- (void)contactsFolderWithId:(id)id successfullyPushedActions:(id)actions
{
  actionsCopy = actions;
  v6 = [NSURL URLWithString:id];
  account = [(CardDAVAgent *)self account];
  homeURL = [account homeURL];
  v9 = [v6 da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

  containerProvider = [(CardDAVAgent *)self containerProvider];
  account2 = [(CardDAVAgent *)self account];
  syncStoreIdentifier = [account2 syncStoreIdentifier];
  v13 = [containerProvider containerWithExternalIdentifier:v9 forAccountWithExternalIdentifier:syncStoreIdentifier];

  if (v13)
  {
    actionsFinalizer = [(CardDAVAgent *)self actionsFinalizer];
    account3 = [(CardDAVAgent *)self account];
    changeTrackingID = [account3 changeTrackingID];
    v17 = [actionsFinalizer clearChangeHistoriesWithChangeIdContext:0 pushedActions:actionsCopy inContainer:v13 changeTrackingID:changeTrackingID];

    if (v17)
    {
      if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
      {
        databaseHelper = [(CardDAVAgent *)self databaseHelper];
        [databaseHelper abSaveDB];
      }
    }
  }
}

- (BOOL)_syncResultForFolderWithURL:(id)l newTag:(id)tag newSyncToken:(id)token actions:(id)actions changeIdContext:(id)context isInitialSync:(BOOL)sync arePartialResults:(BOOL)results externalURLForNewLocation:(id)self0
{
  syncCopy = sync;
  lCopy = l;
  tagCopy = tag;
  tokenCopy = token;
  actionsCopy = actions;
  contextCopy = context;
  locationCopy = location;
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    databaseHelper = [(CardDAVAgent *)self databaseHelper];
    account = [(CardDAVAgent *)self account];
    changeTrackingID = [account changeTrackingID];
    [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
  }

  account2 = [(CardDAVAgent *)self account];
  [CardDAVActionsLogger logSummaryForCardDAVActions:actionsCopy partialResults:results initialSync:syncCopy syncPhase:@"in server results phase" syncAccount:account2];

  v23 = [(NSMutableDictionary *)self->_folderURLToSyncInfo objectForKeyedSubscript:lCopy];
  selfCopy = self;
  if (!v23)
  {
    v23 = objc_alloc_init(CardDAVSyncInfo);
    contactsProvider = [(CardDAVAgent *)self contactsProvider];
    -[CardDAVSyncInfo setStartedWithNoContacts:](v23, "setStartedWithNoContacts:", [contactsProvider countOfContacts] == 0);

    if ([(CardDAVSyncInfo *)v23 startedWithNoContacts])
    {
      v25 = DALoggingwithCategory();
      v26 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 138412290;
        v123 = lCopy;
        _os_log_impl(&dword_0, v25, v26, "started initial sync for %@ with no contacts - won't try to match people", buf, 0xCu);
      }
    }

    v27 = objc_opt_new();
    [(CardDAVSyncInfo *)v23 setUuidToPersonCache:v27];
    [(NSMutableDictionary *)self->_folderURLToSyncInfo setObject:v23 forKeyedSubscript:lCopy];
  }

  account3 = [(CardDAVAgent *)self account];
  homeURL = [account3 homeURL];
  v30 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

  containerProvider = [(CardDAVAgent *)self containerProvider];
  account4 = [(CardDAVAgent *)self account];
  syncStoreIdentifier = [account4 syncStoreIdentifier];
  v95 = v30;
  v34 = [containerProvider containerWithExternalIdentifier:v30 forAccountWithExternalIdentifier:syncStoreIdentifier];

  v105 = v34;
  if (!v34)
  {
    v48 = contextCopy;
    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      v49 = 0;
    }

    else
    {
      databaseHelper2 = [(CardDAVAgent *)self databaseHelper];
      [databaseHelper2 abCloseDBAndSave:0];
      v49 = 0;
    }

    goto LABEL_80;
  }

  v94 = v23;
  v92 = tagCopy;
  v100 = [(NSMutableDictionary *)self->_folderURLToHeldAsideGroups objectForKeyedSubscript:lCopy];
  if (!v100)
  {
    v100 = +[NSMutableSet set];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  databaseHelper3 = actionsCopy;
  v36 = [databaseHelper3 countByEnumeratingWithState:&v115 objects:v121 count:16];
  v98 = v36 != 0;
  obj = databaseHelper3;
  v102 = lCopy;
  v93 = tokenCopy;
  v91 = actionsCopy;
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    v99 = *v116;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v116 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v115 + 1) + 8 * i);
        serverId = [v40 serverId];
        v42 = [serverId da_leastInfoStringRepresentationRelativeToParentURL:v102];
        da_stringByRemovingPercentEscapesForUsername = [v42 da_stringByRemovingPercentEscapesForUsername];

        v44 = [locationCopy objectForKey:da_stringByRemovingPercentEscapesForUsername];
        actionsHandler = [(CardDAVAgent *)selfCopy actionsHandler];
        account5 = [(CardDAVAgent *)selfCopy account];
        v47 = [(NSMutableDictionary *)selfCopy->_folderURLToSyncInfo objectForKeyedSubscript:v102];
        LOBYTE(v40) = [actionsHandler handleAction:v40 forContainer:v34 inAccount:account5 withFolderURL:v102 isInitialSync:syncCopy arePartialResults:results syncInfo:v47 heldAsideGroups:v100 internalReference:v44];

        v38 |= v40;
      }

      v37 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
    }

    while (v37);

    if ((v38 & 1) == 0)
    {
      v98 = 0;
      tokenCopy = v93;
      goto LABEL_28;
    }

    tokenCopy = v93;
    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      v98 = 1;
      goto LABEL_28;
    }

    databaseHelper3 = [(CardDAVAgent *)selfCopy databaseHelper];
    [databaseHelper3 abProcessAddedRecords];
  }

LABEL_28:
  uuidToPersonCache = [(CardDAVSyncInfo *)v94 uuidToPersonCache];
  if (uuidToPersonCache)
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v51 = obj;
    v52 = [v51 countByEnumeratingWithState:&v111 objects:v120 count:16];
    v53 = selfCopy;
    if (v52)
    {
      v54 = v52;
      v55 = *v112;
      do
      {
        for (j = 0; j != v54; j = j + 1)
        {
          if (*v112 != v55)
          {
            objc_enumerationMutation(v51);
          }

          changedItem = [*(*(&v111 + 1) + 8 * j) changedItem];
          contactsProvider2 = [(CardDAVAgent *)v53 contactsProvider];
          v59 = [contactsProvider2 contactFromItem:changedItem];

          if (v59 && [v59 legacyIdentifier] != -1)
          {
            externalUUID = [v59 externalUUID];
            if (externalUUID)
            {
              v61 = [uuidToPersonCache objectForKeyedSubscript:externalUUID];
              if (!v61)
              {
                v61 = objc_opt_new();
                [uuidToPersonCache setObject:v61 forKeyedSubscript:externalUUID];
              }

              v62 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v59 legacyIdentifier]);
              [v61 addObject:v62];

              v53 = selfCopy;
            }
          }
        }

        v54 = [v51 countByEnumeratingWithState:&v111 objects:v120 count:16];
      }

      while (v54);
    }

    tokenCopy = v93;
  }

  v63 = tokenCopy;
  v64 = objc_alloc_init(CNSaveRequest);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v65 = obj;
  v66 = [v65 countByEnumeratingWithState:&v107 objects:v119 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v108;
    do
    {
      for (k = 0; k != v67; k = k + 1)
      {
        if (*v108 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v107 + 1) + 8 * k);
        changedItem2 = [v70 changedItem];
        if (!results || [v70 itemChangeType] == &dword_0 + 2 || (objc_msgSend(changedItem2, "cardDAVRecordItem"), v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "isGroup"), v72, (v73 & 1) == 0))
        {
          [changedItem2 setUUIDToPersonCache:uuidToPersonCache];
          account6 = [(CardDAVAgent *)selfCopy account];
          [changedItem2 saveIfGroupWithLocalObject:0 toContainer:v105 shouldMergeProperties:syncCopy outMergeDidChooseLocalProperties:0 account:account6];

          [changedItem2 setUUIDToPersonCache:0];
          v98 = 1;
        }
      }

      v67 = [v65 countByEnumeratingWithState:&v107 objects:v119 count:16];
    }

    while (v67);
  }

  if (results)
  {
    v48 = contextCopy;
    v75 = v64;
    tokenCopy = v63;
    actionsCopy = v91;
    tagCopy = v92;
    if (!v98)
    {
      goto LABEL_74;
    }
  }

  else
  {
    cTag = [v105 cTag];
    v77 = cTag;
    tagCopy = v92;
    v48 = contextCopy;
    v75 = v64;
    if (cTag == v92)
    {
      tokenCopy = v63;
    }

    else
    {
      tokenCopy = v63;
      if (([cTag isEqualToString:v92] & 1) == 0)
      {
        [v105 setCTag:v92];
        v98 = 1;
      }
    }

    syncTag = [v105 syncTag];
    v79 = syncTag;
    actionsCopy = v91;
    if (syncTag != tokenCopy && ([syncTag isEqualToString:tokenCopy] & 1) == 0)
    {
      [v105 setSyncTag:tokenCopy];
      v98 = 1;
    }

    if (+[DABehaviorOptions useContactsFramework])
    {
      [v105 updateSaveRequest:v75];
    }

    [(NSMutableSet *)selfCopy->_currentlySyncingFolderURLs removeObject:v102];

    if (!v98)
    {
      goto LABEL_73;
    }
  }

  v80 = +[DABehaviorOptions useContactsFramework];
  databaseHelper4 = [(CardDAVAgent *)selfCopy databaseHelper];
  v82 = databaseHelper4;
  if (v80)
  {
    [databaseHelper4 addSaveRequest:v75];
LABEL_70:

    goto LABEL_72;
  }

  [databaseHelper4 abProcessAddedImages];

  databaseHelper5 = [(CardDAVAgent *)selfCopy databaseHelper];
  abSaveDB = [databaseHelper5 abSaveDB];

  if ((abSaveDB & 1) == 0)
  {
    v82 = DALoggingwithCategory();
    v90 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v82, v90))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v82, v90, "Could not save local container", buf, 2u);
    }

    goto LABEL_70;
  }

LABEL_72:
  if (!results)
  {
LABEL_73:
    actionsFinalizer = [(CardDAVAgent *)selfCopy actionsFinalizer];
    account7 = [(CardDAVAgent *)selfCopy account];
    changeTrackingID2 = [account7 changeTrackingID];
    [actionsFinalizer clearChangeHistoriesWithChangeIdContext:v48 pushedActions:0 inContainer:v105 changeTrackingID:changeTrackingID2];
  }

LABEL_74:
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    databaseHelper6 = [(CardDAVAgent *)selfCopy databaseHelper];
    [databaseHelper6 abCloseDBAndSave:0];
  }

  if (syncCopy && !results)
  {
    [(CardDAVAgent *)selfCopy _finishInitialSyncForFolderWithURL:v102 context:v48];
  }

  v49 = syncCopy && !results;

  v23 = v94;
  lCopy = v102;

LABEL_80:
  return v49;
}

- (void)syncResultForContactsFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag newSyncToken:(id)token actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)self0 moreAvailable:(BOOL)self1 moreLocalChangesAvailable:(BOOL)self2 pushedActions:(id)self3 externalURLForNewLocation:(id)self4
{
  tagCopy = tag;
  tokenCopy = token;
  actionsCopy = actions;
  contextCopy = context;
  locationCopy = location;
  v22 = [NSURL URLWithString:folder];
  if (available)
  {
    LOBYTE(v28) = 1;
    [(CardDAVAgent *)self _syncResultForFolderWithURL:v22 newTag:tagCopy newSyncToken:tokenCopy actions:actionsCopy changeIdContext:contextCopy isInitialSync:sync arePartialResults:v28 externalURLForNewLocation:locationCopy];
  }

  else
  {
    v23 = [(NSMutableDictionary *)self->_folderURLToHeldAsideGroups objectForKeyedSubscript:v22];
    if ([v23 count])
    {
      v24 = [actionsCopy mutableCopy];

      allObjects = [v23 allObjects];
      [v24 addObjectsFromArray:allObjects];

      actionsCopy = v24;
    }

    [(NSMutableDictionary *)self->_folderURLToHeldAsideGroups removeObjectForKey:v22];
    LOBYTE(v28) = 0;
    if (![(CardDAVAgent *)self _syncResultForFolderWithURL:v22 newTag:tagCopy newSyncToken:tokenCopy actions:actionsCopy changeIdContext:contextCopy isInitialSync:sync arePartialResults:v28 externalURLForNewLocation:locationCopy]&& ![(CardDAVAgent *)self _updateMeCard])
    {
      v26 = +[DALocalDBGateKeeper sharedGateKeeper];
      [v26 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

      v27 = +[DARefreshManager sharedManager];
      [v27 delegateDidCompleteRefresh:self];

      [(CardDAVAgent *)self setLastRetryTimeout:0.0];
      [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
    }
  }
}

- (void)syncResultForContactsFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag newSyncToken:(id)token actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)self0 moreAvailable:(BOOL)self1 moreLocalChangesAvailable:(BOOL)self2 pushedActions:(id)self3
{
  *(&v13 + 1) = __PAIR16__(changesAvailable, available);
  LOBYTE(v13) = sync;
  [CardDAVAgent syncResultForContactsFolder:"syncResultForContactsFolder:newTag:previousTag:newSyncToken:actions:results:changeIdContext:isInitialSync:moreAvailable:moreLocalChangesAvailable:pushedActions:externalURLForNewLocation:" newTag:folder previousTag:tag newSyncToken:previousTag actions:token results:actions changeIdContext:results isInitialSync:context moreAvailable:v13 moreLocalChangesAvailable:pushedActions pushedActions:0 externalURLForNewLocation:?];
}

- (void)_handlePotential503Error:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:CoreDAVHTTPStatusErrorDomain])
  {
    goto LABEL_16;
  }

  code = [errorCopy code];

  if (code == &stru_1A8.reserved3 + 3)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:CoreDAVHTTPHeaders];
    domain = [v8 DAObjectForKeyCaseInsensitive:@"retry-after"];

    if (domain)
    {
      [domain doubleValue];
      v10 = v9;
      v11 = DALoggingwithCategory();
      v12 = _CPLog_to_os_log_type[5];
      if (os_log_type_enabled(v11, v12))
      {
        v27 = 134217984;
        v28 = v10;
        _os_log_impl(&dword_0, v11, v12, "The server told us to try again after %f seconds.", &v27, 0xCu);
      }

      v13 = +[DARefreshManager sharedManager];
      watchedCollections = [(CardDAVAgent *)self watchedCollections];
      v15 = v13;
      selfCopy2 = self;
      v17 = watchedCollections;
      v18 = v10;
    }

    else
    {
      [(CardDAVAgent *)self lastRetryTimeout];
      if (v19 == 0.0)
      {
        v20 = 60.0;
      }

      else
      {
        [(CardDAVAgent *)self lastRetryTimeout];
        v20 = v21 + v21;
      }

      [(CardDAVAgent *)self setLastRetryTimeout:v20];
      [(CardDAVAgent *)self lastRetryTimeout];
      v23 = v22;
      v13 = DALoggingwithCategory();
      v24 = _CPLog_to_os_log_type[5];
      v25 = os_log_type_enabled(v13, v24);
      if (v23 >= 480.0)
      {
        if (v25)
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_0, v13, v24, "We got another 503 error, but we've already backed off for 8 minutes. Giving up and retrying again at our regularly scheduled time", &v27, 2u);
        }

        goto LABEL_15;
      }

      if (v25)
      {
        [(CardDAVAgent *)self lastRetryTimeout];
        v27 = 134217984;
        v28 = v26;
        _os_log_impl(&dword_0, v13, v24, "The server returned a 503, but didn't give us a retry-after header. We'll retry again after %f seconds", &v27, 0xCu);
      }

      v13 = +[DARefreshManager sharedManager];
      watchedCollections = [(CardDAVAgent *)self watchedCollections];
      [(CardDAVAgent *)self lastRetryTimeout];
      v15 = v13;
      selfCopy2 = self;
      v17 = watchedCollections;
    }

    [v15 retryRefreshForDelegate:selfCopy2 withCollections:v17 after:1 originalRefreshReason:v18];

LABEL_15:
LABEL_16:
  }
}

- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CardDAVAgent *)self _addressBookSyncTask:taskCopy failedWithErrorCode:failed];
    [(CardDAVAgent *)self _handlePotential503Error:errorCopy];
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      v12 = 138412802;
      v13 = taskCopy;
      v14 = 2048;
      failedCopy = failed;
      v16 = 2112;
      v17 = errorCopy;
      _os_log_impl(&dword_0, v10, v11, "Daemon is ignoring task %@ which failed with status %ld and error %@", &v12, 0x20u);
    }
  }
}

- (void)_addressBookSyncTask:(id)task failedWithErrorCode:(int64_t)code
{
  currentlySyncingFolderURLs = self->_currentlySyncingFolderURLs;
  folderURL = [task folderURL];
  [(NSMutableSet *)currentlySyncingFolderURLs removeObject:folderURL];

  v7 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v7 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

  v8 = +[DARefreshManager sharedManager];
  [v8 delegateDidCompleteRefresh:self];

  [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (void)_reallySyncRequest:(id)request
{
  requestCopy = request;
  [requestCopy folder];
  v102 = v104 = 0;
  folderID = [(CardDAVAgent *)v102 folderID];
  v4 = [NSURL URLWithString:?];
  account = [(CardDAVAgent *)self account];
  homeURL = [account homeURL];
  v7 = [v4 da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

  v8 = +[DABabysitter sharedBabysitter];
  LOBYTE(homeURL) = [v8 registerAccount:self forOperationWithName:@"CardDAVSyncRequest"];

  if (homeURL)
  {
    os_log_summary = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
    {
      account2 = [(CardDAVAgent *)self account];
      accountDescription = [account2 accountDescription];
      publicDescription = [(CardDAVAgent *)self publicDescription];
      *buf = 138412546;
      selfCopy = accountDescription;
      v107 = 2114;
      v108 = publicDescription;
      _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- started", buf, 0x16u);
    }

    delegateManager = [(CardDAVAgent *)self delegateManager];
    [delegateManager updateDelegates];

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      databaseHelper = [(CardDAVAgent *)self databaseHelper];
      account3 = [(CardDAVAgent *)self account];
      changeTrackingID = [account3 changeTrackingID];
      [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
    }

    os_log_summary2 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(os_log_summary2, OS_LOG_TYPE_DEFAULT))
    {
      account4 = [(CardDAVAgent *)self account];
      accountDescription2 = [account4 accountDescription];
      publicDescription2 = [(CardDAVAgent *)self publicDescription];
      [(CardDAVAgent *)self publicContainerProviderSummaryInfo];
      v21 = v7;
      v23 = v22 = v4;
      *buf = 138412802;
      selfCopy = accountDescription2;
      v107 = 2114;
      v108 = publicDescription2;
      v109 = 2114;
      v110 = v23;
      _os_log_impl(&dword_0, os_log_summary2, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- %{public}@", buf, 0x20u);

      v4 = v22;
      v7 = v21;
    }

    containerProvider = [(CardDAVAgent *)self containerProvider];
    account5 = [(CardDAVAgent *)self account];
    syncStoreIdentifier = [account5 syncStoreIdentifier];
    v27 = [containerProvider containerWithExternalIdentifier:v7 forAccountWithExternalIdentifier:syncStoreIdentifier];

    if (!v27)
    {
      cTag = DALoggingwithCategory();
      v41 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(cTag, v41))
      {
        publicDescription3 = [(CardDAVAgent *)self publicDescription];
        *buf = 138543618;
        selfCopy = publicDescription3;
        v107 = 2112;
        v108 = folderID;
        _os_log_impl(&dword_0, cTag, v41, "Agent %{public}@ asked to sync folder with id %@, but I have no matching container", buf, 0x16u);
      }

      v43 = 0;
LABEL_65:

      if (+[DABehaviorOptions useContactsFramework])
      {
        if (v104 != 1)
        {
LABEL_70:
          if ((v43 & 1) == 0)
          {
            [(NSMutableSet *)self->_currentlySyncingFolderURLs removeObject:v4];
            v84 = +[DALocalDBGateKeeper sharedGateKeeper];
            [v84 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

            [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
          }

          v85 = +[DABabysitter sharedBabysitter];
          [v85 unregisterAccount:self forOperationWithName:@"CardDAVSyncRequest"];

          goto LABEL_73;
        }

        databaseHelper2 = [(CardDAVAgent *)self databaseHelper];
        [databaseHelper2 executeAllSaveRequests];
      }

      else
      {
        databaseHelper2 = [(CardDAVAgent *)self databaseHelper];
        [databaseHelper2 abCloseDBAndSave:v104];
      }

      goto LABEL_70;
    }

    v88 = v7;
    cTag = [v27 cTag];
    syncTag = [v27 syncTag];
    syncData = [v27 syncData];
    v89 = syncData;
    if (syncData)
    {
      v31 = [NSPropertyListSerialization propertyListFromData:syncData mutabilityOption:0 format:0 errorDescription:0];
      v32 = [v31 objectForKeyedSubscript:@"NeedInitialSync"];
      [requestCopy setIsInitialUberSync:{objc_msgSend(v32, "BOOLValue")}];

      v33 = [v31 objectForKeyedSubscript:@"CTagIsSuspect"];
      bOOLValue = [v33 BOOLValue];

      if (bOOLValue)
      {
        v35 = DALoggingwithCategory();
        v36 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v35, v36))
        {
          *buf = 138412290;
          selfCopy = cTag;
          _os_log_impl(&dword_0, v35, v36, "My ctag of %@ is suspect, I'll get a new one", buf, 0xCu);
        }

        v37 = v4;

        v87 = 1;
LABEL_23:
        v44 = syncTag;
        v99 = [CardDAVPropertiesHelper maxImageSizeFromSyncDict:v31];
        v91 = [CardDAVPropertiesHelper maxResourceSizeFromSyncDict:v31];
        v45 = DALoggingwithCategory();
        v46 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v45, v46))
        {
          *buf = 138412290;
          selfCopy = v102;
          _os_log_impl(&dword_0, v45, v46, "external change, folder %@", buf, 0xCu);
        }

        type = v46;
        v47 = objc_alloc_init(ContactFolderItemsSyncContext);
        actionsDataSource = [(CardDAVAgent *)self actionsDataSource];
        account6 = [(CardDAVAgent *)self account];
        changeTrackingID2 = [account6 changeTrackingID];

        v93 = changeTrackingID2;
        [actionsDataSource prepareChangeHistoryForClientWithIdentifier:changeTrackingID2 forContainer:v27 withChangeContext:v47];
        v94 = actionsDataSource;
        v51 = actionsDataSource;
        v52 = type;
        v53 = v44;
        v4 = v37;
        if (([v51 changeHistoryIsValid] & 1) == 0)
        {
          [requestCopy setIsInitialUberSync:1];
          v54 = DALoggingwithCategory();
          if (os_log_type_enabled(v54, type))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v54, type, "Treating request as an initial sync as our change history is invalid", buf, 2u);
          }
        }

        v97 = cTag;
        v98 = v27;
        v96 = v31;
        v90 = v53;
        if ([requestCopy isInitialUberSync])
        {
          v100 = 0;
        }

        else
        {
          account7 = [(CardDAVAgent *)self account];
          isPrimaryICloudAccount = [(CardDAVAgent *)self isPrimaryICloudAccount];
          isAccountOwnerChildInFamilyCircle = [(CardDAVAgent *)self isAccountOwnerChildInFamilyCircle];
          isImageUploadRestricted = [account7 isImageUploadRestricted];
          databaseHelper3 = [account7 databaseHelper];
          homeURL2 = [account7 homeURL];
          actions = [requestCopy actions];
          v62 = v27;
          v63 = actions;
          v100 = [v94 _copyCoalescedChangesInContainer:v62 isPrimaryAppleAccount:isPrimaryICloudAccount isU18Account:isAccountOwnerChildInFamilyCircle isImageUploadRestricted:isImageUploadRestricted databaseHelper:databaseHelper3 accountHomeURL:homeURL2 changeTrackingID:v93 existingActions:actions maxImageSize:v99 maxResourceSize:v91 changeContext:v47 outTouchedDB:&v104];

          if ([v47 isChangeHistoryTruncated] && (objc_msgSend(requestCopy, "isInitialUberSync") & 1) == 0)
          {
            v64 = DALoggingwithCategory();
            v65 = _CPLog_to_os_log_type[1];
            if (os_log_type_enabled(v64, v65))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v64, v65, "This isn't an initial sync request, yet change history was truncated for our cursor. DA never expects truncation after initial sync and does not implement reconciliation. Truncation will be cleared at the conclusion of sync but this account is now in an inconsistent state with the address book database.", buf, 2u);
            }
          }

          v4 = v37;
          cTag = v97;
          v27 = v98;
          v53 = v90;
          v31 = v96;
          v52 = type;
        }

        if ([requestCopy isInitialUberSync])
        {
          v66 = DALoggingwithCategory();
          if (os_log_type_enabled(v66, v52))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v66, v52, "Blasting whitespace before first time sync", buf, 2u);
          }

          if (qword_46F30 != -1)
          {
            sub_25690();
          }

          v67 = DALoggingwithCategory();
          if (os_log_type_enabled(v67, v52))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v67, v52, "Blasted whitespace before first time sync", buf, 2u);
          }
        }

        databaseHelper4 = [(CardDAVAgent *)self databaseHelper];
        v69 = DALoggingwithCategory();
        v70 = _CPLog_to_os_log_type[5];
        v71 = os_log_type_enabled(v69, v70);
        v92 = databaseHelper4;
        if (databaseHelper4)
        {
          if (v71)
          {
            abDefaultAccountInfoSuitableForLogging = [databaseHelper4 abDefaultAccountInfoSuitableForLogging];
            *buf = 138543362;
            selfCopy = abDefaultAccountInfoSuitableForLogging;
            _os_log_impl(&dword_0, v69, v70, "Default source %{public}@", buf, 0xCu);

            v27 = v98;
          }
        }

        else if (v71)
        {
          *buf = 0;
          _os_log_impl(&dword_0, v69, v70, "Default source : <none>", buf, 2u);
        }

        v73 = DALoggingwithCategory();
        if (os_log_type_enabled(v73, v70))
        {
          v74 = [v100 count];
          [(CardDAVAgent *)self account];
          v76 = v75 = v4;
          accountDescription3 = [v76 accountDescription];
          account8 = [(CardDAVAgent *)self account];
          publicDescription4 = [account8 publicDescription];
          *buf = 134218498;
          selfCopy = v74;
          v27 = v98;
          v107 = 2112;
          v108 = accountDescription3;
          v109 = 2114;
          v110 = publicDescription4;
          _os_log_impl(&dword_0, v73, v70, "%lu changes for account %@ (%{public}@)", buf, 0x20u);

          cTag = v97;
          v4 = v75;
          v53 = v90;

          v31 = v96;
        }

        if (cTag)
        {
          if ((-[NSObject isEqualToString:](cTag, "isEqualToString:", @"0") & 1) == 0 && ![v100 count] && (objc_msgSend(requestCopy, "hasRemoteChanges") & 1) == 0 && (objc_msgSend(requestCopy, "isInitialUberSync") & 1) == 0)
          {
            account9 = DALoggingwithCategory();
            if (os_log_type_enabled(account9, type))
            {
              *buf = 0;
              _os_log_impl(&dword_0, account9, type, "returning early, as we have a folder change with no remote changes, and no local changes", buf, 2u);
            }

            v43 = 0;
            goto LABEL_64;
          }

          [(CardDAVAgent *)v102 setHasRemoteChanges:0];
          v80 = v100;
          if (([cTag isEqualToString:@"0"]& 1) == 0)
          {
LABEL_63:
            account9 = [(CardDAVAgent *)self account];
            isInitialUberSync = [requestCopy isInitialUberSync];
            *(&v86 + 1) = v87;
            LOBYTE(v86) = [requestCopy isResyncAfterConnectionFailed];
            cTag = v97;
            [NSObject synchronizeContactsFolder:account9 previousTag:"synchronizeContactsFolder:previousTag:previousSyncToken:actions:highestIdContext:isInitialUberSync:isResyncAfterConnectionFailed:previousTagIsSuspect:moreLocalChangesAvailable:consumer:" previousSyncToken:folderID actions:v97 highestIdContext:v53 isInitialUberSync:v80 isResyncAfterConnectionFailed:v47 previousTagIsSuspect:isInitialUberSync moreLocalChangesAvailable:v86 consumer:self];
            v43 = 1;
            v27 = v98;
            v31 = v96;
LABEL_64:

            v7 = v88;
            goto LABEL_65;
          }
        }

        else
        {
          [(CardDAVAgent *)v102 setHasRemoteChanges:0];
        }

        if (v53)
        {
          v80 = v100;
        }

        else
        {
          v80 = 0;
        }

        goto LABEL_63;
      }

      v37 = v4;
    }

    else
    {
      v37 = v4;
      v31 = 0;
    }

    v87 = 0;
    goto LABEL_23;
  }

  v38 = DALoggingwithCategory();
  v39 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v38, v39))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v38, v39, "The babysitter put us in timeout, so we're going to fail this sync. %@", buf, 0xCu);
  }

  v40 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v40 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

  [(NSMutableSet *)self->_currentlySyncingFolderURLs removeObject:v4];
  self->_isSyncingHierarchy = 0;
LABEL_73:
}

- (id)publicContainerProviderSummaryInfo
{
  contactsProvider = [(CardDAVAgent *)self contactsProvider];
  v3 = contactsProvider;
  if (contactsProvider)
  {
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"contacts: %lu, groups: %lu", [contactsProvider countOfContacts], objc_msgSend(contactsProvider, "countOfGroups"));
  }

  else
  {
    v4 = @"<summary unavailable>";
  }

  return v4;
}

- (void)_syncRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v21 = transactionId;
    _os_log_impl(&dword_0, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = [DAActivity alloc];
  account = [(CardDAVAgent *)self account];
  v11 = [v9 initWithAccount:account];

  v12 = +[DALocalDBGateKeeper sharedGateKeeper];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_8D90;
  v16[3] = &unk_3C990;
  v16[4] = self;
  v17 = requestCopy;
  v18 = v5;
  v19 = v11;
  v13 = v11;
  v14 = v5;
  v15 = requestCopy;
  [v12 registerWaiter:self forDataclassLocks:2 completionHandler:v16];
}

- (void)_fireWaitingFolderItemSyncRequests
{
  [(NSLock *)self->_folderItemSyncRequestLock lock];
  if (!self->_currentlySyncingFolderURLs)
  {
    v3 = [[NSMutableSet alloc] initWithCapacity:1];
    currentlySyncingFolderURLs = self->_currentlySyncingFolderURLs;
    self->_currentlySyncingFolderURLs = v3;
  }

  v24 = [[NSMutableArray alloc] initWithCapacity:1];
  v5 = [(NSMutableArray *)self->_outstandingFolderRequests copy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v31;
    v10 = _CPLog_to_os_log_type[3];
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * v11);

        folder = [v8 folder];
        folderID = [folder folderID];

        if (folderID)
        {
          v15 = [NSURL URLWithString:folderID];
          if (([(NSMutableSet *)self->_currentlySyncingFolderURLs containsObject:v15]& 1) == 0)
          {
            [(NSMutableSet *)self->_currentlySyncingFolderURLs addObject:v15];
            [v24 addObject:v8];
            [(NSMutableArray *)self->_outstandingFolderRequests removeObject:v8];
          }
        }

        else
        {
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v10))
          {
            *buf = 136315394;
            v36 = "[CardDAVAgent _fireWaitingFolderItemSyncRequests]";
            v37 = 2112;
            v38 = v8;
            _os_log_impl(&dword_0, v16, v10, "%s: asked to sync folder request %@, but that has no server id.  Dropping this sync on the floor", buf, 0x16u);
          }

          [(NSMutableArray *)self->_outstandingFolderRequests removeObject:v8];
        }

        v11 = v11 + 1;
        v12 = v8;
      }

      while (v7 != v11);
      v7 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v7);
  }

  [(NSLock *)self->_folderItemSyncRequestLock unlock];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v24;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v27;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v20 = *(*(&v26 + 1) + 8 * v22);

        [(CardDAVAgent *)self _syncRequest:v20];
        v22 = v22 + 1;
        v23 = v20;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }
}

- (void)_appendSyncRequest:(id)request
{
  requestCopy = request;
  [(NSLock *)self->_folderItemSyncRequestLock lock];
  outstandingFolderRequests = self->_outstandingFolderRequests;
  if (!outstandingFolderRequests)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:1];
    v7 = self->_outstandingFolderRequests;
    self->_outstandingFolderRequests = v6;

    outstandingFolderRequests = self->_outstandingFolderRequests;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = outstandingFolderRequests;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v21 = 32;
    v11 = 0;
    v12 = *v23;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v22 + 1) + 8 * v13);

        folder = [v11 folder];
        folder2 = [requestCopy folder];
        v17 = [folder isEqual:folder2];

        if (v17)
        {
          if ([requestCopy hasRemoteChanges])
          {
            [v11 setHasRemoteChanges:1];
          }

          v18 = objc_opt_new();
          actions = [v11 actions];
          [v18 addObjectsFromArray:actions];

          actions2 = [requestCopy actions];
          [v18 addObjectsFromArray:actions2];

          [v11 setActions:v18];
          goto LABEL_16;
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(NSMutableArray *)self->_outstandingFolderRequests addObject:requestCopy];
  v11 = 0;
LABEL_16:
  [(NSLock *)self->_folderItemSyncRequestLock unlock];
  [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (BOOL)APSTopicHasValidPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([prefixCopy hasPrefix:@"com.me."] & 1) != 0 || (objc_msgSend(prefixCopy, "hasPrefix:", @"com.apple.contact."))
  {
    v4 = 1;
  }

  else
  {
    v4 = [prefixCopy hasPrefix:@"com.icloud."];
  }

  return v4;
}

- (void)successfullyRetrievedAddressBookURLs
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v3, v4))
  {
    *v27 = 0;
    _os_log_impl(&dword_0, v3, v4, "Got AB URLs from our daemon account, going to sync my folders", v27, 2u);
  }

  self->_isSyncingHierarchy = 0;
  [(CardDAVAgent *)self setSyncWhenReachable:0];
  serverTokenRegistrationURL = self->_serverTokenRegistrationURL;
  self->_serverTokenRegistrationURL = 0;

  account = [(CardDAVAgent *)self account];
  pushTransport = [account pushTransport];
  v8 = [pushTransport objectForKeyedSubscript:@"APSD"];

  v9 = [v8 objectForKeyedSubscript:cdXMLCalendarServerAPSBundleID];
  v10 = [v8 objectForKeyedSubscript:cdXMLMMAPSEnv];
  uppercaseString = [v10 uppercaseString];

  if ([uppercaseString isEqualToString:@"PRODUCTION"])
  {
    v12 = @"production";
  }

  else if ([uppercaseString isEqualToString:@"SANDBOX"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"DEVELOPMENT"))
  {
    v12 = @"development";
  }

  else if ([uppercaseString isEqualToString:@"DEV"])
  {
    v12 = @"demo";
  }

  else
  {
    v12 = 0;
  }

  v13 = cdXMLCalendarServerSubscriptionURL;
  v14 = [v8 objectForKeyedSubscript:cdXMLCalendarServerSubscriptionURL];

  if (v14)
  {
    v15 = [NSURL alloc];
    v16 = [v8 objectForKeyedSubscript:v13];
    v17 = [v15 initWithString:v16];
    v18 = self->_serverTokenRegistrationURL;
    self->_serverTokenRegistrationURL = v17;
  }

  v19 = objc_opt_new();
  containerPushKeys = self->_containerPushKeys;
  self->_containerPushKeys = v19;

  v21 = self->_containerPushKeys;
  account2 = [(CardDAVAgent *)self account];
  pushKeysToFolderURLs = [account2 pushKeysToFolderURLs];
  allKeys = [pushKeysToFolderURLs allKeys];
  [(NSMutableSet *)v21 addObjectsFromArray:allKeys];

  LODWORD(account2) = [(CardDAVAgent *)self APSTopicHasValidPrefix:v9];
  v25 = +[DARefreshManager sharedManager];
  v26 = v25;
  if (account2)
  {
    [v25 registerTopic:v9 forDelegate:self inEnvironment:v12];
  }

  else
  {
    [v25 unregisterTopic:0 forDelegate:self inEnvironment:0];
  }

  [(CardDAVAgent *)self _syncAllContactFoldersWithRemoteChanges:1];
}

- (void)failedToRetrieveAddressBookURLsWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:DAErrorDomain])
  {
    code = [errorCopy code];

    if (code == &dword_4 + 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v8, v9))
  {
    Name = sel_getName(a2);
    code2 = [errorCopy code];
    domain2 = [errorCopy domain];
    v15 = 136315906;
    v16 = Name;
    v17 = 2048;
    v18 = code2;
    v19 = 2114;
    v20 = domain2;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_0, v8, v9, "Yikes: %s error code:%ld error domain:%{public}@ error:%@", &v15, 0x2Au);
  }

LABEL_8:
  self->_isSyncingHierarchy = 0;
  [(CardDAVAgent *)self _handlePotential503Error:errorCopy];
  if (statusAndErrorIndicateWeShouldTurnOnReachability())
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v13, v14))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v13, v14, "network unreachable during folder sync. Waiting for reachability to signal a retry.", &v15, 2u);
    }

    [(CardDAVAgent *)self setSyncWhenReachable:1];
  }
}

- (NSString)waiterID
{
  account = [(CardDAVAgent *)self account];
  accountID = [account accountID];

  return accountID;
}

- (NSString)scheduleIdentifier
{
  account = [(CardDAVAgent *)self account];
  scheduleIdentifier = [account scheduleIdentifier];

  return scheduleIdentifier;
}

- (NSString)onBehalfOfBundleIdentifier
{
  account = [(CardDAVAgent *)self account];
  onBehalfOfBundleIdentifier = [account onBehalfOfBundleIdentifier];

  return onBehalfOfBundleIdentifier;
}

- (id)username
{
  account = [(CardDAVAgent *)self account];
  username = [account username];

  return username;
}

- (id)password
{
  account = [(CardDAVAgent *)self account];
  password = [account password];

  return password;
}

- (void)refreshPropertiesOfAllContactFoldersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[DALocalDBGateKeeper sharedGateKeeper];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9E58;
  v7[3] = &unk_3C9B8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 registerWaiter:self forDataclassLocks:2 completionHandler:v7];
}

- (void)_holdingDataClassLock_refreshPropertiesOfAllContactFoldersWithCompletion:(id)completion
{
  completionCopy = completion;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v60[3] = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  account = [(CardDAVAgent *)self account];
  addressBooks = [account addressBooks];
  v30 = [addressBooks copy];

  account2 = [(CardDAVAgent *)self account];
  containerPropertiesToFetchDuringRefresh = [account2 containerPropertiesToFetchDuringRefresh];

  if ([v30 count] && objc_msgSend(containerPropertiesToFetchDuringRefresh, "count"))
  {
    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      databaseHelper = [(CardDAVAgent *)self databaseHelper];
      account3 = [(CardDAVAgent *)self account];
      changeTrackingID = [account3 changeTrackingID];
      [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
    }

    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v57 = 1;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2020000000;
    v55 = 1;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_A594;
    v47[3] = &unk_3C9E0;
    v49 = v58;
    v50 = v56;
    v47[4] = self;
    v51 = v54;
    v52 = v60;
    v53 = [v30 count];
    v48 = completionCopy;
    v36 = objc_retainBlock(v47);
    v32 = +[NSMutableArray array];
    containerProvider = [(CardDAVAgent *)self containerProvider];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v30;
    v10 = [obj countByEnumeratingWithState:&v43 objects:v61 count:16];
    v11 = 0;
    if (v10)
    {
      v35 = *v44;
      do
      {
        v37 = v10;
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v43 + 1) + 8 * i);
          folderID = [v13 folderID];
          if (folderID)
          {
            folderID2 = [v13 folderID];
            v16 = [NSURL URLWithString:folderID2];

            account4 = [(CardDAVAgent *)self account];
            homeURL = [account4 homeURL];
            v19 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

            account5 = [(CardDAVAgent *)self account];
            syncStoreIdentifier = [account5 syncStoreIdentifier];
            v22 = [containerProvider containerWithExternalIdentifier:v19 forAccountWithExternalIdentifier:syncStoreIdentifier];

            v23 = [[CoreDAVPropFindTask alloc] initWithPropertiesToFind:containerPropertiesToFetchDuringRefresh atURL:v16 withDepth:2];
            objc_initWeak(&location, v23);
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_A7DC;
            v38[3] = &unk_3CA08;
            v40 = v36;
            v38[4] = v13;
            objc_copyWeak(&v41, &location);
            v24 = v22;
            v39 = v24;
            [v23 setCompletionBlock:v38];
            account6 = [(CardDAVAgent *)self account];
            [v23 setAccountInfoProvider:account6];

            objc_destroyWeak(&v41);
            objc_destroyWeak(&location);

            v11 = v23;
          }

          if (v11)
          {
            [v32 addObject:v11];
            account7 = [(CardDAVAgent *)self account];
            taskManager = [account7 taskManager];
            [taskManager submitIndependentCoreDAVTask:v11];
          }

          else
          {
            (v36[2])(v36, 0, 0, 0);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v43 objects:v61 count:16];
      }

      while (v10);
    }

    _Block_object_dispose(v54, 8);
    _Block_object_dispose(v56, 8);
  }

  else
  {
    v28 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v28 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

    (*(completionCopy + 2))(completionCopy, 1, 1);
    v11 = 0;
  }

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);
}

- (void)refreshCollections:(id)collections withReason:(int)reason
{
  account = [(CardDAVAgent *)self account];
  addressBooks = [account addressBooks];
  v8 = [addressBooks count];

  if (v8)
  {
    if (reason == 1)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_A9C8;
      v11[3] = &unk_3CA58;
      v11[4] = self;
      [(CardDAVAgent *)self _probeAndSyncWithBlock:v11];
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_AA54;
      v10[3] = &unk_3CA30;
      v10[4] = self;
      [(CardDAVAgent *)self refreshPropertiesOfAllContactFoldersWithCompletion:v10];
    }
  }

  else
  {
    os_log_summary = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "DA refresh machinations; sync will occur", buf, 2u);
    }

    [(CardDAVAgent *)self _validateAndSync:0];
  }
}

- (BOOL)isPrimaryICloudAccount
{
  v2 = cn_objectResultWithObjectLock();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAccountOwnerChildInFamilyCircle
{
  v2 = cn_objectResultWithObjectLock();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end