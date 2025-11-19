@interface BCCloudCollectionsManager
+ (id)sharedClientXPCProxy;
+ (id)sharedManager;
- (NSManagedObjectModel)objectModel;
- (id)initClientXPCProxy;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
@end

@implementation BCCloudCollectionsManager

+ (id)sharedManager
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v2, sel_sharedClientXPCProxy);
}

+ (id)sharedClientXPCProxy
{
  if (qword_1EE2B0530 != -1)
  {
    sub_1E45E50D4();
  }

  v3 = qword_1EE2B0528;

  return v3;
}

- (id)initClientXPCProxy
{
  v6.receiver = self;
  v6.super_class = BCCloudCollectionsManager;
  v2 = [(BCCloudCollectionsManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;

    objc_storeStrong(&v2->_collectionDetailManager, v2->_serviceProxy);
    objc_storeStrong(&v2->_collectionMemberManager, v2->_serviceProxy);
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
    v5 = [v4 pathForResource:@"BCCloudCollections" ofType:@"momd"];

    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
    v7 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v6];
    v8 = self->_objectModel;
    self->_objectModel = v7;

    objectModel = self->_objectModel;
  }

  return objectModel;
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionsManager dissociateCloudDataFromSyncWithCompletion", v7, 2u);
  }

  v6 = [(BCCloudCollectionsManager *)self serviceProxy];
  [v6 dissociateCloudDataFromSyncWithCompletion:v4];
}

@end