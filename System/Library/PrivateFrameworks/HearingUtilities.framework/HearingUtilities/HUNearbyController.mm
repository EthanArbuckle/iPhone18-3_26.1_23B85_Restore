@interface HUNearbyController
+ (HUNearbyController)sharedInstance;
- (HUNearbyController)init;
- (id)_sanitizedDictionaryForLoggingWithMessage:(id)message;
- (id)descriptionForIDSDevice:(id)device;
- (id)descriptionForPriority:(unint64_t)priority;
- (id)nearbyDeviceWithIdentifier:(id)identifier justCreated:(BOOL *)created;
- (id)nearbyDeviceWithSCIDSDevice:(id)device justCreated:(BOOL *)created;
- (id)nearbyDevices;
- (void)checkSCIDSServiceDevices;
- (void)didReceiveHearingAidsMessage:(id)message fromDevice:(id)device;
- (void)didUpdateDevices:(id)devices;
- (void)discoverNearbyDevicesWithDomain:(id)domain;
- (void)discoverSCIDSServiceWithDevicesUpdates:(id)updates messageBlock:(id)block;
- (void)logIDSDevices:(id)devices withTitle:(id)title;
- (void)logMessageWithDomain:(id)domain message:(id)message;
- (void)logNearbyDevices:(id)devices withTitle:(id)title;
- (void)logSCIDSDeviceFromDevices:(id)devices;
- (void)nearbyDevicesDidUpdateWithNewDevices:(id)devices forDomain:(id)domain;
- (void)processIDSDevices:(id)devices;
- (void)registerBlock:(id)block forKey:(id)key withUpdateGroup:(id)group forDomain:(id)domain withListener:(id)listener;
- (void)registerDiscoveryBlock:(id)block forDomain:(id)domain withListener:(id)listener;
- (void)registerLoggingBlock:(id)block forDomain:(id)domain withListener:(id)listener;
- (void)registerMessageBlock:(id)block forDomain:(id)domain withListener:(id)listener;
- (void)registerQueue:(id)queue forDomain:(id)domain;
- (void)sendMessage:(id)message toDevicesWithDomain:(id)domain excludingState:(id)state withPriority:(unint64_t)priority;
- (void)sendMessage:(id)message toDevicesWithDomain:(id)domain withPriority:(unint64_t)priority;
- (void)sendMessage:(id)message toWatchDevicesWithDomain:(id)domain excludingState:(id)state withPriority:(unint64_t)priority;
- (void)sendMessage:(id)message toWatchDevicesWithDomain:(id)domain withPriority:(unint64_t)priority;
- (void)sendMessage:(id)message withDomain:(id)domain toDevices:(id)devices withPriority:(unint64_t)priority;
- (void)sendSCIDSMessage:(id)message toDevice:(id)device;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setAvailableDevices:(id)devices;
- (void)start;
- (void)stop;
- (void)stopDiscoveringDevicesWithDomain:(id)domain;
- (void)stopDiscoveringSCIDSService;
@end

@implementation HUNearbyController

+ (HUNearbyController)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[HUNearbyController sharedInstance];
  }

  v3 = sharedInstance_NearbyController_0;

  return v3;
}

void __27__HUNearbyController_start__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  v3 = [v2 devices];
  [v1 service:v2 devicesChanged:v3];
}

- (id)nearbyDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__HUNearbyController_nearbyDevices__block_invoke;
  v6[3] = &unk_1E85CAF38;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(nearbyUpdatesQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__HUNearbyController_nearbyDevices__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) availableDevices];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)start
{
  if (!self->_service)
  {
    if ([MEMORY[0x1E69A4560] isProtectedDataAvailable])
    {
      v3 = +[HUNearbySettings timeStamp];
      [(HUNearbyController *)self logMessageWithDomain:0 message:@"IDS Start at %@", v3];

      v4 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.hearing"];
      service = self->_service;
      self->_service = v4;

      v6 = objc_alloc_init(MEMORY[0x1E69A5400]);
      [v6 setWantsCrossAccountMessaging:0];
      v7 = self->_service;
      nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
      [(IDSService *)v7 addDelegate:self withDelegateProperties:v6 queue:nearbyUpdatesQueue];

      v9 = dispatch_time(0, 1000000000);
      nearbyUpdatesQueue2 = [(HUNearbyController *)self nearbyUpdatesQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __27__HUNearbyController_start__block_invoke;
      block[3] = &unk_1E85C9F60;
      block[4] = self;
      dispatch_after(v9, nearbyUpdatesQueue2, block);
    }

    else
    {
      [(HUNearbyController *)self logMessageWithDomain:0 message:@"Waiting IDS Start"];
      objc_initWeak(&location, self);
      startTimer = [(HUNearbyController *)self startTimer];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __27__HUNearbyController_start__block_invoke_2;
      v12[3] = &unk_1E85C9F10;
      objc_copyWeak(&v13, &location);
      [startTimer afterDelay:v12 processBlock:0.5];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __36__HUNearbyController_sharedInstance__block_invoke()
{
  sharedInstance_NearbyController_0 = objc_alloc_init(HUNearbyController);

  return MEMORY[0x1EEE66BB8]();
}

- (HUNearbyController)init
{
  v25.receiver = self;
  v25.super_class = HUNearbyController;
  v2 = [(HUNearbyController *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_syncLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, 0);
    v6 = dispatch_queue_create("hu_nearby_updates_queue", v5);
    [(HUNearbyController *)v3 setNearbyUpdatesQueue:v6];

    v7 = objc_alloc(MEMORY[0x1E6988780]);
    nearbyUpdatesQueue = [(HUNearbyController *)v3 nearbyUpdatesQueue];
    v9 = [v7 initWithTargetSerialQueue:nearbyUpdatesQueue];
    [(HUNearbyController *)v3 setNearbyHysteresisTimer:v9];

    v3->_shouldPublishNearbyUpdates = 1;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(HUNearbyController *)v3 setDomainQueues:dictionary];

    array = [MEMORY[0x1E695DF70] array];
    [(HUNearbyController *)v3 setRegisteredDomains:array];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(HUNearbyController *)v3 setLoggingUpdates:dictionary2];

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    [(HUNearbyController *)v3 setMessageUpdates:dictionary3];

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    [(HUNearbyController *)v3 setDiscoveryUpdates:dictionary4];

    availableDevices = v3->_availableDevices;
    v16 = MEMORY[0x1E695E0F0];
    v3->_availableDevices = MEMORY[0x1E695E0F0];

    availableWatches = v3->_availableWatches;
    v3->_availableWatches = v16;

    v18 = objc_alloc(MEMORY[0x1E6988780]);
    nearbyUpdatesQueue2 = [(HUNearbyController *)v3 nearbyUpdatesQueue];
    v20 = [v18 initWithTargetSerialQueue:nearbyUpdatesQueue2];
    startTimer = v3->_startTimer;
    v3->_startTimer = v20;

    [(AXDispatchTimer *)v3->_startTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v22 = objc_opt_new();
    scIDSDevices = v3->_scIDSDevices;
    v3->_scIDSDevices = v22;
  }

  return v3;
}

- (void)setAvailableDevices:(id)devices
{
  objc_storeStrong(&self->_availableDevices, devices);
  devicesCopy = devices;
  v5 = [(NSArray *)self->_availableDevices ax_filteredArrayUsingBlock:&__block_literal_global_35];
  availableWatches = self->_availableWatches;
  self->_availableWatches = v5;
}

- (void)logMessageWithDomain:(id)domain message:(id)message
{
  v15 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v6 = MEMORY[0x1E696AEC0];
  messageCopy = message;
  v8 = [[v6 alloc] initWithFormat:messageCopy locale:0 arguments:&v16];

  if (domainCopy)
  {
    v11 = domainCopy;
    v12 = v8;
    AX_PERFORM_WITH_LOCK();
  }

  else
  {
    v9 = HCLogHearingNearby();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __51__HUNearbyController_logMessageWithDomain_message___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__HUNearbyController_logMessageWithDomain_message___block_invoke_2;
  v3[3] = &unk_1E85CA558;
  v4 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __51__HUNearbyController_logMessageWithDomain_message___block_invoke_2(uint64_t a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, *(a1 + 32));
    v4 = v5;
  }
}

- (id)descriptionForIDSDevice:(id)device
{
  v3 = MEMORY[0x1E696AEC0];
  deviceCopy = device;
  name = [deviceCopy name];
  productName = [deviceCopy productName];
  uniqueID = [deviceCopy uniqueID];
  v8 = IDSCopyIDForDevice();

  v9 = [v3 stringWithFormat:@"%@ - %@ [%@] - [%@]", name, productName, uniqueID, v8];

  return v9;
}

- (id)descriptionForPriority:(unint64_t)priority
{
  v3 = @"Default";
  if (priority == 2)
  {
    v3 = @"NoWake";
  }

  if (priority == 1)
  {
    return @"High";
  }

  else
  {
    return v3;
  }
}

- (void)logIDSDevices:(id)devices withTitle:(id)title
{
  v22 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  titleCopy = title;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = devicesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(HUNearbyController *)self descriptionForIDSDevice:*(*(&v17 + 1) + 8 * v13)];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  [(HUNearbyController *)self logMessageWithDomain:0 message:@"%@ count: %@, %@", titleCopy, v15, v8];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)logNearbyDevices:(id)devices withTitle:(id)title
{
  v22 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  titleCopy = title;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = devicesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) description];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  [(HUNearbyController *)self logMessageWithDomain:0 message:@"%@ count: %@, %@", titleCopy, v15, v8];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)discoverNearbyDevicesWithDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy length])
  {
    nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__HUNearbyController_discoverNearbyDevicesWithDomain___block_invoke;
    v6[3] = &unk_1E85C9F38;
    v6[4] = self;
    v7 = domainCopy;
    dispatch_async(nearbyUpdatesQueue, v6);
  }
}

void __54__HUNearbyController_discoverNearbyDevicesWithDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredDomains];
  v3 = [v2 indexOfObject:*(a1 + 40)];

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(a1 + 32);
    if (!v4[5])
    {
      [v4 start];
      v4 = *(a1 + 32);
    }

    v5 = [v4 registeredDomains];
    [v5 addObject:*(a1 + 40)];
  }
}

- (void)stopDiscoveringDevicesWithDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy length])
  {
    nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__HUNearbyController_stopDiscoveringDevicesWithDomain___block_invoke;
    v6[3] = &unk_1E85C9F38;
    v6[4] = self;
    v7 = domainCopy;
    dispatch_async(nearbyUpdatesQueue, v6);
  }
}

void __55__HUNearbyController_stopDiscoveringDevicesWithDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredDomains];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) registeredDomains];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 stop];
  }
}

void __27__HUNearbyController_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained start];
}

- (void)stop
{
  v3 = +[HUNearbySettings timeStamp];
  [(HUNearbyController *)self logMessageWithDomain:0 message:@"IDS Stop at %@", v3];

  service = self->_service;
  self->_service = 0;

  availableDevices = self->_availableDevices;
  v6 = MEMORY[0x1E695E0F0];
  self->_availableDevices = MEMORY[0x1E695E0F0];

  availableWatches = self->_availableWatches;
  self->_availableWatches = v6;

  startTimer = [(HUNearbyController *)self startTimer];
  [startTimer cancel];
}

- (id)nearbyDeviceWithIdentifier:(id)identifier justCreated:(BOOL *)created
{
  identifierCopy = identifier;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4;
  v44 = __Block_byref_object_dispose__4;
  v45 = 0;
  availableDevices = [(HUNearbyController *)self availableDevices];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __61__HUNearbyController_nearbyDeviceWithIdentifier_justCreated___block_invoke;
  v38[3] = &unk_1E85CBCE0;
  v8 = identifierCopy;
  v39 = v8;
  v9 = [availableDevices indexOfObjectPassingTest:v38];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(HUNearbyController *)self logMessageWithDomain:0 message:@"Device not found by ID, asking IDS service"];
    service = [(HUNearbyController *)self service];
    availableDevices4 = [service deviceForFromID:v8];

    if (availableDevices4)
    {
      availableDevices2 = [(HUNearbyController *)self availableDevices];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __61__HUNearbyController_nearbyDeviceWithIdentifier_justCreated___block_invoke_2;
      v36[3] = &unk_1E85CBCE0;
      availableDevices4 = availableDevices4;
      v37 = availableDevices4;
      v13 = [availableDevices2 indexOfObjectPassingTest:v36];

      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(HUNearbyController *)self logMessageWithDomain:0 message:@"Device not found. Creating from idsDevice"];
        v14 = [HUNearbyDevice nearbyDeviceWithIDSDevice:availableDevices4];
        v15 = v41[5];
        v41[5] = v14;

        [(HUNearbyController *)self logMessageWithDomain:0 message:@"Added device %@", v41[5]];
        if (created && v41[5])
        {
          *created = 1;
        }
      }

      else
      {
        availableDevices3 = [(HUNearbyController *)self availableDevices];
        v25 = [availableDevices3 objectAtIndex:v13];
        v26 = v41[5];
        v41[5] = v25;
      }

      v23 = v37;
    }

    else
    {
      [(HUNearbyController *)self logMessageWithDomain:0 message:@"Device not found. Creating."];
      service2 = [(HUNearbyController *)self service];
      devices = [service2 devices];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __61__HUNearbyController_nearbyDeviceWithIdentifier_justCreated___block_invoke_3;
      v32 = &unk_1E85CBD08;
      selfCopy = self;
      v20 = v8;
      v34 = v20;
      v35 = &v40;
      [devices enumerateObjectsUsingBlock:&v29];

      if (!v41[5])
      {
        v21 = [HUNearbyDevice nearbyDeviceWithIDSIdentifier:v20];
        v22 = v41[5];
        v41[5] = v21;

        [(HUNearbyController *)self logMessageWithDomain:0 message:@"Added device with just identifier %@", v41[5], v29, v30, v31, v32, selfCopy];
      }

      if (created && v41[5])
      {
        *created = 1;
      }

      v23 = v34;
    }
  }

  else
  {
    availableDevices4 = [(HUNearbyController *)self availableDevices];
    v16 = [availableDevices4 objectAtIndex:v9];
    v17 = v41[5];
    v41[5] = v16;
  }

  v27 = v41[5];
  _Block_object_dispose(&v40, 8);

  return v27;
}

uint64_t __61__HUNearbyController_nearbyDeviceWithIdentifier_justCreated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 idsDevice];
  v4 = [v3 uniqueIDOverride];
  v5 = [*(a1 + 32) uniqueIDOverride];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void __61__HUNearbyController_nearbyDeviceWithIdentifier_justCreated___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [v6 descriptionForIDSDevice:v15];
  [v6 logMessageWithDomain:0 message:{@"Checking %@ - %@", v7, v8}];

  v9 = [v15 uniqueID];
  if ([v9 isEqualToString:*(a1 + 40)])
  {
  }

  else
  {
    v10 = IDSCopyIDForDevice();
    v11 = [v10 containsString:*(a1 + 40)];

    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v12 = [HUNearbyDevice nearbyDeviceWithIDSDevice:v15];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  [*(a1 + 32) logMessageWithDomain:0 message:{@"Added device %@", *(*(*(a1 + 48) + 8) + 40)}];
  *a4 = 1;
LABEL_5:
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v23[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v22 = 0;
  messageCopy = message;
  v11 = [(HUNearbyController *)self nearbyDeviceWithIdentifier:dCopy justCreated:&v22];
  v12 = v11;
  if (v22 == 1 && v11 != 0)
  {
    [(HUNearbyController *)self logMessageWithDomain:0 message:@"Incoming message creating: %@", v11];
    availableDevices = [(HUNearbyController *)self availableDevices];
    v15 = [availableDevices arrayByAddingObject:v12];
    [(HUNearbyController *)self setAvailableDevices:v15];

    v23[0] = v12;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [(HUNearbyController *)self nearbyDevicesDidUpdateWithNewDevices:v16 forDomain:0];
  }

  [(HUNearbyController *)self logMessageWithDomain:0 message:@"Incoming message %@ - %@ - %@", dCopy, messageCopy, v12];
  v17 = [HUUtilities objectFromXDCObject:messageCopy];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__HUNearbyController_service_account_incomingMessage_fromID_context___block_invoke;
  v20[3] = &unk_1E85CBD80;
  v20[4] = self;
  v21 = v12;
  v18 = v12;
  [v17 enumerateKeysAndObjectsUsingBlock:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __69__HUNearbyController_service_account_incomingMessage_fromID_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v31 = 0;
  v7 = *(a1 + 32);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __69__HUNearbyController_service_account_incomingMessage_fromID_context___block_invoke_2;
  v22 = &unk_1E85CBD30;
  v25 = &v26;
  v23 = v7;
  v24 = v5;
  AX_PERFORM_WITH_LOCK();
  v8 = [*(a1 + 32) domainQueues];
  v9 = [v8 objectForKey:v24];

  v10 = v27[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__HUNearbyController_service_account_incomingMessage_fromID_context___block_invoke_3;
  v14[3] = &unk_1E85CBD58;
  v11 = v9;
  v15 = v11;
  v16 = *(a1 + 40);
  v12 = v6;
  v17 = v12;
  v13 = v24;
  v18 = v13;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];

  _Block_object_dispose(&v26, 8);
}

void __69__HUNearbyController_service_account_incomingMessage_fromID_context___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) messageUpdates];
  v2 = [v6 objectForKey:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __69__HUNearbyController_service_account_incomingMessage_fromID_context___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__HUNearbyController_service_account_incomingMessage_fromID_context___block_invoke_4;
    block[3] = &unk_1E85CB230;
    v16 = v4;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    dispatch_async(v6, block);
  }

  else
  {
    (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48));
  }

  v7 = +[HUNearbySettings sharedInstance];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = [*(a1 + 40) idsDevice];
  v11 = [v10 deviceType];
  v12 = [*(a1 + 40) deviceTypeDescription];
  [v7 incomingIDSMessage:v9 domain:v8 deviceType:v11 deviceTypeDescription:v12];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  [(HUNearbyController *)self logIDSDevices:changedCopy withTitle:@"Devices changed"];
  [(HUNearbyController *)self processIDSDevices:changedCopy];
}

- (void)processIDSDevices:(id)devices
{
  devicesCopy = devices;
  [(HUNearbyController *)self logIDSDevices:devicesCopy withTitle:@"Process IDS Devices"];
  nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__HUNearbyController_processIDSDevices___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(nearbyUpdatesQueue, v7);
}

void __40__HUNearbyController_processIDSDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldPublishNearbyUpdates];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 logMessageWithDomain:0 message:@"Publishing updates"];
    [*(a1 + 32) setHasPendingNearbyUpdates:0];
    [*(a1 + 32) setShouldPublishNearbyUpdates:0];
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF70] array];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __40__HUNearbyController_processIDSDevices___block_invoke_2;
    v19[3] = &unk_1E85CBDA8;
    v6 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v5;
    v21 = v4;
    v7 = v4;
    v8 = v5;
    [v6 enumerateObjectsUsingBlock:v19];
    [*(a1 + 32) setAvailableDevices:v7];
    v9 = *(a1 + 32);
    v10 = [v9 availableDevices];
    v11 = [*(a1 + 32) scIDSDevices];
    v12 = [v10 arrayByAddingObjectsFromArray:v11];
    [v9 setAvailableDevices:v12];

    [*(a1 + 32) nearbyDevicesDidUpdateWithNewDevices:v8 forDomain:0];
    [*(a1 + 32) logNearbyDevices:v7 withTitle:@"Saved devices"];
  }

  else
  {
    [v3 logMessageWithDomain:0 message:@"Pending updates. Skipping for now."];
    [*(a1 + 32) setHasPendingNearbyUpdates:1];
  }

  v13 = [*(a1 + 32) nearbyHysteresisTimer];
  v14 = [v13 isPending];

  if ((v14 & 1) == 0)
  {
    objc_initWeak(&location, *(a1 + 32));
    v15 = [*(a1 + 32) nearbyHysteresisTimer];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__HUNearbyController_processIDSDevices___block_invoke_3;
    v16[3] = &unk_1E85CB800;
    objc_copyWeak(&v17, &location);
    v16[4] = *(a1 + 32);
    [v15 afterDelay:v16 processBlock:60.0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __40__HUNearbyController_processIDSDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueID];

  if (!v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 descriptionForIDSDevice:v3];
    [v5 logMessageWithDomain:0 message:{@"IDS device uniqueID is nil %@", v6}];
  }

  v10 = 0;
  v7 = *(a1 + 32);
  v8 = [v3 uniqueID];
  v9 = [v7 nearbyDeviceWithIdentifier:v8 justCreated:&v10];

  if (v10 == 1)
  {
    [*(a1 + 40) hcSafeAddObject:v9];
  }

  [*(a1 + 48) hcSafeAddObject:v9];
}

void __40__HUNearbyController_processIDSDevices___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShouldPublishNearbyUpdates:1];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 hasPendingNearbyUpdates];

  if (v4)
  {
    [*(a1 + 32) logMessageWithDomain:0 message:@"Nearby Hysteresis Timer fired"];
    v9 = objc_loadWeakRetained((a1 + 40));
    v5 = [v9 service];
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 service];
    v8 = [v7 devices];
    [v9 service:v5 devicesChanged:v8];
  }
}

- (void)nearbyDevicesDidUpdateWithNewDevices:(id)devices forDomain:(id)domain
{
  devicesCopy = devices;
  domainCopy = domain;
  [(HUNearbyController *)self logNearbyDevices:devicesCopy withTitle:@"New devices"];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __69__HUNearbyController_nearbyDevicesDidUpdateWithNewDevices_forDomain___block_invoke;
  v18 = &unk_1E85CAF38;
  selfCopy = self;
  v20 = &v21;
  AX_PERFORM_WITH_LOCK();
  v8 = v22[5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__HUNearbyController_nearbyDevicesDidUpdateWithNewDevices_forDomain___block_invoke_2;
  v11[3] = &unk_1E85CBDF8;
  v9 = domainCopy;
  v12 = v9;
  selfCopy2 = self;
  v10 = devicesCopy;
  v14 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];

  _Block_object_dispose(&v21, 8);
}

uint64_t __69__HUNearbyController_nearbyDevicesDidUpdateWithNewDevices_forDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveryUpdates];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __69__HUNearbyController_nearbyDevicesDidUpdateWithNewDevices_forDomain___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!*(a1 + 32) || [v5 isEqualToString:?])
  {
    v7 = [*(a1 + 40) domainQueues];
    v8 = [v7 objectForKey:v5];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__HUNearbyController_nearbyDevicesDidUpdateWithNewDevices_forDomain___block_invoke_3;
    v10[3] = &unk_1E85CBDD0;
    v11 = v8;
    v12 = *(a1 + 48);
    v9 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __69__HUNearbyController_nearbyDevicesDidUpdateWithNewDevices_forDomain___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__HUNearbyController_nearbyDevicesDidUpdateWithNewDevices_forDomain___block_invoke_4;
    v7[3] = &unk_1E85CA508;
    v9 = v4;
    v8 = *(a1 + 40);
    dispatch_async(v6, v7);
  }

  else
  {
    (*(v4 + 2))(v4, *(a1 + 40));
  }
}

- (void)sendMessage:(id)message toDevicesWithDomain:(id)domain withPriority:(unint64_t)priority
{
  messageCopy = message;
  domainCopy = domain;
  nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__HUNearbyController_sendMessage_toDevicesWithDomain_withPriority___block_invoke;
  v13[3] = &unk_1E85CA5D0;
  v13[4] = self;
  v14 = messageCopy;
  v15 = domainCopy;
  priorityCopy = priority;
  v11 = domainCopy;
  v12 = messageCopy;
  dispatch_async(nearbyUpdatesQueue, v13);
}

void __67__HUNearbyController_sendMessage_toDevicesWithDomain_withPriority___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = [v2 availableDevices];
  [v2 sendMessage:v3 withDomain:v4 toDevices:v5 withPriority:a1[7]];
}

- (void)sendMessage:(id)message toWatchDevicesWithDomain:(id)domain withPriority:(unint64_t)priority
{
  messageCopy = message;
  domainCopy = domain;
  nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__HUNearbyController_sendMessage_toWatchDevicesWithDomain_withPriority___block_invoke;
  v13[3] = &unk_1E85CA5D0;
  v13[4] = self;
  v14 = messageCopy;
  v15 = domainCopy;
  priorityCopy = priority;
  v11 = domainCopy;
  v12 = messageCopy;
  dispatch_async(nearbyUpdatesQueue, v13);
}

void __72__HUNearbyController_sendMessage_toWatchDevicesWithDomain_withPriority___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = [v2 availableWatches];
  [v2 sendMessage:v3 withDomain:v4 toDevices:v5 withPriority:a1[7]];
}

- (void)sendMessage:(id)message toDevicesWithDomain:(id)domain excludingState:(id)state withPriority:(unint64_t)priority
{
  messageCopy = message;
  domainCopy = domain;
  stateCopy = state;
  nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__HUNearbyController_sendMessage_toDevicesWithDomain_excludingState_withPriority___block_invoke;
  block[3] = &unk_1E85CBE48;
  block[4] = self;
  v18 = domainCopy;
  v19 = stateCopy;
  v20 = messageCopy;
  priorityCopy = priority;
  v14 = messageCopy;
  v15 = stateCopy;
  v16 = domainCopy;
  dispatch_async(nearbyUpdatesQueue, block);
}

void __82__HUNearbyController_sendMessage_toDevicesWithDomain_excludingState_withPriority___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availableDevices];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __82__HUNearbyController_sendMessage_toDevicesWithDomain_excludingState_withPriority___block_invoke_2;
  v7 = &unk_1E85CBE20;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 ax_filteredArrayUsingBlock:&v4];

  [*(a1 + 32) sendMessage:*(a1 + 56) withDomain:*(a1 + 40) toDevices:v3 withPriority:{*(a1 + 64), v4, v5, v6, v7}];
}

uint64_t __82__HUNearbyController_sendMessage_toDevicesWithDomain_excludingState_withPriority___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = [a2 stateForDomain:*(a1 + 32)];
  LODWORD(v2) = [v3 isEqual:*(v2 + 40)];

  return v2 ^ 1;
}

- (void)sendMessage:(id)message toWatchDevicesWithDomain:(id)domain excludingState:(id)state withPriority:(unint64_t)priority
{
  messageCopy = message;
  domainCopy = domain;
  stateCopy = state;
  nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__HUNearbyController_sendMessage_toWatchDevicesWithDomain_excludingState_withPriority___block_invoke;
  block[3] = &unk_1E85CBE48;
  block[4] = self;
  v18 = domainCopy;
  v19 = stateCopy;
  v20 = messageCopy;
  priorityCopy = priority;
  v14 = messageCopy;
  v15 = stateCopy;
  v16 = domainCopy;
  dispatch_async(nearbyUpdatesQueue, block);
}

void __87__HUNearbyController_sendMessage_toWatchDevicesWithDomain_excludingState_withPriority___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availableWatches];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __87__HUNearbyController_sendMessage_toWatchDevicesWithDomain_excludingState_withPriority___block_invoke_2;
  v7 = &unk_1E85CBE20;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 ax_filteredArrayUsingBlock:&v4];

  [*(a1 + 32) sendMessage:*(a1 + 56) withDomain:*(a1 + 40) toDevices:v3 withPriority:{*(a1 + 64), v4, v5, v6, v7}];
}

uint64_t __87__HUNearbyController_sendMessage_toWatchDevicesWithDomain_excludingState_withPriority___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = [a2 stateForDomain:*(a1 + 32)];
  LODWORD(v2) = [v3 isEqual:*(v2 + 40)];

  return v2 ^ 1;
}

- (void)sendMessage:(id)message withDomain:(id)domain toDevices:(id)devices withPriority:(unint64_t)priority
{
  messageCopy = message;
  domainCopy = domain;
  devicesCopy = devices;
  if ([devicesCopy count] && objc_msgSend(domainCopy, "length") && objc_msgSend(messageCopy, "count"))
  {
    v13 = [(HUNearbyController *)self descriptionForPriority:priority];
    nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__HUNearbyController_sendMessage_withDomain_toDevices_withPriority___block_invoke;
    v16[3] = &unk_1E85CBE98;
    v17 = devicesCopy;
    selfCopy = self;
    v19 = domainCopy;
    v20 = messageCopy;
    v21 = v13;
    priorityCopy = priority;
    v15 = v13;
    dispatch_async(nearbyUpdatesQueue, v16);
  }
}

void __68__HUNearbyController_sendMessage_withDomain_toDevices_withPriority___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __68__HUNearbyController_sendMessage_withDomain_toDevices_withPriority___block_invoke_2;
  v25[3] = &unk_1E85CBE70;
  v4 = v2;
  v26 = v4;
  [v3 enumerateObjectsUsingBlock:v25];
  if ([v4 count])
  {
    [*(a1 + 40) setMessagesCount:{objc_msgSend(*(a1 + 40), "messagesCount") + 1}];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "messagesCount")}];
    v8 = [*(a1 + 40) _sanitizedDictionaryForLoggingWithMessage:*(a1 + 56)];
    v9 = *(a1 + 48);
    [v5 logMessageWithDomain:v6 message:{@"IDS Sending(%@) %@ to %{sensitive}@ with %@, priority: %@", v7, v8, *(a1 + 32), v9, *(a1 + 64)}];

    v10 = +[HUNearbySettings sharedInstance];
    [v10 sentIDSMessage:*(a1 + 56) domain:*(a1 + 48) priority:*(a1 + 72) priorityDescription:*(a1 + 64)];

    v11 = *(a1 + 56);
    v27 = *(a1 + 48);
    v28[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    if (*(a1 + 72) == 2)
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A47C0]];
      [v13 setObject:&unk_1F5623D70 forKeyedSubscript:*MEMORY[0x1E69A47D0]];
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(a1 + 40) service];
    v15 = [HUUtilities XDCObjectFromObject:v12];
    if ((*(a1 + 72) - 1) >= 2)
    {
      v16 = 200;
    }

    else
    {
      v16 = 300;
    }

    v23 = 0;
    v24 = 0;
    [v14 sendMessage:v15 toDestinations:v4 priority:v16 options:v13 identifier:&v24 error:&v23];
    v17 = v24;
    v18 = v23;

    if (v18)
    {
      [*(a1 + 40) logMessageWithDomain:*(a1 + 48) message:{@"Error sending %@", v18}];
    }

    if (v17)
    {
      v20 = *(a1 + 40);
      v19 = *(a1 + 48);
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "messagesCount")}];
      [v20 logMessageWithDomain:v19 message:{@"IDS sent message: %@, GUID: %@", v21, v17}];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __68__HUNearbyController_sendMessage_withDomain_toDevices_withPriority___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isSCIDSService] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v5 identifier];
    [v3 addObject:v4];
  }
}

- (void)registerBlock:(id)block forKey:(id)key withUpdateGroup:(id)group forDomain:(id)domain withListener:(id)listener
{
  blockCopy = block;
  keyCopy = key;
  groupCopy = group;
  domainCopy = domain;
  listenerCopy = listener;
  v16 = listenerCopy;
  if (listenerCopy)
  {
    v17 = listenerCopy;
    v18 = groupCopy;
    v19 = domainCopy;
    v20 = blockCopy;
    v21 = keyCopy;
    AX_PERFORM_WITH_LOCK();
  }
}

void __82__HUNearbyController_registerBlock_forKey_withUpdateGroup_forDomain_withListener___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v2 = [*(a1 + 40) objectForKey:*(a1 + 48)];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = [v3 copy];
    [v2 setObject:v4 forKey:v6];

    v5 = objc_getAssociatedObject(*(a1 + 32), &HUNearbyControllerDestructionHelperKey);
    if (!v5)
    {
      v5 = [[HUNearbyListenerHelper alloc] initWithListenerAddress:*(a1 + 32) andDelegate:*(a1 + 64)];
      objc_setAssociatedObject(*(a1 + 32), &HUNearbyControllerDestructionHelperKey, v5, 1);
    }

    [(HUNearbyListenerHelper *)v5 addKey:*(a1 + 72) forDomain:*(a1 + 48)];
  }

  else
  {
    [v2 removeObjectForKey:v6];
  }

  [*(a1 + 40) setObject:v2 forKey:*(a1 + 48)];
}

- (void)registerQueue:(id)queue forDomain:(id)domain
{
  domainCopy = domain;
  queueCopy = queue;
  domainQueues = [(HUNearbyController *)self domainQueues];
  [domainQueues setObject:queueCopy forKey:domainCopy];
}

- (void)registerLoggingBlock:(id)block forDomain:(id)domain withListener:(id)listener
{
  listenerCopy = listener;
  domainCopy = domain;
  v10 = _Block_copy(block);
  [(HUNearbyController *)self registerBlock:v10 forKey:@"HUNearbyControllerLoggingKey" withUpdateGroup:self->_loggingUpdates forDomain:domainCopy withListener:listenerCopy];
}

- (void)registerDiscoveryBlock:(id)block forDomain:(id)domain withListener:(id)listener
{
  listenerCopy = listener;
  domainCopy = domain;
  v10 = _Block_copy(block);
  [(HUNearbyController *)self registerBlock:v10 forKey:@"HUNearbyControllerDiscoveryKey" withUpdateGroup:self->_discoveryUpdates forDomain:domainCopy withListener:listenerCopy];
}

- (void)registerMessageBlock:(id)block forDomain:(id)domain withListener:(id)listener
{
  listenerCopy = listener;
  domainCopy = domain;
  v10 = _Block_copy(block);
  [(HUNearbyController *)self registerBlock:v10 forKey:@"HUNearbyControllerMessageKey" withUpdateGroup:self->_messageUpdates forDomain:domainCopy withListener:listenerCopy];
}

- (void)discoverSCIDSServiceWithDevicesUpdates:(id)updates messageBlock:(id)block
{
  updatesCopy = updates;
  blockCopy = block;
  if (!_AXSIsNonUIBuild())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__HUNearbyController_discoverSCIDSServiceWithDevicesUpdates_messageBlock___block_invoke;
    block[3] = &unk_1E85CBF10;
    block[4] = self;
    v9 = blockCopy;
    v10 = updatesCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __74__HUNearbyController_discoverSCIDSServiceWithDevicesUpdates_messageBlock___block_invoke(uint64_t a1)
{
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "SC IDS Service start", buf, 2u);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v3 = getAXSSInterDeviceCommunicatorClass_softClass;
  v24 = getAXSSInterDeviceCommunicatorClass_softClass;
  if (!getAXSSInterDeviceCommunicatorClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAXSSInterDeviceCommunicatorClass_block_invoke;
    v19 = &unk_1E85C9FB0;
    v20 = &v21;
    __getAXSSInterDeviceCommunicatorClass_block_invoke(buf);
    v3 = v22[3];
  }

  v4 = v3;
  _Block_object_dispose(&v21, 8);
  v5 = objc_alloc_init(v3);
  [*(a1 + 32) setInterDeviceCommunicator:v5];
  [v5 setHearingAidsMessagesObserver:*(a1 + 32)];
  v6 = [v5 connectedDevices];
  v7 = [*(a1 + 32) nearbyUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__HUNearbyController_discoverSCIDSServiceWithDevicesUpdates_messageBlock___block_invoke_152;
  block[3] = &unk_1E85CBEE8;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v14 = v8;
  v15 = *(a1 + 48);
  v13 = v6;
  v9 = v6;
  dispatch_async(v7, block);

  v10 = dispatch_time(0, 4000000000);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__HUNearbyController_discoverSCIDSServiceWithDevicesUpdates_messageBlock___block_invoke_153;
  v11[3] = &unk_1E85C9F60;
  v11[4] = *(a1 + 32);
  dispatch_after(v10, MEMORY[0x1E69E96A0], v11);
}

uint64_t __74__HUNearbyController_discoverSCIDSServiceWithDevicesUpdates_messageBlock___block_invoke_152(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setScIDSServiceMessageBlock:*(a1 + 48)];
  [*(a1 + 32) setScIDSServiceDevicesUpdatesBlock:*(a1 + 56)];
  [*(a1 + 32) setScIDSServiceHasPeers:{objc_msgSend(*(a1 + 40), "count") != 0}];
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) scIDSServiceHasPeers];
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "SC IDS Service has peers %d", v6, 8u);
  }

  result = [*(a1 + 40) count];
  if (result)
  {
    result = [*(a1 + 32) didUpdateDevices:*(a1 + 40)];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)checkSCIDSServiceDevices
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "SC IDS Service has devices %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __46__HUNearbyController_checkSCIDSServiceDevices__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) scIDSServiceHasPeers];
  if (((result ^ (*(a1 + 48) < 1)) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 didUpdateDevices:v4];
  }

  return result;
}

- (void)stopDiscoveringSCIDSService
{
  if (!_AXSIsNonUIBuild())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__HUNearbyController_stopDiscoveringSCIDSService__block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __49__HUNearbyController_stopDiscoveringSCIDSService__block_invoke_154;
    v4[3] = &unk_1E85C9F60;
    v4[4] = self;
    dispatch_async(nearbyUpdatesQueue, v4);
  }
}

void __49__HUNearbyController_stopDiscoveringSCIDSService__block_invoke(uint64_t a1)
{
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "SC IDS Service stop", v4, 2u);
  }

  v3 = [*(a1 + 32) interDeviceCommunicator];
  [v3 setHearingAidsMessagesObserver:0];
  [*(a1 + 32) setInterDeviceCommunicator:0];
}

void __49__HUNearbyController_stopDiscoveringSCIDSService__block_invoke_154(uint64_t a1)
{
  [*(a1 + 32) setScIDSServiceMessageBlock:0];
  [*(a1 + 32) setScIDSServiceDevicesUpdatesBlock:0];
  [*(a1 + 32) setScIDSServiceHasPeers:0];
  v2 = HCLogHearingHandoff();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "SC IDS Service cleaned", v3, 2u);
  }
}

- (void)didReceiveHearingAidsMessage:(id)message fromDevice:(id)device
{
  v20 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  deviceCopy = device;
  v8 = HCLogHearingHandoff();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = messageCopy;
    v18 = 2112;
    v19 = deviceCopy;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "SC IDS Service didReceiveHearingAidsMessage %@ from device: %@", buf, 0x16u);
  }

  nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HUNearbyController_didReceiveHearingAidsMessage_fromDevice___block_invoke;
  block[3] = &unk_1E85CA468;
  block[4] = self;
  v14 = deviceCopy;
  v15 = messageCopy;
  v10 = messageCopy;
  v11 = deviceCopy;
  dispatch_async(nearbyUpdatesQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __62__HUNearbyController_didReceiveHearingAidsMessage_fromDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setScIDSServiceHasPeers:1];
  v4 = [*(a1 + 32) nearbyDeviceWithSCIDSDevice:*(a1 + 40) justCreated:0];
  if (v4)
  {
    v2 = [*(a1 + 32) scIDSServiceMessageBlock];

    if (v2)
    {
      v3 = [*(a1 + 32) scIDSServiceMessageBlock];
      (v3)[2](v3, v4, *(a1 + 48));
    }
  }
}

- (void)didUpdateDevices:(id)devices
{
  v14 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(devicesCopy, "count")}];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "SC IDS Service didUpdateDevices: %@", buf, 0xCu);
  }

  nearbyUpdatesQueue = [(HUNearbyController *)self nearbyUpdatesQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__HUNearbyController_didUpdateDevices___block_invoke;
  v10[3] = &unk_1E85C9F38;
  v10[4] = self;
  v11 = devicesCopy;
  v8 = devicesCopy;
  dispatch_async(nearbyUpdatesQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __39__HUNearbyController_didUpdateDevices___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setScIDSServiceHasPeers:{objc_msgSend(*(a1 + 40), "count") != 0}];
  v2 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = [*(a1 + 32) scIDSDevices];
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [v8 idsDevice];
        LOBYTE(v9) = [v9 containsObject:v10];

        if ((v9 & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v11 = *(a1 + 32);
    v12 = [v11 availableDevices];
    v13 = [v12 arrayByExcludingObjectsInArray:v2];
    [v11 setAvailableDevices:v13];

    v14 = [*(a1 + 32) scIDSDevices];
    [v14 removeObjectsInArray:v2];
  }

  v15 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = *(a1 + 40);
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * j);
        buf[0] = 0;
        v22 = [*(a1 + 32) nearbyDeviceWithSCIDSDevice:v21 justCreated:{buf, v30}];
        if (v22 && buf[0] == 1)
        {
          [v15 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v18);
  }

  if ([v2 count] || objc_msgSend(v15, "count"))
  {
    v23 = HCLogHearingHandoff();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v2;
      _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, "SC IDS Service Removed devices: %@", buf, 0xCu);
    }

    v24 = HCLogHearingHandoff();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v15;
      _os_log_impl(&dword_1DA5E2000, v24, OS_LOG_TYPE_DEFAULT, "SC IDS Service Added devices: %@", buf, 0xCu);
    }

    v25 = HCLogHearingHandoff();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 32) scIDSDevices];
      *buf = 138412290;
      v39 = v26;
      _os_log_impl(&dword_1DA5E2000, v25, OS_LOG_TYPE_DEFAULT, "SC IDS Service Updated Devices: %@", buf, 0xCu);
    }

    v27 = [*(a1 + 32) scIDSServiceDevicesUpdatesBlock];

    if (v27)
    {
      v28 = [*(a1 + 32) scIDSServiceDevicesUpdatesBlock];
      (v28)[2](v28, v2, v15);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)sendSCIDSMessage:(id)message toDevice:(id)device
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  deviceCopy = device;
  if (!_AXSIsNonUIBuild())
  {
    v8 = HCLogHearingHandoff();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      name = [deviceCopy name];
      *buf = 138412546;
      v15 = messageCopy;
      v16 = 2112;
      v17 = name;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "SC IDS Service sending message %@ to device: %@", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__HUNearbyController_sendSCIDSMessage_toDevice___block_invoke;
    block[3] = &unk_1E85CA468;
    block[4] = self;
    v12 = messageCopy;
    v13 = deviceCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __48__HUNearbyController_sendSCIDSMessage_toDevice___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) interDeviceCommunicator];
  v3 = *(a1 + 40);
  v7 = @"com.apple.hearing.hearingaids";
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [*(a1 + 48) idsDevice];
  [v2 sendHearingAidsMessage:v4 toDevice:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)nearbyDeviceWithSCIDSDevice:(id)device justCreated:(BOOL *)created
{
  if (created)
  {
    *created = 0;
  }

  return 0;
}

- (void)logSCIDSDeviceFromDevices:(id)devices
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = devices;
  v21 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v21)
  {
    v19 = *v28;
    do
    {
      v3 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v3;
        v4 = *(*(&v27 + 1) + 8 * v3);
        v5 = HCLogHearingHandoff();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v4;
          _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "SC IDS Service device: %@", buf, 0xCu);
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        availableDevices = [(HUNearbyController *)self availableDevices];
        v7 = [availableDevices countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v24;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v24 != v9)
              {
                objc_enumerationMutation(availableDevices);
              }

              v11 = *(*(&v23 + 1) + 8 * i);
              idsDevice = [v11 idsDevice];
              uniqueIDOverride = [idsDevice uniqueIDOverride];
              uniqueIDOverride2 = [v4 uniqueIDOverride];
              v15 = [uniqueIDOverride isEqualToString:uniqueIDOverride2];

              if (v15)
              {
                v16 = HCLogHearingHandoff();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v33 = v11;
                  _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "SC IDS Service Nearby device %@", buf, 0xCu);
                }

                goto LABEL_20;
              }
            }

            v8 = [availableDevices countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        v3 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v21);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_sanitizedDictionaryForLoggingWithMessage:(id)message
{
  if (message)
  {
    v3 = [message mutableCopy];
    v4 = [v3 objectForKey:@"transcription"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
        [v3 setObject:v5 forKey:@"transcription"];
      }
    }

    v6 = [v3 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end