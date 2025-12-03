@interface HDNanoSyncControlServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (void)remote_fetchNanoSyncPairedDevicesWithCompletion:(id)completion;
- (void)remote_forceNanoSyncWithOptions:(unint64_t)options completion:(id)completion;
@end

@implementation HDNanoSyncControlServer

- (void)remote_fetchNanoSyncPairedDevicesWithCompletion:(id)completion
{
  nanoSyncManager = self->_nanoSyncManager;
  completionCopy = completion;
  pairedDevicesSnapshot = [(HDNanoSyncManager *)nanoSyncManager pairedDevicesSnapshot];
  (*(completion + 2))(completionCopy, pairedDevicesSnapshot, 0);
}

- (void)remote_forceNanoSyncWithOptions:(unint64_t)options completion:(id)completion
{
  v6 = MEMORY[0x277CCACA8];
  completionCopy = completion;
  client = [(HDStandardTaskServer *)self client];
  process = [client process];
  name = [process name];
  v11 = [v6 stringWithFormat:@"External request from %@", name];

  [(HDNanoSyncManager *)self->_nanoSyncManager syncHealthDataWithOptions:options reason:v11 completion:completionCopy];
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  nanoSyncManager = [profile nanoSyncManager];

  if (nanoSyncManager)
  {
    v17 = [(HDStandardTaskServer *)[HDNanoSyncControlServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
    v18 = nanoSyncManager;
    nanoSyncManager = v17->_nanoSyncManager;
    v17->_nanoSyncManager = v18;
  }

  else
  {
    nanoSyncManager = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (nanoSyncManager)
    {
      if (error)
      {
        v20 = nanoSyncManager;
        *error = nanoSyncManager;
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