@interface _GCGenericDeviceDB
- (BOOL)_onqueue_updateConfigurationBundles;
- (_GCGenericDeviceDB)init;
- (_GCGenericDeviceDB)initWithProvider:(id)provider;
- (id)configurationBundles;
- (id)hasModelForDevice:(id)device;
- (id)modelForDevice:(id)device;
- (id)preparedModelForDevice:(id)device;
- (id)preparedModelForDevice:(id)device error:(id *)error;
- (void)_onqueue_loadConfigurationBundlesIfNeeded;
- (void)_onqueue_updateConfigurationBundles;
- (void)dealloc;
- (void)hasModelForDevice:(id)device reply:(id)reply;
- (void)preparedModelForDevice:(id)device reply:(id)reply;
@end

@implementation _GCGenericDeviceDB

- (void)hasModelForDevice:(id)device reply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  v8 = _os_activity_create(&dword_1D2C3B000, "[_GCGenericDeviceDB/XPC] Has Model For Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(_GCGenericDeviceDB *)self modelForDevice:deviceCopy];
  replyCopy[2](replyCopy, v9 != 0, 0);

  os_activity_scope_leave(&v10);
}

- (void)preparedModelForDevice:(id)device reply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  v8 = _os_activity_create(&dword_1D2C3B000, "[_GCGenericDeviceDB/XPC] Model For Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v12 = 0;
  v9 = [(_GCGenericDeviceDB *)self preparedModelForDevice:deviceCopy error:&v12];
  v10 = v12;
  v11 = v10;
  if (!v9 && v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_GCGenericDeviceDB(XPC) preparedModelForDevice:v11 reply:?];
  }

  replyCopy[2](replyCopy, v9, v11);

  os_activity_scope_leave(&state);
}

- (_GCGenericDeviceDB)initWithProvider:(id)provider
{
  providerCopy = provider;
  v29.receiver = self;
  v29.super_class = _GCGenericDeviceDB;
  v5 = [(_GCGenericDeviceDB *)&v29 init];
  v6 = dispatch_workloop_create("Workloop.GenericDeviceDB");
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = dispatch_queue_create("GenericDevice.DB", 0);
  v9 = *(v5 + 2);
  *(v5 + 2) = v8;

  v10 = objc_opt_new();
  v11 = *(v5 + 5);
  *(v5 + 5) = v10;

  objc_initWeak(&location, v5);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v13 = providerCopy;
  v14 = objc_opt_class();
  v15 = GCLookupService(v13, v14, 0, 1);

  v16 = [v15 configurationBundleLocatorForType:0x1F4E1BFD0];
  v17 = *(v5 + 3);
  *(v5 + 3) = v16;

  v18 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v5 + 1));
  v19 = *(v5 + 4);
  *(v5 + 4) = v18;

  v20 = *(v5 + 4);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39___GCGenericDeviceDB_initWithProvider___block_invoke;
  handler[3] = &unk_1E8414C58;
  objc_copyWeak(&v27, &location);
  dispatch_source_set_event_handler(v20, handler);
  dispatch_activate(*(v5 + 4));
  [defaultCenter addObserver:v5 selector:sel__configurationBundlesDidChange_ name:0x1F4E1F2F0 object:*(v5 + 3)];
  objc_destroyWeak(&v27);

  v21 = *(v5 + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___GCGenericDeviceDB_initWithProvider___block_invoke_3;
  block[3] = &unk_1E8414C58;
  objc_copyWeak(&v25, &location);
  v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_UTILITY, -10, block);
  dispatch_async(v21, v22);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v5;
}

- (_GCGenericDeviceDB)init
{
  [(_GCGenericDeviceDB *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0x1F4E1F2F0 object:self->_configurationBundleLocator];

  dispatch_source_cancel(self->_configurationBundleLocatorUpdatedSource);
  v4.receiver = self;
  v4.super_class = _GCGenericDeviceDB;
  [(_GCGenericDeviceDB *)&v4 dealloc];
}

- (id)configurationBundles
{
  v2 = objc_getProperty(self, a2, 40, 1);
  configurationBundles = [v2 configurationBundles];

  return configurationBundles;
}

- (BOOL)_onqueue_updateConfigurationBundles
{
  dispatch_assert_queue_V2(self->_queue);
  fetchBundles = [(_GCConfigurationBundleLocator *)self->_configurationBundleLocator fetchBundles];
  if ([fetchBundles waitUntilFinished] == 1)
  {
    result = _gc_log_devicedb();
    if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
    {
      [(_GCGenericDeviceDB *)fetchBundles _onqueue_updateConfigurationBundles];
    }

    v6 = 0;
  }

  else
  {
    result = [fetchBundles result];
    configurationBundles = [(_GCDeviceOnDiskDB *)self->_onDiskDB configurationBundles];
    v8 = [configurationBundles isEqual:result];

    if ((v8 & 1) == 0)
    {
      v9 = [[_GCDeviceOnDiskDB alloc] initWithBundles:result];
      v10 = _gc_log_devicedb();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(_GCGenericDeviceDB *)v9 _onqueue_updateConfigurationBundles];
      }

      objc_setProperty_atomic(self, a2, v9, 40);
    }

    v6 = v8 ^ 1;
  }

  return v6;
}

- (id)modelForDevice:(id)device
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37___GCGenericDeviceDB_modelForDevice___block_invoke;
  block[3] = &unk_1E8413DA0;
  block[4] = self;
  deviceCopy = device;
  dispatch_async_and_wait(queue, block);
  v7 = objc_getProperty(self, a2, 40, 1);
  v8 = [v7 bestModelMatchingDevice:deviceCopy];

  return v8;
}

- (id)preparedModelForDevice:(id)device error:(id *)error
{
  v28[2] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v7 = [(_GCGenericDeviceDB *)self modelForDevice:deviceCopy];
  if (v7)
  {
    elements = [deviceCopy elements];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__18;
    v25 = __Block_byref_object_dispose__18;
    v26 = 0;
    driver = [v7 driver];
    elements2 = [driver elements];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51___GCGenericDeviceDB_preparedModelForDevice_error___block_invoke;
    v18[3] = &unk_1E84155A0;
    v11 = elements;
    v19 = v11;
    v20 = &v21;
    [elements2 enumerateObjectsUsingBlock:v18];

    v12 = v22[5];
    if (v12)
    {
      v13 = 0;
      if (error)
      {
        *error = v12;
      }
    }

    else
    {
      v13 = v7;
    }

    _Block_object_dispose(&v21, 8);
    goto LABEL_9;
  }

  if (error)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v27[0] = *MEMORY[0x1E696A578];
    v27[1] = v15;
    v28[0] = @"Error retrieving model for device.";
    v28[1] = @"No compatible model found.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [(NSError *)v14 gc_deviceDBError:v11 userInfo:?];
    *error = v13 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)hasModelForDevice:(id)device
{
  v3 = [(_GCGenericDeviceDB *)self modelForDevice:device];
  v4 = v3 != 0;

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v6 = [GCFuture futureWithResult:v5];

  return v6;
}

- (id)preparedModelForDevice:(id)device
{
  v7 = 0;
  v3 = [(_GCGenericDeviceDB *)self preparedModelForDevice:device error:&v7];
  v4 = v7;
  if (v3)
  {
    [GCFuture futureWithResult:v3];
  }

  else
  {
    [GCFuture futureWithError:v4];
  }
  v5 = ;

  return v5;
}

- (void)_onqueue_loadConfigurationBundlesIfNeeded
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    configurationBundles = [*(self + 40) configurationBundles];
    v3 = [configurationBundles count];

    if (!v3)
    {

      [self _onqueue_updateConfigurationBundles];
    }
  }
}

- (void)_onqueue_updateConfigurationBundles
{
  v7 = *MEMORY[0x1E69E9840];
  error = [self error];
  v5 = 138543362;
  v6 = error;
  _os_log_error_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_ERROR, "[Config] Error fetching configuration bundles: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end