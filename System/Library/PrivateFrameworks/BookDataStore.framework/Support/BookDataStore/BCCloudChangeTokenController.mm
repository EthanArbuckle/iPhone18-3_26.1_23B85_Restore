@interface BCCloudChangeTokenController
- (BCCloudChangeTokenController)initWithMOC:(id)c zoneName:(id)name cloudKitController:(id)controller;
- (BCCloudKitController)cloudKitController;
- (NSManagedObjectContext)moc;
- (void)deleteCloudDataWithCompletion:(id)completion;
- (void)serverChangeTokenWithCompletion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)storeServerChangeToken:(id)token completion:(id)completion;
- (void)updateSaltVersionIdentifier:(id)identifier completion:(id)completion;
- (void)zoneNeedsUpdate:(id)update completion:(id)completion;
@end

@implementation BCCloudChangeTokenController

- (BCCloudChangeTokenController)initWithMOC:(id)c zoneName:(id)name cloudKitController:(id)controller
{
  cCopy = c;
  nameCopy = name;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = BCCloudChangeTokenController;
  v11 = [(BCCloudChangeTokenController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_moc, cCopy);
    v13 = [nameCopy copy];
    zoneName = v12->_zoneName;
    v12->_zoneName = v13;

    v15 = objc_storeWeak(&v12->_cloudKitController, controllerCopy);
    didChangeContainer = [controllerCopy didChangeContainer];

    if (didChangeContainer)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100058A3C;
      v18[3] = &unk_100240FC8;
      v19 = v12;
      [(BCCloudChangeTokenController *)v19 dissociateCloudDataFromSyncWithCompletion:v18];
    }
  }

  return v12;
}

- (void)setEnableCloudSync:(BOOL)sync
{
  syncCopy = sync;
  v5 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v5 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (syncCopy)
      {
        v8 = @"YES";
      }

      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController #enableCloudSync setEnableCloudSync %@\\"", &v14, 0xCu);
    }
  }

  if (self->_enableCloudSync != syncCopy)
  {
    self->_enableCloudSync = syncCopy;
    if (syncCopy)
    {
      v9 = [CKRecordZoneID alloc];
      zoneName = [(BCCloudChangeTokenController *)self zoneName];
      cloudKitController2 = [v9 initWithZoneName:zoneName ownerName:CKCurrentUserDefaultName];

      cloudKitController = [(BCCloudChangeTokenController *)self cloudKitController];
      privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];
      [privateCloudDatabaseController registerServerChangeTokenStore:self forZoneID:cloudKitController2];
    }

    else
    {
      cloudKitController2 = [(BCCloudChangeTokenController *)self cloudKitController];
      cloudKitController = [cloudKitController2 privateCloudDatabaseController];
      [cloudKitController unregisterServerChangeTokenStore:self];
    }
  }
}

- (void)zoneNeedsUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  [(BCCloudChangeTokenController *)self moc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100058DC8;
  v11[3] = &unk_100240488;
  v11[4] = self;
  v13 = v12 = updateCopy;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = v13;
  v10 = updateCopy;
  [v9 performBlock:v11];
}

- (void)updateSaltVersionIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  [(BCCloudChangeTokenController *)self moc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005921C;
  v11[3] = &unk_100240488;
  v11[4] = self;
  v13 = v12 = identifierCopy;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = v13;
  v10 = identifierCopy;
  [v9 performBlock:v11];
}

- (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BCCloudChangeTokenController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000596EC;
  v8 = v7[3] = &unk_1002404D8;
  selfCopy = self;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [v6 performBlock:v7];
}

- (void)storeServerChangeToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  if ([(BCCloudChangeTokenController *)self enableCloudSync])
  {
    v8 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [tokenCopy encodeWithCoder:v8];
    [v8 finishEncoding];
    encodedData = [v8 encodedData];
    v10 = [(BCCloudChangeTokenController *)self moc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100059B6C;
    v18[3] = &unk_100241648;
    v18[4] = self;
    v19 = tokenCopy;
    v20 = v10;
    v21 = encodedData;
    v22 = completionCopy;
    v11 = encodedData;
    v12 = v10;
    [v12 performBlock:v18];
  }

  else
  {
    v13 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v13 verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v15 = sub_10000DB80();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        zoneName = [(BCCloudChangeTokenController *)self zoneName];
        *buf = 138412546;
        v24 = zoneName;
        v25 = 2112;
        v26 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController - #recordChange zone: %@ NOT storing server change token: %@\\"", buf, 0x16u);
      }
    }

    v17 = objc_retainBlock(completionCopy);
    v8 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17);
    }
  }
}

- (void)serverChangeTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(BCCloudChangeTokenController *)self moc];
  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    zoneName = [(BCCloudChangeTokenController *)self zoneName];
    *buf = 138412290;
    v15 = zoneName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BCCloudChangeTokenController - serverChangeTokenWithCompletion: %@", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100059EFC;
  v10[3] = &unk_1002404D8;
  v11 = v5;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = v5;
  [v9 performBlock:v10];
}

- (NSManagedObjectContext)moc
{
  WeakRetained = objc_loadWeakRetained(&self->_moc);

  return WeakRetained;
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end