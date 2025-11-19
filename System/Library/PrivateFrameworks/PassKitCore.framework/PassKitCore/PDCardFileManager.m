@interface PDCardFileManager
- (BOOL)_dc_deleteCardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4;
- (BOOL)_dc_writeCard:(id)a3 writtenCard:(id *)a4 diff:(id *)a5 daemonData:(id *)a6 undecryptableAssets:(id *)a7 error:(id *)a8;
- (BOOL)writeCard:(id)a3 source:(int64_t)a4 error:(id *)a5;
- (PDCardFileManager)initWithDelegate:(id)a3 cloudStoreCoordinatorDelegate:(id)a4;
- (PDCardFileManager)initWithDelegate:(id)a3 cloudStoreCoordinatorDelegate:(id)a4 maximumDownloadRetries:(unint64_t)a5 atURL:(id)a6;
- (id)_cacheURLForUniqueID:(id)a3;
- (id)_cachedImageSetContainerForUniqueID:(id)a3 type:(int64_t)a4 withDisplayProfile:(id)a5 displayTraits:(id)a6;
- (id)_cachedImageSetContainerForUniqueID:(id)a3 type:(int64_t)a4 withDisplayProfile:(id)a5 displayTraits:(id)a6 cardDirectoryCoordinator:(id)a7;
- (id)_cardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4 error:(id *)a5;
- (id)_contentForCardWithUniqueID:(id)a3;
- (id)_dataAccessorForCardDirectoryCoordinator:(id)a3 error:(id *)a4;
- (id)_dc_cardDirectoryCoordinatorForUniqueID:(id)a3;
- (id)_dc_cardWithUniqueID:(id)a3 error:(id *)a4;
- (id)_imageSetContainerForUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4 ofType:(int64_t)a5 withDisplayProfile:(id)a6 suffix:(id)a7;
- (id)_imageSetContainerForUniqueID:(id)a3 ofType:(int64_t)a4 withDisplayProfile:(id)a5 suffix:(id)a6;
- (id)_objectURLForUniqueID:(id)a3;
- (id)_ubiquityManager;
- (id)catalogOfRecord;
- (id)dataAccessorForObjectWithUniqueID:(id)a3;
- (id)localNonUbiquitousCatalogURL;
- (id)objectWithUniqueID:(id)a3;
- (id)passDaemonDataForUniqueID:(id)a3;
- (id)passTilesForUniqueID:(id)a3 withDescriptorStatePairs:(id)a4;
- (id)passUniqueIDs;
- (id)passes;
- (id)passesOfType:(unint64_t)a3;
- (void)_checkRevocationStatusForPass:(id)a3 withCompletion:(id)a4;
- (void)_createImageSetsForCardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4 displayProfile:(id)a5;
- (void)_dc_invalidateCardDirectoryCoordinatorForUniqueID:(id)a3;
- (void)_dc_performCacheMaintenanceActivity;
- (void)_deleteCardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4 forReason:(unint64_t)a5 withDiagnosticReason:(id)a6;
- (void)_deletePossibleInvalidCardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4;
- (void)_downloadRemoteAssetsForCardWithUniqueID:(id)a3 completion:(id)a4;
- (void)_evaluateDownloadMissingAssetsActivityWithForcedReschedule:(BOOL)a3;
- (void)_performMissingAssetDownloadActivity;
- (void)_performRevocationCheckActivity;
- (void)_recursivelyCheckRevocationStatusForPassUniqueIdentifiers:(id)a3 osTransaction:(id)a4;
- (void)decryptPassAssets:(id)a3 undecryptableAssets:(id *)a4;
- (void)deleteAllWithDiagnosticReason:(id)a3;
- (void)deleteCardWithUniqueID:(id)a3 forReason:(unint64_t)a4 withDiagnosticReason:(id)a5;
- (void)fetchCachedImageSetContainerForUniqueID:(id)a3 type:(int64_t)a4 withDisplayProfile:(id)a5 displayTraits:(id)a6 completion:(id)a7;
- (void)fetchContentForUniqueID:(id)a3 withCompletion:(id)a4;
- (void)fetchImageSetContainerForUniqueID:(id)a3 ofType:(int64_t)a4 withDisplayProfile:(id)a5 suffix:(id)a6 completion:(id)a7;
- (void)performImageMigrationWithStartTime:(double)a3;
- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4;
- (void)receivedXPCEvent:(id)a3 forEventStream:(id)a4;
- (void)registerDatabaseObject:(id)a3;
- (void)restartUbiquity;
- (void)scheduleImmediateRevocationCheck;
- (void)startObservingUbiquityEvents;
- (void)startUbiquity;
- (void)ubiquitousCardDidChange:(id)a3;
- (void)ubiquitousCardWithUniqueIDRemoved:(id)a3;
- (void)ubiquitousCatalogDidChange:(id)a3;
- (void)writeCatalogOfRecord:(id)a3 source:(int64_t)a4;
@end

@implementation PDCardFileManager

- (void)startUbiquity
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100119400;
  block[3] = &unk_10083C470;
  block[4] = self;
  if (qword_100924278 != -1)
  {
    dispatch_once(&qword_100924278, block);
  }
}

- (PDCardFileManager)initWithDelegate:(id)a3 cloudStoreCoordinatorDelegate:(id)a4
{
  v6 = qword_100924288;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    sub_1005C1A68();
  }

  v9 = [(PDCardFileManager *)self initWithDelegate:v8 cloudStoreCoordinatorDelegate:v7 maximumDownloadRetries:3 atURL:qword_100924280];

  return v9;
}

- (PDCardFileManager)initWithDelegate:(id)a3 cloudStoreCoordinatorDelegate:(id)a4 maximumDownloadRetries:(unint64_t)a5 atURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v34.receiver = self;
  v34.super_class = PDCardFileManager;
  v13 = [(PDCardFileManager *)&v34 init];
  if (v13)
  {
    v14 = [v12 copy];
    cardsURL = v13->_cardsURL;
    v13->_cardsURL = v14;

    v16 = +[NSFileManager defaultManager];
    [v16 createDirectoryAtURL:v13->_cardsURL withIntermediateDirectories:1 attributes:0 error:0];

    v17 = [[PKDirectoryCoordinator alloc] initWithURL:v13->_cardsURL];
    directoryCoordinator = v13->_directoryCoordinator;
    v13->_directoryCoordinator = v17;

    v19 = +[NSMapTable pk_copiedToWeakObjectsMapTable];
    cardDirectoryCoordinators = v13->_cardDirectoryCoordinators;
    v13->_cardDirectoryCoordinators = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_UNSPECIFIED, 0);

    v23 = PDHeavyUtilityQueue();
    v24 = dispatch_queue_create_with_target_V2("com.apple.passd.PDCardFileManager.missingAsset", v22, v23);
    missingAssetQueue = v13->_missingAssetQueue;
    v13->_missingAssetQueue = v24;

    objc_storeWeak(&v13->_delegate, v10);
    objc_storeStrong(&v13->_cloudStoreCoordinatorDelegate, a4);
    v13->_maximumDownloadRetries = a5;
    v26 = PDDefaultQueue();
    PDScheduledActivityClientRegister();

    v27 = PDDefaultQueue();
    PDScheduledActivityClientRegister();

    v28 = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:0];
    [v28 setRepeating:1];
    [v28 setRequireNetworkConnectivity:1];
    [v28 setRepeatInterval:86400.0];
    PDScheduledActivityRegister();
    v29 = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:0];
    [v29 setRepeating:1];
    [v29 setRequireScreenSleep:1];
    [v29 setRequireMainsPower:1];
    [v29 setRepeatInterval:1209600.0];
    PDScheduledActivityRegister();
    v30 = PDUtilityQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001193BC;
    block[3] = &unk_10083C470;
    v33 = v13;
    dispatch_async(v30, block);
  }

  return v13;
}

- (id)_ubiquityManager
{
  [(PDCardFileManager *)self startUbiquity];
  ubiquityManager = self->_ubiquityManager;

  return ubiquityManager;
}

- (void)restartUbiquity
{
  v2 = [(PDCardFileManager *)self _ubiquityManager];
  [v2 restart];
}

- (void)startObservingUbiquityEvents
{
  if (PKPassbookIsSupported())
  {
    v3 = PDLastFSEventsURL();
    if (v3)
    {
      v5 = v3;
      PDWatchFSEventsAtURL(v3);
      v4 = PDDefaultQueue();
      PDXPCEventStreamRegisterObserver(self, @"com.apple.fsevents.matching", v4);

      v3 = v5;
    }
  }
}

- (void)performImageMigrationWithStartTime:(double)a3
{
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_100005B00;
  v62 = sub_10000B18C;
  v63 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PDCardFileManager *)self passUniqueIDs];
  v7 = COERCE_DOUBLE([v6 count]);
  if (v7 != 0.0)
  {
    directoryCoordinator = self->_directoryCoordinator;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100119B1C;
    v54[3] = &unk_1008473B8;
    v57 = &v58;
    v55 = v6;
    v56 = self;
    [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v54];
  }

  objc_autoreleasePoolPop(v5);
  if (v7 != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = fmax(fmin(50.0 - fmax(Current - a3, 0.0), 30.0), 0.0);
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: beginning image migration for %lu passes.", &buf, 0xCu);
    }

    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2810000000;
    v52[3] = "";
    v53 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v73 = 0x3032000000;
    v74 = sub_100005B00;
    v75 = sub_10000B18C;
    v76 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = Current;
    v12 = *&v7 >> 1;
    if (*&v7 == 1)
    {
      v12 = 1;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100119C18;
    block[3] = &unk_1008473E0;
    v39 = v12;
    v40 = v7;
    v43 = v10 < 2.0;
    v6 = v6;
    v32 = v6;
    v33 = self;
    v41 = Current;
    v42 = v10;
    v34 = &v58;
    v35 = v52;
    v36 = &v44;
    p_buf = &buf;
    v38 = &v48;
    dispatch_apply(2uLL, 0, block);
    v13 = *(*(&buf + 1) + 40);
    if (v13 && (v14 = [v13 count]) != 0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v49[3];
        v16 = CFAbsoluteTimeGetCurrent();
        v17 = v45[3] - Current;
        *v64 = 134218752;
        v65 = v15;
        v66 = 2048;
        v67 = v7;
        v68 = 2048;
        v69 = v16 - Current;
        v70 = 2048;
        v71 = v17;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: finished image migration for %lu of %lu passes in %0.3fs (timed out in %0.3fs).", v64, 0x2Au);
      }

      v18 = objc_autoreleasePoolPush();
      v19 = [v6 objectsAtIndexes:*(*(&buf + 1) + 40)];

      v20 = [v59[5] objectsAtIndexes:*(*(&buf + 1) + 40)];
      v21 = v59[5];
      v59[5] = v20;

      objc_autoreleasePoolPop(v18);
      v22 = PDHeavyUtilityQueue();
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10011A07C;
      v25[3] = &unk_100847408;
      v29 = v14;
      v6 = v19;
      v27 = self;
      v28 = &v58;
      v26 = v6;
      v30 = Current;
      v23 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_DETACHED, v25);
      dispatch_async(v22, v23);

      v11 = v26;
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v24 = CFAbsoluteTimeGetCurrent();
      *v64 = 134218240;
      v65 = v7;
      v66 = 2048;
      v67 = v24 - Current;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: finished image migration for %lu passes in %0.3fs.", v64, 0x16u);
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(v52, 8);
  }

  _Block_object_dispose(&v58, 8);
}

- (id)passUniqueIDs
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_autoreleasePoolPush();
  directoryCoordinator = self->_directoryCoordinator;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011A3BC;
  v8[3] = &unk_100847430;
  v8[4] = self;
  v6 = v3;
  v9 = v6;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v8];

  objc_autoreleasePoolPop(v4);

  return v6;
}

- (id)objectWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100005B00;
  v27 = sub_10000B18C;
  v28 = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10011A8B4;
  v20[3] = &unk_1008473B8;
  v22 = &v23;
  v20[4] = self;
  v7 = v4;
  v21 = v7;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v20];
  v8 = v24[5];
  v19 = 0;
  v9 = [(PDCardFileManager *)self _cardWithUniqueID:v7 cardDirectoryCoordinator:v8 error:&v19];
  v10 = v19;
  if (!v9 && v24[5])
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Card file manager unable to instantiate object with unique ID %@", buf, 0xCu);
    }

    v12 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10011A904;
    v14[3] = &unk_100841FE0;
    v15 = v10;
    v16 = v7;
    v17 = self;
    v18 = &v23;
    dispatch_async(v12, v14);
  }

  _Block_object_dispose(&v23, 8);
  objc_autoreleasePoolPop(v5);

  return v9;
}

- (id)dataAccessorForObjectWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100005B00;
  v17 = sub_10000B18C;
  v18 = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011AB9C;
  v10[3] = &unk_1008473B8;
  v12 = &v13;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v10];
  v8 = [(PDCardFileManager *)self _dataAccessorForCardDirectoryCoordinator:v14[5] error:0];

  _Block_object_dispose(&v13, 8);
  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)passes
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PDCardFileManager *)self passUniqueIDs];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(PDCardFileManager *)self objectWithUniqueID:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)passesOfType:(unint64_t)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(PDCardFileManager *)self passUniqueIDs];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PDCardFileManager *)self objectWithUniqueID:*(*(&v15 + 1) + 8 * i)];
        v12 = v11;
        if (v11 && [v11 passType] == a3)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)catalogOfRecord
{
  v3 = sub_10011AF28();
  v4 = [PDCardFileManager localNonUbiquitousCatalogURL]_0();
  v5 = [PKCatalog catalogWithContentsOfURL:v3 nonUbiquitousCatalogURL:v4 directoryCoordinator:self->_directoryCoordinator];

  return v5;
}

- (id)localNonUbiquitousCatalogURL
{
  if (qword_1009242A8 != -1)
  {
    sub_1005C1A90();
  }

  v1 = qword_1009242A0;

  return v1;
}

- (void)fetchContentForUniqueID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = PDHeavyQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011B088;
    block[3] = &unk_10083D320;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

- (id)passDaemonDataForUniqueID:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100005B00;
  v25 = sub_10000B18C;
  v26 = 0;
  v5 = objc_autoreleasePoolPush();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100005B00;
  v19 = sub_10000B18C;
  v20 = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011B318;
  v12[3] = &unk_1008473B8;
  v14 = &v15;
  v12[4] = self;
  v7 = v4;
  v13 = v7;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v12];
  v8 = v16[5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011B368;
  v11[3] = &unk_100847458;
  v11[4] = &v21;
  [v8 performCoordinatedAction:v11];

  _Block_object_dispose(&v15, 8);
  objc_autoreleasePoolPop(v5);
  v9 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)passTilesForUniqueID:(id)a3 withDescriptorStatePairs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100005B00;
  v31 = sub_10000B18C;
  v32 = objc_alloc_init(NSMutableArray);
  v8 = objc_autoreleasePoolPush();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100005B00;
  v25 = sub_10000B18C;
  v26 = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10011B638;
  v18[3] = &unk_1008473B8;
  v20 = &v21;
  v18[4] = self;
  v10 = v6;
  v19 = v10;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v18];
  v11 = v22[5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011B688;
  v15[3] = &unk_100847480;
  v12 = v7;
  v16 = v12;
  v17 = &v27;
  [v11 performCoordinatedAction:v15];

  _Block_object_dispose(&v21, 8);
  objc_autoreleasePoolPop(v8);
  if ([v28[5] count])
  {
    v13 = [v28[5] copy];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v27, 8);

  return v13;
}

- (void)_deletePossibleInvalidCardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10011BBF0;
  v17 = &unk_1008474D0;
  v9 = v7;
  v18 = v9;
  v20 = &v22;
  v21 = &v26;
  v10 = v6;
  v19 = v10;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:&v14];
  if (*(v23 + 24) == 1)
  {
    v11 = *(v27 + 24);
    v12 = PKLogFacilityTypeGetObject();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CardFileManager is removing invalid pass with uniqueID %@", buf, 0xCu);
      }

      [(PDCardFileManager *)self _deleteCardWithUniqueID:v10 cardDirectoryCoordinator:v9 forReason:0 withDiagnosticReason:@"Card File Manager - Invalid Pass", v14, v15, v16, v17, v18];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1005C1AA4(v10, v13);
      }
    }
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

- (void)fetchCachedImageSetContainerForUniqueID:(id)a3 type:(int64_t)a4 withDisplayProfile:(id)a5 displayTraits:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    v16 = PDDefaultQueue();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10011BF90;
    v17[3] = &unk_1008474F8;
    v21 = v15;
    v17[4] = self;
    v18 = v12;
    v22 = a4;
    v19 = v13;
    v20 = v14;
    dispatch_async(v16, v17);
  }
}

- (void)fetchImageSetContainerForUniqueID:(id)a3 ofType:(int64_t)a4 withDisplayProfile:(id)a5 suffix:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    v16 = PDHeavyQueue();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10011C154;
    v17[3] = &unk_1008474F8;
    v21 = v15;
    v17[4] = self;
    v18 = v12;
    v22 = a4;
    v19 = v13;
    v20 = v14;
    dispatch_async(v16, v17);
  }
}

- (BOOL)writeCard:(id)a3 source:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 uniqueID];
  obj = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained shouldWritePass:v8 source:a4 error:&obj];

  if (v11)
  {

    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 uniqueID];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: writing card %{public}@", buf, 0xCu);
    }

    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v74 = sub_100005B00;
    v75 = sub_10000B18C;
    v76 = 0;
    context = objc_autoreleasePoolPush();
    v32 = a4;
    obj = 0;
    p_obj = &obj;
    v63 = 0x3032000000;
    v64 = sub_100005B00;
    v65 = sub_10000B18C;
    v66 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_100005B00;
    v59 = sub_10000B18C;
    v60 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_100005B00;
    v53 = sub_10000B18C;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_100005B00;
    v47 = sub_10000B18C;
    v48 = 0;
    v14 = v9;
    directoryCoordinator = self->_directoryCoordinator;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10011C830;
    v35[3] = &unk_100847520;
    v37 = &v67;
    v35[4] = self;
    v16 = v8;
    v36 = v16;
    v38 = &obj;
    v39 = &v55;
    v17 = a5;
    v40 = &v49;
    v41 = &v43;
    v42 = buf;
    v18 = directoryCoordinator;
    v9 = v14;
    [(PKDirectoryCoordinator *)v18 performCoordinatedAction:v35];
    v19 = p_obj[5];
    v20 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v20)
      {
        *v71 = 138412290;
        v72 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: wrote card with unique ID %@.", v71, 0xCu);
      }

      v21 = v32;
      if (v32 != 3)
      {
        v21 = v32;
        if ([p_obj[5] supportsSyncing])
        {
          v22 = [(PDCardFileManager *)self _ubiquityManager];
          [v22 updateUbiquitousPass:v16];

          v21 = v32;
        }
      }

      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 passWritten:p_obj[5] withDaemonData:v50[5] diff:v56[5] fromSource:v21];

      if (![v44[5] count])
      {
        goto LABEL_20;
      }

      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 cardFileManager:self didFailToDecryptRemoteAssets:v44[5] forPass:p_obj[5]];
    }

    else if (v20)
    {
      *v71 = 138412290;
      v72 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: skipped writing card with unique ID %@.", v71, 0xCu);
    }

LABEL_20:
    v27 = PDOSTransactionCreate("PDCardFileManager.revocation_check.write_card");
    v28 = p_obj[5];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = nullsub_42;
    v33[3] = &unk_10083C470;
    v29 = v27;
    v34 = v29;
    [(PDCardFileManager *)self _checkRevocationStatusForPass:v28 withCompletion:v33];

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v49, 8);

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&obj, 8);

    objc_autoreleasePoolPop(context);
    if (v17)
    {
      objc_storeStrong(v17, *(*&buf[8] + 40));
    }

    v26 = *(v68 + 24);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v67, 8);
    goto LABEL_23;
  }

  v24 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v8 uniqueID];
    *buf = 138543618;
    *&buf[4] = v25;
    *&buf[12] = 2114;
    *&buf[14] = obj;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: not allowed to write card %{public}@ %{public}@", buf, 0x16u);
  }

  if (a5)
  {
    objc_storeStrong(a5, obj);
  }

  v26 = 0;
LABEL_23:

  return v26 & 1;
}

- (void)writeCatalogOfRecord:(id)a3 source:(int64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  directoryCoordinator = self->_directoryCoordinator;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011C9B8;
  v12[3] = &unk_100847548;
  v9 = v6;
  v13 = v9;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v12];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogOfRecordWritten:v9 source:a4];

  if (a4 != 3)
  {
    v11 = [(PDCardFileManager *)self _ubiquityManager];
    [v11 updateUbiquitousCatalog:v9];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)deleteCardWithUniqueID:(id)a3 forReason:(unint64_t)a4 withDiagnosticReason:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100005B00;
  v20 = sub_10000B18C;
  v21 = 0;
  v10 = objc_autoreleasePoolPush();
  directoryCoordinator = self->_directoryCoordinator;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011CB88;
  v13[3] = &unk_1008473B8;
  v15 = &v16;
  v13[4] = self;
  v12 = v8;
  v14 = v12;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v13];

  objc_autoreleasePoolPop(v10);
  [(PDCardFileManager *)self _deleteCardWithUniqueID:v12 cardDirectoryCoordinator:v17[5] forReason:a4 withDiagnosticReason:v9];
  _Block_object_dispose(&v16, 8);
}

- (void)_deleteCardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4 forReason:(unint64_t)a5 withDiagnosticReason:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [NSNumber numberWithUnsignedInteger:a5];
    *buf = 138543874;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2114;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: card %{public}@ will be removed: %{public}@ %{public}@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passWithUniqueIdentifierWillDisappear:v10 forReason:a5 withDiagnosticReason:v12];

  v17 = 0;
  if (a5 <= 8 && ((1 << a5) & 0x11C) != 0)
  {
    v18 = [(PDCardFileManager *)self _ubiquityManager];
    [v18 prepareToRemoveUbiquitousPassWithUniqueID:v10];

    v17 = 1;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v33) = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10011CE88;
  v27 = &unk_100847570;
  v31 = buf;
  v28 = self;
  v20 = v10;
  v29 = v20;
  v21 = v11;
  v30 = v21;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:&v24];
  if (*(*&buf[8] + 24) == 1)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    [v22 passWithUniqueIdentifierDidDisappear:v20 forReason:a5 withDiagnosticReason:{v12, v24, v25, v26, v27, v28, v29}];
  }

  if (v17)
  {
    v23 = [(PDCardFileManager *)self _ubiquityManager];
    [v23 removeUbiquitousPassWithUniqueID:v20 completed:*(*&buf[8] + 24)];
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v13);
}

- (void)deleteAllWithDiagnosticReason:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting all cards", buf, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(PDCardFileManager *)self passUniqueIDs];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PDCardFileManager *)self deleteCardWithUniqueID:*(*(&v12 + 1) + 8 * v11) forReason:2 withDiagnosticReason:v4];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)registerDatabaseObject:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = v5;
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100005B00;
    v17 = sub_10000B18C;
    v18 = 0;
    directoryCoordinator = self->_directoryCoordinator;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011D18C;
    v10[3] = &unk_1008473B8;
    v12 = &v13;
    v10[4] = self;
    v11 = v5;
    [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v10];
    v8 = v14[5];
    if (v8)
    {
      v9 = [(PDCardFileManager *)self _dataAccessorForCardDirectoryCoordinator:v8 error:0];
    }

    else
    {
      v9 = 0;
    }

    [v4 setDataAccessor:v9];

    _Block_object_dispose(&v13, 8);
  }
}

- (void)scheduleImmediateRevocationCheck
{
  v2 = PDScheduledActivityGetCriteria();
  PDScheduledActivityRemove();
  PDScheduledActivityRegister();
}

- (void)decryptPassAssets:(id)a3 undecryptableAssets:(id *)a4
{
  v6 = a3;
  v7 = [v6 secureElementPass];
  if (v7)
  {
    v8 = [v6 dataAccessor];
    v9 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v10 = [v8 remoteAssetManagerForSEIDs:v9];

    v11 = objc_alloc_init(PDRemoteAssetDecryptionManager);
    v12 = objc_alloc_init(NSMutableArray);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v10;
    v13 = [v10 deviceSpecificItems];
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          if ([(PDRemoteAssetDecryptionManager *)v11 assetRequiresDecryption:v18]&& ![(PDRemoteAssetDecryptionManager *)v11 decryptAsset:v18 forPass:v7])
          {
            [v12 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    if (a4)
    {
      v19 = [v12 copy];
      v20 = *a4;
      *a4 = v19;
    }
  }
}

- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: requested to perform scheduled activity with identifier:%@", buf, 0xCu);
  }

  if ([v6 isEqualToString:@"CacheMaintenance"])
  {
    directoryCoordinator = self->_directoryCoordinator;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011D5A8;
    v10[3] = &unk_100847548;
    v10[4] = self;
    [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v10];
  }

  else if ([v6 isEqualToString:@"RevocationCheck"])
  {
    [(PDCardFileManager *)self _performRevocationCheckActivity];
  }

  else if ([v6 isEqualToString:@"PDCardFileManagerMissingRemoteAssetsActivityIdentifier"])
  {
    [(PDCardFileManager *)self _performMissingAssetDownloadActivity];
  }
}

- (void)_performRevocationCheckActivity
{
  v5 = PDOSTransactionCreate("PDCardFileManager.revocation_check");
  v3 = [(PDCardFileManager *)self passUniqueIDs];
  v4 = [v3 mutableCopy];
  [(PDCardFileManager *)self _recursivelyCheckRevocationStatusForPassUniqueIdentifiers:v4 osTransaction:v5];
}

- (void)_recursivelyCheckRevocationStatusForPassUniqueIdentifiers:(id)a3 osTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 lastObject];
  if (v8)
  {
    v9 = [(PDCardFileManager *)self objectWithUniqueID:v8];
    [v6 removeObject:v8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011D73C;
    v10[3] = &unk_10083C4C0;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    [(PDCardFileManager *)self _checkRevocationStatusForPass:v9 withCompletion:v10];
  }
}

- (void)_checkRevocationStatusForPass:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = sub_100005B00;
    v13[4] = sub_10000B18C;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10011D8A0;
    v9[3] = &unk_1008475C0;
    v10 = v6;
    v12 = v13;
    v11 = v8;
    [v10 revocationStatusWithCompletion:v9];

    _Block_object_dispose(v13, 8);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7);
  }
}

- (void)_createImageSetsForCardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4 displayProfile:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (v14 && v8)
  {
    for (i = 0; i != 9; ++i)
    {
      if ([PKImageSet shouldCacheForDisplayProfile:v9 imageSetType:i])
      {
        v11 = +[PDCardFileManager defaultAssetSuffix];
        v12 = objc_autoreleasePoolPush();
        v13 = [(PDCardFileManager *)self _imageSetContainerForUniqueID:v14 cardDirectoryCoordinator:v8 ofType:i withDisplayProfile:v9 suffix:v11];
        [v13 invalidate];

        objc_autoreleasePoolPop(v12);
      }
    }
  }
}

- (id)_cachedImageSetContainerForUniqueID:(id)a3 type:(int64_t)a4 withDisplayProfile:(id)a5 displayTraits:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100005B00;
  v24 = sub_10000B18C;
  v25 = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10011DDFC;
  v17[3] = &unk_1008473B8;
  v19 = &v20;
  v17[4] = self;
  v14 = v10;
  v18 = v14;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v17];
  v15 = [(PDCardFileManager *)self _cachedImageSetContainerForUniqueID:v14 type:a4 withDisplayProfile:v11 displayTraits:v12 cardDirectoryCoordinator:v21[5]];

  _Block_object_dispose(&v20, 8);

  return v15;
}

- (id)_cachedImageSetContainerForUniqueID:(id)a3 type:(int64_t)a4 withDisplayProfile:(id)a5 displayTraits:(id)a6 cardDirectoryCoordinator:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100005B00;
  v33 = sub_10000B18C;
  v34 = 0;
  v16 = objc_autoreleasePoolPush();
  v17 = [(PDCardFileManager *)self _cacheURLForUniqueID:v12];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10011E010;
  v23[3] = &unk_1008475E8;
  v27 = &v29;
  v28 = a4;
  v18 = v13;
  v24 = v18;
  v19 = v14;
  v25 = v19;
  v20 = v17;
  v26 = v20;
  [v15 performCoordinatedAction:v23];

  objc_autoreleasePoolPop(v16);
  v21 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v21;
}

- (id)_imageSetContainerForUniqueID:(id)a3 ofType:(int64_t)a4 withDisplayProfile:(id)a5 suffix:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100005B00;
  v24 = sub_10000B18C;
  v25 = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10011E1EC;
  v17[3] = &unk_1008473B8;
  v19 = &v20;
  v17[4] = self;
  v14 = v10;
  v18 = v14;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v17];
  v15 = [(PDCardFileManager *)self _imageSetContainerForUniqueID:v14 cardDirectoryCoordinator:v21[5] ofType:a4 withDisplayProfile:v11 suffix:v12];

  _Block_object_dispose(&v20, 8);

  return v15;
}

- (id)_imageSetContainerForUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4 ofType:(int64_t)a5 withDisplayProfile:(id)a6 suffix:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100005B00;
  v33 = sub_10000B18C;
  v34 = 0;
  v16 = objc_autoreleasePoolPush();
  v17 = [(PDCardFileManager *)self _cacheURLForUniqueID:v12];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10011E400;
  v23[3] = &unk_1008475E8;
  v27 = &v29;
  v28 = a5;
  v18 = v14;
  v24 = v18;
  v19 = v15;
  v25 = v19;
  v20 = v17;
  v26 = v20;
  [v13 performCoordinatedAction:v23];

  objc_autoreleasePoolPop(v16);
  v21 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v21;
}

- (id)_contentForCardWithUniqueID:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100005B00;
  v30 = sub_10000B18C;
  v31 = 0;
  v5 = objc_autoreleasePoolPush();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100005B00;
  v24 = sub_10000B18C;
  v25 = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10011E744;
  v17[3] = &unk_1008473B8;
  v19 = &v20;
  v17[4] = self;
  v7 = v4;
  v18 = v7;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v17];
  v8 = v21[5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10011E794;
  v16[3] = &unk_100847458;
  v16[4] = &v26;
  [v8 performCoordinatedAction:v16];
  if (!v27[5] && v21[5])
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011E7F8;
    block[3] = &unk_100847610;
    v13 = v7;
    v14 = self;
    v15 = &v20;
    dispatch_async(v9, block);
  }

  _Block_object_dispose(&v20, 8);
  objc_autoreleasePoolPop(v5);
  v10 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v10;
}

- (id)_dc_cardDirectoryCoordinatorForUniqueID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMapTable *)self->_cardDirectoryCoordinators objectForKey:v4];
    if (!v5)
    {
LABEL_5:
      v7 = [(PDCardFileManager *)self _objectURLForUniqueID:v4];
      v8 = +[NSFileManager defaultManager];
      v9 = [v7 path];
      v10 = [v8 fileExistsAtPath:v9];

      if (v10)
      {
        v6 = [[PKDirectoryCoordinator alloc] initWithURL:v7];
        [(NSMapTable *)self->_cardDirectoryCoordinators setObject:v6 forKey:v4];
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_10;
    }

    v6 = v5;
    if ([v5 isInvalidated])
    {
      [(NSMapTable *)self->_cardDirectoryCoordinators removeObjectForKey:v4];

      goto LABEL_5;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_10:

  return v6;
}

- (void)_dc_invalidateCardDirectoryCoordinatorForUniqueID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v6 = [(NSMapTable *)self->_cardDirectoryCoordinators objectForKey:v4];
    v7 = v6;
    if (v6)
    {
      [v6 invalidate];
      [(NSMapTable *)self->_cardDirectoryCoordinators removeObjectForKey:v8];
    }

    v5 = v8;
  }

  _objc_release_x1(v4, v5);
}

- (id)_dataAccessorForCardDirectoryCoordinator:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100005B00;
    v23 = sub_10000B18C;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100005B00;
    v17 = sub_10000B18C;
    v18 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10011EC50;
    v9[3] = &unk_1008474A8;
    v11 = &v19;
    v12 = &v13;
    v10 = v5;
    [v10 performCoordinatedAction:v9];
    if (a4)
    {
      *a4 = v14[5];
    }

    v7 = v20[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_dc_cardWithUniqueID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [(PDCardFileManager *)self _dc_cardDirectoryCoordinatorForUniqueID:v6];
  objc_autoreleasePoolPop(v7);
  if (v8)
  {
    v9 = [(PDCardFileManager *)self _cardWithUniqueID:v6 cardDirectoryCoordinator:v8 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_cardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v19 = 0;
  v11 = [(PDCardFileManager *)self _dataAccessorForCardDirectoryCoordinator:v9 error:&v19];
  v12 = v19;
  if (!v11)
  {
    objc_autoreleasePoolPop(v10);
LABEL_6:
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10011EF18;
    v16[3] = &unk_100847430;
    v17 = v8;
    v18 = v12;
    [v9 performCoordinatedAction:v16];

    v13 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = [PKPass createWithValidatedFileDataAccessor:v11];

  objc_autoreleasePoolPop(v10);
  if (!v13)
  {
    goto LABEL_6;
  }

  [v13 setUniqueID:v8];
  if (a5)
  {
LABEL_7:
    v14 = v12;
    *a5 = v12;
  }

LABEL_8:

  return v13;
}

- (BOOL)_dc_writeCard:(id)a3 writtenCard:(id *)a4 diff:(id *)a5 daemonData:(id *)a6 undecryptableAssets:(id *)a7 error:(id *)a8
{
  v10 = a3;
  v11 = [v10 dataAccessor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    LOBYTE(v20) = 0;
    v19 = 0;
    goto LABEL_49;
  }

  v56 = [v10 dataAccessor];
  v13 = [v10 uniqueID];
  v55 = [v56 fileURL];
  bundleURL = [(PDCardFileManager *)self _objectURLForUniqueID:v13];
  v61 = +[NSFileManager defaultManager];
  if (!v13)
  {
    v14 = [v10 passTypeIdentifier];
    v15 = [v10 serialNumber];
    v13 = PKGeneratePassUniqueID();

    [v10 setUniqueID:v13];
  }

  v16 = [(PDCardFileManager *)self _dc_cardWithUniqueID:v13 error:0];
  v60 = [v16 sequenceCounter];
  v58 = [v10 sequenceCounter];
  if (v60)
  {
    if (v58)
    {
      v17 = [v60 integerValue];
      if (v17 > [v58 integerValue])
      {
        v18 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = [v60 integerValue];
          *&buf[12] = 2048;
          *&buf[14] = [v58 integerValue];
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Existing pass sequence counter %lu is greater than incoming pass sequence counter %lu. Ignoring.", buf, 0x16u);
        }

        v19 = 0;
        LOBYTE(v20) = 0;
LABEL_44:

        goto LABEL_45;
      }
    }
  }

  if (!v16 || ([v10 manifestHash], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "manifestHash"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqualToData:", v22), v22, v21, (v23 & 1) == 0))
  {
    v24 = PDOSTransactionCreate("PDCardFileManager");
    [(PDCardFileManager *)self _dc_invalidateCardDirectoryCoordinatorForUniqueID:v13];
    missingAssetQueue = self->_missingAssetQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011F8AC;
    block[3] = &unk_10083C4C0;
    v48 = v24;
    v73 = v48;
    v74 = self;
    v26 = v13;
    v75 = v26;
    v27 = missingAssetQueue;
    v28 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_DETACHED, block);
    dispatch_async(v27, v28);

    v29 = [(PDCardFileManager *)self _cacheURLForUniqueID:v26];
    [v61 removeItemAtURL:v29 error:0];

    if (v16)
    {
      v30 = PKTemporaryItemURLWithExtension();
      PKTemporaryItemPrepareDirectory();
      if (v30 && [v61 moveItemAtURL:bundleURL toURL:v30 error:0])
      {
        v31 = [[PKFileDataAccessor alloc] initWithFileURL:v30 error:0];
        [v16 setDataAccessor:v31];

LABEL_23:
        v20 = [v61 copyItemAtURL:v55 toURL:bundleURL error:a8];
        if (v20)
        {
          v33 = [(PDCardFileManager *)self _dc_cardDirectoryCoordinatorForUniqueID:v26];
          v47 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
          v19 = [v10 copy];
          v34 = [(PDCardFileManager *)self _dataAccessorForCardDirectoryCoordinator:v33 error:0];
          [v19 setDataAccessor:v34];

          if ([v19 passType] == 1)
          {
            [v19 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v47];
          }

          [(PDCardFileManager *)self decryptPassAssets:v19 undecryptableAssets:a7];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v77 = sub_100005B00;
          v78 = sub_10000B18C;
          v79 = 0;
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_10011F900;
          v71[3] = &unk_100847458;
          v71[4] = buf;
          [v33 performCoordinatedAction:v71];
          objc_storeStrong(a6, *(*&buf[8] + 40));
          v51 = v33;
          v35 = CFBundleCreate(kCFAllocatorDefault, bundleURL);
          if (v35)
          {
            _CFBundleFlushBundleCaches();
            _CFBundleRemoveResourceURL();
            CFRelease(v35);
          }

          if (a5 && v16)
          {
            v36 = [v16 diff:v19];
            v37 = *a5;
            *a5 = v36;
          }

          if (([v19 supportsSyncing] & 1) == 0 && (PKStoreDemoModeEnabled() & 1) == 0 && (PKUIOnlyDemoModeEnabled() & 1) == 0)
          {
            PKExcludeFileURLFromBackup();
          }

          if (v30)
          {
            [v61 removeItemAtURL:v30 error:0];
          }

          v38 = [v19 displayProfile];
          v39 = PDHeavyUtilityQueue();
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_10011F978;
          v67[3] = &unk_10083E088;
          v67[4] = self;
          v40 = v26;
          v68 = v40;
          v54 = v51;
          v69 = v54;
          v52 = v38;
          v70 = v52;
          v41 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_DETACHED, v67);
          dispatch_async(v39, v41);

          if (([v19 remoteAssetsDownloadedForSEIDs:v47] & 1) == 0)
          {
            v42 = self->_missingAssetQueue;
            v62[0] = _NSConcreteStackBlock;
            v62[1] = 3221225472;
            v62[2] = sub_10011F9D0;
            v62[3] = &unk_10083E088;
            v63 = v48;
            v64 = v54;
            v65 = self;
            v66 = v40;
            v43 = v42;
            v44 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_DETACHED, v62);
            dispatch_async(v43, v44);
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (v30)
          {
            [v61 moveItemAtURL:v30 toURL:bundleURL error:0];
          }

          v19 = 0;
        }

        v18 = v48;
        goto LABEL_44;
      }

      v32 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: failed to move aside pass %{public}@ - falling back to deleting.", buf, 0xCu);
      }

      [v61 removeItemAtURL:bundleURL error:0];
    }

    else
    {
      [v61 removeItemAtURL:bundleURL error:0];
    }

    v30 = 0;
    v16 = 0;
    goto LABEL_23;
  }

  v19 = 0;
  LOBYTE(v20) = 1;
LABEL_45:

  v45 = v20 ^ 1;
  if (!a4)
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    objc_storeStrong(a4, v19);
    LOBYTE(v20) = 1;
  }

LABEL_49:

  return v20;
}

- (BOOL)_dc_deleteCardWithUniqueID:(id)a3 cardDirectoryCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || ([v7 isInvalidated] & 1) == 0)
  {
    v10 = +[NSFileManager defaultManager];
    [(PDCardFileManager *)self _dc_invalidateCardDirectoryCoordinatorForUniqueID:v6];
    missingAssetQueue = self->_missingAssetQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011FC78;
    block[3] = &unk_10083C420;
    block[4] = self;
    v12 = v6;
    v24 = v12;
    v13 = missingAssetQueue;
    v14 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_DETACHED, block);
    dispatch_async(v13, v14);

    v15 = [(PDCardFileManager *)self _objectURLForUniqueID:v12];
    v22 = 0;
    v9 = [v10 removeItemAtURL:v15 error:&v22];
    v16 = v22;
    v17 = [(PDCardFileManager *)self _cacheURLForUniqueID:v12];
    [v10 removeItemAtURL:v17 error:0];

    v18 = PKLogFacilityTypeGetObject();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v19)
      {
        *buf = 138543362;
        v26 = v12;
        v20 = "PDCardFileManager: card was removed %{public}@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
      }
    }

    else if (v19)
    {
      *buf = 138543362;
      v26 = v16;
      v20 = "PDCardFileManager: error removing card %{public}@";
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  LOBYTE(v9) = 0;
LABEL_11:

  return v9;
}

- (void)_dc_performCacheMaintenanceActivity
{
  v3 = +[NSFileManager defaultManager];
  v4 = objc_autoreleasePoolPush();
  v61 = self;
  cardsURL = self->_cardsURL;
  v86 = 0;
  v6 = [v3 contentsOfDirectoryAtURL:cardsURL includingPropertiesForKeys:&__NSArray0__struct options:7 error:&v86];
  v7 = v86;
  v8 = v7;
  if (v6)
  {

    objc_autoreleasePoolPop(v4);
    v9 = objc_alloc_init(NSMutableSet);
    v65 = objc_alloc_init(NSMutableSet);
    context = objc_autoreleasePoolPush();
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v57 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v82 objects:v90 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v83;
      v14 = PKRawPassExtension;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v83 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v82 + 1) + 8 * i);
          v17 = [v16 lastPathComponent];
          v18 = [v17 pathExtension];

          v19 = v9;
          if (([v18 isEqualToString:v14] & 1) != 0 || (v19 = v65, objc_msgSend(v18, "isEqualToString:", @"cache")))
          {
            v20 = [v16 URLByStandardizingPath];
            [v19 addObject:v20];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v82 objects:v90 count:16];
      }

      while (v12);
    }

    objc_autoreleasePoolPop(context);
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v9;
    v21 = v65;
    v59 = [obj countByEnumeratingWithState:&v78 objects:v89 count:16];
    if (v59)
    {
      v60 = *v79;
      do
      {
        v22 = 0;
        do
        {
          if (*v79 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v78 + 1) + 8 * v22);
          v24 = objc_autoreleasePoolPush();
          v25 = sub_10011A5CC(v23);
          v26 = [(PDCardFileManager *)v61 _cacheURLForUniqueID:v25];
          v27 = [v26 URLByStandardizingPath];

          if (!v27 || ![v21 containsObject:v27])
          {
            goto LABEL_44;
          }

          [v21 removeObject:v27];
          v77 = 0;
          v28 = [v3 contentsOfDirectoryAtURL:v27 includingPropertiesForKeys:&__NSArray0__struct options:7 error:&v77];
          v29 = v77;
          v30 = v29;
          if (!v28)
          {
            v45 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v92 = v30;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Unable to enumerate cache directory: %@", buf, 0xCu);
            }

LABEL_44:
            objc_autoreleasePoolPop(v24);
            goto LABEL_45;
          }

          v62 = v22;
          v63 = v27;
          v64 = v24;

          v76 = 0u;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          v31 = v28;
          v32 = [v31 countByEnumeratingWithState:&v73 objects:v88 count:16];
          if (!v32)
          {
            goto LABEL_35;
          }

          v33 = v32;
          v34 = *v74;
          do
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v74 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v73 + 1) + 8 * j);
              v37 = [v36 lastPathComponent];
              v38 = [v37 pathExtension];

              if ([v38 isEqualToString:@"archive"])
              {
                v72 = 0;
                [v3 removeItemAtURL:v36 error:&v72];
                v39 = v72;
                v40 = PKLogFacilityTypeGetObject();
                v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
                if (v39)
                {
                  if (v41)
                  {
                    *buf = 138412290;
                    v92 = v39;
                    v42 = v40;
                    v43 = "Unable to remove obsolte cache: %@";
                    goto LABEL_31;
                  }
                }

                else if (v41)
                {
                  *buf = 138412290;
                  v92 = v36;
                  v42 = v40;
                  v43 = "Removed obsolete cache: %@";
LABEL_31:
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 0xCu);
                }
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v73 objects:v88 count:16];
          }

          while (v33);
LABEL_35:

          objc_autoreleasePoolPop(v64);
          v22 = v62 + 1;
          v21 = v65;
        }

        while ((v62 + 1) != v59);
        v59 = [obj countByEnumeratingWithState:&v78 objects:v89 count:16];
      }

      while (v59);
    }

LABEL_45:

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v46 = v21;
    v47 = [v46 countByEnumeratingWithState:&v68 objects:v87 count:16];
    if (!v47)
    {
      goto LABEL_58;
    }

    v48 = v47;
    v49 = *v69;
LABEL_47:
    v50 = 0;
    while (1)
    {
      if (*v69 != v49)
      {
        objc_enumerationMutation(v46);
      }

      v51 = *(*(&v68 + 1) + 8 * v50);
      v67 = 0;
      [v3 removeItemAtURL:v51 error:&v67];
      v52 = v67;
      v53 = PKLogFacilityTypeGetObject();
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
      if (v52)
      {
        if (v54)
        {
          *buf = 138412290;
          v92 = v52;
          v55 = v53;
          v56 = "Unable to remove cache directory: %@";
LABEL_55:
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 0xCu);
        }
      }

      else if (v54)
      {
        *buf = 138412290;
        v92 = v51;
        v55 = v53;
        v56 = "Removed cache directory with no matching pass: %@";
        goto LABEL_55;
      }

      if (v48 == ++v50)
      {
        v48 = [v46 countByEnumeratingWithState:&v68 objects:v87 count:16];
        if (!v48)
        {
LABEL_58:

          v6 = v57;
          goto LABEL_59;
        }

        goto LABEL_47;
      }
    }
  }

  v44 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v92 = v8;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Unable to enumerate cards directory: %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
LABEL_59:
}

- (void)ubiquitousCardDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = [(PDCardFileManager *)self objectWithUniqueID:v5];

  if (!v6 || ([v4 manifestHash], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "manifestHash"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToData:", v8), v8, v7, (v9 & 1) == 0))
  {
    v17 = 0;
    v12 = [(PDCardFileManager *)self writeCard:v4 source:3 error:&v17];
    v13 = PKLogFacilityTypeGetObject();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        v15 = [v4 uniqueID];
        *buf = 138412290;
        v19 = v15;
        v16 = "card updated via ubiquity: %@";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
      }
    }

    else if (v14)
    {
      v15 = [v17 localizedDescription];
      *buf = 138412290;
      v19 = v15;
      v16 = "card update via ubiquity FAILED: %@";
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 uniqueID];
    *buf = 138412290;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "card NOT updated via ubiquity - manifest hashes are equivalent: %@", buf, 0xCu);
  }

LABEL_13:
}

- (void)ubiquitousCardWithUniqueIDRemoved:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "card removed via ubiquity: %@", &v6, 0xCu);
  }

  [(PDCardFileManager *)self deleteCardWithUniqueID:v4 forReason:1 withDiagnosticReason:@"Ubiquity"];
}

- (void)ubiquitousCatalogDidChange:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "catalog received via ubiquity", buf, 2u);
  }

  v6 = [(PDCardFileManager *)self catalogOfRecord];
  v7 = v6;
  if (v6 && ([v6 isEquivalentToCatalog:v4] & 1) != 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "---> catalog not updated - equivalent to existing catalog";
      v9 = &v10;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    [(PDCardFileManager *)self writeCatalogOfRecord:v4 source:3];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v8 = "---> catalog updated";
      v9 = v11;
      goto LABEL_9;
    }
  }
}

- (id)_objectURLForUniqueID:(id)a3
{
  if (a3)
  {
    cardsURL = self->_cardsURL;
    v4 = [a3 stringByAppendingPathExtension:PKRawPassExtension];
    v5 = [(NSURL *)cardsURL URLByAppendingPathComponent:v4 isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_cacheURLForUniqueID:(id)a3
{
  if (a3)
  {
    cardsURL = self->_cardsURL;
    v4 = [a3 stringByAppendingPathExtension:@"cache"];
    v5 = [(NSURL *)cardsURL URLByAppendingPathComponent:v4 isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)receivedXPCEvent:(id)a3 forEventStream:(id)a4
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received notification of filesystem change at watched URL.", v6, 2u);
  }

  [(PDCardFileManager *)self startUbiquity];
}

- (void)_evaluateDownloadMissingAssetsActivityWithForcedReschedule:(BOOL)a3
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: evaluate download missing assets activity", &v12, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained missingRemoteAssetsPersistentStoreItemsCountWithMaximumDownloadRetriesCount:self->_maximumDownloadRetries];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    maximumDownloadRetries = self->_maximumDownloadRetries;
    v12 = 134218240;
    v13 = v7;
    v14 = 2048;
    v15 = maximumDownloadRetries;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: found %lu passes with missing remote assets with maximum retries count:%lu", &v12, 0x16u);
  }

  if (v7)
  {
    if (a3 || (PDScheduledActivityExists() & 1) == 0)
    {
      v10 = [NSDate dateWithTimeIntervalSinceNow:600.0];
      v11 = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:v10];

      [v11 setRepeating:1];
      [v11 setRepeatInterval:86400.0];
      [v11 setRequireMainsPower:1];
      [v11 setRequireNetworkConnectivity:1];
      [v11 setReason:@"Downlad missing assets"];
      PDScheduledActivityRegister();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: Missing assets maintenance activity scheduled", &v12, 2u);
      }

      v5 = v11;
      goto LABEL_17;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v9 = "PDCardFileManager: Missing assets maintenance exist, we don't need to schedule a new one";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v9, &v12, 2u);
    }
  }

  else
  {
    if (!PDScheduledActivityExists())
    {
      return;
    }

    PDScheduledActivityRemove();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v9 = "PDCardFileManager: Removed Missing assets maintenance activity";
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)_performMissingAssetDownloadActivity
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: requested download missing assets", buf, 2u);
  }

  v4 = 0;
  atomic_compare_exchange_strong(&self->_performingMissingRemoteAssetDownloadActivity, &v4, 1u);
  if (v4)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: we have pending UniqueIDs to process.", buf, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained missingRemoteAssetsPersistentStoreItemsWithMaximumDownloadRetriesCount:self->_maximumDownloadRetries];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: Will download remote missing assets from passes with uniqueIDs:%@", buf, 0xCu);
    }

    v7 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = v6;
    v8 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v3);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100120F04;
          v16[3] = &unk_10083FAF8;
          v16[4] = self;
          v16[5] = v12;
          [v7 addOperation:v16];
        }

        v9 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = +[NSNull null];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100121020;
    v15[3] = &unk_100847638;
    v15[4] = self;
    v14 = [v7 evaluateWithInput:v13 completion:v15];
  }
}

- (void)_downloadRemoteAssetsForCardWithUniqueID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v22 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDCardFileManager: downloading missing assets for pass %@", &buf, 0xCu);
  }

  v20 = PDOSTransactionCreate("PDCardFileManager.remote_asset_download");
  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = sub_100005B00;
  v53 = sub_10000B18C;
  v54 = 0;
  directoryCoordinator = self->_directoryCoordinator;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001215D4;
  v46[3] = &unk_1008473B8;
  p_buf = &buf;
  v46[4] = self;
  v19 = v6;
  v47 = v19;
  [(PKDirectoryCoordinator *)directoryCoordinator performCoordinatedAction:v46];
  v21 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v9 = [(PDCardFileManager *)self _dataAccessorForCardDirectoryCoordinator:*(*(&buf + 1) + 40) error:0];
  v25 = [v9 remoteAssetManagerForSEIDs:v21];

  if (*(*(&buf + 1) + 40) && v25)
  {
    v10 = [v25 pendingRemoteAssetsItems];
    v11 = [v10 count];
    if (v11)
    {
      v24 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v18 = v11;
      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x2020000000;
      v45[3] = 0;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v10;
      v12 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v12)
      {
        v13 = *v42;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v42 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v41 + 1) + 8 * i);
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_100121624;
            v35[3] = &unk_100847660;
            v39 = &buf;
            v36 = v25;
            v37 = v15;
            v38 = self;
            v40 = v45;
            [v24 addOperation:v35];
          }

          v12 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v12);
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10012178C;
      v34[3] = &unk_10083C848;
      v34[4] = self;
      [v24 addOperation:v34];
      v16 = +[NSNull null];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10012186C;
      v26[3] = &unk_1008476B0;
      v27 = v20;
      v31 = &buf;
      v30 = v22;
      v28 = self;
      v32 = v45;
      v33 = v18;
      v29 = v19;
      v17 = [v24 evaluateWithInput:v16 completion:v26];

      _Block_object_dispose(v45, 8);
    }

    else if (v22)
    {
      v22[2]();
    }
  }

  else if (v22)
  {
    v22[2]();
  }

  _Block_object_dispose(&buf, 8);
}

@end