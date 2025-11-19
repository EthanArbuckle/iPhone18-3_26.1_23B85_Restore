@interface HDDeviceKeyValueStoreServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
- (HDDeviceKeyValueStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_storageGroupForGroup:(uint64_t)a1;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)deviceKeyValueStoreDidUpdateForStorageGroup:(id)a3 domain:(id)a4;
- (void)remote_fetchEntriesForDomain:(id)a3 key:(id)a4 protectionCategory:(int64_t)a5 completion:(id)a6;
- (void)remote_mostRecentEntryForDomain:(id)a3 key:(id)a4 protectionCategory:(int64_t)a5 completion:(id)a6;
- (void)remote_setData:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 completion:(id)a7;
- (void)remote_setDate:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 completion:(id)a7;
- (void)remote_setNumber:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 completion:(id)a7;
- (void)remote_setString:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 completion:(id)a7;
- (void)remote_startObservingDeviceKeyValueStoreWithCompletion:(id)a3;
@end

@implementation HDDeviceKeyValueStoreServer

- (HDDeviceKeyValueStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HDDeviceKeyValueStoreServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 copy];
    configuration = v11->_configuration;
    v11->_configuration = v12;
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(HDStandardTaskServer *)self profile];
  v4 = [v3 deviceKeyValueStoreManager];
  [v4 unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = HDDeviceKeyValueStoreServer;
  [(HDDeviceKeyValueStoreServer *)&v5 dealloc];
}

- (void)remote_fetchEntriesForDomain:(id)a3 key:(id)a4 protectionCategory:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(HDStandardTaskServer *)self profile];
  v14 = [v13 deviceKeyValueStoreManager];
  v18 = 0;
  v15 = [v14 fetchEntriesForDomain:v12 key:v11 protectionCategory:a5 error:&v18];

  v16 = v18;
  if (v15)
  {
    v17 = [(HDDeviceKeyValueStoreServer *)self _storageGroupForGroup:v15];
    v10[2](v10, v17, 0);
  }

  else
  {
    (v10)[2](v10, 0, v16);
  }
}

- (id)_storageGroupForGroup:(uint64_t)a1
{
  v3 = 0;
  if (a1 && a2)
  {
    var28[0] = MEMORY[0x277D85DD0];
    var28[1] = 3221225472;
    var28[2] = __53__HDDeviceKeyValueStoreServer__storageGroupForGroup___block_invoke;
    var28[3] = &unk_27862E608;
    var28[4] = a1;
    v3 = [a2 hk_map:var28];
    v2 = var28[6];
  }

  return v3;
}

- (void)remote_mostRecentEntryForDomain:(id)a3 key:(id)a4 protectionCategory:(int64_t)a5 completion:(id)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(HDStandardTaskServer *)self profile];
  v14 = [v13 deviceKeyValueStoreManager];
  v21 = 0;
  v15 = [v14 mostRecentEntryForDomain:v12 key:v11 protectionCategory:a5 error:&v21];

  v16 = v21;
  if (v15)
  {
    v22[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v18 = [(HDDeviceKeyValueStoreServer *)self _storageGroupForGroup:v17];
    v19 = [v18 firstObject];
    v10[2](v10, v19, 0);
  }

  else
  {
    (v10)[2](v10, 0, v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)remote_setNumber:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(HDStandardTaskServer *)self profile];
  v17 = [v16 deviceKeyValueStoreManager];
  v20 = 0;
  v18 = [v17 setNumber:v15 forKey:v14 domainName:v13 protectionCategory:a6 error:&v20];

  v19 = v20;
  v12[2](v12, v18, v19);
}

- (void)remote_setData:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(HDStandardTaskServer *)self profile];
  v17 = [v16 deviceKeyValueStoreManager];
  v20 = 0;
  v18 = [v17 setData:v15 forKey:v14 domainName:v13 protectionCategory:a6 error:&v20];

  v19 = v20;
  v12[2](v12, v18, v19);
}

- (void)remote_setDate:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(HDStandardTaskServer *)self profile];
  v17 = [v16 deviceKeyValueStoreManager];
  v20 = 0;
  v18 = [v17 setDate:v15 forKey:v14 domainName:v13 protectionCategory:a6 error:&v20];

  v19 = v20;
  v12[2](v12, v18, v19);
}

- (void)remote_setString:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(HDStandardTaskServer *)self profile];
  v17 = [v16 deviceKeyValueStoreManager];
  v20 = 0;
  v18 = [v17 setString:v15 forKey:v14 domainName:v13 protectionCategory:a6 error:&v20];

  v19 = v20;
  v12[2](v12, v18, v19);
}

- (void)remote_startObservingDeviceKeyValueStoreWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(HDStandardTaskServer *)self profile];
  v5 = [v4 deviceKeyValueStoreManager];
  [v5 registerObserver:self];

  v6[2](v6, 1, 0);
}

id __53__HDDeviceKeyValueStoreServer__storageGroupForGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) profile];
  v5 = [v4 syncIdentityManager];
  v6 = [v5 currentSyncIdentity];
  v7 = [v6 identity];

  v24 = objc_alloc(MEMORY[0x277CCD2F0]);
  v26 = [v3 deviceContext];
  v23 = [v26 type];
  v25 = [v3 deviceContext];
  v8 = [v25 syncIdentity];
  v27 = v7;
  v9 = [v7 isEqual:v8];
  v10 = [v3 deviceContext];
  v11 = [v10 productTypeName];
  v12 = [v3 deviceContext];
  v13 = [v12 currentOSName];
  v14 = [v3 deviceContext];
  v15 = v14;
  if (v14)
  {
    [v14 currentOSVersion];
  }

  else
  {
    memset(v28, 0, sizeof(v28));
  }

  v16 = [v3 deviceContext];
  v17 = [v16 modificationDate];
  v18 = [v24 initWithType:v23 localDevice:v9 productTypeName:v11 currentOSName:v13 currentOSVersion:v28 modificationDate:v17];

  v19 = [v3 storageEntries];
  v20 = [v19 hk_map:&__block_literal_global_235];

  v21 = [objc_alloc(MEMORY[0x277CCD308]) initWithDeviceContext:v18 storageEntries:v20];

  return v21;
}

id __53__HDDeviceKeyValueStoreServer__storageGroupForGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD300];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 domain];
  v6 = [v3 key];
  v7 = [v3 value];
  v8 = [v3 modificationDate];

  v9 = [v4 initWithDomain:v5 key:v6 value:v7 modificationDate:v8];

  return v9;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = [a3 domain];

  if (!v6)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"Missing domain for the Key Value Store"];
  }

  return v6 != 0;
}

- (void)connectionInvalidated
{
  v4 = [(HDStandardTaskServer *)self profile];
  v3 = [v4 deviceKeyValueStoreManager];
  [v3 unregisterObserver:self];
}

- (void)deviceKeyValueStoreDidUpdateForStorageGroup:(id)a3 domain:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HDDeviceKeyValueStoreServer_deviceKeyValueStoreDidUpdateForStorageGroup_domain___block_invoke;
  v16[3] = &unk_27862E630;
  v16[4] = self;
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v18 = v9;
  v10 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v16];
  v11 = [(HKDeviceKeyValueStoreTaskConfiguration *)self->_configuration domain];
  v12 = [v11 isEqual:v9];

  if (v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v20 = self;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "%{public}@: Notify client of domain %{public}@ updated device key value pairs for storageGroup %{public}@", buf, 0x20u);
    }

    v14 = [(HDDeviceKeyValueStoreServer *)self _storageGroupForGroup:v8];
    [v10 clientRemote_deviceKeyValueStoreDidUpdateForStorageGroup:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __82__HDDeviceKeyValueStoreServer_deviceKeyValueStoreDidUpdateForStorageGroup_domain___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v9 = 138544130;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Unable to notify client domain %{public}@ for updated device key value pairs for storageGroup %{public}@: %{public}@", &v9, 0x2Au);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end