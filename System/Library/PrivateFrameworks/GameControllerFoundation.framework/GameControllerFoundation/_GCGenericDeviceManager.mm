@interface _GCGenericDeviceManager
- (BOOL)acceptDriverConnection:(id)connection forHIDService:(id)service;
- (BOOL)acceptFilterConnection:(id)connection forHIDService:(id)service;
- (_GCGenericDeviceManager)init;
- (_GCPhysicalDeviceRegistry)deviceRegistry;
- (id)matchHIDService:(id)service;
- (void)_onioqueue_setupHIDMatching;
- (void)_onqueue_registerDefaultConfigurationForDevice:(id)device;
- (void)_onqueue_relinquishHIDService:(uint64_t)service;
- (void)claimHIDService:(id)service;
- (void)dealloc;
- (void)relinquishHIDService:(id)service;
- (void)setDeviceRegistry:(id)registry;
@end

@implementation _GCGenericDeviceManager

- (_GCGenericDeviceManager)init
{
  v16.receiver = self;
  v16.super_class = _GCGenericDeviceManager;
  v2 = [(_GCGenericDeviceManager *)&v16 init];
  v3 = dispatch_queue_create("GenericDevice.Manager", 0);
  v4 = *(v2 + 1);
  *(v2 + 1) = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = *(v2 + 5);
  *(v2 + 5) = v5;

  v7 = objc_opt_new();
  v8 = *(v2 + 6);
  *(v2 + 6) = v7;

  v9 = objc_opt_new();
  v10 = *(v2 + 7);
  *(v2 + 7) = v9;

  v11 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  *(v2 + 2) = v11;
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -10);
    v13 = dispatch_queue_create("GenericDevice.HIDMatching", v12);
    v14 = *(v2 + 3);
    *(v2 + 3) = v13;

    IONotificationPortSetDispatchQueue(*(v2 + 2), *(v2 + 3));
  }

  else
  {
    v12 = _gc_log_generic_device();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(_GCGenericDeviceManager *)v12 init];
    }
  }

  return v2;
}

- (void)dealloc
{
  ioHIDDeviceIterator = self->_ioHIDDeviceIterator;
  if (ioHIDDeviceIterator)
  {
    IOObjectRelease(ioHIDDeviceIterator);
    self->_ioHIDDeviceIterator = 0;
  }

  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
    self->_ioNotificationPort = 0;
  }

  v5.receiver = self;
  v5.super_class = _GCGenericDeviceManager;
  [(_GCGenericDeviceManager *)&v5 dealloc];
}

- (void)setDeviceRegistry:(id)registry
{
  objc_storeWeak(&self->_deviceRegistry, registry);
  ioNotificationQueue = self->_ioNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___GCGenericDeviceManager_setDeviceRegistry___block_invoke;
  block[3] = &unk_1E8413DA0;
  block[4] = self;
  dispatch_async(ioNotificationQueue, block);
}

- (id)matchHIDService:(id)service
{
  v3 = IOHIDServiceClientCopyProperty([service service], @"GameControllerSupportedHIDDevice");
  bOOLValue = [v3 BOOLValue];
  v5 = &GCPhysicalDeviceProbeScoreLowPriority;
  if (!bOOLValue)
  {
    v5 = &GCPhysicalDeviceProbeScoreNoMatch;
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (void)_onqueue_registerDefaultConfigurationForDevice:(id)device
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  deviceCopy = device;
  v6 = [v4 alloc];
  identifier = [deviceCopy identifier];
  v8 = [v6 initWithFormat:@"LOGICAL_DEVICE(%@)", identifier];

  identifier2 = [deviceCopy identifier];
  v17[0] = identifier2;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  identifier3 = [(_GCGenericDeviceManager *)self identifier];
  v12 = [(_GCDeviceConfiguration *)_GCMutableDeviceConfiguration configurationWithIdentifier:v8 priority:10 deviceIdentifier:v8 deviceDependencies:v10 deviceBuilder:identifier3];

  identifier4 = [deviceCopy identifier];

  objc_opt_class();
  LOBYTE(deviceCopy) = objc_opt_isKindOfClass();

  if (deviceCopy)
  {
    [v12 setTransient:1];
  }

  deviceRegistry = [(_GCGenericDeviceManager *)self deviceRegistry];
  deviceConfigurationRegistry = [deviceRegistry deviceConfigurationRegistry];
  [deviceConfigurationRegistry addConfiguration:v12 replaceExisting:1];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)claimHIDService:(id)service
{
  serviceCopy = service;
  v6 = _os_activity_create(&dword_1D2C3B000, "[Generic Device Manager] Claim HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = _gc_log_generic_device();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_GCGenericDeviceManager claimHIDService:?];
  }

  if ([(NSMutableSet *)self->_claimedServices containsObject:serviceCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager.m" lineNumber:157 description:{@"%@ has already claimed %@", self, serviceCopy}];
  }

  [(NSMutableSet *)self->_claimedServices addObject:serviceCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___GCGenericDeviceManager_claimHIDService___block_invoke;
  block[3] = &unk_1E8413E18;
  v12 = serviceCopy;
  selfCopy = self;
  v14 = a2;
  v9 = serviceCopy;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (void)relinquishHIDService:(id)service
{
  serviceCopy = service;
  v6 = _os_activity_create(&dword_1D2C3B000, "[Generic Device Manager] Relinquish HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = _gc_log_generic_device();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_GCGenericDeviceManager relinquishHIDService:?];
  }

  if (([(NSMutableSet *)self->_claimedServices containsObject:serviceCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager.m" lineNumber:245 description:{@"%@ has not claimed %@", self, serviceCopy}];
  }

  [(NSMutableSet *)self->_claimedServices removeObject:serviceCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48___GCGenericDeviceManager_relinquishHIDService___block_invoke;
  block[3] = &unk_1E8413E40;
  block[4] = self;
  v12 = serviceCopy;
  v9 = serviceCopy;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (BOOL)acceptDriverConnection:(id)connection forHIDService:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  v9 = _os_activity_create(&dword_1D2C3B000, "[Generic Device Manager] Accept HID Driver Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(NSMutableSet *)self->_claimedServices containsObject:serviceCopy];
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___GCGenericDeviceManager_acceptDriverConnection_forHIDService___block_invoke;
    block[3] = &unk_1E8413E68;
    block[4] = self;
    v15 = serviceCopy;
    v16 = connectionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager.m" lineNumber:257 description:{@"Unclaimed service: %@", serviceCopy}];
  }

  os_activity_scope_leave(&state);

  return v10;
}

- (BOOL)acceptFilterConnection:(id)connection forHIDService:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  v9 = _os_activity_create(&dword_1D2C3B000, "[Generic Device Manager] Accept HID Filter Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(NSMutableSet *)self->_claimedServices containsObject:serviceCopy];
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___GCGenericDeviceManager_acceptFilterConnection_forHIDService___block_invoke;
    block[3] = &unk_1E8413E90;
    block[4] = self;
    v15 = serviceCopy;
    v16 = connectionCopy;
    v17 = a2;
    dispatch_async(queue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager.m" lineNumber:281 description:{@"Unclaimed service: %@", serviceCopy}];
  }

  os_activity_scope_leave(&state);

  return v10;
}

- (void)_onioqueue_setupHIDMatching
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_fault_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_FAULT, "Failed to setup IOHIDDevice service matching: %{mach.errno}d.  Game controller discovery may be impacted.", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (_GCPhysicalDeviceRegistry)deviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceRegistry);

  return WeakRetained;
}

- (void)_onqueue_relinquishHIDService:(uint64_t)service
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (service)
  {
    dispatch_assert_queue_V2(*(service + 8));
    v4 = [*(service + 56) objectForKey:v3];
    if (v4)
    {
      v5 = _gc_log_generic_device();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 138412546;
        *&v11[4] = service;
        OUTLINED_FUNCTION_2_1();
        *&v11[14] = v4;
        _os_log_debug_impl(&dword_1D2C3B000, v5, OS_LOG_TYPE_DEBUG, "%@: Removing %@", v11, 0x16u);
      }

      deviceRegistry = [service deviceRegistry];
      [deviceRegistry deviceManager:service deviceDidDisconnect:v4];

      [*(service + 56) removeObjectForKey:v3];
    }

    v7 = [*(service + 48) objectForKey:{v3, *v11}];
    if (v7)
    {
      v8 = _gc_log_generic_device();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 138412546;
        *&v11[4] = service;
        OUTLINED_FUNCTION_2_1();
        *&v11[14] = v7;
        _os_log_debug_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEBUG, "%@: Removing %@", v11, 0x16u);
      }

      device = [v7 device];
      [device cancel];

      [v7 setFilterConnection:0 invalidatingPrevious:1];
      [v7 setDriverConnection:0 invalidatingPrevious:1];
      [*(service + 48) removeObjectForKey:v3];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)claimHIDService:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_2_1();
  *v5 = v1;
  OUTLINED_FUNCTION_1_1(&dword_1D2C3B000, v1, v2, "%@: Asked to claim %@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)relinquishHIDService:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_2_1();
  *v5 = v1;
  OUTLINED_FUNCTION_1_1(&dword_1D2C3B000, v1, v2, "%@: Asked to relinquish %@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

@end