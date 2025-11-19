@interface BCCloudChangeTokenController
- (BCCloudChangeTokenController)initWithMOC:(id)a3 zoneName:(id)a4 cloudKitController:(id)a5;
- (BCCloudKitController)cloudKitController;
- (NSManagedObjectContext)moc;
- (void)deleteCloudDataWithCompletion:(id)a3;
- (void)serverChangeTokenWithCompletion:(id)a3;
- (void)setEnableCloudSync:(BOOL)a3;
- (void)storeServerChangeToken:(id)a3 completion:(id)a4;
- (void)updateSaltVersionIdentifier:(id)a3 completion:(id)a4;
- (void)zoneNeedsUpdate:(id)a3 completion:(id)a4;
@end

@implementation BCCloudChangeTokenController

- (BCCloudChangeTokenController)initWithMOC:(id)a3 zoneName:(id)a4 cloudKitController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = BCCloudChangeTokenController;
  v11 = [(BCCloudChangeTokenController *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_moc, v8);
    v13 = [v9 copy];
    zoneName = v12->_zoneName;
    v12->_zoneName = v13;

    v15 = objc_storeWeak(&v12->_cloudKitController, v10);
    v16 = [v10 didChangeContainer];

    if (v16)
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

- (void)setEnableCloudSync:(BOOL)a3
{
  v3 = a3;
  v5 = +[BULogUtilities shared];
  v6 = [v5 verboseLoggingEnabled];

  if (v6)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v3)
      {
        v8 = @"YES";
      }

      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController #enableCloudSync setEnableCloudSync %@\\"", &v14, 0xCu);
    }
  }

  if (self->_enableCloudSync != v3)
  {
    self->_enableCloudSync = v3;
    if (v3)
    {
      v9 = [CKRecordZoneID alloc];
      v10 = [(BCCloudChangeTokenController *)self zoneName];
      v11 = [v9 initWithZoneName:v10 ownerName:CKCurrentUserDefaultName];

      v12 = [(BCCloudChangeTokenController *)self cloudKitController];
      v13 = [v12 privateCloudDatabaseController];
      [v13 registerServerChangeTokenStore:self forZoneID:v11];
    }

    else
    {
      v11 = [(BCCloudChangeTokenController *)self cloudKitController];
      v12 = [v11 privateCloudDatabaseController];
      [v12 unregisterServerChangeTokenStore:self];
    }
  }
}

- (void)zoneNeedsUpdate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BCCloudChangeTokenController *)self moc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100058DC8;
  v11[3] = &unk_100240488;
  v11[4] = self;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlock:v11];
}

- (void)updateSaltVersionIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BCCloudChangeTokenController *)self moc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005921C;
  v11[3] = &unk_100240488;
  v11[4] = self;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlock:v11];
}

- (void)deleteCloudDataWithCompletion:(id)a3
{
  v4 = a3;
  [(BCCloudChangeTokenController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000596EC;
  v8 = v7[3] = &unk_1002404D8;
  v9 = self;
  v10 = v4;
  v5 = v4;
  v6 = v8;
  [v6 performBlock:v7];
}

- (void)storeServerChangeToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BCCloudChangeTokenController *)self enableCloudSync])
  {
    v8 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v6 encodeWithCoder:v8];
    [v8 finishEncoding];
    v9 = [v8 encodedData];
    v10 = [(BCCloudChangeTokenController *)self moc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100059B6C;
    v18[3] = &unk_100241648;
    v18[4] = self;
    v19 = v6;
    v20 = v10;
    v21 = v9;
    v22 = v7;
    v11 = v9;
    v12 = v10;
    [v12 performBlock:v18];
  }

  else
  {
    v13 = +[BULogUtilities shared];
    v14 = [v13 verboseLoggingEnabled];

    if (v14)
    {
      v15 = sub_10000DB80();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(BCCloudChangeTokenController *)self zoneName];
        *buf = 138412546;
        v24 = v16;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController - #recordChange zone: %@ NOT storing server change token: %@\\"", buf, 0x16u);
      }
    }

    v17 = objc_retainBlock(v7);
    v8 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17);
    }
  }
}

- (void)serverChangeTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudChangeTokenController *)self moc];
  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(BCCloudChangeTokenController *)self zoneName];
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BCCloudChangeTokenController - serverChangeTokenWithCompletion: %@", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100059EFC;
  v10[3] = &unk_1002404D8;
  v11 = v5;
  v12 = self;
  v13 = v4;
  v8 = v4;
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