@interface HUDeviceController
- (HUDeviceController)init;
- (void)device:(id)a3 didUpdateProperty:(unint64_t)a4;
- (void)registerForPropertyUpdates:(id)a3;
- (void)stopPropertyUpdates;
- (void)updateProperty:(unint64_t)a3 forDeviceID:(id)a4;
- (void)writeValue:(id)a3 forProperty:(unint64_t)a4 andDeviceID:(id)a5;
@end

@implementation HUDeviceController

- (HUDeviceController)init
{
  v10.receiver = self;
  v10.super_class = HUDeviceController;
  v2 = [(HUDeviceController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("hu_device_updates_queue", v4);
    [(HUDeviceController *)v2 setDeviceUpdatesQueue:v5];

    v6 = [MEMORY[0x1E695DF70] array];
    [(HUDeviceController *)v2 setUpdateDeviceBlocks:v6];

    v7 = [objc_alloc(MEMORY[0x1E6988780]) initWithTargetSerialQueue:v2->_deviceUpdatesQueue];
    sendPropertyUpdatesTimer = v2->_sendPropertyUpdatesTimer;
    v2->_sendPropertyUpdatesTimer = v7;

    [(AXDispatchTimer *)v2->_sendPropertyUpdatesTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v2;
}

- (void)device:(id)a3 didUpdateProperty:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(HUDeviceController *)self updateDeviceBlocks];
    *buf = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HUDeviceController: didUpdateProperty, UPDATING %@ - %@", buf, 0x16u);
  }

  v9 = [v6 deviceUUID];

  v10 = [v9 copy];
  deviceUpdatesQueue = self->_deviceUpdatesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__HUDeviceController_device_didUpdateProperty___block_invoke;
  block[3] = &unk_1E85C9F88;
  block[4] = self;
  v15 = v10;
  v16 = a4;
  v12 = v10;
  dispatch_async(deviceUpdatesQueue, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __47__HUDeviceController_device_didUpdateProperty___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceUpdatesDescription];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [*(a1 + 32) sendPropertyUpdatesTimer];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__HUDeviceController_device_didUpdateProperty___block_invoke_2;
    v22[3] = &unk_1E85C9F60;
    v22[4] = *(a1 + 32);
    [v3 afterDelay:v22 processBlock:1.0];
  }

  v4 = *(a1 + 40);
  v5 = [v2 objectForKey:v4];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    [v2 setObject:v5 forKey:v4];
  }

  v7 = [*(a1 + 32) hearingAidForDeviceID:v4];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __47__HUDeviceController_device_didUpdateProperty___block_invoke_14;
  v14 = &unk_1E85CA290;
  v8 = v7;
  v15 = *(a1 + 48);
  AXPerformSafeBlock();
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 addEntriesFromDictionary:{v9, v11, 3221225472, __47__HUDeviceController_device_didUpdateProperty___block_invoke_14, &unk_1E85CA290}];
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{*(a1 + 48), v11, 3221225472, __47__HUDeviceController_device_didUpdateProperty___block_invoke_14, &unk_1E85CA290}];
      [v5 setObject:v9 forKey:v10];
    }
  }

  [*(a1 + 32) setDeviceUpdatesDescription:{v2, v11, v12, v13, v14}];
}

void __47__HUDeviceController_device_didUpdateProperty___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceUpdatesDescription];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__HUDeviceController_device_didUpdateProperty___block_invoke_3;
  v10[3] = &unk_1E85CA240;
  v10[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v10];
  v3 = [*(a1 + 32) updateDeviceBlocks];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __47__HUDeviceController_device_didUpdateProperty___block_invoke_11;
  v8 = &unk_1E85CA268;
  v9 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:&v5];

  [*(a1 + 32) setDeviceUpdatesDescription:{0, v5, v6, v7, v8}];
}

void __47__HUDeviceController_device_didUpdateProperty___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) hearingAidForDeviceID:a2];
  if (v6 && [*(a1 + 32) representsLocalDevices])
  {
    v7 = [v6 valueForProperty:0x4000000];
    [v5 setObject:v7 forKey:&unk_1F5623908];

    v8 = [v6 valueForProperty:0x200000];
    [v5 setObject:v8 forKey:&unk_1F5623920];

    v9 = [v6 valueForProperty:0x20000000];
    [v5 setObject:v9 forKey:&unk_1F5623938];

    v10 = [v6 valueForProperty:0x10000];
    [v5 setObject:v10 forKey:&unk_1F5623950];

    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 valueForProperty:0x4000000];
      v13 = [v6 valueForProperty:0x200000];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "HUDeviceController: didUpdateProperty, Update Paired %@ Connected %@", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __47__HUDeviceController_device_didUpdateProperty___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForProperty:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerForPropertyUpdates:(id)a3
{
  if (a3)
  {
    aBlock = [a3 copy];
    v4 = [(HUDeviceController *)self updateDeviceBlocks];
    v5 = _Block_copy(aBlock);
    [v4 addObject:v5];
  }
}

- (void)stopPropertyUpdates
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HUDeviceController: Stopping Updates", buf, 2u);
  }

  deviceUpdatesQueue = self->_deviceUpdatesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__HUDeviceController_stopPropertyUpdates__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(deviceUpdatesQueue, block);
  v5 = [(HUDeviceController *)self updateDeviceBlocks];
  [v5 removeAllObjects];
}

void __41__HUDeviceController_stopPropertyUpdates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceUpdatesDescription];
  v3 = [*(a1 + 32) updateDeviceBlocks];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__HUDeviceController_stopPropertyUpdates__block_invoke_2;
  v5[3] = &unk_1E85CA268;
  v6 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:v5];

  [*(a1 + 32) setDeviceUpdatesDescription:v4];
}

- (void)updateProperty:(unint64_t)a3 forDeviceID:(id)a4
{
  v6 = [(HUDeviceController *)self hearingAidForDeviceID:a4];
  if (v6)
  {
    [(HUDeviceController *)self device:v6 didUpdateProperty:a3];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)writeValue:(id)a3 forProperty:(unint64_t)a4 andDeviceID:(id)a5
{
  v10 = a3;
  v8 = [(HUDeviceController *)self hearingAidForDeviceID:a5];
  v9 = v8;
  if (v8)
  {
    [v8 setValue:v10 forProperty:a4];
  }
}

@end