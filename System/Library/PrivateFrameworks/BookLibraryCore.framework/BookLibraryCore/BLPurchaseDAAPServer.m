@interface BLPurchaseDAAPServer
+ (id)sharedSession;
- (BLPurchaseDAAPServer)initWithDSID:(id)a3 delegate:(id)a4 privacyInfo:(id)a5;
- (BLPurchaseDAAPServerDelegate)delegate;
- (BOOL)_canMakeDAAPRequest;
- (BOOL)_isGDPRPrivacyAcknowledgementRequired;
- (BOOL)_saveInMoc:(id)a3 error:(id *)a4;
- (BOOL)_updatePersistentServerRevision:(id)a3 database:(id)a4 items:(id)a5 error:(id *)a6;
- (id)_dataForArtRequest:(BOOL)a3;
- (id)_dataForHideItemsRequestWithStoreIDs:(id)a3;
- (id)_dataForItemsRequestWithLocalVersion:(id)a3 serverVersion:(id)a4 tokenPairs:(id)a5;
- (id)_localServerDatabaseRevisionInMoc:(id)a3;
- (id)_newDefaultAuthenticateOptions;
- (id)_processResponse:(id)a3;
- (id)_updatePersistentDatabase:(id)a3 server:(id)a4 moc:(id)a5 error:(id *)a6;
- (id)_updatePersistentItems:(id)a3 moc:(id)a4 database:(id)a5 error:(id *)a6;
- (id)_updatePersistentServerRevision:(id)a3 moc:(id)a4 error:(id *)a5;
- (id)daapMetaDataFilterString;
- (id)daapQueryFilterString;
- (void)_configureWithReason:(int64_t)a3 completion:(id)a4;
- (void)_fetchDatabaseWithReason:(int64_t)a3 localServerRevision:(id)a4 latestVersion:(id)a5 completionHandler:(id)a6;
- (void)_fetchDatabaseWithRequest:(id)a3 completionHandler:(id)a4;
- (void)_fetchItemsWithLocalVersion:(id)a3 serverVersion:(id)a4 reason:(int64_t)a5 tokenPairs:(id)a6 completionHandler:(id)a7;
- (void)_loginWithReason:(int64_t)a3 completion:(id)a4;
- (void)_loginWithRequest:(id)a3 completion:(id)a4;
- (void)_pollLatestRevisionWithReason:(int64_t)a3 completion:(id)a4;
- (void)_preProcessResponse:(id)a3 error:(id)a4 responseBlock:(id)a5;
- (void)_sendHandlers:(id)a3 success:(BOOL)a4;
- (void)_shouldMakeRequest:(id)a3;
- (void)_updateVersionAfterHideRequest:(id)a3;
- (void)appRefreshesOnLaunchWithCompletionHandler:(id)a3;
- (void)contextDidSave:(id)a3;
- (void)databaseIDWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)fetchAllItemsPolitely:(BOOL)a3 reason:(int64_t)a4 queue:(id)a5 completion:(id)a6;
- (void)forcedRefreshFrequencyWithCompletionHandler:(id)a3;
- (void)handleClientExpired;
- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)pollingFrequencyWithCompletionHandler:(id)a3;
- (void)resetWithQueue:(id)a3;
- (void)serverParametersWithCompletionHandler:(id)a3;
- (void)setDAAPReconnectToTimeIntervalSinceNow:(double)a3;
- (void)setupWithReason:(int64_t)a3 queue:(id)a4 completion:(id)a5;
- (void)timeIntervalFromDAAPBagKey:(id)a3 completion:(id)a4;
- (void)updateItemImageURLsIgnoringCache:(BOOL)a3 completion:(id)a4;
- (void)valueForDAAPBagKey:(id)a3 completion:(id)a4;
@end

@implementation BLPurchaseDAAPServer

+ (id)sharedSession
{
  if (qword_280BC5868 != -1)
  {
    sub_241D770A8();
  }

  v3 = qword_280BC5870;

  return v3;
}

- (void)valueForDAAPBagKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D620D8;
  v10[3] = &unk_278D181E8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(BLPurchaseDAAPServer *)self serverParametersWithCompletionHandler:v10];
}

- (void)timeIntervalFromDAAPBagKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D6228C;
  v8[3] = &unk_278D18210;
  v9 = v6;
  v7 = v6;
  [(BLPurchaseDAAPServer *)self valueForDAAPBagKey:a3 completion:v8];
}

- (void)appRefreshesOnLaunchWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D623D4;
  v6[3] = &unk_278D18210;
  v7 = v4;
  v5 = v4;
  [(BLPurchaseDAAPServer *)self valueForDAAPBagKey:@"update-on-app-focus-enabled" completion:v6];
}

- (void)pollingFrequencyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D62524;
  v6[3] = &unk_278D18238;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BLPurchaseDAAPServer *)self timeIntervalFromDAAPBagKey:@"update-polling-frequency-seconds" completion:v6];
}

- (void)databaseIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D62604;
  v6[3] = &unk_278D18210;
  v7 = v4;
  v5 = v4;
  [(BLPurchaseDAAPServer *)self valueForDAAPBagKey:@"database-id" completion:v6];
}

- (void)forcedRefreshFrequencyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D62748;
  v6[3] = &unk_278D18260;
  v7 = v4;
  v5 = v4;
  [(BLPurchaseDAAPServer *)self timeIntervalFromDAAPBagKey:@"forced-refresh-frequency-minutes" completion:v6];
}

- (void)resetWithQueue:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D627D4;
  block[3] = &unk_278D18288;
  block[4] = self;
  dispatch_async(a3, block);
}

- (void)serverParametersWithCompletionHandler:(id)a3
{
  v4 = a3;
  bag = self->_bag;
  if (!bag)
  {
    v6 = [MEMORY[0x277CF3300] defaultBag];
    v7 = self->_bag;
    self->_bag = v6;

    bag = self->_bag;
  }

  v8 = [(BUBag *)bag purchaseDAAP];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D62920;
  v10[3] = &unk_278D182B0;
  v9 = v4;
  v11 = v9;
  [v8 valueWithCompletion:v10];
}

- (id)_dataForArtRequest:(BOOL)a3
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = +[BLJaliscoServerSource sharedSource];
  v38 = [v4 newManagedObjectContext];

  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [(BLPurchaseDAAPServer *)self dsid];
  v55[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
  v39 = [v5 itemsFetchRequestForDSIDs:v7];

  v54[0] = @"storeID";
  v54[1] = @"cloudID";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  [v39 setPropertiesToFetch:v8];

  v49 = 0;
  v9 = [v38 executeFetchRequest:v39 error:&v49];
  v35 = v9;
  v36 = v49;
  if (v9)
  {
    v40 = [MEMORY[0x277CBEB18] arrayWithArray:{v9, v9}];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v11)
    {
      v12 = *v46;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v15 = [v14 storeID];
          if (!a3)
          {
            v16 = +[BLJaliscoDAAPClient sharedClient];
            v17 = [v16 imageManagerDelegate];
            v18 = [v17 imageExistsForStoreID:v15];

            if (v18)
            {
              [v40 removeObject:v14];
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v11);
    }

    if ([v40 count])
    {
      v19 = [v40 count];
      v20 = [MEMORY[0x277CBEAA8] date];
      [v20 timeIntervalSince1970];
      v22 = v21;

      v23 = objc_alloc_init(BLDAAPBuffer);
      v24 = (16 * v19);
      [(BLDAAPBuffer *)v23 appendHeader:1634026049 size:(v24 + 32)];
      [(BLDAAPBuffer *)v23 appendUInt32:v22 withCode:1836282979];
      v25 = [(BLPurchaseDAAPServer *)self sessionID];
      -[BLDAAPBuffer appendUInt32:withCode:](v23, "appendUInt32:withCode:", [v25 unsignedIntValue], 1835821412);

      [(BLDAAPBuffer *)v23 appendHeader:1835623521 size:v24];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v26 = v40;
      v27 = [v26 countByEnumeratingWithState:&v41 objects:v52 count:16];
      if (v27)
      {
        v28 = *v42;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v42 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = [*(*(&v41 + 1) + 8 * j) cloudID];
            v31 = [v30 unsignedLongLongValue];

            [(BLDAAPBuffer *)v23 appendUInt64:v31 withCode:1835625572];
          }

          v27 = [v26 countByEnumeratingWithState:&v41 objects:v52 count:16];
        }

        while (v27);
      }

      v32 = [(BLDAAPBuffer *)v23 data];

      goto LABEL_25;
    }
  }

  v26 = BLJaliscoLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v51 = v36;
    _os_log_impl(&dword_241D1F000, v26, OS_LOG_TYPE_ERROR, "Art Request: Couldn't find items to refresh artwork with.  %@", buf, 0xCu);
  }

  v32 = 0;
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)updateItemImageURLsIgnoringCache:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = BLJaliscoLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(BLPurchaseDAAPServer *)self dsid];
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = v4;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEBUG, "Art Request: updateItemImageURLsIgnoringCache %d dsid:%@", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D6319C;
  v11[3] = &unk_278D18350;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v14 = v4;
  objc_copyWeak(&v13, &buf);
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&buf);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_dataForHideItemsRequestWithStoreIDs:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v31 = a3;
  v4 = +[BLJaliscoServerSource sharedSource];
  v32 = [v4 newManagedObjectContext];

  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [(BLPurchaseDAAPServer *)self dsid];
  v40[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v8 = [v5 fetchRequestForStoreIDs:v31 dsids:v7];

  v39 = @"cloudID";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  [v8 setPropertiesToFetch:v9];

  v37 = 0;
  v10 = [v32 executeFetchRequest:v8 error:&v37];
  v30 = v37;
  if ([v10 count])
  {
    v11 = +[BLJaliscoServerSource sharedSource];
    v12 = [v11 newManagedObjectContext];

    v13 = [(BLPurchaseDAAPServer *)self _localServerDatabaseRevisionInMoc:v12];

    v14 = [v10 count];
    v15 = [MEMORY[0x277CBEAA8] date];
    [v15 timeIntervalSince1970];
    v17 = v16;

    v18 = objc_alloc_init(BLDAAPBuffer);
    v19 = (16 * v14);
    [(BLDAAPBuffer *)v18 appendHeader:1835360882 size:(v19 + 65)];
    [(BLDAAPBuffer *)v18 appendUInt32:v17 withCode:1836282979];
    v20 = [(BLPurchaseDAAPServer *)self sessionID];
    -[BLDAAPBuffer appendUInt32:withCode:](v18, "appendUInt32:withCode:", [v20 unsignedIntValue], 1835821412);

    -[BLDAAPBuffer appendUInt32:withCode:](v18, "appendUInt32:withCode:", [v13 unsignedIntValue], 1836413810);
    [(BLDAAPBuffer *)v18 appendUInt8:2 withCode:1835625316];
    [(BLDAAPBuffer *)v18 appendHeader:1835623521 size:v19];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v10;
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v22)
    {
      v23 = *v34;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = [*(*(&v33 + 1) + 8 * i) cloudID];
          v26 = [v25 unsignedLongLongValue];

          [(BLDAAPBuffer *)v18 appendUInt64:v26 withCode:1835625572];
        }

        v22 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v22);
    }

    [(BLDAAPBuffer *)v18 appendUInt32:0x400000 withCode:1634028907];
    v27 = [(BLDAAPBuffer *)v18 data];
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)_updateVersionAfterHideRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKey:@"dmap.serverrevision"];
  v5 = +[BLJaliscoServerSource sharedSource];
  v6 = [v5 newManagedObjectContext];

  if (!v4)
  {
    v9 = BLJaliscoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "No server version returned in kDMAPEditCommandBulkResponseCode", buf, 2u);
    }

    goto LABEL_8;
  }

  v12 = 0;
  v7 = [(BLPurchaseDAAPServer *)self _updatePersistentServerRevision:v4 moc:v6 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = v8;
    v10 = BLJaliscoLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_ERROR, "Error saving server version after hiding.  %@", buf, 0xCu);
    }

LABEL_8:
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = BLJaliscoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(BLPurchaseDAAPServer *)self dsid];
    *buf = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "HideItems: dsid:%@ storeIDS:%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D6475C;
  v13[3] = &unk_278D183C8;
  v13[4] = self;
  v10 = v7;
  v15 = v10;
  v11 = v6;
  v14 = v11;
  objc_copyWeak(&v16, buf);
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v13];
  objc_destroyWeak(&v16);

  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setupWithReason:(int64_t)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D653E8;
  v12[3] = &unk_278D18490;
  v14 = v9;
  v15 = a3;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  v11 = v9;
  dispatch_async(v10, v12);
}

- (void)fetchAllItemsPolitely:(BOOL)a3 reason:(int64_t)a4 queue:(id)a5 completion:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = BLJaliscoLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(BLPurchaseDAAPServer *)self dsid];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_DEFAULT, "Fetching purchase history for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x2020000000;
  v24 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D65AD4;
  block[3] = &unk_278D18698;
  block[4] = self;
  v18 = v10;
  v21 = a3;
  v19 = v11;
  p_buf = &buf;
  v14 = v11;
  v15 = v10;
  dispatch_async(v15, block);

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x277D85DE8];
}

- (BLPurchaseDAAPServer)initWithDSID:(id)a3 delegate:(id)a4 privacyInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = BLPurchaseDAAPServer;
  v12 = [(BLPurchaseDAAPServer *)&v25 init];
  if (v12)
  {
    v13 = objc_alloc_init(BKPurchaseDAAPBackoff);
    backoff = v12->_backoff;
    v12->_backoff = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("DAAP_Server_Update_Queue", v15);
    updateItemsQueue = v12->_updateItemsQueue;
    v12->_updateItemsQueue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("DAAP_Server_Backoff_Queue", v18);
    backoffQueue = v12->_backoffQueue;
    v12->_backoffQueue = v19;

    objc_storeStrong(&v12->_dsid, a3);
    objc_storeWeak(&v12->_delegate, v10);
    objc_storeStrong(&v12->_privacyInfo, a5);
    v21 = [MEMORY[0x277CF32F0] sharedProvider];
    v22 = [v21 activeStoreAccount];
    v23 = [v22 ams_DSID];
    v12->_primaryAccount = [v23 isEqualToNumber:v9];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  backoff = self->_backoff;
  self->_backoff = 0;

  updateItemsQueue = self->_updateItemsQueue;
  if (updateItemsQueue)
  {
    self->_updateItemsQueue = 0;
  }

  backoffQueue = self->_backoffQueue;
  if (backoffQueue)
  {
    self->_backoffQueue = 0;
  }

  bag = self->_bag;
  self->_bag = 0;

  DAAPReconnectAt = self->_DAAPReconnectAt;
  self->_DAAPReconnectAt = 0;

  setupCompletionHandlers = self->_setupCompletionHandlers;
  self->_setupCompletionHandlers = 0;

  v10.receiver = self;
  v10.super_class = BLPurchaseDAAPServer;
  [(BLPurchaseDAAPServer *)&v10 dealloc];
}

- (void)contextDidSave:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CCAB88];
  v9 = v3;
  v5 = [v3 object];
  v6 = [v9 userInfo];
  v7 = [v4 notificationWithName:@"kJaliscoDAAPClientMOCDidSaveNotification" object:v5 userInfo:v6];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotification:v7];
}

- (BOOL)_saveInMoc:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277CBE1A8];
  [v7 addObserver:self selector:sel_contextDidSave_ name:*MEMORY[0x277CBE1A8] object:v6];

  LOBYTE(a4) = [v6 save:a4];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 removeObserver:self name:v8 object:v6];

  return a4;
}

- (id)_localServerDatabaseRevisionInMoc:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CF32F0] sharedProvider];
  v6 = [v5 isUserSignedInToiTunes];

  if (v6)
  {
    v7 = +[BLJaliscoServerSource sharedSource];
    v8 = [(BLPurchaseDAAPServer *)self dsid];
    v17 = 0;
    v9 = [v7 serverInfoForDSID:v8 fromManagedObjectContext:v4 error:&v17];
    v10 = v17;

    if (v9)
    {
      v11 = [v9 databaseVersion];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "unsignedLongLongValue")}];

      goto LABEL_10;
    }

    if (v10)
    {
      v13 = BLJaliscoLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [(BLPurchaseDAAPServer *)self dsid];
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_ERROR, "Error fetching local info for %@", buf, 0xCu);
      }

      [v10 logRecursively];
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:0];
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_updatePersistentServerRevision:(id)a3 database:(id)a4 items:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_241D68310;
  v25[4] = sub_241D68320;
  v26 = v10;
  updateItemsQueue = self->_updateItemsQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_241D68328;
  v18[3] = &unk_278D186C0;
  v19 = v12;
  v20 = self;
  v23 = &v27;
  v24 = a6;
  v21 = v11;
  v22 = v25;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_sync(updateItemsQueue, v18);
  LOBYTE(v11) = *(v28 + 24);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);
  return v11;
}

- (id)_updatePersistentServerRevision:(id)a3 moc:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(BLPurchaseDAAPServer *)self dsid];
  v11 = +[BLJaliscoServerSource sharedSource];
  v20 = 0;
  v12 = [v11 serverInfoForDSID:v10 fromManagedObjectContext:v9 error:&v20];
  v13 = v20;

  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 == 0;
  }

  if (v14)
  {
    if (!v12)
    {
      v15 = [[BLJaliscoServerInfo alloc] initIntoManagedObjectContext:v9];
      v16 = [v10 stringValue];
      [v15 setUserUID:v16];

      v12 = v15;
    }

    v17 = [v8 stringValue];
    [v12 setDatabaseVersion:v17];
  }

  else if (a5)
  {
    v18 = v13;
    v12 = 0;
    *a5 = v13;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_updatePersistentDatabase:(id)a3 server:(id)a4 moc:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[BLJaliscoServerSource sharedSource];
  v14 = [(BLPurchaseDAAPServer *)self dsid];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "itemID")}];
  v22 = 0;
  v16 = [v13 serverDatabaseForDSID:v14 withIdentifier:v15 fromManagedObjectContext:v12 error:&v22];
  v17 = v22;

  if (v16 || !v17)
  {
    if (!v16)
    {
      v16 = [[BLJaliscoServerDatabase alloc] initIntoManagedObjectContext:v12];
      [v16 setServer:v11];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "itemID")}];
      v20 = [v19 stringValue];
      [v16 setIdentifier:v20];
    }
  }

  else if (a6)
  {
    v18 = v17;
    v16 = 0;
    *a6 = v17;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_updatePersistentItems:(id)a3 moc:(id)a4 database:(id)a5 error:(id *)a6
{
  v143[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v116 = a4;
  v102 = v9;
  v103 = a5;
  if (!v9)
  {
    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ibooks.jalisco.updating" code:400 userInfo:0];
    }

    v96 = BLJaliscoLog();
    v104 = v96;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v96, OS_LOG_TYPE_ERROR, "NO UPDATE - daap items missing", buf, 2u);
    }

    v95 = 0;
    goto LABEL_76;
  }

  v104 = [v9 objectForKey:@"dmap.listing"];
  v100 = [v9 objectForKey:@"dmap.deletedidlisting"];
  v10 = +[BLJaliscoServerSource sharedSource];
  v11 = [(BLPurchaseDAAPServer *)self dsid];
  v143[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:1];
  v13 = [v10 allItemsFetchRequestForDSIDs:v12];
  v136 = 0;
  v109 = [v116 executeFetchRequest:v13 error:&v136];
  v101 = v136;

  if (!v109)
  {
    if (a6)
    {
      v97 = v101;
      v95 = 0;
      *a6 = v101;
    }

    else
    {
      v95 = 0;
    }

    goto LABEL_75;
  }

  v105 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v104, "count")}];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v104;
  v108 = [obj countByEnumeratingWithState:&v132 objects:v142 count:16];
  if (!v108)
  {
    goto LABEL_55;
  }

  v107 = *v133;
  do
  {
    for (i = 0; i != v108; ++i)
    {
      if (*v133 != v107)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v132 + 1) + 8 * i);
      v15 = [v14 objectForKey:@"com.apple.itunes.itms-songid"];
      v16 = MEMORY[0x277CCAC30];
      v110 = v15;
      v17 = [v15 stringValue];
      v114 = [v16 predicateWithFormat:@"storeID = %@", v17];

      v18 = [v109 filteredArrayUsingPredicate:v114];
      v19 = [v18 lastObject];

      v20 = v19;
      if (!v19)
      {
        v19 = [[BLJaliscoServerItem alloc] initIntoManagedObjectContext:v116];
        v30 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-token"];
        [v19 setArtworkTokenCode:v30];

        v24 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-url"];
        [v19 setArtworkURLString:v24];
        goto LABEL_17;
      }

      v21 = [v19 artworkTokenCode];
      if (v21)
      {
        v22 = [v19 artworkURLString];
        v23 = v22 == 0;

        if (!v23)
        {
          v24 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-token"];
          v25 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-url"];
          if (v25)
          {
            if (v24)
            {
              v26 = [v19 artworkTokenCode];
              v27 = [v26 isEqualToString:v24];

              if ((v27 & 1) == 0)
              {
                v28 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-token"];
                [v19 setArtworkTokenCode:v28];

                v29 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-url"];
                [v19 setArtworkURLString:v29];
              }
            }
          }

LABEL_17:
        }

        v20 = v19;
      }

      v111 = [v14 objectForKey:@"com.apple.itunes.extended-media-kind"];
      v119 = v20;
      v31 = [v111 unsignedIntegerValue];
      if (v31 == 8 && ![(BLPurchaseDAAPServer *)self isPrimaryAccount])
      {
        [v20 bl_setNumberIfDifferent:@"needsImport" value:MEMORY[0x277CBEC38]];
      }

      v32 = [MEMORY[0x277CCABB0] numberWithBool:v31 == 8];
      [v20 bl_setNumberIfDifferent:@"isAudiobook" value:v32];

      v33 = [v14 objectForKey:@"com.apple.itunes.itms-songid"];
      v34 = [v33 stringValue];
      [v20 bl_setStringIfDifferent:@"storeID" value:v34];

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "itemID")}];
      v36 = [v35 stringValue];
      [v20 bl_setStringIfDifferent:@"cloudID" value:v36];

      v37 = [v14 objectForKey:@"com.apple.itunes.display-publication-version"];
      [v20 bl_setStringIfDifferent:@"displayVersion" value:v37];

      v38 = [v14 objectForKey:@"daap.songdisabled"];
      [v20 bl_setNumberIfDifferent:@"isDisabled" value:v38];

      v39 = [v14 objectForKey:@"daap.songcontentrating"];
      [v20 bl_setNumberIfDifferent:@"isExplicit" value:v39];

      v40 = [v14 objectForKey:@"dmap.itemhidden"];
      [v20 bl_setNumberIfDifferent:@"isHidden" value:v40];

      v41 = [v14 objectForKey:@"com.apple.itunes.cloud-purchased-token"];
      v42 = [v41 stringValue];
      [v20 bl_setStringIfDifferent:@"purchasedTokenCode" value:v42];

      v43 = [v14 objectForKey:@"dmap.longitemid"];
      [v20 bl_setNumberIfDifferent:@"purchaseHistoryID" value:v43];

      v44 = [v14 objectForKey:@"daap.songartist"];
      [v20 bl_setStringIfDifferent:@"artist" value:v44];

      v45 = [v14 objectForKey:@"daap.sortartist"];
      [v20 bl_setStringIfDifferent:@"sortedAuthor" value:v45];

      v46 = [v14 objectForKey:@"daap.songgenre"];
      [v20 bl_setStringIfDifferent:@"genre" value:v46];

      v47 = [v14 name];
      [v20 bl_setStringIfDifferent:@"title" value:v47];

      v48 = [v14 objectForKey:@"daap.sortname"];
      [v20 bl_setStringIfDifferent:@"sortedTitle" value:v48];

      v49 = [v14 objectForKey:@"daap.songdatepurchased"];
      [v20 bl_setDateIfDifferent:@"purchasedAt" value:v49];

      v50 = [v14 objectForKey:@"com.apple.itunes.item-flavor-listing"];
      v117 = [v50 lastObject];

      v51 = [v117 objectForKey:@"com.apple.itunes.item-redownload-param-2"];
      [v20 bl_setStringIfDifferent:@"storeDownloadParameters" value:v51];

      v52 = [v117 objectForKey:@"daap.songformat"];
      [v20 bl_setStringIfDifferent:@"fileExtension" value:v52];

      v53 = [v14 objectForKey:@"com.apple.itunes.preorder-expected-date"];
      [v20 bl_setDateIfDifferent:@"expectedDate" value:v53];

      v54 = [v14 objectForKey:@"com.apple.itunes.chapter-metadata-url"];
      [v20 bl_setStringIfDifferent:@"chapterMetadataURLString" value:v54];

      v55 = [v14 objectForKey:@"com.apple.itunes.store.hls-playback-url"];
      [v20 bl_setStringIfDifferent:@"hlsPlaylistURLString" value:v55];

      v56 = [(BLPurchaseDAAPServer *)self dsid];
      [v20 bl_setNumberIfDifferent:@"storeAccountID" value:v56];

      v112 = [v14 objectForKey:@"booklets"];
      v57 = [v20 booklets];
      v58 = [v57 allObjects];

      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v118 = v112;
      v59 = [v118 countByEnumeratingWithState:&v128 objects:v141 count:16];
      if (v59)
      {
        v60 = *v129;
        do
        {
          for (j = 0; j != v59; ++j)
          {
            if (*v129 != v60)
            {
              objc_enumerationMutation(v118);
            }

            v62 = *(*(&v128 + 1) + 8 * j);
            v63 = [v62 objectForKey:@"com.apple.itunes.store.booklet-item-store-id"];
            v64 = [v63 stringValue];

            v65 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID == %@", v64];
            v66 = [v58 filteredArrayUsingPredicate:v65];
            v67 = [v66 lastObject];

            if (!v67)
            {
              v67 = [[BLJaliscoServerBookletItem alloc] initIntoManagedObjectContext:v116];
            }

            [v67 bl_setStringIfDifferent:@"storeID" value:v64];
            v68 = [v62 objectForKey:@"com.apple.itunes.store.booklet-item-name"];
            [v67 bl_setStringIfDifferent:@"title" value:v68];

            v69 = [v62 objectForKey:@"com.apple.itunes.store.booklet-item-redownload-param"];
            [v67 bl_setStringIfDifferent:@"storeDownloadParameters" value:v69];

            v70 = [v62 objectForKey:@"com.apple.itunes.store.booklet-item-size"];
            [v67 bl_setNumberIfDifferent:@"size" value:v70];

            [v67 setParentItem:v119];
          }

          v59 = [v118 countByEnumeratingWithState:&v128 objects:v141 count:16];
        }

        while (v59);
      }

      v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v72 = [(BLPurchaseDAAPServer *)self additionalAudiobookInfoKeys];
      v73 = [v72 countByEnumeratingWithState:&v124 objects:v140 count:16];
      if (v73)
      {
        v74 = *v125;
        do
        {
          for (k = 0; k != v73; ++k)
          {
            if (*v125 != v74)
            {
              objc_enumerationMutation(v72);
            }

            v76 = *(*(&v124 + 1) + 8 * k);
            v77 = [v14 objectForKey:v76];
            if ([v76 isEqualToString:@"daap.songtime"])
            {
              v78 = [v117 objectForKey:@"daap.songtime"];

              v77 = v78;
            }

            if (v77)
            {
              [v71 setObject:v77 forKey:v76];
            }
          }

          v73 = [v72 countByEnumeratingWithState:&v124 objects:v140 count:16];
        }

        while (v73);
      }

      if ([v71 count])
      {
        v79 = [v71 copy];
        [v119 bl_setDictionaryIfDifferent:@"additionalAudiobookInfo" value:v79];
      }

      v80 = BLJaliscoLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v139 = v119;
        _os_log_impl(&dword_241D1F000, v80, OS_LOG_TYPE_DEBUG, "[BLPurchaseDAAPServer] Setup item:%@", buf, 0xCu);
      }

      v81 = [v119 purchasedTokenCode];
      if ([v81 length])
      {
        v82 = [v119 storeID];
        v83 = [v82 length] == 0;

        if (!v83)
        {
          [v105 addObject:v119];
          goto LABEL_53;
        }
      }

      else
      {
      }

      v84 = BLJaliscoLog();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v139 = v119;
        _os_log_impl(&dword_241D1F000, v84, OS_LOG_TYPE_ERROR, "ERROR: No token/adam id for %@", buf, 0xCu);
      }

LABEL_53:
    }

    v108 = [obj countByEnumeratingWithState:&v132 objects:v142 count:16];
  }

  while (v108);
LABEL_55:

  [v103 addItems:v105];
  v85 = BLJaliscoLog();
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v139 = v105;
    _os_log_impl(&dword_241D1F000, v85, OS_LOG_TYPE_DEFAULT, "[BLPurchaseDAAPServer] Adding items to db:%@ ", buf, 0xCu);
  }

  if ([v100 count])
  {
    v86 = MEMORY[0x277CCAC30];
    v87 = [v100 valueForKey:@"stringValue"];
    v88 = [v86 predicateWithFormat:@"cloudID IN %@", v87];

    [v109 filteredArrayUsingPredicate:v88];
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v89 = v121 = 0u;
    v90 = [v89 countByEnumeratingWithState:&v120 objects:v137 count:16];
    if (v90)
    {
      v91 = *v121;
      do
      {
        for (m = 0; m != v90; ++m)
        {
          if (*v121 != v91)
          {
            objc_enumerationMutation(v89);
          }

          v93 = *(*(&v120 + 1) + 8 * m);
          v94 = [v93 managedObjectContext];
          [v94 deleteObject:v93];
        }

        v90 = [v89 countByEnumeratingWithState:&v120 objects:v137 count:16];
      }

      while (v90);
    }
  }

  v95 = [v103 items];

LABEL_75:
LABEL_76:

  v98 = *MEMORY[0x277D85DE8];

  return v95;
}

- (void)_sendHandlers:(id)a3 success:(BOOL)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isGDPRPrivacyAcknowledgementRequired
{
  v2 = [(BLPurchaseDAAPServer *)self privacyInfo];
  if (!v2)
  {
    v3 = BLJaliscoLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_ERROR, "Privacy info is nil.", buf, 2u);
    }
  }

  v4 = [v2 isGDPRPrivacyAcknowledgementRequired];
  if (v4)
  {
    v5 = BLJaliscoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "Ignoring request due to user has not accepted Books GDPR.", v7, 2u);
    }
  }

  return v4;
}

- (void)_shouldMakeRequest:(id)a3
{
  v4 = a3;
  backoffQueue = self->_backoffQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D6A14C;
  v7[3] = &unk_278D186E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(backoffQueue, v7);
}

- (void)_preProcessResponse:(id)a3 error:(id)a4 responseBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  backoffQueue = self->_backoffQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D6A438;
  v15[3] = &unk_278D18710;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(backoffQueue, v15);
}

- (id)_newDefaultAuthenticateOptions
{
  v2 = objc_opt_new();
  [v2 setAuthenticationType:1];
  [v2 setDebugReason:@"Books jalisco purchase"];
  return v2;
}

- (id)_processResponse:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLPurchaseDAAPParser decodeData:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"dmap.status"];
    if ([v6 unsignedIntValue] == 200)
    {
      v7 = v5;
    }

    else
    {
      if ([v6 unsignedIntValue] == 952)
      {
        v8 = [v5 objectForKey:@"com.apple.itunes.reconnect-interval"];
        [v8 doubleValue];
        [(BLPurchaseDAAPServer *)self setDAAPReconnectToTimeIntervalSinceNow:?];
        v9 = BLJaliscoLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = v8;
          _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_INFO, "DAAP reconnect %@", &v13, 0xCu);
        }
      }

      else
      {
        v10 = BLJaliscoLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 138412290;
          v14 = v5;
          _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_ERROR, "Unrecognized DAAP Response: %@", &v13, 0xCu);
        }
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)handleClientExpired
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(dword_27EC71FE8, &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    self->_clientExpired = 1;
    v3 = [(BLPurchaseDAAPServer *)self delegate];
    [v3 purchaseServerHandleClientExpired];
  }
}

- (BOOL)_canMakeDAAPRequest
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_clientExpired)
  {
    DAAPReconnectAt = self->_DAAPReconnectAt;
    if (DAAPReconnectAt)
    {
      v4 = [MEMORY[0x277CBEAA8] date];
      v5 = [(NSDate *)DAAPReconnectAt compare:v4];

      if (v5 != -1)
      {
        v6 = BLJaliscoLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = self->_DAAPReconnectAt;
          v11 = 138412290;
          v12 = v7;
          _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_DEBUG, "Throttling request until %@", &v11, 0xCu);
        }

        goto LABEL_7;
      }

      v9 = self->_DAAPReconnectAt;
      self->_DAAPReconnectAt = 0;
    }

    result = 1;
    goto LABEL_10;
  }

LABEL_7:
  result = 0;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setDAAPReconnectToTimeIntervalSinceNow:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:a3];
  DAAPReconnectAt = self->_DAAPReconnectAt;
  self->_DAAPReconnectAt = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_configureWithReason:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D6B200;
  v8[3] = &unk_278D18788;
  v9 = @"Server-info:";
  v10 = self;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v8];
}

- (void)_loginWithReason:(int64_t)a3 completion:(id)a4
{
  v9 = a4;
  v6 = [BLDAAPLoginRequest alloc];
  v7 = [(BLPurchaseDAAPServer *)self dsid];
  v8 = [(BLDAAPLoginRequest *)v6 initWithDSID:v7 reason:a3];

  [(BLPurchaseDAAPServer *)self _loginWithRequest:v8 completion:v9];
}

- (void)_loginWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D6BA3C;
  v10[3] = &unk_278D187B0;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v10];
}

- (void)_pollLatestRevisionWithReason:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D6C0A8;
  v8[3] = &unk_278D18828;
  v8[4] = self;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v8];
}

- (void)_fetchDatabaseWithReason:(int64_t)a3 localServerRevision:(id)a4 latestVersion:(id)a5 completionHandler:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [BLDAAPDatabasesRequest alloc];
  v14 = [(BLPurchaseDAAPServer *)self dsid];
  v15 = [(BLPurchaseDAAPServer *)self sessionID];
  v16 = [(BLDAAPDatabasesRequest *)v13 initWithDSID:v14 reason:a3 sessionID:v15 revisionNumber:v11 delta:v10];

  if (v16)
  {
    [(BLPurchaseDAAPServer *)self _fetchDatabaseWithRequest:v16 completionHandler:v12];
  }

  else
  {
    v17 = BLJaliscoLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(BLPurchaseDAAPServer *)self dsid];
      v19 = [(BLPurchaseDAAPServer *)self sessionID];
      v23 = 138413314;
      v24 = v18;
      v25 = 2048;
      v26 = a3;
      v27 = 2114;
      v28 = v19;
      v29 = 2114;
      v30 = v11;
      v31 = 2114;
      v32 = v10;
      _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "DAAP DB Fetch: Missing a parameter type. dsid:(%@) reason:(%ld) sessionID: %{public}@ revisionNumber:%{public}@ delta:%{public}@", &v23, 0x34u);
    }

    v20 = MEMORY[0x245CFF560](v12);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 16))(v20, 0, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_fetchDatabaseWithRequest:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_241D6CC50;
    v13[3] = &unk_278D188A0;
    v14 = @"DB Fetch:";
    v17 = v7;
    v15 = v6;
    v16 = self;
    [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v13];

    v9 = v14;
  }

  else
  {
    v10 = BLJaliscoLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = @"DB Fetch:";
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_ERROR, "%@ No server revision or databaseRequest to fetch databases from.", buf, 0xCu);
    }

    v11 = MEMORY[0x245CFF560](v8);
    v9 = v11;
    if (v11)
    {
      (*(v11 + 16))(v11, 0, 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)daapQueryFilterString
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  if ([(BLPurchaseDAAPServer *)self isPrimaryAccount])
  {
    [v3 addObject:&unk_2853F21B8];
  }

  [v3 addObject:&unk_2853F21D0];
  v4 = [@"com.apple.itunes.extended-media-kind" stringByReplacingOccurrencesOfString:@"-" withString:@"\\-"];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = MEMORY[0x277CCACA8];
        v11 = [*(*(&v17 + 1) + 8 * i) intValue];
        v12 = [v10 stringWithFormat:@"'%@:%d'", v4, v11, v17];
        [v5 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = [v5 componentsJoinedByString:{@", "}];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)daapMetaDataFilterString
{
  v3 = [(BLPurchaseDAAPServer *)self additionalAudiobookInfoKeys];
  v4 = [&unk_2853F21F8 arrayByAddingObjectsFromArray:v3];

  v5 = [(BLPurchaseDAAPServer *)self bookletKeys];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  v7 = [v6 componentsJoinedByString:{@", "}];

  return v7;
}

- (id)_dataForItemsRequestWithLocalVersion:(id)a3 serverVersion:(id)a4 tokenPairs:(id)a5
{
  v7 = a3;
  v8 = a4;
  v14 = v7;
  v15 = a5;
  v9 = v15;
  v10 = v7;
  v11 = v8;
  v12 = ICDAAPUtilitiesCreateDataForContainer();

  return v12;
}

- (void)_fetchItemsWithLocalVersion:(id)a3 serverVersion:(id)a4 reason:(int64_t)a5 tokenPairs:(id)a6 completionHandler:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = BLJaliscoLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(BLPurchaseDAAPServer *)self dsid];
    *buf = 138412802;
    v33 = v17;
    v34 = 2112;
    v35 = v13;
    v36 = 2048;
    v37 = a5;
    _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_DEFAULT, "[BLPurchaseDAAPServer] _fetchItemsWithLocalVersion dsid:%@ serverVersion:%@ reason:%ld", buf, 0x20u);
  }

  if (!v12 || ([(BLPurchaseDAAPServer *)self bagDatabaseID], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
  {
    v21 = BLJaliscoLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_ERROR, "No database to fetch items with.", buf, 2u);
    }

    v22 = MEMORY[0x245CFF560](v15);
    v20 = v22;
    if (v22)
    {
      (*(v22 + 16))(v22, 0, 0);
    }
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_241D6DEBC;
    v24[3] = &unk_278D189B8;
    v25 = @"Fetch items";
    v30 = v15;
    v26 = self;
    v27 = v12;
    v28 = v13;
    v29 = v14;
    v31 = a5;
    [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v24];

    v20 = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BLPurchaseDAAPServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end