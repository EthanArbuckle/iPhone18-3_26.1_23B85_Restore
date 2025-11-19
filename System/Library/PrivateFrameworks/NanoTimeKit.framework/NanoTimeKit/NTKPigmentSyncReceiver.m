@interface NTKPigmentSyncReceiver
- (NTKPigmentSyncReceiver)init;
- (void)finishSyncingForDeviceUUID:(id)a3 success:(BOOL)a4;
- (void)processSyncData:(id)a3 domain:(id)a4 deviceUUID:(id)a5;
@end

@implementation NTKPigmentSyncReceiver

- (NTKPigmentSyncReceiver)init
{
  v9.receiver = self;
  v9.super_class = NTKPigmentSyncReceiver;
  v2 = [(NTKPigmentSyncReceiver *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.NanoTimeKit.NTKPigmentSyncReceiver", v3);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v4;

    v6 = objc_alloc_init(NTKPigmentPersistentStorageController);
    storageController = v2->_storageController;
    v2->_storageController = v6;
  }

  return v2;
}

- (void)processSyncData:(id)a3 domain:(id)a4 deviceUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  privateQueue = self->_privateQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__NTKPigmentSyncReceiver_processSyncData_domain_deviceUUID___block_invoke;
  v15[3] = &unk_278780FF8;
  v15[4] = self;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_sync(privateQueue, v15);
}

void __60__NTKPigmentSyncReceiver_processSyncData_domain_deviceUUID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
    [*(*(a1 + 32) + 24) startTransactionForDeviceUUID:*(a1 + 40)];
  }

  v3 = *(a1 + 48);
  v4 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_INFO, "#sync received color sync data for domain: %{public}@", &v10, 0xCu);
    }

    v7 = [*(a1 + 48) isEqualToString:@"sharedCollections"];
    v8 = *(*(a1 + 32) + 24);
    v9 = *(a1 + 56);
    if (v7)
    {
      [v8 persistSharedCollectionsData:v9 deviceUUID:*(a1 + 40)];
    }

    else
    {
      [v8 persistFacePigmentSetData:v9 domain:*(a1 + 48) deviceUUID:*(a1 + 40)];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__NTKPigmentSyncReceiver_processSyncData_domain_deviceUUID___block_invoke_cold_1(v5);
    }
  }
}

- (void)finishSyncingForDeviceUUID:(id)a3 success:(BOOL)a4
{
  v5 = a3;
  privateQueue = self->_privateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__NTKPigmentSyncReceiver_finishSyncingForDeviceUUID_success___block_invoke;
  v8[3] = &unk_27877E438;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(privateQueue, v8);
}

uint64_t __61__NTKPigmentSyncReceiver_finishSyncingForDeviceUUID_success___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8) == 1)
  {
    v2 = result;
    [*(v1 + 24) closeTransactionForDeviceUUID:*(result + 40)];
    v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_INFO, "#sync posting darwin notification color sync completed", v4, 2u);
    }

    result = [NTKDarwinNotificationCenter postNotification:@"NTKColorSyncDataUpdatedNotificationName"];
    v1 = *(v2 + 32);
  }

  *(v1 + 8) = 0;
  return result;
}

@end