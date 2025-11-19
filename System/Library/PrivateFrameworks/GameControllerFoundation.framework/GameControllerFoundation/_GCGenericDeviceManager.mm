@interface _GCGenericDeviceManager
- (BOOL)acceptDriverConnection:(id)a3 forHIDService:(id)a4;
- (BOOL)acceptFilterConnection:(id)a3 forHIDService:(id)a4;
- (_GCGenericDeviceManager)init;
- (_GCPhysicalDeviceRegistry)deviceRegistry;
- (id)matchHIDService:(id)a3;
- (void)_onioqueue_setupHIDMatching;
- (void)_onqueue_registerDefaultConfigurationForDevice:(id)a3;
- (void)_onqueue_relinquishHIDService:(uint64_t)a1;
- (void)claimHIDService:(id)a3;
- (void)dealloc;
- (void)relinquishHIDService:(id)a3;
- (void)setDeviceRegistry:(id)a3;
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

- (void)setDeviceRegistry:(id)a3
{
  objc_storeWeak(&self->_deviceRegistry, a3);
  ioNotificationQueue = self->_ioNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___GCGenericDeviceManager_setDeviceRegistry___block_invoke;
  block[3] = &unk_1E8413DA0;
  block[4] = self;
  dispatch_async(ioNotificationQueue, block);
}

- (id)matchHIDService:(id)a3
{
  v3 = IOHIDServiceClientCopyProperty([a3 service], @"GameControllerSupportedHIDDevice");
  v4 = [v3 BOOLValue];
  v5 = &GCPhysicalDeviceProbeScoreLowPriority;
  if (!v4)
  {
    v5 = &GCPhysicalDeviceProbeScoreNoMatch;
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (void)_onqueue_registerDefaultConfigurationForDevice:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 identifier];
  v8 = [v6 initWithFormat:@"LOGICAL_DEVICE(%@)", v7];

  v9 = [v5 identifier];
  v17[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = [(_GCGenericDeviceManager *)self identifier];
  v12 = [(_GCDeviceConfiguration *)_GCMutableDeviceConfiguration configurationWithIdentifier:v8 priority:10 deviceIdentifier:v8 deviceDependencies:v10 deviceBuilder:v11];

  v13 = [v5 identifier];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    [v12 setTransient:1];
  }

  v14 = [(_GCGenericDeviceManager *)self deviceRegistry];
  v15 = [v14 deviceConfigurationRegistry];
  [v15 addConfiguration:v12 replaceExisting:1];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)claimHIDService:(id)a3
{
  v5 = a3;
  v6 = _os_activity_create(&dword_1D2C3B000, "[Generic Device Manager] Claim HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = _gc_log_generic_device();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_GCGenericDeviceManager claimHIDService:?];
  }

  if ([(NSMutableSet *)self->_claimedServices containsObject:v5])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager.m" lineNumber:157 description:{@"%@ has already claimed %@", self, v5}];
  }

  [(NSMutableSet *)self->_claimedServices addObject:v5];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___GCGenericDeviceManager_claimHIDService___block_invoke;
  block[3] = &unk_1E8413E18;
  v12 = v5;
  v13 = self;
  v14 = a2;
  v9 = v5;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (void)relinquishHIDService:(id)a3
{
  v5 = a3;
  v6 = _os_activity_create(&dword_1D2C3B000, "[Generic Device Manager] Relinquish HID Service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = _gc_log_generic_device();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_GCGenericDeviceManager relinquishHIDService:?];
  }

  if (([(NSMutableSet *)self->_claimedServices containsObject:v5]& 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager.m" lineNumber:245 description:{@"%@ has not claimed %@", self, v5}];
  }

  [(NSMutableSet *)self->_claimedServices removeObject:v5];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48___GCGenericDeviceManager_relinquishHIDService___block_invoke;
  block[3] = &unk_1E8413E40;
  block[4] = self;
  v12 = v5;
  v9 = v5;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

- (BOOL)acceptDriverConnection:(id)a3 forHIDService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_1D2C3B000, "[Generic Device Manager] Accept HID Driver Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(NSMutableSet *)self->_claimedServices containsObject:v8];
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___GCGenericDeviceManager_acceptDriverConnection_forHIDService___block_invoke;
    block[3] = &unk_1E8413E68;
    block[4] = self;
    v15 = v8;
    v16 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager.m" lineNumber:257 description:{@"Unclaimed service: %@", v8}];
  }

  os_activity_scope_leave(&state);

  return v10;
}

- (BOOL)acceptFilterConnection:(id)a3 forHIDService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_1D2C3B000, "[Generic Device Manager] Accept HID Filter Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [(NSMutableSet *)self->_claimedServices containsObject:v8];
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___GCGenericDeviceManager_acceptFilterConnection_forHIDService___block_invoke;
    block[3] = &unk_1E8413E90;
    block[4] = self;
    v15 = v8;
    v16 = v7;
    v17 = a2;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_GCGenericDeviceManager.m" lineNumber:281 description:{@"Unclaimed service: %@", v8}];
  }

  os_activity_scope_leave(&state);

  return v10;
}

- (void)_onioqueue_setupHIDMatching
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_FAULT, "Failed to setup IOHIDDevice service matching: %{mach.errno}d.  Game controller discovery may be impacted.", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (_GCPhysicalDeviceRegistry)deviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceRegistry);

  return WeakRetained;
}

- (void)_onqueue_relinquishHIDService:(uint64_t)a1
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = [*(a1 + 56) objectForKey:v3];
    if (v4)
    {
      v5 = _gc_log_generic_device();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 138412546;
        *&v11[4] = a1;
        OUTLINED_FUNCTION_2_1();
        *&v11[14] = v4;
        _os_log_debug_impl(&dword_1D2C3B000, v5, OS_LOG_TYPE_DEBUG, "%@: Removing %@", v11, 0x16u);
      }

      v6 = [a1 deviceRegistry];
      [v6 deviceManager:a1 deviceDidDisconnect:v4];

      [*(a1 + 56) removeObjectForKey:v3];
    }

    v7 = [*(a1 + 48) objectForKey:{v3, *v11}];
    if (v7)
    {
      v8 = _gc_log_generic_device();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 138412546;
        *&v11[4] = a1;
        OUTLINED_FUNCTION_2_1();
        *&v11[14] = v7;
        _os_log_debug_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEBUG, "%@: Removing %@", v11, 0x16u);
      }

      v9 = [v7 device];
      [v9 cancel];

      [v7 setFilterConnection:0 invalidatingPrevious:1];
      [v7 setDriverConnection:0 invalidatingPrevious:1];
      [*(a1 + 48) removeObjectForKey:v3];
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