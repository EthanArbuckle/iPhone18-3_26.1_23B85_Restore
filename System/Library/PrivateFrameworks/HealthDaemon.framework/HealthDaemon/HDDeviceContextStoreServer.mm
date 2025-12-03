@interface HDDeviceContextStoreServer
- (void)remote_fetchEntriesWithCompletion:(id)completion;
- (void)remote_numberOfDeviceContextsPerDeviceType:(id)type;
@end

@implementation HDDeviceContextStoreServer

- (void)remote_fetchEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  deviceContextManager = [profile deviceContextManager];
  v11 = 0;
  v7 = [deviceContextManager fetchAllEntriesWithError:&v11];
  v8 = v11;

  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__HDDeviceContextStoreServer_remote_fetchEntriesWithCompletion___block_invoke;
    v10[3] = &unk_278626EE8;
    v10[4] = self;
    v9 = [v7 hk_map:v10];
    completionCopy[2](completionCopy, v9, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v8);
  }
}

id __64__HDDeviceContextStoreServer_remote_fetchEntriesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = objc_alloc(MEMORY[0x277CCD2F0]);
  v15 = [v3 type];
  v4 = [v3 syncIdentity];
  v5 = [*(a1 + 32) profile];
  v6 = [v5 syncIdentityManager];
  v7 = [v6 currentSyncIdentity];
  v8 = [v7 identity];
  v9 = [v4 isEqual:v8];
  v10 = [v3 productTypeName];
  v11 = [v3 currentOSName];
  if (v3)
  {
    [v3 currentOSVersion];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v12 = [v3 modificationDate];
  v13 = [v16 initWithType:v15 localDevice:v9 productTypeName:v10 currentOSName:v11 currentOSVersion:v17 modificationDate:v12];

  return v13;
}

- (void)remote_numberOfDeviceContextsPerDeviceType:(id)type
{
  typeCopy = type;
  profile = [(HDStandardTaskServer *)self profile];
  deviceContextManager = [profile deviceContextManager];
  v11 = 0;
  v7 = [deviceContextManager numberOfDeviceContextsPerDeviceType:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = v7;
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = v8;
  }

  typeCopy[2](typeCopy, v9, v10);
}

@end