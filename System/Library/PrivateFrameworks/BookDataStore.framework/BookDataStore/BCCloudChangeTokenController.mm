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

- (void)setEnableCloudSync:(BOOL)sync
{
  syncCopy = sync;
  v17 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (syncCopy)
      {
        v8 = @"YES";
      }

      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController #enableCloudSync setEnableCloudSync %@\\"", &v15, 0xCu);
    }
  }

  if (self->_enableCloudSync != syncCopy)
  {
    self->_enableCloudSync = syncCopy;
    if (syncCopy)
    {
      v9 = objc_alloc(MEMORY[0x1E695BA90]);
      zoneName = [(BCCloudChangeTokenController *)self zoneName];
      cloudKitController2 = [v9 initWithZoneName:zoneName ownerName:*MEMORY[0x1E695B728]];

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

  v14 = *MEMORY[0x1E69E9840];
}

- (void)zoneNeedsUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v8 = [(BCCloudChangeTokenController *)self moc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E462C26C;
  v12[3] = &unk_1E8759CE0;
  v12[4] = self;
  v13 = updateCopy;
  v14 = v8;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = v8;
  v11 = updateCopy;
  [v10 performBlock:v12];
}

- (void)updateSaltVersionIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = [(BCCloudChangeTokenController *)self moc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E462C6C0;
  v12[3] = &unk_1E8759CE0;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = v8;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = v8;
  v11 = identifierCopy;
  [v10 performBlock:v12];
}

- (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(BCCloudChangeTokenController *)self moc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E462CB90;
  v8[3] = &unk_1E875A470;
  v9 = v5;
  selfCopy = self;
  v11 = completionCopy;
  v6 = completionCopy;
  v7 = v5;
  [v7 performBlock:v8];
}

- (void)storeServerChangeToken:(id)token completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  completionCopy = completion;
  if ([(BCCloudChangeTokenController *)self enableCloudSync])
  {
    v8 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [tokenCopy encodeWithCoder:v8];
    [v8 finishEncoding];
    encodedData = [v8 encodedData];
    v10 = [(BCCloudChangeTokenController *)self moc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E462D010;
    v19[3] = &unk_1E875AC10;
    v19[4] = self;
    v20 = tokenCopy;
    v21 = v10;
    v22 = encodedData;
    v23 = completionCopy;
    v11 = encodedData;
    v12 = v10;
    [v12 performBlock:v19];
  }

  else
  {
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v15 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        zoneName = [(BCCloudChangeTokenController *)self zoneName];
        *buf = 138412546;
        v25 = zoneName;
        v26 = 2112;
        v27 = tokenCopy;
        _os_log_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController - #recordChange zone: %@ NOT storing server change token: %@\\"", buf, 0x16u);
      }
    }

    v17 = _Block_copy(completionCopy);
    v8 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)serverChangeTokenWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [(BCCloudChangeTokenController *)self moc];
  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    zoneName = [(BCCloudChangeTokenController *)self zoneName];
    *buf = 138412290;
    v16 = zoneName;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_INFO, "BCCloudChangeTokenController - serverChangeTokenWithCompletion: %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E462D3A0;
  v11[3] = &unk_1E875A470;
  v12 = v5;
  selfCopy = self;
  v14 = completionCopy;
  v8 = completionCopy;
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