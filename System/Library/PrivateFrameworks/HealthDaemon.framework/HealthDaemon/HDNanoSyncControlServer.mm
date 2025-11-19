@interface HDNanoSyncControlServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (void)remote_fetchNanoSyncPairedDevicesWithCompletion:(id)a3;
- (void)remote_forceNanoSyncWithOptions:(unint64_t)a3 completion:(id)a4;
@end

@implementation HDNanoSyncControlServer

- (void)remote_fetchNanoSyncPairedDevicesWithCompletion:(id)a3
{
  nanoSyncManager = self->_nanoSyncManager;
  v5 = a3;
  v6 = [(HDNanoSyncManager *)nanoSyncManager pairedDevicesSnapshot];
  (*(a3 + 2))(v5, v6, 0);
}

- (void)remote_forceNanoSyncWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = [(HDStandardTaskServer *)self client];
  v9 = [v8 process];
  v10 = [v9 name];
  v11 = [v6 stringWithFormat:@"External request from %@", v10];

  [(HDNanoSyncManager *)self->_nanoSyncManager syncHealthDataWithOptions:a3 reason:v11 completion:v7];
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 nanoSyncManager];

  if (v16)
  {
    v17 = [(HDStandardTaskServer *)[HDNanoSyncControlServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
    v18 = v16;
    nanoSyncManager = v17->_nanoSyncManager;
    v17->_nanoSyncManager = v18;
  }

  else
  {
    nanoSyncManager = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (nanoSyncManager)
    {
      if (a7)
      {
        v20 = nanoSyncManager;
        *a7 = nanoSyncManager;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end