@interface HDNotificationSyncStoreServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)requiredEntitlements;
- (HDNotificationSyncStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)remote_notificationHoldInstructionsWithCompletion:(id)completion;
- (void)remote_obliterateNotificationInstructionsWithCompletion:(id)completion;
- (void)remote_sendNewDeviceNotificationWithMessageKind:(int64_t)kind completion:(id)completion;
- (void)remote_sendNotificationInstruction:(id)instruction completion:(id)completion;
- (void)remote_sendNotificationInstruction:(id)instruction savingObjectAsExistsCriteria:(id)criteria completion:(id)completion;
@end

@implementation HDNotificationSyncStoreServer

- (HDNotificationSyncStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  clientCopy = client;
  v22.receiver = self;
  v22.super_class = HDNotificationSyncStoreServer;
  v12 = [(HDStandardTaskServer *)&v22 initWithUUID:d configuration:configurationCopy client:clientCopy delegate:delegate];
  if (v12)
  {
    v13 = [objc_opt_class() description];
    v14 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v14;

    v16 = [HDNotificationSyncClient alloc];
    profile = [clientCopy profile];
    clientIdentifier = [configurationCopy clientIdentifier];
    v19 = [(HDNotificationSyncClient *)v16 initWithProfile:profile clientIdentifier:clientIdentifier queue:v12->_queue];
    syncClient = v12->_syncClient;
    v12->_syncClient = v19;
  }

  return v12;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  configurationCopy = configuration;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error invalidArgument:@"Configuration must be HKNotificationSyncStoreServerConfiguration" class:objc_opt_class() selector:a2];
  }

  return isKindOfClass & 1;
}

+ (id)requiredEntitlements
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCC588];
  v6[0] = *MEMORY[0x277CCC1B8];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)remote_sendNotificationInstruction:(id)instruction completion:(id)completion
{
  syncClient = self->_syncClient;
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDNotificationSyncClient *)syncClient sendNotificationInstruction:instruction criteria:0 error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_sendNotificationInstruction:(id)instruction savingObjectAsExistsCriteria:(id)criteria completion:(id)completion
{
  v25[1] = *MEMORY[0x277D85DE8];
  instructionCopy = instruction;
  criteriaCopy = criteria;
  completionCopy = completion;
  client = [(HDStandardTaskServer *)self client];
  profile = [client profile];
  dataManager = [profile dataManager];
  v25[0] = criteriaCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v24 = 0;
  v15 = [dataManager insertDataObjects:v14 error:&v24];
  v16 = v24;

  if (v15)
  {
    v17 = [HDNotificationInstructionObjectNotInDatabaseCriteria alloc];
    uUID = [criteriaCopy UUID];
    v19 = [(HDNotificationInstructionUUIDCriteria *)v17 initWithUUID:uUID];

    syncClient = self->_syncClient;
    v23 = 0;
    v21 = [(HDNotificationSyncClient *)syncClient sendNotificationInstruction:instructionCopy criteria:v19 error:&v23];
    v16 = v23;
    completionCopy[2](completionCopy, v21, v16);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)remote_notificationHoldInstructionsWithCompletion:(id)completion
{
  syncClient = self->_syncClient;
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDNotificationSyncClient *)syncClient notificationHoldInstructionsWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)remote_obliterateNotificationInstructionsWithCompletion:(id)completion
{
  syncClient = self->_syncClient;
  v7 = 0;
  completionCopy = completion;
  v5 = [(HDNotificationSyncClient *)syncClient obliterateNotificationInstructionsWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (void)remote_sendNewDeviceNotificationWithMessageKind:(int64_t)kind completion:(id)completion
{
  syncClient = self->_syncClient;
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDNotificationSyncClient *)syncClient sendNewDeviceNotificationWithMessageKind:kind error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

@end