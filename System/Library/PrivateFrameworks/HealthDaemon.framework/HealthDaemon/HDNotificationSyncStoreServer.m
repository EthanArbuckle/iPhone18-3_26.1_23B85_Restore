@interface HDNotificationSyncStoreServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)requiredEntitlements;
- (HDNotificationSyncStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)remote_notificationHoldInstructionsWithCompletion:(id)a3;
- (void)remote_obliterateNotificationInstructionsWithCompletion:(id)a3;
- (void)remote_sendNewDeviceNotificationWithMessageKind:(int64_t)a3 completion:(id)a4;
- (void)remote_sendNotificationInstruction:(id)a3 completion:(id)a4;
- (void)remote_sendNotificationInstruction:(id)a3 savingObjectAsExistsCriteria:(id)a4 completion:(id)a5;
@end

@implementation HDNotificationSyncStoreServer

- (HDNotificationSyncStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = HDNotificationSyncStoreServer;
  v12 = [(HDStandardTaskServer *)&v22 initWithUUID:a3 configuration:v10 client:v11 delegate:a6];
  if (v12)
  {
    v13 = [objc_opt_class() description];
    v14 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v14;

    v16 = [HDNotificationSyncClient alloc];
    v17 = [v11 profile];
    v18 = [v10 clientIdentifier];
    v19 = [(HDNotificationSyncClient *)v16 initWithProfile:v17 clientIdentifier:v18 queue:v12->_queue];
    syncClient = v12->_syncClient;
    v12->_syncClient = v19;
  }

  return v12;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 invalidArgument:@"Configuration must be HKNotificationSyncStoreServerConfiguration" class:objc_opt_class() selector:a2];
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

- (void)remote_sendNotificationInstruction:(id)a3 completion:(id)a4
{
  syncClient = self->_syncClient;
  v9 = 0;
  v6 = a4;
  v7 = [(HDNotificationSyncClient *)syncClient sendNotificationInstruction:a3 criteria:0 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)remote_sendNotificationInstruction:(id)a3 savingObjectAsExistsCriteria:(id)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HDStandardTaskServer *)self client];
  v12 = [v11 profile];
  v13 = [v12 dataManager];
  v25[0] = v9;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v24 = 0;
  v15 = [v13 insertDataObjects:v14 error:&v24];
  v16 = v24;

  if (v15)
  {
    v17 = [HDNotificationInstructionObjectNotInDatabaseCriteria alloc];
    v18 = [v9 UUID];
    v19 = [(HDNotificationInstructionUUIDCriteria *)v17 initWithUUID:v18];

    syncClient = self->_syncClient;
    v23 = 0;
    v21 = [(HDNotificationSyncClient *)syncClient sendNotificationInstruction:v8 criteria:v19 error:&v23];
    v16 = v23;
    v10[2](v10, v21, v16);
  }

  else
  {
    v10[2](v10, 0, v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)remote_notificationHoldInstructionsWithCompletion:(id)a3
{
  syncClient = self->_syncClient;
  v7 = 0;
  v4 = a3;
  v5 = [(HDNotificationSyncClient *)syncClient notificationHoldInstructionsWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_obliterateNotificationInstructionsWithCompletion:(id)a3
{
  syncClient = self->_syncClient;
  v7 = 0;
  v4 = a3;
  v5 = [(HDNotificationSyncClient *)syncClient obliterateNotificationInstructionsWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_sendNewDeviceNotificationWithMessageKind:(int64_t)a3 completion:(id)a4
{
  syncClient = self->_syncClient;
  v9 = 0;
  v6 = a4;
  v7 = [(HDNotificationSyncClient *)syncClient sendNewDeviceNotificationWithMessageKind:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

@end