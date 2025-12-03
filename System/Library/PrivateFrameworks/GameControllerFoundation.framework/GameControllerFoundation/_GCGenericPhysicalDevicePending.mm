@interface _GCGenericPhysicalDevicePending
- (_GCGenericPhysicalDevicePending)init;
- (_GCGenericPhysicalDevicePending)initWithHIDService:(id)service manager:(id)manager;
- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)connection;
- (void)dealloc;
- (void)setDriverConnection:(id)connection invalidatingPrevious:(BOOL)previous;
- (void)setFilterConnection:(id)connection invalidatingPrevious:(BOOL)previous;
@end

@implementation _GCGenericPhysicalDevicePending

- (_GCGenericPhysicalDevicePending)initWithHIDService:(id)service manager:(id)manager
{
  serviceCopy = service;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = _GCGenericPhysicalDevicePending;
  v9 = [(_GCGenericPhysicalDevicePending *)&v23 init];
  if (!serviceCopy)
  {
    [_GCGenericPhysicalDevicePending initWithHIDService:a2 manager:v9];
    if (managerCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_GCGenericPhysicalDevicePending initWithHIDService:a2 manager:v9];
    goto LABEL_3;
  }

  if (!managerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v11 = dispatch_queue_create("GenericDevice.Pending", v10);
  queue = v9->_queue;
  v9->_queue = v11;

  serviceInfo = v9->_serviceInfo;
  v9->_serviceInfo = serviceCopy;
  v14 = serviceCopy;

  manager = v9->_manager;
  v9->_manager = managerCopy;
  v16 = managerCopy;

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62___GCGenericPhysicalDevicePending_initWithHIDService_manager___block_invoke;
  v21[3] = &unk_1E84154D8;
  v17 = v9;
  v22 = v17;
  v18 = [GCFuture futureWithBlock:v21];
  deviceFuture = v17->_deviceFuture;
  v17->_deviceFuture = v18;

  return v17;
}

- (_GCGenericPhysicalDevicePending)init
{
  [(_GCGenericPhysicalDevicePending *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(GCPromise *)self->_devicePromise cancel];
  v3.receiver = self;
  v3.super_class = _GCGenericPhysicalDevicePending;
  [(_GCGenericPhysicalDevicePending *)&v3 dealloc];
}

- (void)setDriverConnection:(id)connection invalidatingPrevious:(BOOL)previous
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([connectionCopy isEqual:selfCopy->_driverConnection])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = selfCopy->_driverConnection;
    [(_GCGenericPhysicalDevicePending *)selfCopy willChangeValueForKey:@"driverConnection"];
    objc_setProperty_atomic(selfCopy, a2, connectionCopy, 48);
    [(_GCGenericPhysicalDevicePending *)selfCopy didChangeValueForKey:@"driverConnection"];
    objc_sync_exit(selfCopy);

    queue = selfCopy->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76___GCGenericPhysicalDevicePending_setDriverConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E8415500;
    v12[4] = selfCopy;
    v13 = connectionCopy;
    v14 = v9;
    previousCopy = previous;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)connection
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (connection)
  {
    dispatch_assert_queue_V2(*(connection + 8));
    v4 = _os_activity_create(&dword_1D2C3B000, "[Generic Physical Device (Pending)] Prepare Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__onqueue_prepareDeviceWithConnection_ object:connection file:@"_GCGenericPhysicalDevicePending.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %s", "connection != nil"}];
      goto LABEL_16;
    }

    if ([v3 isInvalid] & 1) != 0 || (objc_msgSend(*(connection + 24), "isCancelled"))
    {
      goto LABEL_17;
    }

    v5 = _gc_log_generic_device();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:v5];
    }

    v6 = [(_GCDeviceDriverServiceConnection *)_GCGenericDeviceDriverConfigurationServiceConnection connectionToServiceInDriver:v3 withClient:connection];
    v35 = 0;
    v36 = 0;
    v7 = [v6 waitForResult:&v36 error:&v35];
    v8 = v36;
    currentHandler = v35;

    if (!v7)
    {
      goto LABEL_14;
    }

    if (v7 == 1)
    {
      v10 = _gc_log_generic_device();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_GCGenericPhysicalDevicePending _onqueue_prepareDeviceWithConnection:];
      }

      v11 = 0;
      goto LABEL_12;
    }

    if ([*(connection + 24) isCancelled])
    {
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

    v13 = _gc_log_generic_device();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:v13];
    }

    fetchDeviceSnapshot = [v8 fetchDeviceSnapshot];
    v33 = 0;
    v34 = 0;
    v15 = [fetchDeviceSnapshot waitForResult:&v34 error:&v33];
    v11 = v34;
    v16 = v33;

    if (!v15)
    {
      goto LABEL_26;
    }

    if (v15 == 1)
    {
      v10 = _gc_log_generic_device();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_GCGenericPhysicalDevicePending _onqueue_prepareDeviceWithConnection:];
      }

      goto LABEL_42;
    }

    if ([*(connection + 24) isCancelled])
    {
LABEL_26:
      currentHandler = v16;
      goto LABEL_15;
    }

    v29 = GCLookupService(*(connection + 32), &unk_1F4E3BA08, 0, 0);
    if (v29)
    {
      v17 = _gc_log_generic_device();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v11 debugDescription];
        [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:v18, v39];
      }

      v19 = [v29 preparedModelForDevice:v11];
      v31 = 0;
      v32 = 0;
      v20 = [v19 waitForResult:&v32 error:&v31];
      v10 = v32;
      v21 = v31;

      if (v20)
      {
        if (v20 == 1)
        {
          v22 = _gc_log_generic_device();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [_GCGenericPhysicalDevicePending _onqueue_prepareDeviceWithConnection:];
          }

          v16 = v21;
LABEL_38:

LABEL_41:
LABEL_42:
          currentHandler = v16;
LABEL_12:

LABEL_15:
LABEL_16:

LABEL_17:
          os_activity_scope_leave(&state);

          goto LABEL_18;
        }

        if (([*(connection + 24) isCancelled] & 1) == 0)
        {
          v23 = _gc_log_generic_device();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            driver = [v10 driver];
            [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:driver, v38];
          }

          driver2 = [v10 driver];
          v26 = [v8 applyConfiguration:driver2];
          v30 = 0;
          v28 = [v26 waitForResult:0 error:&v30];
          v16 = v30;

          if (!v28)
          {
            goto LABEL_41;
          }

          if (v28 == 1)
          {
            v22 = _gc_log_generic_device();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [_GCGenericPhysicalDevicePending _onqueue_prepareDeviceWithConnection:];
            }
          }

          else
          {
            v22 = [connection _onqueue_createDeviceWithModel:v10 service:*(connection + 56)];
            if (v22)
            {
              if (objc_opt_respondsToSelector())
              {
                [v22 setDriverConnection:*(connection + 48)];
              }

              if ((objc_opt_respondsToSelector() & 1) != 0 && *(connection + 40))
              {
                [v22 setFilterConnection:?];
              }

              [*(connection + 24) succeedWithResult:v22];
            }

            else
            {
              v27 = _gc_log_generic_device();
              [(_GCGenericPhysicalDevicePending *)v27 _onqueue_prepareDeviceWithConnection:connection];
            }
          }

          goto LABEL_38;
        }
      }

      v16 = v21;
      goto LABEL_41;
    }

    v22 = _gc_log_generic_device();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(_GCGenericPhysicalDevicePending *)connection _onqueue_prepareDeviceWithConnection:v22];
    }

    v10 = 0;
    goto LABEL_38;
  }

LABEL_18:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setFilterConnection:(id)connection invalidatingPrevious:(BOOL)previous
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([connectionCopy isEqual:selfCopy->_filterConnection])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = selfCopy->_filterConnection;
    [(_GCGenericPhysicalDevicePending *)selfCopy willChangeValueForKey:@"filterConnection"];
    objc_setProperty_atomic(selfCopy, a2, connectionCopy, 40);
    [(_GCGenericPhysicalDevicePending *)selfCopy didChangeValueForKey:@"filterConnection"];
    objc_sync_exit(selfCopy);

    queue = selfCopy->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76___GCGenericPhysicalDevicePending_setFilterConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E8415500;
    v12[4] = selfCopy;
    v13 = connectionCopy;
    v14 = v9;
    previousCopy = previous;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)initWithHIDService:(uint64_t)a1 manager:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCGenericPhysicalDevicePending.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %s", "serviceInfo != nil"}];
}

- (void)initWithHIDService:(uint64_t)a1 manager:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCGenericPhysicalDevicePending.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %s", "manager != nil"}];
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "%@ Connect to GCGenericDeviceDriverConfigurationService", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_prepareDeviceWithConnection:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_13(&dword_1D2C3B000, v0, v1, "%@ Failed to connect to GCGenericDeviceDriverConfigurationService: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "%@ Fetching HID device snapshot", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_prepareDeviceWithConnection:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_13(&dword_1D2C3B000, v0, v1, "%@ Failed to fetch HID device snapshot: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a3 .cold.5(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_11(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1D2C3B000, v5, OS_LOG_TYPE_DEBUG, "%@ Fetching HID device model for snapshot %@", v4, 0x16u);
}

- (void)_onqueue_prepareDeviceWithConnection:.cold.6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_13(&dword_1D2C3B000, v0, v1, "%@ Failed to retrieve device model: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a3 .cold.7(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_11(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1D2C3B000, v5, OS_LOG_TYPE_DEBUG, "%@ Configuring driver with model: %@", v4, 0x16u);
}

- (void)_onqueue_prepareDeviceWithConnection:.cold.8()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_13(&dword_1D2C3B000, v0, v1, "%@ Failed to configure driver: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_prepareDeviceWithConnection:(NSObject *)a1 .cold.9(NSObject *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_error_impl(&dword_1D2C3B000, a1, OS_LOG_TYPE_ERROR, "%@ Failed to create device with model", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1 .cold.10(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_ERROR, "%@ No device DB.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end