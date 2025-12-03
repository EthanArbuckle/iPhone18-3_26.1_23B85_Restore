@interface BDSSaltVersionIdentifierManager
- (BCCloudChangeTokenController)tokenController;
- (BDSCloudKitSupportZoneRecovery)zoneDataManager;
- (BDSSaltVersionIdentifierManager)initWithZoneDataManager:(id)manager tokenController:(id)controller databaseController:(id)databaseController;
- (NSString)description;
- (void)handleSaltVersionIdentifierChange:(id)change completion:(id)completion;
@end

@implementation BDSSaltVersionIdentifierManager

- (BDSSaltVersionIdentifierManager)initWithZoneDataManager:(id)manager tokenController:(id)controller databaseController:(id)databaseController
{
  v29 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  controllerCopy = controller;
  databaseControllerCopy = databaseController;
  v22.receiver = self;
  v22.super_class = BDSSaltVersionIdentifierManager;
  v11 = [(BDSSaltVersionIdentifierManager *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_zoneDataManager, managerCopy);
    objc_storeWeak(&v12->_tokenController, controllerCopy);
    zoneName = [controllerCopy zoneName];
    v14 = [zoneName copy];
    zoneName = v12->_zoneName;
    v12->_zoneName = v14;

    [databaseControllerCopy addObserver:v12 zoneID:v12->_zoneName];
    v16 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&v12->_zoneDataManager);
      v18 = objc_loadWeakRetained(&v12->_tokenController);
      v19 = v12->_zoneName;
      *buf = 138412802;
      v24 = WeakRetained;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_INFO, "[BDSSaltVersionIdentifierManager] init with %@ %@. Adding to zone:(%@)", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)handleSaltVersionIdentifierChange:(id)change completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  completionCopy = completion;
  zoneName = [(BDSSaltVersionIdentifierManager *)self zoneName];
  v9 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = zoneName;
    v32 = 2112;
    v33 = changeCopy;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ ---1. %@  ", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E4601680;
  aBlock[3] = &unk_1E8759CE0;
  aBlock[4] = self;
  v10 = zoneName;
  v27 = v10;
  v11 = changeCopy;
  v28 = v11;
  v12 = completionCopy;
  v29 = v12;
  v13 = _Block_copy(aBlock);
  tokenController = [(BDSSaltVersionIdentifierManager *)self tokenController];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1E4601A30;
  v20[3] = &unk_1E8759D30;
  v24 = v13;
  v25 = v12;
  v21 = v10;
  selfCopy = self;
  v23 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  [tokenController zoneNeedsUpdate:v15 completion:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  zoneName = [(BDSSaltVersionIdentifierManager *)self zoneName];
  zoneDataManager = [(BDSSaltVersionIdentifierManager *)self zoneDataManager];
  v8 = [v3 stringWithFormat:@"<%@:%p zoneName=%@ zoneDataManager=%@>", v5, self, zoneName, zoneDataManager];

  return v8;
}

- (BDSCloudKitSupportZoneRecovery)zoneDataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_zoneDataManager);

  return WeakRetained;
}

- (BCCloudChangeTokenController)tokenController
{
  WeakRetained = objc_loadWeakRetained(&self->_tokenController);

  return WeakRetained;
}

@end