@interface HDDeviceKeyValueStoreServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (HDDeviceKeyValueStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_storageGroupForGroup:(uint64_t)group;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)deviceKeyValueStoreDidUpdateForStorageGroup:(id)group domain:(id)domain;
- (void)remote_fetchEntriesForDomain:(id)domain key:(id)key protectionCategory:(int64_t)category completion:(id)completion;
- (void)remote_mostRecentEntryForDomain:(id)domain key:(id)key protectionCategory:(int64_t)category completion:(id)completion;
- (void)remote_setData:(id)data forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category completion:(id)completion;
- (void)remote_setDate:(id)date forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category completion:(id)completion;
- (void)remote_setNumber:(id)number forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category completion:(id)completion;
- (void)remote_setString:(id)string forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category completion:(id)completion;
- (void)remote_startObservingDeviceKeyValueStoreWithCompletion:(id)completion;
@end

@implementation HDDeviceKeyValueStoreServer

- (HDDeviceKeyValueStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDDeviceKeyValueStoreServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = [configurationCopy copy];
    configuration = v11->_configuration;
    v11->_configuration = v12;
  }

  return v11;
}

- (void)dealloc
{
  profile = [(HDStandardTaskServer *)self profile];
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  [deviceKeyValueStoreManager unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = HDDeviceKeyValueStoreServer;
  [(HDDeviceKeyValueStoreServer *)&v5 dealloc];
}

- (void)remote_fetchEntriesForDomain:(id)domain key:(id)key protectionCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  domainCopy = domain;
  profile = [(HDStandardTaskServer *)self profile];
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  v18 = 0;
  v15 = [deviceKeyValueStoreManager fetchEntriesForDomain:domainCopy key:keyCopy protectionCategory:category error:&v18];

  v16 = v18;
  if (v15)
  {
    v17 = [(HDDeviceKeyValueStoreServer *)self _storageGroupForGroup:v15];
    completionCopy[2](completionCopy, v17, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v16);
  }
}

- (id)_storageGroupForGroup:(uint64_t)group
{
  v3 = 0;
  if (group && a2)
  {
    var28[0] = MEMORY[0x277D85DD0];
    var28[1] = 3221225472;
    var28[2] = __53__HDDeviceKeyValueStoreServer__storageGroupForGroup___block_invoke;
    var28[3] = &unk_27862E608;
    var28[4] = group;
    v3 = [a2 hk_map:var28];
    v2 = var28[6];
  }

  return v3;
}

- (void)remote_mostRecentEntryForDomain:(id)domain key:(id)key protectionCategory:(int64_t)category completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  keyCopy = key;
  domainCopy = domain;
  profile = [(HDStandardTaskServer *)self profile];
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  v21 = 0;
  v15 = [deviceKeyValueStoreManager mostRecentEntryForDomain:domainCopy key:keyCopy protectionCategory:category error:&v21];

  v16 = v21;
  if (v15)
  {
    v22[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v18 = [(HDDeviceKeyValueStoreServer *)self _storageGroupForGroup:v17];
    firstObject = [v18 firstObject];
    completionCopy[2](completionCopy, firstObject, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)remote_setNumber:(id)number forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  keyCopy = key;
  numberCopy = number;
  profile = [(HDStandardTaskServer *)self profile];
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  v20 = 0;
  v18 = [deviceKeyValueStoreManager setNumber:numberCopy forKey:keyCopy domainName:nameCopy protectionCategory:category error:&v20];

  v19 = v20;
  completionCopy[2](completionCopy, v18, v19);
}

- (void)remote_setData:(id)data forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  keyCopy = key;
  dataCopy = data;
  profile = [(HDStandardTaskServer *)self profile];
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  v20 = 0;
  v18 = [deviceKeyValueStoreManager setData:dataCopy forKey:keyCopy domainName:nameCopy protectionCategory:category error:&v20];

  v19 = v20;
  completionCopy[2](completionCopy, v18, v19);
}

- (void)remote_setDate:(id)date forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  keyCopy = key;
  dateCopy = date;
  profile = [(HDStandardTaskServer *)self profile];
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  v20 = 0;
  v18 = [deviceKeyValueStoreManager setDate:dateCopy forKey:keyCopy domainName:nameCopy protectionCategory:category error:&v20];

  v19 = v20;
  completionCopy[2](completionCopy, v18, v19);
}

- (void)remote_setString:(id)string forKey:(id)key domainName:(id)name protectionCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  keyCopy = key;
  stringCopy = string;
  profile = [(HDStandardTaskServer *)self profile];
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  v20 = 0;
  v18 = [deviceKeyValueStoreManager setString:stringCopy forKey:keyCopy domainName:nameCopy protectionCategory:category error:&v20];

  v19 = v20;
  completionCopy[2](completionCopy, v18, v19);
}

- (void)remote_startObservingDeviceKeyValueStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  [deviceKeyValueStoreManager registerObserver:self];

  completionCopy[2](completionCopy, 1, 0);
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

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  domain = [configuration domain];

  if (!domain)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Missing domain for the Key Value Store"];
  }

  return domain != 0;
}

- (void)connectionInvalidated
{
  profile = [(HDStandardTaskServer *)self profile];
  deviceKeyValueStoreManager = [profile deviceKeyValueStoreManager];
  [deviceKeyValueStoreManager unregisterObserver:self];
}

- (void)deviceKeyValueStoreDidUpdateForStorageGroup:(id)group domain:(id)domain
{
  v25 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  domainCopy = domain;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HDDeviceKeyValueStoreServer_deviceKeyValueStoreDidUpdateForStorageGroup_domain___block_invoke;
  v16[3] = &unk_27862E630;
  v16[4] = self;
  v8 = groupCopy;
  v17 = v8;
  v9 = domainCopy;
  v18 = v9;
  v10 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v16];
  domain = [(HKDeviceKeyValueStoreTaskConfiguration *)self->_configuration domain];
  v12 = [domain isEqual:v9];

  if (v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      selfCopy = self;
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