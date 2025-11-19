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
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1E462BEE0;
      v18[3] = &unk_1E875ABE8;
      v19 = v12;
      [(BCCloudChangeTokenController *)v19 dissociateCloudDataFromSyncWithCompletion:v18];
    }
  }

  return v12;
}

- (void)setEnableCloudSync:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698F550] shared];
  v6 = [v5 verboseLoggingEnabled];

  if (v6)
  {
    v7 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v3)
      {
        v8 = @"YES";
      }

      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != v3)
  {
    self->_enableCloudSync = v3;
    if (v3)
    {
      v9 = objc_alloc(MEMORY[0x1E695BA90]);
      v10 = [(BCCloudChangeTokenController *)self zoneName];
      v11 = [v9 initWithZoneName:v10 ownerName:*MEMORY[0x1E695B728]];

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

  v14 = *MEMORY[0x1E69E9840];
}

- (void)zoneNeedsUpdate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudChangeTokenController *)self moc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E462C26C;
  v12[3] = &unk_1E8759CE0;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v7;
  v10 = v8;
  v11 = v6;
  [v10 performBlock:v12];
}

- (void)updateSaltVersionIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudChangeTokenController *)self moc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E462C6C0;
  v12[3] = &unk_1E8759CE0;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v7;
  v10 = v8;
  v11 = v6;
  [v10 performBlock:v12];
}

- (void)deleteCloudDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudChangeTokenController *)self moc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E462CB90;
  v8[3] = &unk_1E875A470;
  v9 = v5;
  v10 = self;
  v11 = v4;
  v6 = v4;
  v7 = v5;
  [v7 performBlock:v8];
}

- (void)storeServerChangeToken:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(BCCloudChangeTokenController *)self enableCloudSync])
  {
    v8 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v6 encodeWithCoder:v8];
    [v8 finishEncoding];
    v9 = [v8 encodedData];
    v10 = [(BCCloudChangeTokenController *)self moc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E462D010;
    v19[3] = &unk_1E875AC10;
    v19[4] = self;
    v20 = v6;
    v21 = v10;
    v22 = v9;
    v23 = v7;
    v11 = v9;
    v12 = v10;
    [v12 performBlock:v19];
  }

  else
  {
    v13 = [MEMORY[0x1E698F550] shared];
    v14 = [v13 verboseLoggingEnabled];

    if (v14)
    {
      v15 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(BCCloudChangeTokenController *)self zoneName];
        *buf = 138412546;
        v25 = v16;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController - #recordChange zone: %@ NOT storing server change token: %@\\"", buf, 0x16u);
      }
    }

    v17 = _Block_copy(v7);
    v8 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)serverChangeTokenWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BCCloudChangeTokenController *)self moc];
  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(BCCloudChangeTokenController *)self zoneName];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_INFO, "BCCloudChangeTokenController - serverChangeTokenWithCompletion: %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E462D3A0;
  v11[3] = &unk_1E875A470;
  v12 = v5;
  v13 = self;
  v14 = v4;
  v8 = v4;
  v9 = v5;
  [v9 performBlock:v11];

  v10 = *MEMORY[0x1E69E9840];
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