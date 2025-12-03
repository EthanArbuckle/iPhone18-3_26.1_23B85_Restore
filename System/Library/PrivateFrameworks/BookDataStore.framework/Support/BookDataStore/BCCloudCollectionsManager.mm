@interface BCCloudCollectionsManager
+ (id)sharedManager;
+ (id)sharedService;
+ (void)deleteCloudDataWithCompletion:(id)completion;
- (NSManagedObjectModel)objectModel;
- (id)collectionDetailManagerInstance;
- (id)collectionMemberManagerInstance;
- (id)initService;
- (void)dataSource:(id)source storeDidReset:(id)reset;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier;
@end

@implementation BCCloudCollectionsManager

+ (id)sharedManager
{
  v2 = objc_opt_class();

  return [v2 sharedService];
}

+ (id)sharedService
{
  if (qword_100274AD8[0] != -1)
  {
    sub_1001C3D10();
  }

  v3 = qword_100274AD0;

  return v3;
}

- (id)initService
{
  v22.receiver = self;
  v22.super_class = BCCloudCollectionsManager;
  v2 = [(BCCloudCollectionsManager *)&v22 init];
  if (v2)
  {
    v3 = sub_100002660();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing BCCloudCollectionsManager - Service mode", v21, 2u);
    }

    v4 = +[BCCloudKitController sharedInstance];
    v5 = [BCCloudDataSource alloc];
    objectModel = [(BCCloudCollectionsManager *)v2 objectModel];
    v7 = [(BCCloudDataSource *)v5 initWithManagedObjectModel:objectModel nameOnDisk:@"BCCloudCollections" delegate:v2];
    collectionDataSource = v2->_collectionDataSource;
    v2->_collectionDataSource = v7;

    v9 = [[BCCloudCollectionDetailManager alloc] initWithCloudDataSource:v2->_collectionDataSource cloudKitController:v4];
    collectionDetailManager = v2->_collectionDetailManager;
    v2->_collectionDetailManager = v9;

    v11 = [[BCCloudCollectionMemberManager alloc] initWithCloudDataSource:v2->_collectionDataSource cloudKitController:v4];
    collectionMemberManager = v2->_collectionMemberManager;
    v2->_collectionMemberManager = v11;

    v13 = [BCCloudChangeTokenController alloc];
    managedObjectContext = [(BCCloudDataSource *)v2->_collectionDataSource managedObjectContext];
    v15 = [(BCCloudChangeTokenController *)v13 initWithMOC:managedObjectContext zoneName:@"CollectionZone" cloudKitController:v4];
    changeTokenController = v2->_changeTokenController;
    v2->_changeTokenController = v15;

    v17 = [[BDSSaltVersionIdentifierManager alloc] initWithZoneDataManager:v2 tokenController:v2->_changeTokenController databaseController:0];
    saltVersionIdentifierManager = v2->_saltVersionIdentifierManager;
    v2->_saltVersionIdentifierManager = v17;

    v19 = +[_TtC14bookdatastored13BDSSyncEngine shared];
    [v19 addSaltChangeObserver:v2];
  }

  return v2;
}

- (NSManagedObjectModel)objectModel
{
  objectModel = self->_objectModel;
  if (!objectModel)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"BCCloudCollections" ofType:@"momd"];

    v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
    v7 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v6];
    v8 = self->_objectModel;
    self->_objectModel = v7;

    objectModel = self->_objectModel;
  }

  return objectModel;
}

- (id)collectionDetailManagerInstance
{
  objc_opt_class();
  collectionDetailManager = [(BCCloudCollectionsManager *)self collectionDetailManager];
  v4 = BUDynamicCast();

  return v4;
}

- (id)collectionMemberManagerInstance
{
  objc_opt_class();
  collectionMemberManager = [(BCCloudCollectionsManager *)self collectionMemberManager];
  v4 = BUDynamicCast();

  return v4;
}

- (void)dataSource:(id)source storeDidReset:(id)reset
{
  resetCopy = reset;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = resetCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionsManager dataSource:storeDidReset:%{public}@", &v8, 0xCu);
  }

  v6 = [[CKRecordZoneID alloc] initWithZoneName:@"CollectionZone" ownerName:CKCurrentUserDefaultName];
  v7 = +[_TtC14bookdatastored13BDSSyncEngine shared];
  [v7 resetChangeToken:v6];
}

- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  saltVersionIdentifierManager = [(BCCloudCollectionsManager *)self saltVersionIdentifierManager];
  [saltVersionIdentifierManager handleSaltVersionIdentifierChange:identifierCopy completion:&stru_100241F60];
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NSMutableArray);
  collectionDetailManagerInstance = [(BCCloudCollectionsManager *)self collectionDetailManagerInstance];
  [v5 bds_addObjectIfNotNil:collectionDetailManagerInstance];

  collectionMemberManagerInstance = [(BCCloudCollectionsManager *)self collectionMemberManagerInstance];
  [v5 bds_addObjectIfNotNil:collectionMemberManagerInstance];

  v8 = sub_10000DC08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BCCloudCollectionsManager hasSaltChangedWithCompletion %@", &v9, 0xCu);
  }

  [v5 bds_chainUntilNoErrorCompletionSelectorCallsForSelector:"hasSaltChangedWithCompletion:" completion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000DC08();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionsManager dissociateCloudDataFromSyncWithCompletion", v10, 2u);
  }

  collectionDetailManagerInstance = [(BCCloudCollectionsManager *)self collectionDetailManagerInstance];
  v11[0] = collectionDetailManagerInstance;
  collectionMemberManagerInstance = [(BCCloudCollectionsManager *)self collectionMemberManagerInstance];
  changeTokenController = self->_changeTokenController;
  v11[1] = collectionMemberManagerInstance;
  v11[2] = changeTokenController;
  v9 = [NSArray arrayWithObjects:v11 count:3];
  [v9 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:"dissociateCloudDataFromSyncWithCompletion:" completion:completionCopy];
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
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudCollectionsManager deleteCloudDataWithCompletion:\\"", v7, 2u);
    }
  }

  [BCCloudDataSource deleteCloudDataWithCompletion:completionCopy];
}

@end