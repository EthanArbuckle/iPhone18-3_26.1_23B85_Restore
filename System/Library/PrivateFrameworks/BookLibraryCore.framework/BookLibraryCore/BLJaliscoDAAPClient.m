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
- (id)_fetchItemsForNeedsImport:(BOOL)a3;
- (id)_fetchRequestForNotInStoreAccountIDs:(id)a3;
- (id)_newPurchaseDAAPServerWithDSID:(id)a3;
- (id)fetchAllBookletIDsWithParentStoreIDs:(id)a3;
- (id)fetchItemsForStoreIDs:(id)a3;
- (id)fetchRequestForAllStoreIDs:(id)a3;
- (id)fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:(id)a3;
- (id)fetchRequestForBookletItems:(id)a3;
- (id)fetchRequestForBuyParameters:(id)a3;
- (id)fetchRequestForHiddenItems;
- (id)fetchRequestForStoreID:(id)a3;
- (id)fetchRequestForStoreIDIncludingHidden:(id)a3;
- (id)fetchRequestForStoreIDs:(id)a3;
- (id)newManagedObjectContext;
- (id)newManagedObjectContextWithPrivateQueueConcurrency;
- (id)persistentStoreCoordinator;
- (void)_addPurchaseServerForCurrentUser;
- (void)_processFamilyCircleAdded:(id)a3 removed:(id)a4 unchanged:(id)a5 completion:(id)a6;
- (void)_resetPurchaseDAAPServersWithQueue:(id)a3;
- (void)_sendCompletionHandlersWithSuccess:(BOOL)a3 generation:(unint64_t)a4;
- (void)_startObservingNotifications;
- (void)_stopObservingNotifications;
- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4;
- (void)dealloc;
- (void)deleteItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)a3;
- (void)fetchItemsForBuyParameters:(id)a3 completion:(id)a4;
- (void)fetchItemsForStoreIDs:(id)a3 completion:(id)a4;
- (void)forceJaliscoArtworkUpdateWithCompletion:(id)a3;
- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)jaliscoArtworkTimebombed;
- (void)purchaseServerHandleClientExpired;
- (void)refreshSignInStatus;
- (void)refreshStoreWithCompletion:(id)a3;
- (void)resetPurchasedTokenForStoreIDs:(id)a3 completion:(id)a4;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)a3;
- (void)setIsGDPRPrivacyAcknowledgementRequired:(BOOL)a3;
- (void)setStoreAuthenticationRequired:(BOOL)a3;
- (void)storeIDsWithNonEmptyPurchasedToken:(id)a3 completion:(id)a4;
- (void)updateFamilyPolitely:(BOOL)a3 reason:(int64_t)a4 completion:(id)a5;
- (void)updatePolitely:(BOOL)a3 reason:(int64_t)a4 completion:(id)a5;
@end

@implementation BLJaliscoDAAPClient

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2 = [MEMORY[0x277CBEAC0] dictionary];
    [v4 setObject:v2 forKey:@"kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary"];

    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v3 registerDefaults:v4];
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

  v3 = [MEMORY[0x277CF32F0] sharedProvider];
  v4 = [v3 activeStoreAccount];
  v5 = [v4 ams_DSID];
  v6 = *(v2 + 1);
  *(v2 + 1) = v5;

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
    v24 = [v2 newManagedObjectContextWithPrivateQueueConcurrency];
    v25 = *(v2 + 17);
    *(v2 + 17) = v24;

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
  v3 = [v2 newManagedObjectContextWithPrivateQueueConcurrency];

  return v3;
}

- (void)_startObservingNotifications
{
  v3 = [MEMORY[0x277CF32F0] sharedProvider];
  [v3 addObserver:self accountTypes:1];
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
  v3 = [MEMORY[0x277CF32F0] sharedProvider];
  [v3 removeObserver:self accountTypes:1];
}

- (NSPersistentHistoryToken)currentJaliscoHistoryToken
{
  v2 = +[BLJaliscoServerSource sharedSource];
  v3 = [v2 currentJaliscoHistoryToken];

  return v3;
}

- (void)setIsGDPRPrivacyAcknowledgementRequired:(BOOL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_241D57164;
  v4[3] = &unk_278D17BC0;
  v4[4] = self;
  v5 = a3;
  os_unfair_lock_lock(&self->_isGDPRPrivacyAcknowledgementLock);
  sub_241D57164(v4);
  os_unfair_lock_unlock(&self->_isGDPRPrivacyAcknowledgementLock);
}

- (BOOL)isGDPRPrivacyAcknowledgementRequired
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = sub_241D5725C;
  v7 = &unk_278D17BE8;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&v2->_isGDPRPrivacyAcknowledgementLock);
  v6(v3);
  os_unfair_lock_unlock(&v2->_isGDPRPrivacyAcknowledgementLock);

  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
}

- (void)setStoreAuthenticationRequired:(BOOL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_241D57300;
  v4[3] = &unk_278D17BC0;
  v4[4] = self;
  v5 = a3;
  os_unfair_lock_lock(&self->_authenticationLock);
  sub_241D57300(v4);
  os_unfair_lock_unlock(&self->_authenticationLock);
}

- (BOOL)storeAuthenticationRequired
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = sub_241D573F8;
  v7 = &unk_278D17BE8;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&v2->_authenticationLock);
  v6(v3);
  os_unfair_lock_unlock(&v2->_authenticationLock);

  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
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

- (void)forceJaliscoArtworkUpdateWithCompletion:(id)a3
{
  v4 = a3;
  serverWorkerQueue = self->_serverWorkerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D5773C;
  v7[3] = &unk_278D17C10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serverWorkerQueue, v7);
}

- (void)fetchItemsForStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D579B8;
  v11[3] = &unk_278D17C60;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSManagedObjectContext *)moc performBlock:v11];
}

- (id)fetchItemsForStoreIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  moc = self->_moc;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D57C1C;
  v12[3] = &unk_278D17C88;
  v13 = v4;
  v14 = self;
  v7 = v5;
  v15 = v7;
  v8 = v4;
  [(NSManagedObjectContext *)moc performBlockAndWait:v12];
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)fetchAllBookletIDsWithParentStoreIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D57E6C;
  v11[3] = &unk_278D17C88;
  v12 = v4;
  v13 = self;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  [(NSManagedObjectContext *)moc performBlockAndWait:v11];
  v9 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v9;
}

- (void)fetchItemsForBuyParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D5808C;
  v11[3] = &unk_278D17C60;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSManagedObjectContext *)moc performBlock:v11];
}

- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  serverWorkerQueue = self->_serverWorkerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D582E0;
  block[3] = &unk_278D17C60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serverWorkerQueue, block);
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)a3
{
  v4 = a3;
  moc = self->_moc;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D58530;
  v7[3] = &unk_278D17C10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSManagedObjectContext *)moc performBlock:v7];
}

- (void)resetPurchasedTokenForStoreIDs:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BLJaliscoDAAPClient *)self newManagedObjectContext];
  v9 = [(BLJaliscoDAAPClient *)self fetchRequestForAllStoreIDs:v6];
  v28 = 0;
  v10 = [v8 executeFetchRequest:v9 error:&v28];
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

  if ([v8 hasChanges])
  {
    v23 = 0;
    LODWORD(v17) = [v8 save:&v23];
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

  v20 = MEMORY[0x245CFF560](v7);
  v21 = v20;
  if (v20)
  {
    (*(v20 + 16))(v20, v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)storeIDsWithNonEmptyPurchasedToken:(id)a3 completion:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(BLJaliscoDAAPClient *)self newManagedObjectContext];
  v9 = [(BLJaliscoDAAPClient *)self fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:v7];

  v25[0] = @"storeID";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v9 setPropertiesToFetch:v10];

  [v9 setResultType:2];
  v22 = 0;
  v11 = [v8 executeFetchRequest:v9 error:&v22];
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
  v15 = [v14 bu_arrayByRemovingNSNulls];
  v16 = v15;
  v17 = MEMORY[0x277CBEBF8];
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [MEMORY[0x277CBEB98] setWithArray:v18];

  v20 = MEMORY[0x245CFF560](v6);
  if (v20)
  {
    (v20)[2](v20, v19, v12 == 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updatePolitely:(BOOL)a3 reason:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  serverWorkerQueue = self->_serverWorkerQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D5909C;
  v11[3] = &unk_278D17DF0;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a4;
  v10 = v8;
  dispatch_async(serverWorkerQueue, v11);
}

- (id)_newPurchaseDAAPServerWithDSID:(id)a3
{
  v4 = a3;
  v5 = +[BLPrivacyInfo sharedPrivacyInfo];
  v6 = [[BLPurchaseDAAPServer alloc] initWithDSID:v4 delegate:self privacyInfo:v5];

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

- (void)refreshStoreWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[BLJaliscoServerSource sharedSource];
  [v4 refreshStoreWithCompletion:v3];
}

- (void)updateFamilyPolitely:(BOOL)a3 reason:(int64_t)a4 completion:(id)a5
{
  v6 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_241D5AE08;
  v21[3] = &unk_278D17E68;
  v21[4] = self;
  v9 = v8;
  v22 = v9;
  v23 = a4;
  v24 = v6;
  v10 = MEMORY[0x245CFF560](v21);
  v11 = BLJaliscoLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v6;
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

- (id)fetchRequestForStoreID:(id)a3
{
  v4 = a3;
  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v4];

  v7 = [(BLJaliscoDAAPClient *)self _dsids];
  v8 = [v5 fetchRequestForStoreIDs:v6 dsids:v7];

  return v8;
}

- (id)fetchRequestForStoreIDIncludingHidden:(id)a3
{
  v4 = a3;
  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v4];

  v7 = [(BLJaliscoDAAPClient *)self _dsids];
  v8 = [v5 fetchRequestForAllStoreIDs:v6 dsids:v7];

  return v8;
}

- (id)fetchRequestForStoreIDs:(id)a3
{
  v4 = a3;
  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [(BLJaliscoDAAPClient *)self _dsids];
  v7 = [v5 fetchRequestForStoreIDs:v4 dsids:v6];

  return v7;
}

- (id)fetchRequestForAllStoreIDs:(id)a3
{
  v4 = a3;
  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [(BLJaliscoDAAPClient *)self _dsids];
  v7 = [v5 fetchRequestForAllStoreIDs:v4 dsids:v6];

  return v7;
}

- (id)fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:(id)a3
{
  v4 = a3;
  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [(BLJaliscoDAAPClient *)self _dsids];
  v7 = [v5 fetchRequestForAllStoreIDsWithNonEmptyPurchasedToken:v4 dsids:v6];

  return v7;
}

- (id)fetchRequestForBuyParameters:(id)a3
{
  v3 = a3;
  v4 = +[BLJaliscoServerSource sharedSource];
  v5 = [v4 fetchRequestForBuyParameters:v3];

  return v5;
}

- (id)fetchRequestForBookletItems:(id)a3
{
  v3 = a3;
  v4 = +[BLJaliscoServerSource sharedSource];
  v5 = [v4 fetchRequestForBookletItemsForStoreIDs:v3];

  return v5;
}

- (id)fetchRequestForHiddenItems
{
  v3 = +[BLJaliscoServerSource sharedSource];
  v4 = [(BLJaliscoDAAPClient *)self _dsids];
  v5 = [v3 fetchRequestForHiddenItemsWithAccountIDs:v4];

  return v5;
}

- (id)newManagedObjectContext
{
  v2 = +[BLJaliscoServerSource sharedSource];
  v3 = [v2 newManagedObjectContext];

  return v3;
}

- (id)persistentStoreCoordinator
{
  v2 = +[BLJaliscoServerSource sharedSource];
  v3 = [v2 persistentStoreCoordinator];

  return v3;
}

- (BOOL)resetPoliteTimers
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = BLJaliscoLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 valueForKey:@"kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary"];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting polite timers ... clearing old dictionary:%@", &v10, 0xCu);
  }

  v5 = [MEMORY[0x277CBEAC0] dictionary];
  [v2 setObject:v5 forKey:@"kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary"];

  v6 = [v2 synchronize];
  if ((v6 & 1) == 0)
  {
    v7 = BLJaliscoLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "ERROR: Could not reset polite timer.", &v10, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)deleteItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = BLJaliscoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "deleteItemsWithStoreIDs storeIDs:%@", buf, 0xCu);
  }

  moc = self->_moc;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D5C220;
  v13[3] = &unk_278D17C60;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(NSManagedObjectContext *)moc performBlockAndWait:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_fetchItemsForNeedsImport:(BOOL)a3
{
  v5 = objc_opt_new();
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D5C664;
  v11[3] = &unk_278D17EB8;
  v13 = a3;
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
  v3 = [(BLJaliscoDAAPClient *)self dsidQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5C8DC;
  v6[3] = &unk_278D17BE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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
  v3 = [(BLJaliscoDAAPClient *)self dsidQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5CA60;
  v6[3] = &unk_278D175C0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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
  v3 = [(BLJaliscoDAAPClient *)self dsidQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5CC40;
  v6[3] = &unk_278D17BE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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
  v3 = [(BLJaliscoDAAPClient *)self dsidQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5CE3C;
  v6[3] = &unk_278D17BE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_fetchRequestForNotInStoreAccountIDs:(id)a3
{
  v3 = a3;
  v4 = +[BLJaliscoServerSource sharedSource];
  v5 = [v4 fetchRequestForNotInStoreAccountIDs:v3];

  return v5;
}

- (void)_processFamilyCircleAdded:(id)a3 removed:(id)a4 unchanged:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dsidQueue = self->_dsidQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D5D06C;
  block[3] = &unk_278D17F30;
  v20 = v10;
  v21 = v12;
  v22 = self;
  v23 = v11;
  v24 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  v18 = v10;
  dispatch_async(dsidQueue, block);
}

- (void)_sendCompletionHandlersWithSuccess:(BOOL)a3 generation:(unint64_t)a4
{
  serverWorkerQueue = self->_serverWorkerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D5D9EC;
  block[3] = &unk_278D17F80;
  block[4] = self;
  block[5] = a4;
  v6 = a3;
  dispatch_async(serverWorkerQueue, block);
}

- (void)_resetPurchaseDAAPServersWithQueue:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BLJaliscoDAAPClient *)self _allPurchaseDAAPServers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) resetWithQueue:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)workaround_18397698
{
  v2 = +[BLJaliscoServerSource sharedSource];
  v3 = [v2 workaround];

  return v3;
}

- (void)purchaseServerHandleClientExpired
{
  v3 = [(BLJaliscoDAAPClient *)self delegate];
  [v3 clientDetectedPurchaseServerClientExpired:self];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
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

  v13 = MEMORY[0x245CFF560](v3);
  if (v13)
  {
    (v13)[2](v13, v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_20;
  }

  v6 = BLJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentAccountNumber = self->_currentAccountNumber;
    v8 = [MEMORY[0x277CF32F0] sharedProvider];
    v9 = [v8 activeStoreAccount];
    v10 = [v9 ams_DSID];
    *buf = 134218499;
    v34 = a4;
    v35 = 2113;
    v36 = currentAccountNumber;
    v37 = 2113;
    v38 = v10;
    _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_DEFAULT, "Account Changed. Resetting and refreshing... with reason %lu. Updating accountNumber from old:%{private}@ to new:%{private}@", buf, 0x20u);
  }

  v11 = [MEMORY[0x277CF32F0] sharedProvider];
  v12 = [v11 activeStoreAccount];
  v13 = [v12 ams_DSID];
  v14 = self->_currentAccountNumber;
  self->_currentAccountNumber = v13;

  v15 = a4 - 101;
  if (a4 - 101 > 1)
  {
    if (a4 != 100 || !self->_currentAccountNumber)
    {
      goto LABEL_12;
    }

    dsidQueue = self->_dsidQueue;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_241D5E2AC;
    v26 = &unk_278D173A8;
    v27 = self;
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
    v32 = self;
    v18 = &v28;
  }

  dispatch_sync(dsidQueue, v18);
LABEL_12:
  [(BLJaliscoDAAPClient *)self _resetPurchaseDAAPServersWithQueue:self->_serverWorkerQueue, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32];
  v19 = [(BLJaliscoDAAPClient *)self delegate];
  if (v15 > 1)
  {
    v21 = BLJaliscoLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_DEFAULT, "Triggering clientDetectedStoreChange", buf, 2u);
    }

    [v19 clientDetectedStoreChange:self];
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

    [v19 clientDetectedStoreChangeAndAccountChange:self];
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