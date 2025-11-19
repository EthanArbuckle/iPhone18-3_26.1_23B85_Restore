@interface BLTPingSubscriberManager
- (BLTBulletinDistributorSubscriberDeviceDelegate)deviceDelegate;
- (BLTPingSubscriberManager)initWithDeviceDelegate:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_loadPingSubscriberBundles:(id)a3;
@end

@implementation BLTPingSubscriberManager

- (BLTPingSubscriberManager)initWithDeviceDelegate:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BLTPingSubscriberManager;
  v5 = [(BLTPingSubscriberManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_deviceDelegate, v4);
    v7 = objc_alloc_init(BLTBulletinDistributorSubscriberList);
    subscribers = v6->_subscribers;
    v6->_subscribers = v7;

    v9 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/BulletinDistributor/PingSubscribers"];
    [(BLTPingSubscriberManager *)v6 _loadPingSubscriberBundles:v9];
    v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.bulletindistributord.server"];
    listener = v6->_listener;
    v6->_listener = v10;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.bulletindistributord.server"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = [[BLTSubscriberRemoteClient alloc] initWithConnection:v5];
    v8 = [[BLTBulletinDistributorSubscriber alloc] initWithClient:v7];
    v9 = [(BLTPingSubscriberManager *)self deviceDelegate];
    [(BLTBulletinDistributorSubscriber *)v8 setDeviceDelegate:v9];

    [v5 setExportedObject:v8];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28544E800];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = 1;
    [v10 setClasses:v13 forSelector:sel_getWillNanoPresentNotificationForSectionID_subsectionIDs_completion_ argumentIndex:1 ofReply:0];
    [v5 setExportedInterface:v10];
    v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285454D28];
    [v5 setRemoteObjectInterface:v15];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __63__BLTPingSubscriberManager_listener_shouldAcceptNewConnection___block_invoke;
    v21[3] = &unk_278D31400;
    v21[4] = self;
    v16 = v8;
    v22 = v16;
    [v5 setInvalidationHandler:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__BLTPingSubscriberManager_listener_shouldAcceptNewConnection___block_invoke_2;
    v19[3] = &unk_278D31400;
    v19[4] = self;
    v20 = v16;
    v17 = v16;
    [v5 setInterruptionHandler:v19];
    [v5 resume];
    [(BLTBulletinDistributorSubscriberList *)self->_subscribers addSubscriber:v17];
  }

  else
  {
    v7 = blt_general_log();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
    {
      [BLTPingSubscriberManager listener:&v7->super shouldAcceptNewConnection:?];
    }

    v14 = 0;
  }

  return v14;
}

- (void)_loadPingSubscriberBundles:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v35 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v35];
  v7 = v35;

  if (v7)
  {
    obj = blt_general_log();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [(BLTPingSubscriberManager *)v7 _loadPingSubscriberBundles:?];
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v25 = v6;
      v10 = *v32;
      v11 = 0x277CCA000uLL;
      v12 = &selRef_hasShowsOnExternalDevices;
      v27 = *v32;
      v28 = self;
      v26 = v4;
      do
      {
        v13 = 0;
        v29 = v9;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [v4 stringByAppendingPathComponent:*(*(&v31 + 1) + 8 * v13)];
          v15 = [*(v11 + 2264) bundleWithPath:v14];
          v16 = [v15 principalClass];
          if (v16)
          {
            v17 = v16;
            if ([(objc_class *)v16 conformsToProtocol:v12[441]])
            {
              v18 = objc_alloc_init(BLTLocalPingSubscriberService);
              v19 = [[v17 alloc] initWithService:v18];
              v20 = [[BLTBulletinDistributorSubscriber alloc] initWithClient:v19];
              [(BLTPingSubscriberManager *)v28 deviceDelegate];
              v21 = v12;
              v23 = v22 = v11;
              [(BLTBulletinDistributorSubscriber *)v20 setDeviceDelegate:v23];

              v11 = v22;
              v12 = v21;
              [(BLTLocalPingSubscriberService *)v18 setSubscriber:v20];
              v4 = v26;
              v9 = v29;
              [(BLTBulletinDistributorSubscriberList *)v28->_subscribers addSubscriber:v20];
              [v19 pingSubscriberDidLoad];

              v10 = v27;
            }
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
      v7 = 0;
      v6 = v25;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BLTBulletinDistributorSubscriberDeviceDelegate)deviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceDelegate);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "No entitlement %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_loadPingSubscriberBundles:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error loading ping subscriber bundles: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end