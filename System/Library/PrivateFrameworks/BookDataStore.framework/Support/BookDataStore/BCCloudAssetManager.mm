@interface BCCloudAssetManager
+ (id)sharedManager;
+ (id)sharedService;
+ (void)deleteCloudDataWithCompletion:(id)completion;
- (NSManagedObjectModel)objectModel;
- (id)assetDetailManagerInstance;
- (id)assetReviewManagerInstance;
- (id)initService;
- (id)readingNowDetailManagerInstance;
- (id)storeAssetManagerInstance;
- (void)dealloc;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
@end

@implementation BCCloudAssetManager

+ (id)sharedManager
{
  v2 = objc_opt_class();

  return [v2 sharedService];
}

+ (id)sharedService
{
  if (qword_100274AA0 != -1)
  {
    sub_1001C1DC0();
  }

  v3 = qword_100274A98;

  return v3;
}

- (id)initService
{
  v26.receiver = self;
  v26.super_class = BCCloudAssetManager;
  v2 = [(BCCloudAssetManager *)&v26 init];
  if (v2)
  {
    v3 = +[BCCloudKitController sharedInstance];
    v4 = [BCCloudDataSource alloc];
    objectModel = [(BCCloudAssetManager *)v2 objectModel];
    v6 = [(BCCloudDataSource *)v4 initWithManagedObjectModel:objectModel nameOnDisk:@"BCAssetData"];
    assetDataSource = v2->_assetDataSource;
    v2->_assetDataSource = v6;

    v8 = [BCCloudChangeTokenController alloc];
    managedObjectContext = [(BCCloudDataSource *)v2->_assetDataSource managedObjectContext];
    v10 = [(BCCloudChangeTokenController *)v8 initWithMOC:managedObjectContext zoneName:@"AssetZone" cloudKitController:v3];
    changeTokenController = v2->_changeTokenController;
    v2->_changeTokenController = v10;

    v12 = [BDSSaltVersionIdentifierManager alloc];
    v13 = v2->_changeTokenController;
    privateCloudDatabaseController = [v3 privateCloudDatabaseController];
    v15 = [(BDSSaltVersionIdentifierManager *)v12 initWithZoneDataManager:v2 tokenController:v13 databaseController:privateCloudDatabaseController];
    saltVersionIdentifierManager = v2->_saltVersionIdentifierManager;
    v2->_saltVersionIdentifierManager = v15;

    v17 = [[BCCloudStoreAssetManager alloc] initWithCloudDataSource:v2->_assetDataSource cloudKitController:v3];
    storeAssetManager = v2->_storeAssetManager;
    v2->_storeAssetManager = v17;

    v19 = [[BCCloudAssetReviewManager alloc] initWithCloudDataSource:v2->_assetDataSource cloudKitController:v3];
    assetReviewManager = v2->_assetReviewManager;
    v2->_assetReviewManager = v19;

    v21 = [[BCCloudAssetDetailManager alloc] initWithCloudDataSource:v2->_assetDataSource cloudKitController:v3];
    assetDetailManager = v2->_assetDetailManager;
    v2->_assetDetailManager = v21;

    v23 = [[BCCloudReadingNowDetailManager alloc] initWithCloudDataSource:v2->_assetDataSource cloudKitController:v3];
    readingNowDetailManager = v2->_readingNowDetailManager;
    v2->_readingNowDetailManager = v23;
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dealloc BCCloudAssetManager", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = BCCloudAssetManager;
  [(BCCloudAssetManager *)&v4 dealloc];
}

- (NSManagedObjectModel)objectModel
{
  objectModel = self->_objectModel;
  if (!objectModel)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"BCAssetData" ofType:@"momd"];

    v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
    v7 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v6];
    v8 = self->_objectModel;
    self->_objectModel = v7;

    objectModel = self->_objectModel;
  }

  return objectModel;
}

- (id)assetDetailManagerInstance
{
  objc_opt_class();
  assetDetailManager = [(BCCloudAssetManager *)self assetDetailManager];
  v4 = BUDynamicCast();

  return v4;
}

- (id)readingNowDetailManagerInstance
{
  objc_opt_class();
  readingNowDetailManager = [(BCCloudAssetManager *)self readingNowDetailManager];
  v4 = BUDynamicCast();

  return v4;
}

- (id)assetReviewManagerInstance
{
  objc_opt_class();
  assetReviewManager = [(BCCloudAssetManager *)self assetReviewManager];
  v4 = BUDynamicCast();

  return v4;
}

- (id)storeAssetManagerInstance
{
  objc_opt_class();
  storeAssetManager = [(BCCloudAssetManager *)self storeAssetManager];
  v4 = BUDynamicCast();

  return v4;
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NSMutableArray);
  storeAssetManagerInstance = [(BCCloudAssetManager *)self storeAssetManagerInstance];
  [v5 bds_addObjectIfNotNil:storeAssetManagerInstance];

  assetDetailManagerInstance = [(BCCloudAssetManager *)self assetDetailManagerInstance];
  [v5 bds_addObjectIfNotNil:assetDetailManagerInstance];

  readingNowDetailManagerInstance = [(BCCloudAssetManager *)self readingNowDetailManagerInstance];
  [v5 bds_addObjectIfNotNil:readingNowDetailManagerInstance];

  assetReviewManagerInstance = [(BCCloudAssetManager *)self assetReviewManagerInstance];
  [v5 bds_addObjectIfNotNil:assetReviewManagerInstance];

  v10 = sub_10000DC08();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BCCloudAssetManager hasSaltChangedWithCompletion with managers:%@", &v11, 0xCu);
  }

  [v5 bds_chainUntilNoErrorCompletionSelectorCallsForSelector:"hasSaltChangedWithCompletion:" completion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BCCloudAssetManager dissociateCloudDataFromSyncWithCompletion - Service mode - non watch", v12, 2u);
  }

  storeAssetManagerInstance = [(BCCloudAssetManager *)self storeAssetManagerInstance];
  v13[0] = storeAssetManagerInstance;
  assetDetailManagerInstance = [(BCCloudAssetManager *)self assetDetailManagerInstance];
  v13[1] = assetDetailManagerInstance;
  readingNowDetailManagerInstance = [(BCCloudAssetManager *)self readingNowDetailManagerInstance];
  v13[2] = readingNowDetailManagerInstance;
  assetReviewManagerInstance = [(BCCloudAssetManager *)self assetReviewManagerInstance];
  v13[3] = assetReviewManagerInstance;
  changeTokenController = [(BCCloudAssetManager *)self changeTokenController];
  v13[4] = changeTokenController;
  v11 = [NSArray arrayWithObjects:v13 count:5];
  [v11 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:"dissociateCloudDataFromSyncWithCompletion:" completion:completionCopy];
}

+ (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v4 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v6 = sub_10000DB80();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudAssetManager deleteCloudDataWithCompletion:\\"", v7, 2u);
    }
  }

  [BCCloudDataSource deleteCloudDataWithCompletion:completionCopy];
}

@end