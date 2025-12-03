@interface PKIDSIDQueryManager
- (PKIDSIDQueryManager)initWithQueue:(id)queue;
- (void)checkDeviceSupportForDestinations:(id)destinations service:(id)service listenerID:(id)d capability:(id)capability completion:(id)completion;
- (void)checkIDSStatusForDestination:(id)destination service:(id)service listenerID:(id)d completion:(id)completion;
- (void)reachableDestinationsForDestination:(id)destination service:(id)service completion:(id)completion;
@end

@implementation PKIDSIDQueryManager

- (PKIDSIDQueryManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = PKIDSIDQueryManager;
  v6 = [(PKIDSIDQueryManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)reachableDestinationsForDestination:(id)destination service:(id)service completion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  destinationCopy = destination;
  v11 = objc_alloc_init(PKIDSBatchIDQueryControllerWrapper);
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PKIDSIDQueryManager_reachableDestinationsForDestination_service_completion___block_invoke;
  v15[3] = &unk_1E79D5958;
  v16 = v11;
  v17 = completionCopy;
  v15[4] = self;
  v13 = v11;
  v14 = completionCopy;
  [(PKIDSBatchIDQueryControllerWrapper *)v13 reachableDestinationsForDestination:destinationCopy service:serviceCopy queue:queue completion:v15];
}

void __78__PKIDSIDQueryManager_reachableDestinationsForDestination_service_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKIDSIDQueryManager_reachableDestinationsForDestination_service_completion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 48);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)checkIDSStatusForDestination:(id)destination service:(id)service listenerID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v11 = MEMORY[0x1E69A4878];
  dCopy = d;
  serviceCopy = service;
  destinationCopy = destination;
  sharedInstance = [v11 sharedInstance];
  v16 = PKIDSNormalizedAddress(destinationCopy);

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__PKIDSIDQueryManager_checkIDSStatusForDestination_service_listenerID_completion___block_invoke;
  v19[3] = &unk_1E79CA9E0;
  v19[4] = self;
  v20 = completionCopy;
  v18 = completionCopy;
  [sharedInstance refreshIDStatusForDestination:v16 service:serviceCopy listenerID:dCopy queue:queue completionBlock:v19];
}

void __82__PKIDSIDQueryManager_checkIDSStatusForDestination_service_listenerID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2 == 1;
  v3 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__PKIDSIDQueryManager_checkIDSStatusForDestination_service_listenerID_completion___block_invoke_2;
  v4[3] = &unk_1E79C4748;
  v5 = *(a1 + 40);
  v6 = v2;
  dispatch_async(v3, v4);
}

- (void)checkDeviceSupportForDestinations:(id)destinations service:(id)service listenerID:(id)d capability:(id)capability completion:(id)completion
{
  capabilityCopy = capability;
  completionCopy = completion;
  dCopy = d;
  serviceCopy = service;
  v16 = [destinations pk_arrayByApplyingBlock:&__block_literal_global_90];
  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  queue = self->_queue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __98__PKIDSIDQueryManager_checkDeviceSupportForDestinations_service_listenerID_capability_completion___block_invoke_2;
  v22[3] = &unk_1E79D59D0;
  v23 = v16;
  v24 = capabilityCopy;
  selfCopy = self;
  v26 = completionCopy;
  v19 = completionCopy;
  v20 = capabilityCopy;
  v21 = v16;
  [mEMORY[0x1E69A4878] currentRemoteDevicesForDestinations:v21 service:serviceCopy listenerID:dCopy queue:queue completionBlock:v22];
}

void __98__PKIDSIDQueryManager_checkDeviceSupportForDestinations_service_listenerID_capability_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__PKIDSIDQueryManager_checkDeviceSupportForDestinations_service_listenerID_capability_completion___block_invoke_3;
  v10[3] = &unk_1E79D59A8;
  v11 = v3;
  v4 = *(a1 + 32);
  v12 = *(a1 + 40);
  v5 = v3;
  LOBYTE(v4) = [v4 pk_containsObjectPassingTest:v10];
  v6 = *(*(a1 + 48) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__PKIDSIDQueryManager_checkDeviceSupportForDestinations_service_listenerID_capability_completion___block_invoke_5;
  v7[3] = &unk_1E79C4748;
  v8 = *(a1 + 56);
  v9 = v4;
  dispatch_async(v6, v7);
}

uint64_t __98__PKIDSIDQueryManager_checkDeviceSupportForDestinations_service_listenerID_capability_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98__PKIDSIDQueryManager_checkDeviceSupportForDestinations_service_listenerID_capability_completion___block_invoke_4;
  v6[3] = &unk_1E79D5980;
  v7 = *(a1 + 40);
  v4 = [v3 pk_containsObjectPassingTest:v6];

  return v4;
}

BOOL __98__PKIDSIDQueryManager_checkDeviceSupportForDestinations_service_listenerID_capability_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 capabilities];
  v4 = [v3 valueForCapability:*(a1 + 32)] != 0;

  return v4;
}

@end