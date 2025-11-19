@interface CardDAVAgent
+ (OS_os_log)os_log_summary;
- (BOOL)APSTopicHasValidPrefix:(id)a3;
- (BOOL)_syncResultForFolderWithURL:(id)a3 newTag:(id)a4 newSyncToken:(id)a5 actions:(id)a6 changeIdContext:(id)a7 isInitialSync:(BOOL)a8 arePartialResults:(BOOL)a9 externalURLForNewLocation:(id)a10;
- (BOOL)_updateMeCard;
- (BOOL)isAccountOwnerChildInFamilyCircle;
- (BOOL)isPrimaryICloudAccount;
- (CardDAVAgent)initWithAccount:(id)a3;
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
- (id)setupCardDAVDelegateManager:(id)a3;
- (id)username;
- (void)_addressBookSyncTask:(id)a3 failedWithErrorCode:(int64_t)a4;
- (void)_appendSyncRequest:(id)a3;
- (void)_contactsDidChange;
- (void)_finishInitialSyncForFolderWithURL:(id)a3 context:(id)a4;
- (void)_fireWaitingFolderItemSyncRequests;
- (void)_handlePotential503Error:(id)a3;
- (void)_holdingDataClassLock_refreshPropertiesOfAllContactFoldersWithCompletion:(id)a3;
- (void)_pushInitialSyncActionsForFolderWithURL:(id)a3 context:(id)a4;
- (void)_reallySyncRequest:(id)a3;
- (void)_setUpABNotifications;
- (void)_successfullyFinishedInitialSyncForFolderWithID:(id)a3 context:(id)a4;
- (void)_syncRequest:(id)a3;
- (void)_tearDownABNotifications;
- (void)_validateAndSync:(BOOL)a3;
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5;
- (void)contactsFolderWithId:(id)a3 successfullyPushedActions:(id)a4;
- (void)failedToFinishInitialSync:(id)a3 error:(id)a4;
- (void)failedToRetrieveAddressBookURLsWithError:(id)a3;
- (void)failedToUpdateServerMeCardWithError:(id)a3;
- (void)refreshCollections:(id)a3 withReason:(int)a4;
- (void)refreshPropertiesOfAllContactFoldersWithCompletion:(id)a3;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3;
- (void)startMonitoring;
- (void)successfullyFinishedInitalUploadForFolderWithID:(id)a3 container:(id)a4 guardianRestrictedUUIDs:(id)a5 guardianRestrictedHREFs:(id)a6 blacklistedUUIDs:(id)a7 blacklistedHREFs:(id)a8 context:(id)a9;
- (void)successfullyRetrievedAddressBookURLs;
- (void)successfullyUpdatedServerMeCardWithURL:(id)a3;
- (void)syncFolderIDs:(id)a3 forDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5;
- (void)syncResultForContactsFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 newSyncToken:(id)a6 actions:(id)a7 results:(id)a8 changeIdContext:(id)a9 isInitialSync:(BOOL)a10 moreAvailable:(BOOL)a11 moreLocalChangesAvailable:(BOOL)a12 pushedActions:(id)a13;
- (void)syncResultForContactsFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 newSyncToken:(id)a6 actions:(id)a7 results:(id)a8 changeIdContext:(id)a9 isInitialSync:(BOOL)a10 moreAvailable:(BOOL)a11 moreLocalChangesAvailable:(BOOL)a12 pushedActions:(id)a13 externalURLForNewLocation:(id)a14;
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

- (CardDAVAgent)initWithAccount:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CardDAVAgent;
  v5 = [(CardDAVAgent *)&v16 initWithAccount:v4];
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

    v12 = [v4 backingAccountInfo];
    v13 = [(CardDAVAgent *)v5 setupCardDAVDelegateManager:v12];
    delegateManager = v5->_delegateManager;
    v5->_delegateManager = v13;
  }

  return v5;
}

- (id)databaseHelper
{
  v2 = [(CardDAVAgent *)self account];
  v3 = [v2 databaseHelper];

  return v3;
}

- (id)setupCardDAVDelegateManager:(id)a3
{
  v4 = a3;
  v5 = [v4 parentAccount];
  v6 = [v5 aa_isAccountClass:AAAccountClassPrimary];

  if (v6)
  {
    v7 = objc_alloc_init(CardDAViCloudDelegateInfoProvider);
    v8 = [CardDAVDelegateManager alloc];
    v9 = [v4 identifier];
    v10 = [(CardDAVAgent *)self databaseHelper];
    v11 = [(CardDAVDelegateManager *)v8 initWithDelegateInfoProvider:v7 accountID:v9 databaseHelper:v10];
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
  v4 = [(CardDAVAgent *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [DAContactsProvider providerWithContactStore:v6];
  }

  else
  {
    v7 = +[DAContactsProvider providerWithAddressBook:](DAContactsProvider, "providerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (id)containerProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVAgent *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [DAContainerProvider providerWithContactStore:v6];
  }

  else
  {
    v7 = +[DAContainerProvider providerWithAddressBook:](DAContainerProvider, "providerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (id)groupsProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVAgent *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [DAGroupsProvider providerWithContactStore:v6];
  }

  else
  {
    v7 = +[DAGroupsProvider providerWithAddressBook:](DAGroupsProvider, "providerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (id)initialActionsDataSource
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVAgent *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [CardDAVInitialActionsDataSource dataSourceWithContactStore:v6];
  }

  else
  {
    v7 = +[CardDAVInitialActionsDataSource dataSourceWithAddressBook:](CardDAVInitialActionsDataSource, "dataSourceWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (id)actionsDataSource
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVAgent *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [CardDAVActionsDataSource dataSourceWithContactStore:v6];
  }

  else
  {
    v7 = +[CardDAVActionsDataSource dataSourceWithAddressBook:](CardDAVActionsDataSource, "dataSourceWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (id)actionsHandler
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVAgent *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [CardDAVActionsHandler handlerWithContactStore:v6];
  }

  else
  {
    v7 = +[CardDAVActionsHandler handlerWithAddressBook:](CardDAVActionsHandler, "handlerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (id)actionsFinalizer
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVAgent *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [CardDAVActionsFinalizer finalizerWithContactStore:v6];
  }

  else
  {
    v7 = +[CardDAVActionsFinalizer finalizerWithAddressBook:](CardDAVActionsFinalizer, "finalizerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (void)_validateAndSync:(BOOL)a3
{
  if (a3)
  {
    v5 = [(CardDAVAgent *)self account];
    [v5 setWasUserInitiated:1];
  }

  if ([(CardDAVAgent *)self isWaitingForPassword])
  {
    v6 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CardDAVAgent *)self account];
      v8 = [v7 accountDescription];
      v9 = [(CardDAVAgent *)self account];
      v10 = [v9 publicDescription];
      *buf = 138412546;
      v24 = v8;
      v25 = 2114;
      v26 = v10;
      v11 = "Account %@ (%{public}@) is waiting for a password, so we're going to ignore this refresh request";
LABEL_9:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
    }
  }

  else
  {
    v12 = [(CardDAVAgent *)self account];
    v13 = [v12 shouldFailAllTasks];

    if (v13)
    {
      v6 = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CardDAVAgent *)self account];
        v8 = [v7 accountDescription];
        v9 = [(CardDAVAgent *)self account];
        v10 = [v9 publicDescription];
        *buf = 138412546;
        v24 = v8;
        v25 = 2114;
        v26 = v10;
        v11 = "Account %@ (%{public}@) thinks it should fail all tasks.  Doing so";
        goto LABEL_9;
      }
    }

    else
    {
      v14 = [(CardDAVAgent *)self account];
      v15 = [v14 shouldAutodiscoverAccountProperties];

      if (!v15)
      {
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_3E90;
        v21[3] = &unk_3C8D0;
        v21[4] = self;
        v22 = a3;
        [(CardDAVAgent *)self _probeAndSyncWithBlock:v21];
        return;
      }

      v16 = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(CardDAVAgent *)self account];
        v18 = [v17 accountDescription];
        v19 = [(CardDAVAgent *)self account];
        v20 = [v19 publicDescription];
        *buf = 138412546;
        v24 = v18;
        v25 = 2114;
        v26 = v20;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Account %@ (%{public}@) doesn't have a principal URL. Running autodiscovery.", buf, 0x16u);
      }

      v6 = [(CardDAVAgent *)self account];
      [v6 discoverInitialPropertiesWithConsumer:self];
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
    v3 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CardDAVAgent *)self account];
      v5 = [v4 accountDescription];
      v6 = [(CardDAVAgent *)self account];
      v7 = [v6 publicDescription];
      v8 = 138412546;
      v9 = v5;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Handling CNContactStoreDidChangeNotification for account %@ (%{public}@); sync will occur", &v8, 0x16u);
    }

    [(CardDAVAgent *)self _validateAndSync:1];
  }
}

- (void)_tearDownABNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CNContactStoreDidChangeNotification object:0];
}

- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6 && (-[CardDAVAgent account](self, "account"), v10 = objc_claimAutoreleasedReturnValue(), [v10 principalPath], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v12, v13))
    {
      v14 = [(CardDAVAgent *)self account];
      v15 = [v14 accountDescription];
      v16 = [v8 publicDescription];
      *buf = 138412546;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&dword_0, v12, v13, "Account %@ (%{public}@) was successfully autodiscovered, saving account settings", buf, 0x16u);
    }

    v17 = [(CardDAVAgent *)self account];
    [v17 setShouldDoInitialAutodiscovery:0];

    v18 = [(CardDAVAgent *)self account];
    [v18 saveAccountProperties];

    [(CardDAVAgent *)self refreshFolderListRequireChangedFolders:0 isUserRequested:1];
  }

  else
  {
    v19 = [v9 domain];
    if ([v19 isEqualToString:DAAccountValidationDomain])
    {
      v20 = [v9 code];

      if (v20 == &stru_20.flags + 2)
      {
        [(CardDAVAgent *)self setIsWaitingForPassword:1];
        v21 = [(CardDAVAgent *)self account];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_44D4;
        v24[3] = &unk_3C8F8;
        v24[4] = self;
        v25 = v8;
        [v21 handleValidationError:v9 completion:v24];

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
  v3 = [(CardDAVAgent *)self account];
  v4 = [v3 enabledForDADataclass:2];

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
    v5 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CardDAVAgent *)self publicDescription];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "DA just woke up; sync will occur with %{public}@.", buf, 0xCu);
    }

    [(CardDAVAgent *)self _validateAndSync:0];
    v7 = +[DARefreshManager sharedManager];
    [v7 registerDelegate:self];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(CardDAVAgent *)self setIsMonitoring:0];
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(CardDAVAgent *)self publicDescription];
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_0, v5, v6, "The CardDAV agent was told to stop monitoring with %{public}@.", &v14, 0xCu);
  }

  [(CardDAVAgent *)self stopObservingReachability];
  [(CardDAVAgent *)self _tearDownABNotifications];
  v8 = [(CardDAVAgent *)self account];
  v9 = [v8 taskManager];
  [v9 shutdown];

  v10 = +[DALocalDBGateKeeper sharedGateKeeper];
  v11 = [(CardDAVAgent *)self account];
  [v10 unregisterWaiterForDataclassLocks:v11];

  v12 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v12 unregisterWaiterForDataclassLocks:self];

  v13 = +[DARefreshManager sharedManager];
  [v13 unregisterDelegate:self];

  v4[2](v4, self);
}

- (void)syncFolderIDs:(id)a3 forDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (v5)
  {
    v8 = [(CardDAVAgent *)self account];
    [v8 setShouldUseOpportunisticSockets:0];

    v9 = [(CardDAVAgent *)self account];
    [v9 setWasUserInitiated:1];
  }

  if (v7)
  {
    v27 = v7;
    v10 = objc_opt_new();
    v26 = self;
    v11 = [(CardDAVAgent *)self account];
    v12 = [v11 addressBooksByFolderURL];

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
          v20 = [v12 objectForKeyedSubscript:v19];
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
              v35 = v12;
              _os_log_impl(&dword_0, v21, v17, "Asked to sync folder with id %@, but I only know of these folders %@", buf, 0x16u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v15);
    }

    [(CardDAVAgent *)v26 _appendSyncRequestsForFolders:v13 remoteChanges:1];
    v7 = v27;
  }

  else
  {
    v22 = [(CardDAVAgent *)self account];
    v23 = [v22 addressBooks];
    v24 = [v23 count];

    if (v24)
    {
      [(CardDAVAgent *)self _syncAllContactFoldersWithRemoteChanges:1];
    }

    else
    {
      v25 = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "DA retry machinations; sync will occur", buf, 2u);
      }

      [(CardDAVAgent *)self _validateAndSync:0];
    }
  }
}

- (void)failedToFinishInitialSync:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 domain];
  if ([v9 isEqualToString:DAErrorDomain])
  {
    v10 = [v8 code];

    if (v10 == &dword_4 + 2)
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
    v14 = [v8 code];
    v15 = [v8 domain];
    *buf = 136316162;
    v39 = Name;
    v40 = 2112;
    v41 = v7;
    v42 = 2048;
    v43 = v14;
    v44 = 2114;
    v45 = v15;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&dword_0, v11, v12, "Yikes: %s %@ error code:%ld error domain:%{public}@ error:%@", buf, 0x34u);
  }

LABEL_8:
  v16 = [NSURL URLWithString:v7];
  [(NSMutableDictionary *)self->_folderURLToSyncInfo removeObjectForKey:v16];
  [(CardDAVAgent *)self _handlePotential503Error:v8];
  if ([v8 DA_isFailedDependencyError])
  {
    v17 = [(CardDAVAgent *)self account];
    v18 = [v17 homeURL];
    v19 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:v18];

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v20 = [(CardDAVAgent *)self databaseHelper];
      v21 = [(CardDAVAgent *)self account];
      v22 = [v21 changeTrackingID];
      [v20 abOpenDBWithClientIdentifier:v22];
    }

    v23 = [(CardDAVAgent *)self containerProvider];
    v24 = [(CardDAVAgent *)self account];
    v25 = [v24 syncStoreIdentifier];
    v26 = [v23 containerWithExternalIdentifier:v19 forAccountWithExternalIdentifier:v25];

    if (v26)
    {
      v27 = [v26 syncData];
      if (!v27 || ([NSPropertyListSerialization propertyListFromData:v27 mutabilityOption:1 format:0 errorDescription:0], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
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
        v31 = [(CardDAVAgent *)self databaseHelper];
        [v31 addSaveRequest:v30];

        v32 = [(CardDAVAgent *)self databaseHelper];
        [v32 executeAllSaveRequests];

        v19 = v37;
      }
    }

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v33 = [(CardDAVAgent *)self databaseHelper];
      [v33 abCloseDBAndSave:v26 != 0];
    }

    v34 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Initial sync failed, queue retry", buf, 2u);
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

- (void)successfullyUpdatedServerMeCardWithURL:(id)a3
{
  v4 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v4 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

  v5 = +[DARefreshManager sharedManager];
  [v5 delegateDidCompleteRefresh:self];

  [(CardDAVAgent *)self setLastRetryTimeout:0.0];

  [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (void)failedToUpdateServerMeCardWithError:(id)a3
{
  v4 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v4 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

  v5 = +[DARefreshManager sharedManager];
  [v5 delegateDidCompleteRefresh:self];

  [(CardDAVAgent *)self setLastRetryTimeout:0.0];
  v6 = [objc_opt_class() os_log_summary];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Me-card sync failed, queue retry", v7, 2u);
  }

  [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (BOOL)_updateMeCard
{
  v2 = self;
  v3 = [(CardDAVAgent *)self account];
  LOBYTE(v2) = [v3 updateMeCardWithWithConsumer:v2];

  return v2;
}

- (void)_successfullyFinishedInitialSyncForFolderWithID:(id)a3 context:(id)a4
{
  v34 = a4;
  v6 = [NSURL URLWithString:a3];
  [(NSMutableDictionary *)self->_folderURLToSyncInfo removeObjectForKey:v6];
  bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
  self->_bulkUploadUUIDBlacklist = 0;

  bulkUploadHREFBlacklist = self->_bulkUploadHREFBlacklist;
  self->_bulkUploadHREFBlacklist = 0;

  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    v9 = [(CardDAVAgent *)self databaseHelper];
    v10 = [(CardDAVAgent *)self account];
    v11 = [v10 changeTrackingID];
    [v9 abOpenDBWithClientIdentifier:v11];
  }

  v12 = [(CardDAVAgent *)self account];
  v13 = [v12 homeURL];
  v14 = [v6 da_leastInfoStringRepresentationRelativeToParentURL:v13];

  v15 = [(CardDAVAgent *)self containerProvider];
  v16 = [(CardDAVAgent *)self account];
  v17 = [v16 syncStoreIdentifier];
  v18 = [v15 containerWithExternalIdentifier:v14 forAccountWithExternalIdentifier:v17];

  if (v18)
  {
    v19 = [v18 syncData];
    if (v19)
    {
      v20 = [NSPropertyListSerialization propertyListFromData:v19 mutabilityOption:1 format:0 errorDescription:0];
      [v20 setObject:&__kCFBooleanFalse forKeyedSubscript:@"NeedInitialSync"];
      [v20 removeObjectForKey:@"CTagIsSuspect"];
      v21 = [NSPropertyListSerialization dataFromPropertyList:v20 format:200 errorDescription:0];
      [v18 setSyncData:v21];
      if (+[DABehaviorOptions useContactsFramework])
      {
        v22 = objc_alloc_init(CNSaveRequest);
        [v18 updateSaveRequest:v22];
        v23 = [(CardDAVAgent *)self databaseHelper];
        [v23 addSaveRequest:v22];
      }
    }

    v24 = [(CardDAVAgent *)self actionsFinalizer];
    v25 = [(CardDAVAgent *)self account];
    v26 = [v25 changeTrackingID];
    v27 = [v24 clearChangeHistoriesWithChangeIdContext:v34 pushedActions:0 inContainer:v18 changeTrackingID:v26];

    v28 = [(CardDAVAgent *)self account];
    v29 = v27 | [v28 setBestMeCard];
    if (v19)
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

      v31 = [(CardDAVAgent *)self databaseHelper];
      [v31 executeAllSaveRequests];
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

  v31 = [(CardDAVAgent *)self databaseHelper];
  [v31 abCloseDBAndSave:v30];
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

- (void)_pushInitialSyncActionsForFolderWithURL:(id)a3 context:(id)a4
{
  v75 = a3;
  v72 = a4;
  v98 = 0;
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    v7 = [(CardDAVAgent *)self databaseHelper];
    v8 = [(CardDAVAgent *)self account];
    v9 = [v8 changeTrackingID];
    [v7 abOpenDBWithClientIdentifier:v9];
  }

  v10 = [(CardDAVAgent *)self account];
  v11 = [v10 homeURL];
  v74 = [v75 da_leastInfoStringRepresentationRelativeToParentURL:v11];

  v12 = [(CardDAVAgent *)self containerProvider];
  v13 = [(CardDAVAgent *)self account];
  v14 = [v13 syncStoreIdentifier];
  v76 = [v12 containerWithExternalIdentifier:v74 forAccountWithExternalIdentifier:v14];

  if (v76)
  {
    v71 = [v76 syncData];
    if (v71)
    {
      v15 = [NSPropertyListSerialization propertyListFromData:v71 mutabilityOption:0 format:0 errorDescription:0];
    }

    else
    {
      v15 = 0;
    }

    v16 = [CardDAVPropertiesHelper maxImageSizeFromSyncDict:v15];
    v70 = v15;
    v17 = [CardDAVPropertiesHelper maxResourceSizeFromSyncDict:v15];
    v69 = [v76 cTag];
    v18 = objc_opt_new();
    v19 = objc_opt_new();
    v20 = [(CardDAVAgent *)self contactsProvider];
    v73 = [v20 contactsInContainer:v76];

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
      v21 = [(CardDAVAgent *)self isPrimaryICloudAccount];
    }

    else
    {
      v21 = 0;
    }

    if (!(([v73 count] == 0) | v21 & 1))
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
      v26 = [(CardDAVAgent *)self initialActionsDataSource];
      v27 = [(CardDAVAgent *)self databaseHelper];
      [v26 generateActionsForContacts:v73 databaseHelper:v27 inFolderWithURL:v75 blacklistedUUIDs:self->_bulkUploadUUIDBlacklist blacklistedURLs:self->_bulkUploadHREFBlacklist maxImageSize:v16 maxResourceSize:v17 outTouchedDB:&v98 reportingBlock:v24];

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
      v34 = [(CardDAVAgent *)self groupsProvider];
      v68 = [v34 groupsInContainer:v76];

      v67 = v16;
      v35 = v17;
      v36 = [(CardDAVAgent *)self initialActionsDataSource];
      v37 = [(CardDAVAgent *)self isPrimaryICloudAccount];
      v38 = [(CardDAVAgent *)self isAccountOwnerChildInFamilyCircle];
      v39 = [(CardDAVAgent *)self databaseHelper];
      bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
      bulkUploadHREFBlacklist = self->_bulkUploadHREFBlacklist;
      LOBYTE(v66) = [v76 isGuardianRestricted];
      v42 = [v36 actionsForGroups:v68 isPrimaryAppleAccount:v37 isU18Account:v38 databaseHelper:v39 inFolderWithURL:v75 blacklistedUUIDs:bulkUploadUUIDBlacklist blacklistedURLs:bulkUploadHREFBlacklist maxImageSize:v67 maxResourceSize:v35 containerIsRestricted:v66 outTouchedDB:&v98];

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
          v48 = [v47 action];
          v49 = [v48 itemChangeType] == &dword_0 + 1;

          if (v49)
          {
            v50 = [v47 action];
            v51 = [v47 externalURL];
            [v19 setObject:v50 forKeyedSubscript:v51];
          }

          else
          {
            v52 = [v47 action];
            v53 = [v52 itemChangeType] == 0;

            if (!v53)
            {
              continue;
            }

            v50 = [v47 action];
            v51 = [v47 externalUUID];
            [v18 setObject:v50 forKeyedSubscript:v51];
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
        v59 = [v58 integerValue];

        v60 = [v56 objectForKeyedSubscript:cdXMLMMeBulkMaxSize];
        v61 = [v60 integerValue];
      }

      else
      {
        v59 = 0;
        v61 = 0;
      }
    }

    else
    {
      v57 = 0;
      v59 = 0;
      v61 = 0;
    }

    if ((v98 & 1) != 0 || [v18 count] || objc_msgSend(v19, "count"))
    {
      v62 = [(CardDAVAgent *)self account];
      v63 = [v75 absoluteString];
      v64 = [v62 finishInitialSyncOfContactsFolder:v63 previousTag:v69 uuidsToAddActions:v18 hrefsToModDeleteActions:v19 useCRUD:v57 maxResources:v59 maxSize:v61 consumer:self context:v72];
      v98 |= v64;
    }

    else
    {
      v62 = [v75 absoluteString];
      [(CardDAVAgent *)self _successfullyFinishedInitialSyncForFolderWithID:v62 context:v72];
    }

    _Block_object_dispose(&v90, 8);
    _Block_object_dispose(&v94, 8);
  }

  if (!+[DABehaviorOptions useContactsFramework])
  {
    v65 = [(CardDAVAgent *)self databaseHelper];
    [v65 abCloseDBAndSave:v98];
    goto LABEL_46;
  }

  if (v98 == 1)
  {
    v65 = [(CardDAVAgent *)self databaseHelper];
    [v65 executeAllSaveRequests];
LABEL_46:
  }
}

- (void)_finishInitialSyncForFolderWithURL:(id)a3 context:(id)a4
{
  bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
  v7 = a4;
  v9 = a3;
  [(NSMutableSet *)bulkUploadUUIDBlacklist removeAllObjects];
  [(NSMutableSet *)self->_bulkUploadHREFBlacklist removeAllObjects];
  v8 = [(CardDAVAgent *)self initialActionsDataSource];
  [v8 prepareToGenerateInitialActionsWithContext:v7];

  [(CardDAVAgent *)self _pushInitialSyncActionsForFolderWithURL:v9 context:v7];
}

- (void)successfullyFinishedInitalUploadForFolderWithID:(id)a3 container:(id)a4 guardianRestrictedUUIDs:(id)a5 guardianRestrictedHREFs:(id)a6 blacklistedUUIDs:(id)a7 blacklistedHREFs:(id)a8 context:(id)a9
{
  v57 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = [NSURL URLWithString:a3];
  if ([v17 count])
  {
    bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
    if (!bulkUploadUUIDBlacklist)
    {
      v22 = +[NSMutableSet set];
      v23 = self->_bulkUploadUUIDBlacklist;
      self->_bulkUploadUUIDBlacklist = v22;

      bulkUploadUUIDBlacklist = self->_bulkUploadUUIDBlacklist;
    }

    v24 = [v17 allObjects];
    [(NSMutableSet *)bulkUploadUUIDBlacklist addObjectsFromArray:v24];
  }

  if ([v18 count])
  {
    bulkUploadHREFBlacklist = self->_bulkUploadHREFBlacklist;
    if (!bulkUploadHREFBlacklist)
    {
      v26 = +[NSMutableSet set];
      v27 = self->_bulkUploadHREFBlacklist;
      self->_bulkUploadHREFBlacklist = v26;

      bulkUploadHREFBlacklist = self->_bulkUploadHREFBlacklist;
    }

    v28 = [v18 allObjects];
    [(NSMutableSet *)bulkUploadHREFBlacklist addObjectsFromArray:v28];
  }

  v29 = [v16 count];
  if ([v15 count] + v29)
  {
    v56 = v20;
    v52 = v18;
    v53 = v17;
    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v30 = [(CardDAVAgent *)self databaseHelper];
      v31 = [(CardDAVAgent *)self account];
      v32 = [v31 changeTrackingID];
      [v30 abOpenDBWithClientIdentifier:v32];
    }

    v55 = v15;
    v33 = [v15 allObjects];
    v54 = v16;
    v34 = [v16 allObjects];
    v35 = +[NSMutableArray array];
    v36 = +[NSMutableArray array];
    v37 = [(CardDAVAgent *)self contactsProvider];
    v38 = [v37 contactsWithExternalUUIDs:v33 container:v57];

    v39 = [(CardDAVAgent *)self contactsProvider];
    v40 = [v39 contactsWithExternalHREFs:v34 container:v57];

    v41 = [(CardDAVAgent *)self groupsProvider];
    v50 = v33;
    v42 = v33;
    v43 = v34;
    v44 = [v41 groupsWithExternalUUIDs:v42 container:v57];

    v45 = [(CardDAVAgent *)self groupsProvider];
    v46 = [v45 groupsWithExternalHREFs:v34 container:v57];

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

    v51 = v19;
    if (v46)
    {
      [v36 addObjectsFromArray:v46];
    }

    v47 = [[ABMoveLocalAction alloc] initWithContacts:v35 groups:v36];
    v48 = [(CardDAVAgent *)self actionsHandler];
    [v48 handleAction:v47 forContainer:v57 inAccount:0 withFolderURL:v56 isInitialSync:1 arePartialResults:0 syncInfo:0 heldAsideGroups:0 internalReference:0];

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v49 = [(CardDAVAgent *)self databaseHelper];
      [v49 abCloseDBAndSave:1];
    }

    v16 = v54;
    v15 = v55;
    v18 = v52;
    v17 = v53;
    v19 = v51;
    v20 = v56;
  }

  [(CardDAVAgent *)self _pushInitialSyncActionsForFolderWithURL:v20 context:v19];
}

- (void)contactsFolderWithId:(id)a3 successfullyPushedActions:(id)a4
{
  v19 = a4;
  v6 = [NSURL URLWithString:a3];
  v7 = [(CardDAVAgent *)self account];
  v8 = [v7 homeURL];
  v9 = [v6 da_leastInfoStringRepresentationRelativeToParentURL:v8];

  v10 = [(CardDAVAgent *)self containerProvider];
  v11 = [(CardDAVAgent *)self account];
  v12 = [v11 syncStoreIdentifier];
  v13 = [v10 containerWithExternalIdentifier:v9 forAccountWithExternalIdentifier:v12];

  if (v13)
  {
    v14 = [(CardDAVAgent *)self actionsFinalizer];
    v15 = [(CardDAVAgent *)self account];
    v16 = [v15 changeTrackingID];
    v17 = [v14 clearChangeHistoriesWithChangeIdContext:0 pushedActions:v19 inContainer:v13 changeTrackingID:v16];

    if (v17)
    {
      if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
      {
        v18 = [(CardDAVAgent *)self databaseHelper];
        [v18 abSaveDB];
      }
    }
  }
}

- (BOOL)_syncResultForFolderWithURL:(id)a3 newTag:(id)a4 newSyncToken:(id)a5 actions:(id)a6 changeIdContext:(id)a7 isInitialSync:(BOOL)a8 arePartialResults:(BOOL)a9 externalURLForNewLocation:(id)a10
{
  v104 = a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v96 = a7;
  v103 = a10;
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    v19 = [(CardDAVAgent *)self databaseHelper];
    v20 = [(CardDAVAgent *)self account];
    v21 = [v20 changeTrackingID];
    [v19 abOpenDBWithClientIdentifier:v21];
  }

  v22 = [(CardDAVAgent *)self account];
  [CardDAVActionsLogger logSummaryForCardDAVActions:v18 partialResults:a9 initialSync:v104 syncPhase:@"in server results phase" syncAccount:v22];

  v23 = [(NSMutableDictionary *)self->_folderURLToSyncInfo objectForKeyedSubscript:v15];
  v106 = self;
  if (!v23)
  {
    v23 = objc_alloc_init(CardDAVSyncInfo);
    v24 = [(CardDAVAgent *)self contactsProvider];
    -[CardDAVSyncInfo setStartedWithNoContacts:](v23, "setStartedWithNoContacts:", [v24 countOfContacts] == 0);

    if ([(CardDAVSyncInfo *)v23 startedWithNoContacts])
    {
      v25 = DALoggingwithCategory();
      v26 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 138412290;
        v123 = v15;
        _os_log_impl(&dword_0, v25, v26, "started initial sync for %@ with no contacts - won't try to match people", buf, 0xCu);
      }
    }

    v27 = objc_opt_new();
    [(CardDAVSyncInfo *)v23 setUuidToPersonCache:v27];
    [(NSMutableDictionary *)self->_folderURLToSyncInfo setObject:v23 forKeyedSubscript:v15];
  }

  v28 = [(CardDAVAgent *)self account];
  v29 = [v28 homeURL];
  v30 = [v15 da_leastInfoStringRepresentationRelativeToParentURL:v29];

  v31 = [(CardDAVAgent *)self containerProvider];
  v32 = [(CardDAVAgent *)self account];
  v33 = [v32 syncStoreIdentifier];
  v95 = v30;
  v34 = [v31 containerWithExternalIdentifier:v30 forAccountWithExternalIdentifier:v33];

  v105 = v34;
  if (!v34)
  {
    v48 = v96;
    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      v49 = 0;
    }

    else
    {
      v101 = [(CardDAVAgent *)self databaseHelper];
      [v101 abCloseDBAndSave:0];
      v49 = 0;
    }

    goto LABEL_80;
  }

  v94 = v23;
  v92 = v16;
  v100 = [(NSMutableDictionary *)self->_folderURLToHeldAsideGroups objectForKeyedSubscript:v15];
  if (!v100)
  {
    v100 = +[NSMutableSet set];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v35 = v18;
  v36 = [v35 countByEnumeratingWithState:&v115 objects:v121 count:16];
  v98 = v36 != 0;
  obj = v35;
  v102 = v15;
  v93 = v17;
  v91 = v18;
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
        v41 = [v40 serverId];
        v42 = [v41 da_leastInfoStringRepresentationRelativeToParentURL:v102];
        v43 = [v42 da_stringByRemovingPercentEscapesForUsername];

        v44 = [v103 objectForKey:v43];
        v45 = [(CardDAVAgent *)v106 actionsHandler];
        v46 = [(CardDAVAgent *)v106 account];
        v47 = [(NSMutableDictionary *)v106->_folderURLToSyncInfo objectForKeyedSubscript:v102];
        LOBYTE(v40) = [v45 handleAction:v40 forContainer:v34 inAccount:v46 withFolderURL:v102 isInitialSync:v104 arePartialResults:a9 syncInfo:v47 heldAsideGroups:v100 internalReference:v44];

        v38 |= v40;
      }

      v37 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
    }

    while (v37);

    if ((v38 & 1) == 0)
    {
      v98 = 0;
      v17 = v93;
      goto LABEL_28;
    }

    v17 = v93;
    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      v98 = 1;
      goto LABEL_28;
    }

    v35 = [(CardDAVAgent *)v106 databaseHelper];
    [v35 abProcessAddedRecords];
  }

LABEL_28:
  v50 = [(CardDAVSyncInfo *)v94 uuidToPersonCache];
  if (v50)
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v51 = obj;
    v52 = [v51 countByEnumeratingWithState:&v111 objects:v120 count:16];
    v53 = v106;
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

          v57 = [*(*(&v111 + 1) + 8 * j) changedItem];
          v58 = [(CardDAVAgent *)v53 contactsProvider];
          v59 = [v58 contactFromItem:v57];

          if (v59 && [v59 legacyIdentifier] != -1)
          {
            v60 = [v59 externalUUID];
            if (v60)
            {
              v61 = [v50 objectForKeyedSubscript:v60];
              if (!v61)
              {
                v61 = objc_opt_new();
                [v50 setObject:v61 forKeyedSubscript:v60];
              }

              v62 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v59 legacyIdentifier]);
              [v61 addObject:v62];

              v53 = v106;
            }
          }
        }

        v54 = [v51 countByEnumeratingWithState:&v111 objects:v120 count:16];
      }

      while (v54);
    }

    v17 = v93;
  }

  v63 = v17;
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
        v71 = [v70 changedItem];
        if (!a9 || [v70 itemChangeType] == &dword_0 + 2 || (objc_msgSend(v71, "cardDAVRecordItem"), v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "isGroup"), v72, (v73 & 1) == 0))
        {
          [v71 setUUIDToPersonCache:v50];
          v74 = [(CardDAVAgent *)v106 account];
          [v71 saveIfGroupWithLocalObject:0 toContainer:v105 shouldMergeProperties:v104 outMergeDidChooseLocalProperties:0 account:v74];

          [v71 setUUIDToPersonCache:0];
          v98 = 1;
        }
      }

      v67 = [v65 countByEnumeratingWithState:&v107 objects:v119 count:16];
    }

    while (v67);
  }

  if (a9)
  {
    v48 = v96;
    v75 = v64;
    v17 = v63;
    v18 = v91;
    v16 = v92;
    if (!v98)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v76 = [v105 cTag];
    v77 = v76;
    v16 = v92;
    v48 = v96;
    v75 = v64;
    if (v76 == v92)
    {
      v17 = v63;
    }

    else
    {
      v17 = v63;
      if (([v76 isEqualToString:v92] & 1) == 0)
      {
        [v105 setCTag:v92];
        v98 = 1;
      }
    }

    v78 = [v105 syncTag];
    v79 = v78;
    v18 = v91;
    if (v78 != v17 && ([v78 isEqualToString:v17] & 1) == 0)
    {
      [v105 setSyncTag:v17];
      v98 = 1;
    }

    if (+[DABehaviorOptions useContactsFramework])
    {
      [v105 updateSaveRequest:v75];
    }

    [(NSMutableSet *)v106->_currentlySyncingFolderURLs removeObject:v102];

    if (!v98)
    {
      goto LABEL_73;
    }
  }

  v80 = +[DABehaviorOptions useContactsFramework];
  v81 = [(CardDAVAgent *)v106 databaseHelper];
  v82 = v81;
  if (v80)
  {
    [v81 addSaveRequest:v75];
LABEL_70:

    goto LABEL_72;
  }

  [v81 abProcessAddedImages];

  v83 = [(CardDAVAgent *)v106 databaseHelper];
  v84 = [v83 abSaveDB];

  if ((v84 & 1) == 0)
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
  if (!a9)
  {
LABEL_73:
    v85 = [(CardDAVAgent *)v106 actionsFinalizer];
    v86 = [(CardDAVAgent *)v106 account];
    v87 = [v86 changeTrackingID];
    [v85 clearChangeHistoriesWithChangeIdContext:v48 pushedActions:0 inContainer:v105 changeTrackingID:v87];
  }

LABEL_74:
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    v88 = [(CardDAVAgent *)v106 databaseHelper];
    [v88 abCloseDBAndSave:0];
  }

  if (v104 && !a9)
  {
    [(CardDAVAgent *)v106 _finishInitialSyncForFolderWithURL:v102 context:v48];
  }

  v49 = v104 && !a9;

  v23 = v94;
  v15 = v102;

LABEL_80:
  return v49;
}

- (void)syncResultForContactsFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 newSyncToken:(id)a6 actions:(id)a7 results:(id)a8 changeIdContext:(id)a9 isInitialSync:(BOOL)a10 moreAvailable:(BOOL)a11 moreLocalChangesAvailable:(BOOL)a12 pushedActions:(id)a13 externalURLForNewLocation:(id)a14
{
  v29 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = a14;
  v22 = [NSURL URLWithString:a3];
  if (a11)
  {
    LOBYTE(v28) = 1;
    [(CardDAVAgent *)self _syncResultForFolderWithURL:v22 newTag:v29 newSyncToken:v18 actions:v19 changeIdContext:v20 isInitialSync:a10 arePartialResults:v28 externalURLForNewLocation:v21];
  }

  else
  {
    v23 = [(NSMutableDictionary *)self->_folderURLToHeldAsideGroups objectForKeyedSubscript:v22];
    if ([v23 count])
    {
      v24 = [v19 mutableCopy];

      v25 = [v23 allObjects];
      [v24 addObjectsFromArray:v25];

      v19 = v24;
    }

    [(NSMutableDictionary *)self->_folderURLToHeldAsideGroups removeObjectForKey:v22];
    LOBYTE(v28) = 0;
    if (![(CardDAVAgent *)self _syncResultForFolderWithURL:v22 newTag:v29 newSyncToken:v18 actions:v19 changeIdContext:v20 isInitialSync:a10 arePartialResults:v28 externalURLForNewLocation:v21]&& ![(CardDAVAgent *)self _updateMeCard])
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

- (void)syncResultForContactsFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 newSyncToken:(id)a6 actions:(id)a7 results:(id)a8 changeIdContext:(id)a9 isInitialSync:(BOOL)a10 moreAvailable:(BOOL)a11 moreLocalChangesAvailable:(BOOL)a12 pushedActions:(id)a13
{
  *(&v13 + 1) = __PAIR16__(a12, a11);
  LOBYTE(v13) = a10;
  [CardDAVAgent syncResultForContactsFolder:"syncResultForContactsFolder:newTag:previousTag:newSyncToken:actions:results:changeIdContext:isInitialSync:moreAvailable:moreLocalChangesAvailable:pushedActions:externalURLForNewLocation:" newTag:a3 previousTag:a4 newSyncToken:a5 actions:a6 results:a7 changeIdContext:a8 isInitialSync:a9 moreAvailable:v13 moreLocalChangesAvailable:a13 pushedActions:0 externalURLForNewLocation:?];
}

- (void)_handlePotential503Error:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if (![v5 isEqualToString:CoreDAVHTTPStatusErrorDomain])
  {
    goto LABEL_16;
  }

  v6 = [v4 code];

  if (v6 == &stru_1A8.reserved3 + 3)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:CoreDAVHTTPHeaders];
    v5 = [v8 DAObjectForKeyCaseInsensitive:@"retry-after"];

    if (v5)
    {
      [v5 doubleValue];
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
      v14 = [(CardDAVAgent *)self watchedCollections];
      v15 = v13;
      v16 = self;
      v17 = v14;
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
      v14 = [(CardDAVAgent *)self watchedCollections];
      [(CardDAVAgent *)self lastRetryTimeout];
      v15 = v13;
      v16 = self;
      v17 = v14;
    }

    [v15 retryRefreshForDelegate:v16 withCollections:v17 after:1 originalRefreshReason:v18];

LABEL_15:
LABEL_16:
  }
}

- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CardDAVAgent *)self _addressBookSyncTask:v8 failedWithErrorCode:a3];
    [(CardDAVAgent *)self _handlePotential503Error:v9];
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      v12 = 138412802;
      v13 = v8;
      v14 = 2048;
      v15 = a3;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_0, v10, v11, "Daemon is ignoring task %@ which failed with status %ld and error %@", &v12, 0x20u);
    }
  }
}

- (void)_addressBookSyncTask:(id)a3 failedWithErrorCode:(int64_t)a4
{
  currentlySyncingFolderURLs = self->_currentlySyncingFolderURLs;
  v6 = [a3 folderURL];
  [(NSMutableSet *)currentlySyncingFolderURLs removeObject:v6];

  v7 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v7 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

  v8 = +[DARefreshManager sharedManager];
  [v8 delegateDidCompleteRefresh:self];

  [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (void)_reallySyncRequest:(id)a3
{
  v103 = a3;
  [v103 folder];
  v102 = v104 = 0;
  v101 = [(CardDAVAgent *)v102 folderID];
  v4 = [NSURL URLWithString:?];
  v5 = [(CardDAVAgent *)self account];
  v6 = [v5 homeURL];
  v7 = [v4 da_leastInfoStringRepresentationRelativeToParentURL:v6];

  v8 = +[DABabysitter sharedBabysitter];
  LOBYTE(v6) = [v8 registerAccount:self forOperationWithName:@"CardDAVSyncRequest"];

  if (v6)
  {
    v9 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CardDAVAgent *)self account];
      v11 = [v10 accountDescription];
      v12 = [(CardDAVAgent *)self publicDescription];
      *buf = 138412546;
      v106 = v11;
      v107 = 2114;
      v108 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- started", buf, 0x16u);
    }

    v13 = [(CardDAVAgent *)self delegateManager];
    [v13 updateDelegates];

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v14 = [(CardDAVAgent *)self databaseHelper];
      v15 = [(CardDAVAgent *)self account];
      v16 = [v15 changeTrackingID];
      [v14 abOpenDBWithClientIdentifier:v16];
    }

    v17 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(CardDAVAgent *)self account];
      v19 = [v18 accountDescription];
      v20 = [(CardDAVAgent *)self publicDescription];
      [(CardDAVAgent *)self publicContainerProviderSummaryInfo];
      v21 = v7;
      v23 = v22 = v4;
      *buf = 138412802;
      v106 = v19;
      v107 = 2114;
      v108 = v20;
      v109 = 2114;
      v110 = v23;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- %{public}@", buf, 0x20u);

      v4 = v22;
      v7 = v21;
    }

    v24 = [(CardDAVAgent *)self containerProvider];
    v25 = [(CardDAVAgent *)self account];
    v26 = [v25 syncStoreIdentifier];
    v27 = [v24 containerWithExternalIdentifier:v7 forAccountWithExternalIdentifier:v26];

    if (!v27)
    {
      v28 = DALoggingwithCategory();
      v41 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v28, v41))
      {
        v42 = [(CardDAVAgent *)self publicDescription];
        *buf = 138543618;
        v106 = v42;
        v107 = 2112;
        v108 = v101;
        _os_log_impl(&dword_0, v28, v41, "Agent %{public}@ asked to sync folder with id %@, but I have no matching container", buf, 0x16u);
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

        v83 = [(CardDAVAgent *)self databaseHelper];
        [v83 executeAllSaveRequests];
      }

      else
      {
        v83 = [(CardDAVAgent *)self databaseHelper];
        [v83 abCloseDBAndSave:v104];
      }

      goto LABEL_70;
    }

    v88 = v7;
    v28 = [v27 cTag];
    v29 = [v27 syncTag];
    v30 = [v27 syncData];
    v89 = v30;
    if (v30)
    {
      v31 = [NSPropertyListSerialization propertyListFromData:v30 mutabilityOption:0 format:0 errorDescription:0];
      v32 = [v31 objectForKeyedSubscript:@"NeedInitialSync"];
      [v103 setIsInitialUberSync:{objc_msgSend(v32, "BOOLValue")}];

      v33 = [v31 objectForKeyedSubscript:@"CTagIsSuspect"];
      v34 = [v33 BOOLValue];

      if (v34)
      {
        v35 = DALoggingwithCategory();
        v36 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v35, v36))
        {
          *buf = 138412290;
          v106 = v28;
          _os_log_impl(&dword_0, v35, v36, "My ctag of %@ is suspect, I'll get a new one", buf, 0xCu);
        }

        v37 = v4;

        v87 = 1;
LABEL_23:
        v44 = v29;
        v99 = [CardDAVPropertiesHelper maxImageSizeFromSyncDict:v31];
        v91 = [CardDAVPropertiesHelper maxResourceSizeFromSyncDict:v31];
        v45 = DALoggingwithCategory();
        v46 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v45, v46))
        {
          *buf = 138412290;
          v106 = v102;
          _os_log_impl(&dword_0, v45, v46, "external change, folder %@", buf, 0xCu);
        }

        type = v46;
        v47 = objc_alloc_init(ContactFolderItemsSyncContext);
        v48 = [(CardDAVAgent *)self actionsDataSource];
        v49 = [(CardDAVAgent *)self account];
        v50 = [v49 changeTrackingID];

        v93 = v50;
        [v48 prepareChangeHistoryForClientWithIdentifier:v50 forContainer:v27 withChangeContext:v47];
        v94 = v48;
        v51 = v48;
        v52 = type;
        v53 = v44;
        v4 = v37;
        if (([v51 changeHistoryIsValid] & 1) == 0)
        {
          [v103 setIsInitialUberSync:1];
          v54 = DALoggingwithCategory();
          if (os_log_type_enabled(v54, type))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v54, type, "Treating request as an initial sync as our change history is invalid", buf, 2u);
          }
        }

        v97 = v28;
        v98 = v27;
        v96 = v31;
        v90 = v53;
        if ([v103 isInitialUberSync])
        {
          v100 = 0;
        }

        else
        {
          v55 = [(CardDAVAgent *)self account];
          v56 = [(CardDAVAgent *)self isPrimaryICloudAccount];
          v57 = [(CardDAVAgent *)self isAccountOwnerChildInFamilyCircle];
          v58 = [v55 isImageUploadRestricted];
          v59 = [v55 databaseHelper];
          v60 = [v55 homeURL];
          v61 = [v103 actions];
          v62 = v27;
          v63 = v61;
          v100 = [v94 _copyCoalescedChangesInContainer:v62 isPrimaryAppleAccount:v56 isU18Account:v57 isImageUploadRestricted:v58 databaseHelper:v59 accountHomeURL:v60 changeTrackingID:v93 existingActions:v61 maxImageSize:v99 maxResourceSize:v91 changeContext:v47 outTouchedDB:&v104];

          if ([v47 isChangeHistoryTruncated] && (objc_msgSend(v103, "isInitialUberSync") & 1) == 0)
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
          v28 = v97;
          v27 = v98;
          v53 = v90;
          v31 = v96;
          v52 = type;
        }

        if ([v103 isInitialUberSync])
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

        v68 = [(CardDAVAgent *)self databaseHelper];
        v69 = DALoggingwithCategory();
        v70 = _CPLog_to_os_log_type[5];
        v71 = os_log_type_enabled(v69, v70);
        v92 = v68;
        if (v68)
        {
          if (v71)
          {
            v72 = [v68 abDefaultAccountInfoSuitableForLogging];
            *buf = 138543362;
            v106 = v72;
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
          v77 = [v76 accountDescription];
          v78 = [(CardDAVAgent *)self account];
          v79 = [v78 publicDescription];
          *buf = 134218498;
          v106 = v74;
          v27 = v98;
          v107 = 2112;
          v108 = v77;
          v109 = 2114;
          v110 = v79;
          _os_log_impl(&dword_0, v73, v70, "%lu changes for account %@ (%{public}@)", buf, 0x20u);

          v28 = v97;
          v4 = v75;
          v53 = v90;

          v31 = v96;
        }

        if (v28)
        {
          if ((-[NSObject isEqualToString:](v28, "isEqualToString:", @"0") & 1) == 0 && ![v100 count] && (objc_msgSend(v103, "hasRemoteChanges") & 1) == 0 && (objc_msgSend(v103, "isInitialUberSync") & 1) == 0)
          {
            v81 = DALoggingwithCategory();
            if (os_log_type_enabled(v81, type))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v81, type, "returning early, as we have a folder change with no remote changes, and no local changes", buf, 2u);
            }

            v43 = 0;
            goto LABEL_64;
          }

          [(CardDAVAgent *)v102 setHasRemoteChanges:0];
          v80 = v100;
          if (([v28 isEqualToString:@"0"]& 1) == 0)
          {
LABEL_63:
            v81 = [(CardDAVAgent *)self account];
            v82 = [v103 isInitialUberSync];
            *(&v86 + 1) = v87;
            LOBYTE(v86) = [v103 isResyncAfterConnectionFailed];
            v28 = v97;
            [NSObject synchronizeContactsFolder:v81 previousTag:"synchronizeContactsFolder:previousTag:previousSyncToken:actions:highestIdContext:isInitialUberSync:isResyncAfterConnectionFailed:previousTagIsSuspect:moreLocalChangesAvailable:consumer:" previousSyncToken:v101 actions:v97 highestIdContext:v53 isInitialUberSync:v80 isResyncAfterConnectionFailed:v47 previousTagIsSuspect:v82 moreLocalChangesAvailable:v86 consumer:self];
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
    v106 = self;
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
  v2 = [(CardDAVAgent *)self contactsProvider];
  v3 = v2;
  if (v2)
  {
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"contacts: %lu, groups: %lu", [v2 countOfContacts], objc_msgSend(v2, "countOfGroups"));
  }

  else
  {
    v4 = @"<summary unavailable>";
  }

  return v4;
}

- (void)_syncRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [v5 transactionId];
    *buf = 138543362;
    v21 = v8;
    _os_log_impl(&dword_0, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = [DAActivity alloc];
  v10 = [(CardDAVAgent *)self account];
  v11 = [v9 initWithAccount:v10];

  v12 = +[DALocalDBGateKeeper sharedGateKeeper];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_8D90;
  v16[3] = &unk_3C990;
  v16[4] = self;
  v17 = v4;
  v18 = v5;
  v19 = v11;
  v13 = v11;
  v14 = v5;
  v15 = v4;
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

        v13 = [v8 folder];
        v14 = [v13 folderID];

        if (v14)
        {
          v15 = [NSURL URLWithString:v14];
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

- (void)_appendSyncRequest:(id)a3
{
  v4 = a3;
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

        v15 = [v11 folder];
        v16 = [v4 folder];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          if ([v4 hasRemoteChanges])
          {
            [v11 setHasRemoteChanges:1];
          }

          v18 = objc_opt_new();
          v19 = [v11 actions];
          [v18 addObjectsFromArray:v19];

          v20 = [v4 actions];
          [v18 addObjectsFromArray:v20];

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

  [(NSMutableArray *)self->_outstandingFolderRequests addObject:v4];
  v11 = 0;
LABEL_16:
  [(NSLock *)self->_folderItemSyncRequestLock unlock];
  [(CardDAVAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (BOOL)APSTopicHasValidPrefix:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"com.me."] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"com.apple.contact."))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"com.icloud."];
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

  v6 = [(CardDAVAgent *)self account];
  v7 = [v6 pushTransport];
  v8 = [v7 objectForKeyedSubscript:@"APSD"];

  v9 = [v8 objectForKeyedSubscript:cdXMLCalendarServerAPSBundleID];
  v10 = [v8 objectForKeyedSubscript:cdXMLMMAPSEnv];
  v11 = [v10 uppercaseString];

  if ([v11 isEqualToString:@"PRODUCTION"])
  {
    v12 = @"production";
  }

  else if ([v11 isEqualToString:@"SANDBOX"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"DEVELOPMENT"))
  {
    v12 = @"development";
  }

  else if ([v11 isEqualToString:@"DEV"])
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
  v22 = [(CardDAVAgent *)self account];
  v23 = [v22 pushKeysToFolderURLs];
  v24 = [v23 allKeys];
  [(NSMutableSet *)v21 addObjectsFromArray:v24];

  LODWORD(v22) = [(CardDAVAgent *)self APSTopicHasValidPrefix:v9];
  v25 = +[DARefreshManager sharedManager];
  v26 = v25;
  if (v22)
  {
    [v25 registerTopic:v9 forDelegate:self inEnvironment:v12];
  }

  else
  {
    [v25 unregisterTopic:0 forDelegate:self inEnvironment:0];
  }

  [(CardDAVAgent *)self _syncAllContactFoldersWithRemoteChanges:1];
}

- (void)failedToRetrieveAddressBookURLsWithError:(id)a3
{
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:DAErrorDomain])
  {
    v7 = [v5 code];

    if (v7 == &dword_4 + 2)
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
    v11 = [v5 code];
    v12 = [v5 domain];
    v15 = 136315906;
    v16 = Name;
    v17 = 2048;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_0, v8, v9, "Yikes: %s error code:%ld error domain:%{public}@ error:%@", &v15, 0x2Au);
  }

LABEL_8:
  self->_isSyncingHierarchy = 0;
  [(CardDAVAgent *)self _handlePotential503Error:v5];
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
  v2 = [(CardDAVAgent *)self account];
  v3 = [v2 accountID];

  return v3;
}

- (NSString)scheduleIdentifier
{
  v2 = [(CardDAVAgent *)self account];
  v3 = [v2 scheduleIdentifier];

  return v3;
}

- (NSString)onBehalfOfBundleIdentifier
{
  v2 = [(CardDAVAgent *)self account];
  v3 = [v2 onBehalfOfBundleIdentifier];

  return v3;
}

- (id)username
{
  v2 = [(CardDAVAgent *)self account];
  v3 = [v2 username];

  return v3;
}

- (id)password
{
  v2 = [(CardDAVAgent *)self account];
  v3 = [v2 password];

  return v3;
}

- (void)refreshPropertiesOfAllContactFoldersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[DALocalDBGateKeeper sharedGateKeeper];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9E58;
  v7[3] = &unk_3C9B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 registerWaiter:self forDataclassLocks:2 completionHandler:v7];
}

- (void)_holdingDataClassLock_refreshPropertiesOfAllContactFoldersWithCompletion:(id)a3
{
  v29 = a3;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v60[3] = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  v4 = [(CardDAVAgent *)self account];
  v5 = [v4 addressBooks];
  v30 = [v5 copy];

  v6 = [(CardDAVAgent *)self account];
  v34 = [v6 containerPropertiesToFetchDuringRefresh];

  if ([v30 count] && objc_msgSend(v34, "count"))
  {
    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v7 = [(CardDAVAgent *)self databaseHelper];
      v8 = [(CardDAVAgent *)self account];
      v9 = [v8 changeTrackingID];
      [v7 abOpenDBWithClientIdentifier:v9];
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
    v48 = v29;
    v36 = objc_retainBlock(v47);
    v32 = +[NSMutableArray array];
    v33 = [(CardDAVAgent *)self containerProvider];
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
          v14 = [v13 folderID];
          if (v14)
          {
            v15 = [v13 folderID];
            v16 = [NSURL URLWithString:v15];

            v17 = [(CardDAVAgent *)self account];
            v18 = [v17 homeURL];
            v19 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:v18];

            v20 = [(CardDAVAgent *)self account];
            v21 = [v20 syncStoreIdentifier];
            v22 = [v33 containerWithExternalIdentifier:v19 forAccountWithExternalIdentifier:v21];

            v23 = [[CoreDAVPropFindTask alloc] initWithPropertiesToFind:v34 atURL:v16 withDepth:2];
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
            v25 = [(CardDAVAgent *)self account];
            [v23 setAccountInfoProvider:v25];

            objc_destroyWeak(&v41);
            objc_destroyWeak(&location);

            v11 = v23;
          }

          if (v11)
          {
            [v32 addObject:v11];
            v26 = [(CardDAVAgent *)self account];
            v27 = [v26 taskManager];
            [v27 submitIndependentCoreDAVTask:v11];
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

    (*(v29 + 2))(v29, 1, 1);
    v11 = 0;
  }

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);
}

- (void)refreshCollections:(id)a3 withReason:(int)a4
{
  v6 = [(CardDAVAgent *)self account];
  v7 = [v6 addressBooks];
  v8 = [v7 count];

  if (v8)
  {
    if (a4 == 1)
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
    v9 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "DA refresh machinations; sync will occur", buf, 2u);
    }

    [(CardDAVAgent *)self _validateAndSync:0];
  }
}

- (BOOL)isPrimaryICloudAccount
{
  v2 = cn_objectResultWithObjectLock();
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isAccountOwnerChildInFamilyCircle
{
  v2 = cn_objectResultWithObjectLock();
  v3 = [v2 BOOLValue];

  return v3;
}

@end