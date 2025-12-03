@interface BLPurchaseDAAPServer
+ (id)sharedSession;
- (BLPurchaseDAAPServer)initWithDSID:(id)d delegate:(id)delegate privacyInfo:(id)info;
- (BLPurchaseDAAPServerDelegate)delegate;
- (BOOL)_canMakeDAAPRequest;
- (BOOL)_isGDPRPrivacyAcknowledgementRequired;
- (BOOL)_saveInMoc:(id)moc error:(id *)error;
- (BOOL)_updatePersistentServerRevision:(id)revision database:(id)database items:(id)items error:(id *)error;
- (id)_dataForArtRequest:(BOOL)request;
- (id)_dataForHideItemsRequestWithStoreIDs:(id)ds;
- (id)_dataForItemsRequestWithLocalVersion:(id)version serverVersion:(id)serverVersion tokenPairs:(id)pairs;
- (id)_localServerDatabaseRevisionInMoc:(id)moc;
- (id)_newDefaultAuthenticateOptions;
- (id)_processResponse:(id)response;
- (id)_updatePersistentDatabase:(id)database server:(id)server moc:(id)moc error:(id *)error;
- (id)_updatePersistentItems:(id)items moc:(id)moc database:(id)database error:(id *)error;
- (id)_updatePersistentServerRevision:(id)revision moc:(id)moc error:(id *)error;
- (id)daapMetaDataFilterString;
- (id)daapQueryFilterString;
- (void)_configureWithReason:(int64_t)reason completion:(id)completion;
- (void)_fetchDatabaseWithReason:(int64_t)reason localServerRevision:(id)revision latestVersion:(id)version completionHandler:(id)handler;
- (void)_fetchDatabaseWithRequest:(id)request completionHandler:(id)handler;
- (void)_fetchItemsWithLocalVersion:(id)version serverVersion:(id)serverVersion reason:(int64_t)reason tokenPairs:(id)pairs completionHandler:(id)handler;
- (void)_loginWithReason:(int64_t)reason completion:(id)completion;
- (void)_loginWithRequest:(id)request completion:(id)completion;
- (void)_pollLatestRevisionWithReason:(int64_t)reason completion:(id)completion;
- (void)_preProcessResponse:(id)response error:(id)error responseBlock:(id)block;
- (void)_sendHandlers:(id)handlers success:(BOOL)success;
- (void)_shouldMakeRequest:(id)request;
- (void)_updateVersionAfterHideRequest:(id)request;
- (void)appRefreshesOnLaunchWithCompletionHandler:(id)handler;
- (void)contextDidSave:(id)save;
- (void)databaseIDWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)fetchAllItemsPolitely:(BOOL)politely reason:(int64_t)reason queue:(id)queue completion:(id)completion;
- (void)forcedRefreshFrequencyWithCompletionHandler:(id)handler;
- (void)handleClientExpired;
- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)pollingFrequencyWithCompletionHandler:(id)handler;
- (void)resetWithQueue:(id)queue;
- (void)serverParametersWithCompletionHandler:(id)handler;
- (void)setDAAPReconnectToTimeIntervalSinceNow:(double)now;
- (void)setupWithReason:(int64_t)reason queue:(id)queue completion:(id)completion;
- (void)timeIntervalFromDAAPBagKey:(id)key completion:(id)completion;
- (void)updateItemImageURLsIgnoringCache:(BOOL)cache completion:(id)completion;
- (void)valueForDAAPBagKey:(id)key completion:(id)completion;
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

- (void)valueForDAAPBagKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D620D8;
  v10[3] = &unk_278D181E8;
  v11 = keyCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = keyCopy;
  [(BLPurchaseDAAPServer *)self serverParametersWithCompletionHandler:v10];
}

- (void)timeIntervalFromDAAPBagKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D6228C;
  v8[3] = &unk_278D18210;
  v9 = completionCopy;
  v7 = completionCopy;
  [(BLPurchaseDAAPServer *)self valueForDAAPBagKey:key completion:v8];
}

- (void)appRefreshesOnLaunchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D623D4;
  v6[3] = &unk_278D18210;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(BLPurchaseDAAPServer *)self valueForDAAPBagKey:@"update-on-app-focus-enabled" completion:v6];
}

- (void)pollingFrequencyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D62524;
  v6[3] = &unk_278D18238;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(BLPurchaseDAAPServer *)self timeIntervalFromDAAPBagKey:@"update-polling-frequency-seconds" completion:v6];
}

- (void)databaseIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D62604;
  v6[3] = &unk_278D18210;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(BLPurchaseDAAPServer *)self valueForDAAPBagKey:@"database-id" completion:v6];
}

- (void)forcedRefreshFrequencyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D62748;
  v6[3] = &unk_278D18260;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(BLPurchaseDAAPServer *)self timeIntervalFromDAAPBagKey:@"forced-refresh-frequency-minutes" completion:v6];
}

- (void)resetWithQueue:(id)queue
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D627D4;
  block[3] = &unk_278D18288;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)serverParametersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  bag = self->_bag;
  if (!bag)
  {
    defaultBag = [MEMORY[0x277CF3300] defaultBag];
    v7 = self->_bag;
    self->_bag = defaultBag;

    bag = self->_bag;
  }

  purchaseDAAP = [(BUBag *)bag purchaseDAAP];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D62920;
  v10[3] = &unk_278D182B0;
  v9 = handlerCopy;
  v11 = v9;
  [purchaseDAAP valueWithCompletion:v10];
}

- (id)_dataForArtRequest:(BOOL)request
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = +[BLJaliscoServerSource sharedSource];
  newManagedObjectContext = [v4 newManagedObjectContext];

  v5 = +[BLJaliscoServerSource sharedSource];
  dsid = [(BLPurchaseDAAPServer *)self dsid];
  v55[0] = dsid;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
  v39 = [v5 itemsFetchRequestForDSIDs:v7];

  v54[0] = @"storeID";
  v54[1] = @"cloudID";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  [v39 setPropertiesToFetch:v8];

  v49 = 0;
  v9 = [newManagedObjectContext executeFetchRequest:v39 error:&v49];
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
          storeID = [v14 storeID];
          if (!request)
          {
            v16 = +[BLJaliscoDAAPClient sharedClient];
            imageManagerDelegate = [v16 imageManagerDelegate];
            v18 = [imageManagerDelegate imageExistsForStoreID:storeID];

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
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v22 = v21;

      v23 = objc_alloc_init(BLDAAPBuffer);
      v24 = (16 * v19);
      [(BLDAAPBuffer *)v23 appendHeader:1634026049 size:(v24 + 32)];
      [(BLDAAPBuffer *)v23 appendUInt32:v22 withCode:1836282979];
      sessionID = [(BLPurchaseDAAPServer *)self sessionID];
      -[BLDAAPBuffer appendUInt32:withCode:](v23, "appendUInt32:withCode:", [sessionID unsignedIntValue], 1835821412);

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

            cloudID = [*(*(&v41 + 1) + 8 * j) cloudID];
            unsignedLongLongValue = [cloudID unsignedLongLongValue];

            [(BLDAAPBuffer *)v23 appendUInt64:unsignedLongLongValue withCode:1835625572];
          }

          v27 = [v26 countByEnumeratingWithState:&v41 objects:v52 count:16];
        }

        while (v27);
      }

      data = [(BLDAAPBuffer *)v23 data];

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

  data = 0;
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];

  return data;
}

- (void)updateItemImageURLsIgnoringCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = BLJaliscoLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    dsid = [(BLPurchaseDAAPServer *)self dsid];
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = cacheCopy;
    v16 = 2112;
    v17 = dsid;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEBUG, "Art Request: updateItemImageURLsIgnoringCache %d dsid:%@", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D6319C;
  v11[3] = &unk_278D18350;
  v11[4] = self;
  v9 = completionCopy;
  v12 = v9;
  v14 = cacheCopy;
  objc_copyWeak(&v13, &buf);
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&buf);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_dataForHideItemsRequestWithStoreIDs:(id)ds
{
  v40[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v4 = +[BLJaliscoServerSource sharedSource];
  newManagedObjectContext = [v4 newManagedObjectContext];

  v5 = +[BLJaliscoServerSource sharedSource];
  dsid = [(BLPurchaseDAAPServer *)self dsid];
  v40[0] = dsid;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v8 = [v5 fetchRequestForStoreIDs:dsCopy dsids:v7];

  v39 = @"cloudID";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  [v8 setPropertiesToFetch:v9];

  v37 = 0;
  v10 = [newManagedObjectContext executeFetchRequest:v8 error:&v37];
  v30 = v37;
  if ([v10 count])
  {
    v11 = +[BLJaliscoServerSource sharedSource];
    newManagedObjectContext2 = [v11 newManagedObjectContext];

    v13 = [(BLPurchaseDAAPServer *)self _localServerDatabaseRevisionInMoc:newManagedObjectContext2];

    v14 = [v10 count];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v17 = v16;

    v18 = objc_alloc_init(BLDAAPBuffer);
    v19 = (16 * v14);
    [(BLDAAPBuffer *)v18 appendHeader:1835360882 size:(v19 + 65)];
    [(BLDAAPBuffer *)v18 appendUInt32:v17 withCode:1836282979];
    sessionID = [(BLPurchaseDAAPServer *)self sessionID];
    -[BLDAAPBuffer appendUInt32:withCode:](v18, "appendUInt32:withCode:", [sessionID unsignedIntValue], 1835821412);

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

          cloudID = [*(*(&v33 + 1) + 8 * i) cloudID];
          unsignedLongLongValue = [cloudID unsignedLongLongValue];

          [(BLDAAPBuffer *)v18 appendUInt64:unsignedLongLongValue withCode:1835625572];
        }

        v22 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v22);
    }

    [(BLDAAPBuffer *)v18 appendUInt32:0x400000 withCode:1634028907];
    data = [(BLDAAPBuffer *)v18 data];
  }

  else
  {
    data = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return data;
}

- (void)_updateVersionAfterHideRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [request objectForKey:@"dmap.serverrevision"];
  v5 = +[BLJaliscoServerSource sharedSource];
  newManagedObjectContext = [v5 newManagedObjectContext];

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
  v7 = [(BLPurchaseDAAPServer *)self _updatePersistentServerRevision:v4 moc:newManagedObjectContext error:&v12];
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

- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = BLJaliscoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    dsid = [(BLPurchaseDAAPServer *)self dsid];
    *buf = 138412546;
    v18 = dsid;
    v19 = 2112;
    v20 = dsCopy;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "HideItems: dsid:%@ storeIDS:%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D6475C;
  v13[3] = &unk_278D183C8;
  v13[4] = self;
  v10 = completionCopy;
  v15 = v10;
  v11 = dsCopy;
  v14 = v11;
  objc_copyWeak(&v16, buf);
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v13];
  objc_destroyWeak(&v16);

  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setupWithReason:(int64_t)reason queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D653E8;
  v12[3] = &unk_278D18490;
  v14 = completionCopy;
  reasonCopy = reason;
  v12[4] = self;
  v13 = queueCopy;
  v10 = queueCopy;
  v11 = completionCopy;
  dispatch_async(v10, v12);
}

- (void)fetchAllItemsPolitely:(BOOL)politely reason:(int64_t)reason queue:(id)queue completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  v12 = BLJaliscoLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    dsid = [(BLPurchaseDAAPServer *)self dsid];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dsid;
    _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_DEFAULT, "Fetching purchase history for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x2020000000;
  reasonCopy = reason;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D65AD4;
  block[3] = &unk_278D18698;
  block[4] = self;
  v18 = queueCopy;
  politelyCopy = politely;
  v19 = completionCopy;
  p_buf = &buf;
  v14 = completionCopy;
  v15 = queueCopy;
  dispatch_async(v15, block);

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x277D85DE8];
}

- (BLPurchaseDAAPServer)initWithDSID:(id)d delegate:(id)delegate privacyInfo:(id)info
{
  dCopy = d;
  delegateCopy = delegate;
  infoCopy = info;
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

    objc_storeStrong(&v12->_dsid, d);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v12->_privacyInfo, info);
    mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
    activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
    ams_DSID = [activeStoreAccount ams_DSID];
    v12->_primaryAccount = [ams_DSID isEqualToNumber:dCopy];
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)contextDidSave:(id)save
{
  saveCopy = save;
  v4 = MEMORY[0x277CCAB88];
  v9 = saveCopy;
  object = [saveCopy object];
  userInfo = [v9 userInfo];
  v7 = [v4 notificationWithName:@"kJaliscoDAAPClientMOCDidSaveNotification" object:object userInfo:userInfo];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:v7];
}

- (BOOL)_saveInMoc:(id)moc error:(id *)error
{
  mocCopy = moc;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277CBE1A8];
  [defaultCenter addObserver:self selector:sel_contextDidSave_ name:*MEMORY[0x277CBE1A8] object:mocCopy];

  LOBYTE(error) = [mocCopy save:error];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:v8 object:mocCopy];

  return error;
}

- (id)_localServerDatabaseRevisionInMoc:(id)moc
{
  v20 = *MEMORY[0x277D85DE8];
  mocCopy = moc;
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  isUserSignedInToiTunes = [mEMORY[0x277CF32F0] isUserSignedInToiTunes];

  if (isUserSignedInToiTunes)
  {
    v7 = +[BLJaliscoServerSource sharedSource];
    dsid = [(BLPurchaseDAAPServer *)self dsid];
    v17 = 0;
    v9 = [v7 serverInfoForDSID:dsid fromManagedObjectContext:mocCopy error:&v17];
    v10 = v17;

    if (v9)
    {
      databaseVersion = [v9 databaseVersion];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(databaseVersion, "unsignedLongLongValue")}];

      goto LABEL_10;
    }

    if (v10)
    {
      v13 = BLJaliscoLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        dsid2 = [(BLPurchaseDAAPServer *)self dsid];
        *buf = 138412290;
        v19 = dsid2;
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

- (BOOL)_updatePersistentServerRevision:(id)revision database:(id)database items:(id)items error:(id *)error
{
  revisionCopy = revision;
  databaseCopy = database;
  itemsCopy = items;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_241D68310;
  v25[4] = sub_241D68320;
  v26 = revisionCopy;
  updateItemsQueue = self->_updateItemsQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_241D68328;
  v18[3] = &unk_278D186C0;
  v19 = itemsCopy;
  selfCopy = self;
  v23 = &v27;
  errorCopy = error;
  v21 = databaseCopy;
  v22 = v25;
  v14 = databaseCopy;
  v15 = itemsCopy;
  v16 = revisionCopy;
  dispatch_sync(updateItemsQueue, v18);
  LOBYTE(databaseCopy) = *(v28 + 24);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);
  return databaseCopy;
}

- (id)_updatePersistentServerRevision:(id)revision moc:(id)moc error:(id *)error
{
  revisionCopy = revision;
  mocCopy = moc;
  dsid = [(BLPurchaseDAAPServer *)self dsid];
  v11 = +[BLJaliscoServerSource sharedSource];
  v20 = 0;
  v12 = [v11 serverInfoForDSID:dsid fromManagedObjectContext:mocCopy error:&v20];
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
      v15 = [[BLJaliscoServerInfo alloc] initIntoManagedObjectContext:mocCopy];
      stringValue = [dsid stringValue];
      [v15 setUserUID:stringValue];

      v12 = v15;
    }

    stringValue2 = [revisionCopy stringValue];
    [v12 setDatabaseVersion:stringValue2];
  }

  else if (error)
  {
    v18 = v13;
    v12 = 0;
    *error = v13;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_updatePersistentDatabase:(id)database server:(id)server moc:(id)moc error:(id *)error
{
  databaseCopy = database;
  serverCopy = server;
  mocCopy = moc;
  v13 = +[BLJaliscoServerSource sharedSource];
  dsid = [(BLPurchaseDAAPServer *)self dsid];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(databaseCopy, "itemID")}];
  v22 = 0;
  v16 = [v13 serverDatabaseForDSID:dsid withIdentifier:v15 fromManagedObjectContext:mocCopy error:&v22];
  v17 = v22;

  if (v16 || !v17)
  {
    if (!v16)
    {
      v16 = [[BLJaliscoServerDatabase alloc] initIntoManagedObjectContext:mocCopy];
      [v16 setServer:serverCopy];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(databaseCopy, "itemID")}];
      stringValue = [v19 stringValue];
      [v16 setIdentifier:stringValue];
    }
  }

  else if (error)
  {
    v18 = v17;
    v16 = 0;
    *error = v17;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_updatePersistentItems:(id)items moc:(id)moc database:(id)database error:(id *)error
{
  v143[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  mocCopy = moc;
  v102 = itemsCopy;
  databaseCopy = database;
  if (!itemsCopy)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ibooks.jalisco.updating" code:400 userInfo:0];
    }

    v96 = BLJaliscoLog();
    v104 = v96;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v96, OS_LOG_TYPE_ERROR, "NO UPDATE - daap items missing", buf, 2u);
    }

    items = 0;
    goto LABEL_76;
  }

  v104 = [itemsCopy objectForKey:@"dmap.listing"];
  v100 = [itemsCopy objectForKey:@"dmap.deletedidlisting"];
  v10 = +[BLJaliscoServerSource sharedSource];
  dsid = [(BLPurchaseDAAPServer *)self dsid];
  v143[0] = dsid;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:1];
  v13 = [v10 allItemsFetchRequestForDSIDs:v12];
  v136 = 0;
  v109 = [mocCopy executeFetchRequest:v13 error:&v136];
  v101 = v136;

  if (!v109)
  {
    if (error)
    {
      v97 = v101;
      items = 0;
      *error = v101;
    }

    else
    {
      items = 0;
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
      stringValue = [v15 stringValue];
      v114 = [v16 predicateWithFormat:@"storeID = %@", stringValue];

      v18 = [v109 filteredArrayUsingPredicate:v114];
      lastObject = [v18 lastObject];

      v20 = lastObject;
      if (!lastObject)
      {
        lastObject = [[BLJaliscoServerItem alloc] initIntoManagedObjectContext:mocCopy];
        v30 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-token"];
        [lastObject setArtworkTokenCode:v30];

        v24 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-url"];
        [lastObject setArtworkURLString:v24];
        goto LABEL_17;
      }

      artworkTokenCode = [lastObject artworkTokenCode];
      if (artworkTokenCode)
      {
        artworkURLString = [lastObject artworkURLString];
        v23 = artworkURLString == 0;

        if (!v23)
        {
          v24 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-token"];
          v25 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-url"];
          if (v25)
          {
            if (v24)
            {
              artworkTokenCode2 = [lastObject artworkTokenCode];
              v27 = [artworkTokenCode2 isEqualToString:v24];

              if ((v27 & 1) == 0)
              {
                v28 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-token"];
                [lastObject setArtworkTokenCode:v28];

                v29 = [v14 objectForKey:@"com.apple.itunes.cloud-artwork-url"];
                [lastObject setArtworkURLString:v29];
              }
            }
          }

LABEL_17:
        }

        v20 = lastObject;
      }

      v111 = [v14 objectForKey:@"com.apple.itunes.extended-media-kind"];
      v119 = v20;
      unsignedIntegerValue = [v111 unsignedIntegerValue];
      if (unsignedIntegerValue == 8 && ![(BLPurchaseDAAPServer *)self isPrimaryAccount])
      {
        [v20 bl_setNumberIfDifferent:@"needsImport" value:MEMORY[0x277CBEC38]];
      }

      v32 = [MEMORY[0x277CCABB0] numberWithBool:unsignedIntegerValue == 8];
      [v20 bl_setNumberIfDifferent:@"isAudiobook" value:v32];

      v33 = [v14 objectForKey:@"com.apple.itunes.itms-songid"];
      stringValue2 = [v33 stringValue];
      [v20 bl_setStringIfDifferent:@"storeID" value:stringValue2];

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "itemID")}];
      stringValue3 = [v35 stringValue];
      [v20 bl_setStringIfDifferent:@"cloudID" value:stringValue3];

      v37 = [v14 objectForKey:@"com.apple.itunes.display-publication-version"];
      [v20 bl_setStringIfDifferent:@"displayVersion" value:v37];

      v38 = [v14 objectForKey:@"daap.songdisabled"];
      [v20 bl_setNumberIfDifferent:@"isDisabled" value:v38];

      v39 = [v14 objectForKey:@"daap.songcontentrating"];
      [v20 bl_setNumberIfDifferent:@"isExplicit" value:v39];

      v40 = [v14 objectForKey:@"dmap.itemhidden"];
      [v20 bl_setNumberIfDifferent:@"isHidden" value:v40];

      v41 = [v14 objectForKey:@"com.apple.itunes.cloud-purchased-token"];
      stringValue4 = [v41 stringValue];
      [v20 bl_setStringIfDifferent:@"purchasedTokenCode" value:stringValue4];

      v43 = [v14 objectForKey:@"dmap.longitemid"];
      [v20 bl_setNumberIfDifferent:@"purchaseHistoryID" value:v43];

      v44 = [v14 objectForKey:@"daap.songartist"];
      [v20 bl_setStringIfDifferent:@"artist" value:v44];

      v45 = [v14 objectForKey:@"daap.sortartist"];
      [v20 bl_setStringIfDifferent:@"sortedAuthor" value:v45];

      v46 = [v14 objectForKey:@"daap.songgenre"];
      [v20 bl_setStringIfDifferent:@"genre" value:v46];

      name = [v14 name];
      [v20 bl_setStringIfDifferent:@"title" value:name];

      v48 = [v14 objectForKey:@"daap.sortname"];
      [v20 bl_setStringIfDifferent:@"sortedTitle" value:v48];

      v49 = [v14 objectForKey:@"daap.songdatepurchased"];
      [v20 bl_setDateIfDifferent:@"purchasedAt" value:v49];

      v50 = [v14 objectForKey:@"com.apple.itunes.item-flavor-listing"];
      lastObject2 = [v50 lastObject];

      v51 = [lastObject2 objectForKey:@"com.apple.itunes.item-redownload-param-2"];
      [v20 bl_setStringIfDifferent:@"storeDownloadParameters" value:v51];

      v52 = [lastObject2 objectForKey:@"daap.songformat"];
      [v20 bl_setStringIfDifferent:@"fileExtension" value:v52];

      v53 = [v14 objectForKey:@"com.apple.itunes.preorder-expected-date"];
      [v20 bl_setDateIfDifferent:@"expectedDate" value:v53];

      v54 = [v14 objectForKey:@"com.apple.itunes.chapter-metadata-url"];
      [v20 bl_setStringIfDifferent:@"chapterMetadataURLString" value:v54];

      v55 = [v14 objectForKey:@"com.apple.itunes.store.hls-playback-url"];
      [v20 bl_setStringIfDifferent:@"hlsPlaylistURLString" value:v55];

      dsid2 = [(BLPurchaseDAAPServer *)self dsid];
      [v20 bl_setNumberIfDifferent:@"storeAccountID" value:dsid2];

      v112 = [v14 objectForKey:@"booklets"];
      booklets = [v20 booklets];
      allObjects = [booklets allObjects];

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
            stringValue5 = [v63 stringValue];

            v65 = [MEMORY[0x277CCAC30] predicateWithFormat:@"storeID == %@", stringValue5];
            v66 = [allObjects filteredArrayUsingPredicate:v65];
            lastObject3 = [v66 lastObject];

            if (!lastObject3)
            {
              lastObject3 = [[BLJaliscoServerBookletItem alloc] initIntoManagedObjectContext:mocCopy];
            }

            [lastObject3 bl_setStringIfDifferent:@"storeID" value:stringValue5];
            v68 = [v62 objectForKey:@"com.apple.itunes.store.booklet-item-name"];
            [lastObject3 bl_setStringIfDifferent:@"title" value:v68];

            v69 = [v62 objectForKey:@"com.apple.itunes.store.booklet-item-redownload-param"];
            [lastObject3 bl_setStringIfDifferent:@"storeDownloadParameters" value:v69];

            v70 = [v62 objectForKey:@"com.apple.itunes.store.booklet-item-size"];
            [lastObject3 bl_setNumberIfDifferent:@"size" value:v70];

            [lastObject3 setParentItem:v119];
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
      additionalAudiobookInfoKeys = [(BLPurchaseDAAPServer *)self additionalAudiobookInfoKeys];
      v73 = [additionalAudiobookInfoKeys countByEnumeratingWithState:&v124 objects:v140 count:16];
      if (v73)
      {
        v74 = *v125;
        do
        {
          for (k = 0; k != v73; ++k)
          {
            if (*v125 != v74)
            {
              objc_enumerationMutation(additionalAudiobookInfoKeys);
            }

            v76 = *(*(&v124 + 1) + 8 * k);
            v77 = [v14 objectForKey:v76];
            if ([v76 isEqualToString:@"daap.songtime"])
            {
              v78 = [lastObject2 objectForKey:@"daap.songtime"];

              v77 = v78;
            }

            if (v77)
            {
              [v71 setObject:v77 forKey:v76];
            }
          }

          v73 = [additionalAudiobookInfoKeys countByEnumeratingWithState:&v124 objects:v140 count:16];
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

      purchasedTokenCode = [v119 purchasedTokenCode];
      if ([purchasedTokenCode length])
      {
        storeID = [v119 storeID];
        v83 = [storeID length] == 0;

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

  [databaseCopy addItems:v105];
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
          managedObjectContext = [v93 managedObjectContext];
          [managedObjectContext deleteObject:v93];
        }

        v90 = [v89 countByEnumeratingWithState:&v120 objects:v137 count:16];
      }

      while (v90);
    }
  }

  items = [databaseCopy items];

LABEL_75:
LABEL_76:

  v98 = *MEMORY[0x277D85DE8];

  return items;
}

- (void)_sendHandlers:(id)handlers success:(BOOL)success
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  handlersCopy = handlers;
  v5 = [handlersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(handlersCopy);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [handlersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isGDPRPrivacyAcknowledgementRequired
{
  privacyInfo = [(BLPurchaseDAAPServer *)self privacyInfo];
  if (!privacyInfo)
  {
    v3 = BLJaliscoLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_ERROR, "Privacy info is nil.", buf, 2u);
    }
  }

  isGDPRPrivacyAcknowledgementRequired = [privacyInfo isGDPRPrivacyAcknowledgementRequired];
  if (isGDPRPrivacyAcknowledgementRequired)
  {
    v5 = BLJaliscoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "Ignoring request due to user has not accepted Books GDPR.", v7, 2u);
    }
  }

  return isGDPRPrivacyAcknowledgementRequired;
}

- (void)_shouldMakeRequest:(id)request
{
  requestCopy = request;
  backoffQueue = self->_backoffQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D6A14C;
  v7[3] = &unk_278D186E8;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(backoffQueue, v7);
}

- (void)_preProcessResponse:(id)response error:(id)error responseBlock:(id)block
{
  responseCopy = response;
  errorCopy = error;
  blockCopy = block;
  backoffQueue = self->_backoffQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D6A438;
  v15[3] = &unk_278D18710;
  v16 = responseCopy;
  v17 = errorCopy;
  selfCopy = self;
  v19 = blockCopy;
  v12 = blockCopy;
  v13 = errorCopy;
  v14 = responseCopy;
  dispatch_async(backoffQueue, v15);
}

- (id)_newDefaultAuthenticateOptions
{
  v2 = objc_opt_new();
  [v2 setAuthenticationType:1];
  [v2 setDebugReason:@"Books jalisco purchase"];
  return v2;
}

- (id)_processResponse:(id)response
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [BLPurchaseDAAPParser decodeData:responseCopy];
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
    delegate = [(BLPurchaseDAAPServer *)self delegate];
    [delegate purchaseServerHandleClientExpired];
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
      date = [MEMORY[0x277CBEAA8] date];
      v5 = [(NSDate *)DAAPReconnectAt compare:date];

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

- (void)setDAAPReconnectToTimeIntervalSinceNow:(double)now
{
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:now];
  DAAPReconnectAt = self->_DAAPReconnectAt;
  self->_DAAPReconnectAt = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_configureWithReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D6B200;
  v8[3] = &unk_278D18788;
  v9 = @"Server-info:";
  selfCopy = self;
  v11 = completionCopy;
  reasonCopy = reason;
  v7 = completionCopy;
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v8];
}

- (void)_loginWithReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v6 = [BLDAAPLoginRequest alloc];
  dsid = [(BLPurchaseDAAPServer *)self dsid];
  v8 = [(BLDAAPLoginRequest *)v6 initWithDSID:dsid reason:reason];

  [(BLPurchaseDAAPServer *)self _loginWithRequest:v8 completion:completionCopy];
}

- (void)_loginWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D6BA3C;
  v10[3] = &unk_278D187B0;
  selfCopy = self;
  v13 = completionCopy;
  v11 = requestCopy;
  v8 = requestCopy;
  v9 = completionCopy;
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v10];
}

- (void)_pollLatestRevisionWithReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D6C0A8;
  v8[3] = &unk_278D18828;
  v8[4] = self;
  v9 = completionCopy;
  reasonCopy = reason;
  v7 = completionCopy;
  [(BLPurchaseDAAPServer *)self _shouldMakeRequest:v8];
}

- (void)_fetchDatabaseWithReason:(int64_t)reason localServerRevision:(id)revision latestVersion:(id)version completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  revisionCopy = revision;
  versionCopy = version;
  handlerCopy = handler;
  v13 = [BLDAAPDatabasesRequest alloc];
  dsid = [(BLPurchaseDAAPServer *)self dsid];
  sessionID = [(BLPurchaseDAAPServer *)self sessionID];
  v16 = [(BLDAAPDatabasesRequest *)v13 initWithDSID:dsid reason:reason sessionID:sessionID revisionNumber:versionCopy delta:revisionCopy];

  if (v16)
  {
    [(BLPurchaseDAAPServer *)self _fetchDatabaseWithRequest:v16 completionHandler:handlerCopy];
  }

  else
  {
    v17 = BLJaliscoLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      dsid2 = [(BLPurchaseDAAPServer *)self dsid];
      sessionID2 = [(BLPurchaseDAAPServer *)self sessionID];
      v23 = 138413314;
      v24 = dsid2;
      v25 = 2048;
      reasonCopy = reason;
      v27 = 2114;
      v28 = sessionID2;
      v29 = 2114;
      v30 = versionCopy;
      v31 = 2114;
      v32 = revisionCopy;
      _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "DAAP DB Fetch: Missing a parameter type. dsid:(%@) reason:(%ld) sessionID: %{public}@ revisionNumber:%{public}@ delta:%{public}@", &v23, 0x34u);
    }

    v20 = MEMORY[0x245CFF560](handlerCopy);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 16))(v20, 0, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_fetchDatabaseWithRequest:(id)request completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (requestCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_241D6CC50;
    v13[3] = &unk_278D188A0;
    v14 = @"DB Fetch:";
    v17 = handlerCopy;
    v15 = requestCopy;
    selfCopy = self;
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
        intValue = [*(*(&v17 + 1) + 8 * i) intValue];
        v12 = [v10 stringWithFormat:@"'%@:%d'", v4, intValue, v17];
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
  additionalAudiobookInfoKeys = [(BLPurchaseDAAPServer *)self additionalAudiobookInfoKeys];
  v4 = [&unk_2853F21F8 arrayByAddingObjectsFromArray:additionalAudiobookInfoKeys];

  bookletKeys = [(BLPurchaseDAAPServer *)self bookletKeys];
  v6 = [v4 arrayByAddingObjectsFromArray:bookletKeys];

  v7 = [v6 componentsJoinedByString:{@", "}];

  return v7;
}

- (id)_dataForItemsRequestWithLocalVersion:(id)version serverVersion:(id)serverVersion tokenPairs:(id)pairs
{
  versionCopy = version;
  serverVersionCopy = serverVersion;
  v14 = versionCopy;
  pairsCopy = pairs;
  v9 = pairsCopy;
  v10 = versionCopy;
  v11 = serverVersionCopy;
  v12 = ICDAAPUtilitiesCreateDataForContainer();

  return v12;
}

- (void)_fetchItemsWithLocalVersion:(id)version serverVersion:(id)serverVersion reason:(int64_t)reason tokenPairs:(id)pairs completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  serverVersionCopy = serverVersion;
  pairsCopy = pairs;
  handlerCopy = handler;
  v16 = BLJaliscoLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    dsid = [(BLPurchaseDAAPServer *)self dsid];
    *buf = 138412802;
    v33 = dsid;
    v34 = 2112;
    v35 = serverVersionCopy;
    v36 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_DEFAULT, "[BLPurchaseDAAPServer] _fetchItemsWithLocalVersion dsid:%@ serverVersion:%@ reason:%ld", buf, 0x20u);
  }

  if (!versionCopy || ([(BLPurchaseDAAPServer *)self bagDatabaseID], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
  {
    v21 = BLJaliscoLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_ERROR, "No database to fetch items with.", buf, 2u);
    }

    v22 = MEMORY[0x245CFF560](handlerCopy);
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
    v30 = handlerCopy;
    selfCopy = self;
    v27 = versionCopy;
    v28 = serverVersionCopy;
    v29 = pairsCopy;
    reasonCopy2 = reason;
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