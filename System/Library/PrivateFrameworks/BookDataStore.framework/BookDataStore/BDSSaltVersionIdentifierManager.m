@interface BDSSaltVersionIdentifierManager
- (BCCloudChangeTokenController)tokenController;
- (BDSCloudKitSupportZoneRecovery)zoneDataManager;
- (BDSSaltVersionIdentifierManager)initWithZoneDataManager:(id)a3 tokenController:(id)a4 databaseController:(id)a5;
- (NSString)description;
- (void)handleSaltVersionIdentifierChange:(id)a3 completion:(id)a4;
@end

@implementation BDSSaltVersionIdentifierManager

- (BDSSaltVersionIdentifierManager)initWithZoneDataManager:(id)a3 tokenController:(id)a4 databaseController:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = BDSSaltVersionIdentifierManager;
  v11 = [(BDSSaltVersionIdentifierManager *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_zoneDataManager, v8);
    objc_storeWeak(&v12->_tokenController, v9);
    v13 = [v9 zoneName];
    v14 = [v13 copy];
    zoneName = v12->_zoneName;
    v12->_zoneName = v14;

    [v10 addObserver:v12 zoneID:v12->_zoneName];
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

- (void)handleSaltVersionIdentifierChange:(id)a3 completion:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(BDSSaltVersionIdentifierManager *)self zoneName];
  v9 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v8;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ ---1. %@  ", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E4601680;
  aBlock[3] = &unk_1E8759CE0;
  aBlock[4] = self;
  v10 = v8;
  v27 = v10;
  v11 = v6;
  v28 = v11;
  v12 = v7;
  v29 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(BDSSaltVersionIdentifierManager *)self tokenController];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1E4601A30;
  v20[3] = &unk_1E8759D30;
  v24 = v13;
  v25 = v12;
  v21 = v10;
  v22 = self;
  v23 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  [v14 zoneNeedsUpdate:v15 completion:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BDSSaltVersionIdentifierManager *)self zoneName];
  v7 = [(BDSSaltVersionIdentifierManager *)self zoneDataManager];
  v8 = [v3 stringWithFormat:@"<%@:%p zoneName=%@ zoneDataManager=%@>", v5, self, v6, v7];

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