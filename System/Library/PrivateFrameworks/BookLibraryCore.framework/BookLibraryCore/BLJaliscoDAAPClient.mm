@interface BLJaliscoDAAPClient
+ (BOOL)workaround_18397698;
+ (id)sharedClient;
+ (void)initialize;
- (BLImageManager)imageManagerDelegate;
- (BLJaliscoDAAPClient)init;
- (BLJaliscoDAAPClientDelegate)delegate;
- (BOOL)isGDPRPrivacyAcknowledgementRequired;
- (BOOL)resetPoliteTimers;
- (BOOL)storeAuthenticationRequired;
- (NSPersistentHistoryToken)currentJaliscoHistoryToken;
- (id)_allPurchaseDAAPServers;
- (id)_currentPurchaseDAAPServers;
- (id)_dsids;
- (id)_familyPurchaseDAAPServers;
- (id)_fetchItemsForNeedsImport:(BOOL)import;
- (id)_fetchRequestForNotInStoreAccountIDs:(id)ds;
- (id)_newPurchaseDAAPServerWithDSID:(id)d;
- (id)fetchAllBookletIDsWithParentStoreIDs:(id)ds;
- (id)fetchItemsForStoreIDs:(id)ds;
- (id)fetchRequestForAllStoreIDs:(id)ds;
- (id)fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:(id)token;
- (id)fetchRequestForBookletItems:(id)items;
- (id)fetchRequestForBuyParameters:(id)parameters;
- (id)fetchRequestForHiddenItems;
- (id)fetchRequestForStoreID:(id)d;
- (id)fetchRequestForStoreIDIncludingHidden:(id)hidden;
- (id)fetchRequestForStoreIDs:(id)ds;
- (id)newManagedObjectContext;
- (id)newManagedObjectContextWithPrivateQueueConcurrency;
- (id)persistentStoreCoordinator;
- (void)_addPurchaseServerForCurrentUser;
- (void)_processFamilyCircleAdded:(id)added removed:(id)removed unchanged:(id)unchanged completion:(id)completion;
- (void)_resetPurchaseDAAPServersWithQueue:(id)queue;
- (void)_sendCompletionHandlersWithSuccess:(BOOL)success generation:(unint64_t)generation;
- (void)_startObservingNotifications;
- (void)_stopObservingNotifications;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
- (void)dealloc;
- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion;
- (void)fetchItemsForBuyParameters:(id)parameters completion:(id)completion;
- (void)fetchItemsForStoreIDs:(id)ds completion:(id)completion;
- (void)forceJaliscoArtworkUpdateWithCompletion:(id)completion;
- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)jaliscoArtworkTimebombed;
- (void)purchaseServerHandleClientExpired;
- (void)refreshSignInStatus;
- (void)refreshStoreWithCompletion:(id)completion;
- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion;
- (void)setIsGDPRPrivacyAcknowledgementRequired:(BOOL)required;
- (void)setStoreAuthenticationRequired:(BOOL)required;
- (void)storeIDsWithNonEmptyPurchasedToken:(id)token completion:(id)completion;
- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion;
- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion;
@end

@implementation BLJaliscoDAAPClient

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    [v4 setObject:dictionary forKey:@"kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary"];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults registerDefaults:v4];
  }
}

+ (id)sharedClient
{
  os_unfair_lock_lock(&unk_280BC5828);
  if (!qword_280BC5850)
  {
    v2 = objc_alloc_init(BLJaliscoDAAPClient);
    v3 = qword_280BC5850;
    qword_280BC5850 = v2;
  }

  os_unfair_lock_unlock(&unk_280BC5828);
  v4 = qword_280BC5850;

  return v4;
}

- (BLJaliscoDAAPClient)init
{
  v30.receiver = self;
  v30.super_class = BLJaliscoDAAPClient;
  v2 = [(BLJaliscoDAAPClient *)&v30 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  v6 = *(v2 + 1);
  *(v2 + 1) = ams_DSID;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("Jalisco_DAAP_Server_Worker_Queue", v7);
  v9 = *(v2 + 5);
  *(v2 + 5) = v8;

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_BACKGROUND, 0);
  v12 = dispatch_queue_create("Jalisco_DAAP_DSID_Queue", v11);
  v13 = *(v2 + 14);
  *(v2 + 14) = v12;

  *(v2 + 88) = xmmword_241D7D230;
  *(v2 + 6) = 0;
  v14 = objc_opt_new();
  v15 = *(v2 + 2);
  *(v2 + 2) = v14;

  v16 = objc_opt_new();
  v17 = *(v2 + 3);
  *(v2 + 3) = v16;

  v2[68] = 0;
  v2[60] = 0;
  v18 = objc_opt_new();
  v19 = *(v2 + 15);
  *(v2 + 15) = v18;

  v20 = objc_opt_new();
  v21 = *(v2 + 16);
  *(v2 + 16) = v20;

  *(v2 + 16) = 0;
  *(v2 + 14) = 0;
  if (*(v2 + 1))
  {
    v22 = [v2 _newPurchaseDAAPServerWithDSID:?];
    [*(v2 + 15) setObject:v22 forKeyedSubscript:*(v2 + 1)];

    ++*(v2 + 11);
  }

  v23 = +[BLJaliscoServerSource sharedSource];

  if (v23)
  {
    newManagedObjectContextWithPrivateQueueConcurrency = [v2 newManagedObjectContextWithPrivateQueueConcurrency];
    v25 = *(v2 + 17);
    *(v2 + 17) = newManagedObjectContextWithPrivateQueueConcurrency;

    [v2 _startObservingNotifications];
LABEL_6:
    v26 = v2;
    goto LABEL_10;
  }

  v27 = BLJaliscoLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *v29 = 0;
    _os_log_impl(&dword_241D1F000, v27, OS_LOG_TYPE_ERROR, "Unable to initialize BLJaliscoDAAPClient", v29, 2u);
  }

  v26 = 0;
LABEL_10:

  return v26;
}

- (id)newManagedObjectContextWithPrivateQueueConcurrency
{
  v2 = +[BLJaliscoServerSource sharedSource];
  newManagedObjectContextWithPrivateQueueConcurrency = [v2 newManagedObjectContextWithPrivateQueueConcurrency];

  return newManagedObjectContextWithPrivateQueueConcurrency;
}

- (void)_startObservingNotifications
{
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  [mEMORY[0x277CF32F0] addObserver:self accountTypes:1];
}

- (void)dealloc
{
  [(BLJaliscoDAAPClient *)self _stopObservingNotifications];
  v3.receiver = self;
  v3.super_class = BLJaliscoDAAPClient;
  [(BLJaliscoDAAPClient *)&v3 dealloc];
}

- (void)_stopObservingNotifications
{
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  [mEMORY[0x277CF32F0] removeObserver:self accountTypes:1];
}

- (NSPersistentHistoryToken)currentJaliscoHistoryToken
{
  v2 = +[BLJaliscoServerSource sharedSource];
  currentJaliscoHistoryToken = [v2 currentJaliscoHistoryToken];

  return currentJaliscoHistoryToken;
}

- (void)setIsGDPRPrivacyAcknowledgementRequired:(BOOL)required
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_241D57164;
  v4[3] = &unk_278D17BC0;
  v4[4] = self;
  requiredCopy = required;
  os_unfair_lock_lock(&self->_isGDPRPrivacyAcknowledgementLock);
  sub_241D57164(v4);
  os_unfair_lock_unlock(&self->_isGDPRPrivacyAcknowledgementLock);
}

- (BOOL)isGDPRPrivacyAcknowledgementRequired
{
  selfCopy = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = sub_241D5725C;
  v7 = &unk_278D17BE8;
  selfCopy2 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&selfCopy->_isGDPRPrivacyAcknowledgementLock);
  v6(v3);
  os_unfair_lock_unlock(&selfCopy->_isGDPRPrivacyAcknowledgementLock);

  LOBYTE(selfCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return selfCopy;
}

- (void)setStoreAuthenticationRequired:(BOOL)required
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_241D57300;
  v4[3] = &unk_278D17BC0;
  v4[4] = self;
  requiredCopy = required;
  os_unfair_lock_lock(&self->_authenticationLock);
  sub_241D57300(v4);
  os_unfair_lock_unlock(&self->_authenticationLock);
}

- (BOOL)storeAuthenticationRequired
{
  selfCopy = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = sub_241D573F8;
  v7 = &unk_278D17BE8;
  selfCopy2 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&selfCopy->_authenticationLock);
  v6(v3);
  os_unfair_lock_unlock(&selfCopy->_authenticationLock);

  LOBYTE(selfCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return selfCopy;
}

- (void)refreshSignInStatus
{
  serverWorkerQueue = self->_serverWorkerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D57480;
  block[3] = &unk_278D173A8;
  block[4] = self;
  dispatch_async(serverWorkerQueue, block);
}

- (void)jaliscoArtworkTimebombed
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_timebombRetries > 2)
  {
    v4 = BLJaliscoLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      timebombRetries = self->_timebombRetries;
      *buf = 134217984;
      v9 = timebombRetries;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_DEBUG, "ARTWORK: Ignoring timebomb on its %lu try.", buf, 0xCu);
    }
  }

  else
  {
    serverWorkerQueue = self->_serverWorkerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241D575AC;
    block[3] = &unk_278D173A8;
    block[4] = self;
    dispatch_async(serverWorkerQueue, block);
  }

  ++self->_timebombRetries;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)forceJaliscoArtworkUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  serverWorkerQueue = self->_serverWorkerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D5773C;
  v7[3] = &unk_278D17C10;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serverWorkerQueue, v7);
}

- (void)fetchItemsForStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D579B8;
  v11[3] = &unk_278D17C60;
  v11[4] = self;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  [(NSManagedObjectContext *)moc performBlock:v11];
}

- (id)fetchItemsForStoreIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  moc = self->_moc;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D57C1C;
  v12[3] = &unk_278D17C88;
  v13 = dsCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = dsCopy;
  [(NSManagedObjectContext *)moc performBlockAndWait:v12];
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)fetchAllBookletIDsWithParentStoreIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D57E6C;
  v11[3] = &unk_278D17C88;
  v12 = dsCopy;
  selfCopy = self;
  v14 = v5;
  v7 = v5;
  v8 = dsCopy;
  [(NSManagedObjectContext *)moc performBlockAndWait:v11];
  v9 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v9;
}

- (void)fetchItemsForBuyParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D5808C;
  v11[3] = &unk_278D17C60;
  v11[4] = self;
  v12 = parametersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = parametersCopy;
  [(NSManagedObjectContext *)moc performBlock:v11];
}

- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  serverWorkerQueue = self->_serverWorkerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D582E0;
  block[3] = &unk_278D17C60;
  block[4] = self;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(serverWorkerQueue, block);
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  moc = self->_moc;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D58530;
  v7[3] = &unk_278D17C10;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(NSManagedObjectContext *)moc performBlock:v7];
}

- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  newManagedObjectContext = [(BLJaliscoDAAPClient *)self newManagedObjectContext];
  v9 = [(BLJaliscoDAAPClient *)self fetchRequestForAllStoreIDs:dsCopy];
  v28 = 0;
  v10 = [newManagedObjectContext executeFetchRequest:v9 error:&v28];
  v11 = v28;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v24 + 1) + 8 * i) setPurchasedTokenCode:@"0"];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v14);
  }

  if ([newManagedObjectContext hasChanges])
  {
    v23 = 0;
    LODWORD(v17) = [newManagedObjectContext save:&v23];
    v18 = v23;
    if (v18)
    {
      v17 = v17;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      v19 = BLJaliscoLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v18;
        _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "Reset purchase token: Moc Save Error:  %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = 1;
  }

  v20 = MEMORY[0x245CFF560](completionCopy);
  v21 = v20;
  if (v20)
  {
    (*(v20 + 16))(v20, v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)storeIDsWithNonEmptyPurchasedToken:(id)token completion:(id)completion
{
  v25[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  tokenCopy = token;
  newManagedObjectContext = [(BLJaliscoDAAPClient *)self newManagedObjectContext];
  v9 = [(BLJaliscoDAAPClient *)self fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:tokenCopy];

  v25[0] = @"storeID";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v9 setPropertiesToFetch:v10];

  [v9 setResultType:2];
  v22 = 0;
  v11 = [newManagedObjectContext executeFetchRequest:v9 error:&v22];
  v12 = v22;
  if (v12)
  {
    v13 = BLJaliscoLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_ERROR, "Non-empty purchase token storeIDs: Moc Fetch Error:  %@", buf, 0xCu);
    }
  }

  v14 = [v11 valueForKey:@"storeID"];
  bu_arrayByRemovingNSNulls = [v14 bu_arrayByRemovingNSNulls];
  v16 = bu_arrayByRemovingNSNulls;
  v17 = MEMORY[0x277CBEBF8];
  if (bu_arrayByRemovingNSNulls)
  {
    v17 = bu_arrayByRemovingNSNulls;
  }

  v18 = v17;

  v19 = [MEMORY[0x277CBEB98] setWithArray:v18];

  v20 = MEMORY[0x245CFF560](completionCopy);
  if (v20)
  {
    (v20)[2](v20, v19, v12 == 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  serverWorkerQueue = self->_serverWorkerQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D5909C;
  v11[3] = &unk_278D17DF0;
  v11[4] = self;
  v12 = completionCopy;
  politelyCopy = politely;
  reasonCopy = reason;
  v10 = completionCopy;
  dispatch_async(serverWorkerQueue, v11);
}

- (id)_newPurchaseDAAPServerWithDSID:(id)d
{
  dCopy = d;
  v5 = +[BLPrivacyInfo sharedPrivacyInfo];
  v6 = [[BLPurchaseDAAPServer alloc] initWithDSID:dCopy delegate:self privacyInfo:v5];

  return v6;
}

- (void)_addPurchaseServerForCurrentUser
{
  v12 = *MEMORY[0x277D85DE8];
  currentAccountNumber = self->_currentAccountNumber;
  v4 = BLJaliscoLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (currentAccountNumber)
  {
    if (v5)
    {
      v6 = self->_currentAccountNumber;
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_DEFAULT, "_addPurchaseServerForCurrentUser dsid:%@", buf, 0xCu);
    }

    dsidQueue = self->_dsidQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241D5A560;
    block[3] = &unk_278D173A8;
    block[4] = self;
    dispatch_sync(dsidQueue, block);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_DEFAULT, "_addPurchaseServerForCurrentUser no current account", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BLJaliscoServerSource sharedSource];
  [v4 refreshStoreWithCompletion:completionCopy];
}

- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion
{
  politelyCopy = politely;
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_241D5AE08;
  v21[3] = &unk_278D17E68;
  v21[4] = self;
  v9 = completionCopy;
  v22 = v9;
  reasonCopy = reason;
  v24 = politelyCopy;
  v10 = MEMORY[0x245CFF560](v21);
  v11 = BLJaliscoLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = politelyCopy;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEFAULT, "Starting jalisco family purchase update (politely: %d)", &buf, 8u);
  }

  LOBYTE(buf) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &buf);
  if (buf && AppBooleanValue)
  {
    v13 = BLJaliscoLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEFAULT, "Skipping update family due to store demo mode.", &buf, 2u);
    }

    v14 = MEMORY[0x245CFF560](v9);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 16))(v14, 1);
    }
  }

  else
  {
    objc_initWeak(&buf, self);
    v16 = +[BLFamilyCircleController sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_241D5B8EC;
    v18[3] = &unk_278D17E90;
    objc_copyWeak(&v20, &buf);
    v19 = v10;
    [v16 refreshWithCompletion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&buf);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)fetchRequestForStoreID:(id)d
{
  dCopy = d;
  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [MEMORY[0x277CBEB98] setWithObject:dCopy];

  _dsids = [(BLJaliscoDAAPClient *)self _dsids];
  v8 = [v5 fetchRequestForStoreIDs:v6 dsids:_dsids];

  return v8;
}

- (id)fetchRequestForStoreIDIncludingHidden:(id)hidden
{
  hiddenCopy = hidden;
  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [MEMORY[0x277CBEB98] setWithObject:hiddenCopy];

  _dsids = [(BLJaliscoDAAPClient *)self _dsids];
  v8 = [v5 fetchRequestForAllStoreIDs:v6 dsids:_dsids];

  return v8;
}

- (id)fetchRequestForStoreIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[BLJaliscoServerSource sharedSource];
  _dsids = [(BLJaliscoDAAPClient *)self _dsids];
  v7 = [v5 fetchRequestForStoreIDs:dsCopy dsids:_dsids];

  return v7;
}

- (id)fetchRequestForAllStoreIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[BLJaliscoServerSource sharedSource];
  _dsids = [(BLJaliscoDAAPClient *)self _dsids];
  v7 = [v5 fetchRequestForAllStoreIDs:dsCopy dsids:_dsids];

  return v7;
}

- (id)fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:(id)token
{
  tokenCopy = token;
  v5 = +[BLJaliscoServerSource sharedSource];
  _dsids = [(BLJaliscoDAAPClient *)self _dsids];
  v7 = [v5 fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:tokenCopy dsids:_dsids];

  return v7;
}

- (id)fetchRequestForBuyParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = +[BLJaliscoServerSource sharedSource];
  v5 = [v4 fetchRequestForBuyParameters:parametersCopy];

  return v5;
}

- (id)fetchRequestForBookletItems:(id)items
{
  itemsCopy = items;
  v4 = +[BLJaliscoServerSource sharedSource];
  v5 = [v4 fetchRequestForBookletItemsForStoreIDs:itemsCopy];

  return v5;
}

- (id)fetchRequestForHiddenItems
{
  v3 = +[BLJaliscoServerSource sharedSource];
  _dsids = [(BLJaliscoDAAPClient *)self _dsids];
  v5 = [v3 fetchRequestForHiddenItemsWithAccountIDs:_dsids];

  return v5;
}

- (id)newManagedObjectContext
{
  v2 = +[BLJaliscoServerSource sharedSource];
  newManagedObjectContext = [v2 newManagedObjectContext];

  return newManagedObjectContext;
}

- (id)persistentStoreCoordinator
{
  v2 = +[BLJaliscoServerSource sharedSource];
  persistentStoreCoordinator = [v2 persistentStoreCoordinator];

  return persistentStoreCoordinator;
}

- (BOOL)resetPoliteTimers
{
  v12 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = BLJaliscoLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [standardUserDefaults valueForKey:@"kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary"];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting polite timers ... clearing old dictionary:%@", &v10, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  [standardUserDefaults setObject:dictionary forKey:@"kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary"];

  synchronize = [standardUserDefaults synchronize];
  if ((synchronize & 1) == 0)
  {
    v7 = BLJaliscoLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "ERROR: Could not reset polite timer.", &v10, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return synchronize;
}

- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = BLJaliscoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = dsCopy;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "deleteItemsWithStoreIDs storeIDs:%@", buf, 0xCu);
  }

  moc = self->_moc;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D5C220;
  v13[3] = &unk_278D17C60;
  v13[4] = self;
  v14 = dsCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = dsCopy;
  [(NSManagedObjectContext *)moc performBlockAndWait:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_fetchItemsForNeedsImport:(BOOL)import
{
  v5 = objc_opt_new();
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D5C664;
  v11[3] = &unk_278D17EB8;
  importCopy = import;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [(NSManagedObjectContext *)moc performBlockAndWait:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

- (id)_allPurchaseDAAPServers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_241D57854;
  v11 = sub_241D57864;
  v12 = 0;
  dsidQueue = [(BLJaliscoDAAPClient *)self dsidQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5C8DC;
  v6[3] = &unk_278D17BE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dsidQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_currentPurchaseDAAPServers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_241D57854;
  v11 = sub_241D57864;
  v12 = 0;
  dsidQueue = [(BLJaliscoDAAPClient *)self dsidQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5CA60;
  v6[3] = &unk_278D175C0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dsidQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_familyPurchaseDAAPServers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_241D57854;
  v11 = sub_241D57864;
  v12 = 0;
  dsidQueue = [(BLJaliscoDAAPClient *)self dsidQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5CC40;
  v6[3] = &unk_278D17BE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dsidQueue, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_dsids
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_241D57854;
  v11 = sub_241D57864;
  v12 = 0;
  dsidQueue = [(BLJaliscoDAAPClient *)self dsidQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5CE3C;
  v6[3] = &unk_278D17BE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dsidQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_fetchRequestForNotInStoreAccountIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[BLJaliscoServerSource sharedSource];
  v5 = [v4 fetchRequestForNotInStoreAccountIDs:dsCopy];

  return v5;
}

- (void)_processFamilyCircleAdded:(id)added removed:(id)removed unchanged:(id)unchanged completion:(id)completion
{
  addedCopy = added;
  removedCopy = removed;
  unchangedCopy = unchanged;
  completionCopy = completion;
  dsidQueue = self->_dsidQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D5D06C;
  block[3] = &unk_278D17F30;
  v20 = addedCopy;
  v21 = unchangedCopy;
  selfCopy = self;
  v23 = removedCopy;
  v24 = completionCopy;
  v15 = completionCopy;
  v16 = removedCopy;
  v17 = unchangedCopy;
  v18 = addedCopy;
  dispatch_async(dsidQueue, block);
}

- (void)_sendCompletionHandlersWithSuccess:(BOOL)success generation:(unint64_t)generation
{
  serverWorkerQueue = self->_serverWorkerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D5D9EC;
  block[3] = &unk_278D17F80;
  block[4] = self;
  block[5] = generation;
  successCopy = success;
  dispatch_async(serverWorkerQueue, block);
}

- (void)_resetPurchaseDAAPServersWithQueue:(id)queue
{
  v16 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  _allPurchaseDAAPServers = [(BLJaliscoDAAPClient *)self _allPurchaseDAAPServers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [_allPurchaseDAAPServers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_allPurchaseDAAPServers);
        }

        [*(*(&v11 + 1) + 8 * v9++) resetWithQueue:queueCopy];
      }

      while (v7 != v9);
      v7 = [_allPurchaseDAAPServers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)workaround_18397698
{
  v2 = +[BLJaliscoServerSource sharedSource];
  workaround = [v2 workaround];

  return workaround;
}

- (void)purchaseServerHandleClientExpired
{
  delegate = [(BLJaliscoDAAPClient *)self delegate];
  [delegate clientDetectedPurchaseServerClientExpired:self];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = +[BLJaliscoServerSource sharedSource];
  v15 = 0;
  v5 = [v4 truncateDatabaseError:&v15];
  v6 = v15;

  v7 = BLJaliscoLog();
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v9 = "Account Changed. Truncated jalisco database";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 2;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v17 = v6;
    v9 = "Could not truncate database. error:  %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  _os_log_impl(&dword_241D1F000, v10, v11, v9, buf, v12);
LABEL_7:

  v13 = MEMORY[0x245CFF560](completionCopy);
  if (v13)
  {
    (v13)[2](v13, v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  v39 = *MEMORY[0x277D85DE8];
  if (!reason)
  {
    goto LABEL_20;
  }

  v6 = BLJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentAccountNumber = self->_currentAccountNumber;
    mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
    activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
    ams_DSID = [activeStoreAccount ams_DSID];
    *buf = 134218499;
    reasonCopy = reason;
    v35 = 2113;
    v36 = currentAccountNumber;
    v37 = 2113;
    v38 = ams_DSID;
    _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_DEFAULT, "Account Changed. Resetting and refreshing... with reason %lu. Updating accountNumber from old:%{private}@ to new:%{private}@", buf, 0x20u);
  }

  mEMORY[0x277CF32F0]2 = [MEMORY[0x277CF32F0] sharedProvider];
  activeStoreAccount2 = [mEMORY[0x277CF32F0]2 activeStoreAccount];
  ams_DSID2 = [activeStoreAccount2 ams_DSID];
  v14 = self->_currentAccountNumber;
  self->_currentAccountNumber = ams_DSID2;

  v15 = reason - 101;
  if (reason - 101 > 1)
  {
    if (reason != 100 || !self->_currentAccountNumber)
    {
      goto LABEL_12;
    }

    dsidQueue = self->_dsidQueue;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_241D5E2AC;
    v26 = &unk_278D173A8;
    selfCopy = self;
    v18 = &v23;
  }

  else
  {
    v16 = BLJaliscoLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_DEFAULT, "Jalisco account stale .. removeAllObjects", buf, 2u);
    }

    dsidQueue = self->_dsidQueue;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = sub_241D5E268;
    v31 = &unk_278D173A8;
    selfCopy2 = self;
    v18 = &v28;
  }

  dispatch_sync(dsidQueue, v18);
LABEL_12:
  [(BLJaliscoDAAPClient *)self _resetPurchaseDAAPServersWithQueue:self->_serverWorkerQueue, v23, v24, v25, v26, selfCopy, v28, v29, v30, v31, selfCopy2];
  delegate = [(BLJaliscoDAAPClient *)self delegate];
  if (v15 > 1)
  {
    v21 = BLJaliscoLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_DEFAULT, "Triggering clientDetectedStoreChange", buf, 2u);
    }

    [delegate clientDetectedStoreChange:self];
  }

  else
  {
    [(BLJaliscoDAAPClient *)self resetPoliteTimers];
    v20 = BLJaliscoLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_DEFAULT, "Triggering clientDetectedStoreChangeAndAccountChange", buf, 2u);
    }

    [delegate clientDetectedStoreChangeAndAccountChange:self];
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
}

- (BLJaliscoDAAPClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BLImageManager)imageManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageManagerDelegate);

  return WeakRetained;
}

@end