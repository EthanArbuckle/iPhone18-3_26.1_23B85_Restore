@interface BCCloudAssetManager
+ (id)sharedClientXPCProxy;
+ (id)sharedManager;
- (NSManagedObjectModel)objectModel;
- (id)initClientXPCProxy;
- (void)dealloc;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
@end

@implementation BCCloudAssetManager

+ (id)sharedManager
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v2, sel_sharedClientXPCProxy);
}

+ (id)sharedClientXPCProxy
{
  if (qword_1EE2B0538 != -1)
  {
    sub_1E45E581C();
  }

  v3 = qword_1EE2B0520;

  return v3;
}

- (id)initClientXPCProxy
{
  v22.receiver = self;
  v22.super_class = BCCloudAssetManager;
  v2 = [(BCCloudAssetManager *)&v22 init];
  if (v2)
  {
    v3 = BDSCloudKitLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_DEFAULT, "Initializing BCCloudAssetManager - Proxy Build", v21, 2u);
    }

    v4 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v4;

    objc_storeStrong(&v2->_assetDetailManager, v2->_serviceProxy);
    objc_storeStrong(&v2->_readingNowDetailManager, v2->_serviceProxy);
    objc_storeStrong(&v2->_assetReviewManager, v2->_serviceProxy);
    objc_storeStrong(&v2->_storeAssetManager, v2->_serviceProxy);
    v6 = [BCCloudDataSource alloc];
    objectModel = [(BCCloudAssetManager *)v2 objectModel];
    v8 = [(BCCloudDataSource *)v6 initWithManagedObjectModel:objectModel nameOnDisk:@"BCAssetData"];
    assetDataSource = v2->_assetDataSource;
    v2->_assetDataSource = v8;

    v10 = [BCCloudAssetAnnotationManager alloc];
    v11 = v2->_assetDataSource;
    v12 = +[BCCloudKitController sharedInstance];
    v13 = [(BCCloudAssetAnnotationManager *)v10 initWithCloudDataSource:v11 cloudKitController:v12];
    assetAnnotationManager = v2->_assetAnnotationManager;
    v2->_assetAnnotationManager = v13;

    v15 = +[BCCloudKitController sharedInstance];
    v16 = [BCCloudChangeTokenController alloc];
    managedObjectContext = [(BCCloudDataSource *)v2->_assetDataSource managedObjectContext];
    v18 = [(BCCloudChangeTokenController *)v16 initWithMOC:managedObjectContext zoneName:@"AssetZone" cloudKitController:v15];
    changeTokenController = v2->_changeTokenController;
    v2->_changeTokenController = v18;

    v2->_proxyMode = 1;
  }

  return v2;
}

- (NSManagedObjectModel)objectModel
{
  objectModel = self->_objectModel;
  if (!objectModel)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"BCAssetData" ofType:@"momd"];

    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
    v7 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v6];
    v8 = self->_objectModel;
    self->_objectModel = v7;

    objectModel = self->_objectModel;
  }

  return objectModel;
}

- (void)dealloc
{
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "Dealloc BCCloudAssetManager", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = BCCloudAssetManager;
  [(BCCloudAssetManager *)&v4 dealloc];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  v12[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BCCloudAssetManager dissociateCloudDataFromSyncWithCompletion - Proxy modee", v11, 2u);
  }

  serviceProxy = [(BCCloudAssetManager *)self serviceProxy];
  v12[0] = serviceProxy;
  assetAnnotationManager = [(BCCloudAssetManager *)self assetAnnotationManager];
  v12[1] = assetAnnotationManager;
  changeTokenController = [(BCCloudAssetManager *)self changeTokenController];
  v12[2] = changeTokenController;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  [v9 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:sel_dissociateCloudDataFromSyncWithCompletion_ completion:completionCopy];

  v10 = *MEMORY[0x1E69E9840];
}

@end