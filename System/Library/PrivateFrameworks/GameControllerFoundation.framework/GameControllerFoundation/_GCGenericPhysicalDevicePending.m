@interface _GCGenericPhysicalDevicePending
- (_GCGenericPhysicalDevicePending)init;
- (_GCGenericPhysicalDevicePending)initWithHIDService:(id)a3 manager:(id)a4;
- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1;
- (void)dealloc;
- (void)setDriverConnection:(id)a3 invalidatingPrevious:(BOOL)a4;
- (void)setFilterConnection:(id)a3 invalidatingPrevious:(BOOL)a4;
@end

@implementation _GCGenericPhysicalDevicePending

- (_GCGenericPhysicalDevicePending)initWithHIDService:(id)a3 manager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = _GCGenericPhysicalDevicePending;
  v9 = [(_GCGenericPhysicalDevicePending *)&v23 init];
  if (!v7)
  {
    [_GCGenericPhysicalDevicePending initWithHIDService:a2 manager:v9];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_GCGenericPhysicalDevicePending initWithHIDService:a2 manager:v9];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v11 = dispatch_queue_create("GenericDevice.Pending", v10);
  queue = v9->_queue;
  v9->_queue = v11;

  serviceInfo = v9->_serviceInfo;
  v9->_serviceInfo = v7;
  v14 = v7;

  manager = v9->_manager;
  v9->_manager = v8;
  v16 = v8;

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

- (void)setDriverConnection:(id)a3 invalidatingPrevious:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  objc_sync_enter(v8);
  if ([v7 isEqual:v8->_driverConnection])
  {
    objc_sync_exit(v8);
  }

  else
  {
    v9 = v8->_driverConnection;
    [(_GCGenericPhysicalDevicePending *)v8 willChangeValueForKey:@"driverConnection"];
    objc_setProperty_atomic(v8, a2, v7, 48);
    [(_GCGenericPhysicalDevicePending *)v8 didChangeValueForKey:@"driverConnection"];
    objc_sync_exit(v8);

    queue = v8->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76___GCGenericPhysicalDevicePending_setDriverConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E8415500;
    v12[4] = v8;
    v13 = v7;
    v14 = v9;
    v15 = a4;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = _os_activity_create(&dword_1D2C3B000, "[Generic Physical Device (Pending)] Prepare Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    if (!v3)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel__onqueue_prepareDeviceWithConnection_ object:a1 file:@"_GCGenericPhysicalDevicePending.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %s", "connection != nil"}];
      goto LABEL_16;
    }

    if ([v3 isInvalid] & 1) != 0 || (objc_msgSend(*(a1 + 24), "isCancelled"))
    {
      goto LABEL_17;
    }

    v5 = _gc_log_generic_device();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_GCGenericPhysicalDevicePending *)a1 _onqueue_prepareDeviceWithConnection:v5];
    }

    v6 = [(_GCDeviceDriverServiceConnection *)_GCGenericDeviceDriverConfigurationServiceConnection connectionToServiceInDriver:v3 withClient:a1];
    v35 = 0;
    v36 = 0;
    v7 = [v6 waitForResult:&v36 error:&v35];
    v8 = v36;
    v9 = v35;

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

    if ([*(a1 + 24) isCancelled])
    {
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

    v13 = _gc_log_generic_device();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(_GCGenericPhysicalDevicePending *)a1 _onqueue_prepareDeviceWithConnection:v13];
    }

    v14 = [v8 fetchDeviceSnapshot];
    v33 = 0;
    v34 = 0;
    v15 = [v14 waitForResult:&v34 error:&v33];
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

    if ([*(a1 + 24) isCancelled])
    {
LABEL_26:
      v9 = v16;
      goto LABEL_15;
    }

    v29 = GCLookupService(*(a1 + 32), &unk_1F4E3BA08, 0, 0);
    if (v29)
    {
      v17 = _gc_log_generic_device();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v11 debugDescription];
        [(_GCGenericPhysicalDevicePending *)a1 _onqueue_prepareDeviceWithConnection:v18, v39];
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
          v9 = v16;
LABEL_12:

LABEL_15:
LABEL_16:

LABEL_17:
          os_activity_scope_leave(&state);

          goto LABEL_18;
        }

        if (([*(a1 + 24) isCancelled] & 1) == 0)
        {
          v23 = _gc_log_generic_device();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = [v10 driver];
            [(_GCGenericPhysicalDevicePending *)a1 _onqueue_prepareDeviceWithConnection:v24, v38];
          }

          v25 = [v10 driver];
          v26 = [v8 applyConfiguration:v25];
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
            v22 = [a1 _onqueue_createDeviceWithModel:v10 service:*(a1 + 56)];
            if (v22)
            {
              if (objc_opt_respondsToSelector())
              {
                [v22 setDriverConnection:*(a1 + 48)];
              }

              if ((objc_opt_respondsToSelector() & 1) != 0 && *(a1 + 40))
              {
                [v22 setFilterConnection:?];
              }

              [*(a1 + 24) succeedWithResult:v22];
            }

            else
            {
              v27 = _gc_log_generic_device();
              [(_GCGenericPhysicalDevicePending *)v27 _onqueue_prepareDeviceWithConnection:a1];
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
      [(_GCGenericPhysicalDevicePending *)a1 _onqueue_prepareDeviceWithConnection:v22];
    }

    v10 = 0;
    goto LABEL_38;
  }

LABEL_18:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setFilterConnection:(id)a3 invalidatingPrevious:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  objc_sync_enter(v8);
  if ([v7 isEqual:v8->_filterConnection])
  {
    objc_sync_exit(v8);
  }

  else
  {
    v9 = v8->_filterConnection;
    [(_GCGenericPhysicalDevicePending *)v8 willChangeValueForKey:@"filterConnection"];
    objc_setProperty_atomic(v8, a2, v7, 40);
    [(_GCGenericPhysicalDevicePending *)v8 didChangeValueForKey:@"filterConnection"];
    objc_sync_exit(v8);

    queue = v8->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76___GCGenericPhysicalDevicePending_setFilterConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E8415500;
    v12[4] = v8;
    v13 = v7;
    v14 = v9;
    v15 = a4;
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