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
  managerCopy = manager;
  controllerCopy = controller;
  databaseControllerCopy = databaseController;
  v21.receiver = self;
  v21.super_class = BDSSaltVersionIdentifierManager;
  v11 = [(BDSSaltVersionIdentifierManager *)&v21 init];
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
    v16 = sub_10000DC08();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&v12->_zoneDataManager);
      v18 = objc_loadWeakRetained(&v12->_tokenController);
      v19 = v12->_zoneName;
      *buf = 138412802;
      v23 = WeakRetained;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[BDSSaltVersionIdentifierManager] init with %@ %@. Adding to zone:(%@)", buf, 0x20u);
    }
  }

  return v12;
}

- (void)handleSaltVersionIdentifierChange:(id)change completion:(id)completion
{
  changeCopy = change;
  completionCopy = completion;
  zoneName = [(BDSSaltVersionIdentifierManager *)self zoneName];
  v9 = sub_10000DC08();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = zoneName;
    v31 = 2112;
    v32 = changeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ ---1. %@  ", buf, 0x16u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10007A098;
  v25[3] = &unk_100240488;
  v25[4] = self;
  v10 = zoneName;
  v26 = v10;
  v11 = changeCopy;
  v27 = v11;
  v12 = completionCopy;
  v28 = v12;
  v13 = objc_retainBlock(v25);
  tokenController = [(BDSSaltVersionIdentifierManager *)self tokenController];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007A448;
  v19[3] = &unk_100241EE8;
  v23 = v13;
  v24 = v12;
  v20 = v10;
  selfCopy = self;
  v22 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  [tokenController zoneNeedsUpdate:v15 completion:v19];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  zoneName = [(BDSSaltVersionIdentifierManager *)self zoneName];
  zoneDataManager = [(BDSSaltVersionIdentifierManager *)self zoneDataManager];
  v7 = [NSString stringWithFormat:@"<%@:%p zoneName=%@ zoneDataManager=%@>", v4, self, zoneName, zoneDataManager];

  return v7;
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