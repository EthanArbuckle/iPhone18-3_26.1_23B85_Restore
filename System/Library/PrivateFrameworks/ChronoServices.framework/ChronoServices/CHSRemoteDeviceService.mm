@interface CHSRemoteDeviceService
- (CHSRemoteDeviceService)init;
- (CHSRemoteDeviceService)initWithConnection:(id)connection;
- (id)browseNearbyDevicesWithHandler:(id)handler error:(id *)error;
- (void)nearbyDevicesDidChange:(id)change;
@end

@implementation CHSRemoteDeviceService

- (CHSRemoteDeviceService)init
{
  v3 = +[CHSChronoServicesConnection sharedInstance];
  v4 = [(CHSRemoteDeviceService *)self initWithConnection:v3];

  return v4;
}

- (CHSRemoteDeviceService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = CHSRemoteDeviceService;
  v6 = [(CHSRemoteDeviceService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_monitors = v7->_lock_monitors;
    v7->_lock_monitors = v8;

    objc_storeStrong(&v7->_connection, connection);
    [(CHSChronoServicesConnection *)v7->_connection addClient:v7];
  }

  return v7;
}

- (id)browseNearbyDevicesWithHandler:(id)handler error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__7;
  v37 = __Block_byref_object_dispose__7;
  connection = self->_connection;
  v31 = 0;
  v32 = 0;
  v8 = [(CHSChronoServicesConnection *)connection subscribeToRemoteDevices:&v32 outRemoteDevices:&v31];
  v9 = v32;
  v10 = v31;
  v38 = v8;
  if (error)
  {
    v11 = v9;
    *error = v9;
  }

  if (v9)
  {
    v12 = CHSLogChronoServices();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v9;
      _os_log_impl(&dword_195EB2000, v12, OS_LOG_TYPE_DEFAULT, "Error acquiring monitor assertion %@", buf, 0xCu);
    }

    [v34[5] invalidate];
    v13 = 0;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __63__CHSRemoteDeviceService_browseNearbyDevicesWithHandler_error___block_invoke;
    v28[3] = &unk_1E74546F0;
    v28[4] = self;
    v30 = handlerCopy;
    v15 = uUID;
    v29 = v15;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    __63__CHSRemoteDeviceService_browseNearbyDevicesWithHandler_error___block_invoke(v28);
    os_unfair_lock_unlock(&self->_lock);
    v16 = objc_alloc(MEMORY[0x1E698E778]);
    uUIDString = [v15 UUIDString];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __63__CHSRemoteDeviceService_browseNearbyDevicesWithHandler_error___block_invoke_2;
    v24 = &unk_1E7454718;
    v27 = &v33;
    selfCopy = self;
    v18 = v15;
    v26 = v18;
    v13 = [v16 initWithIdentifier:uUIDString forReason:@"monitor devices" invalidationBlock:&v21];

    if ([v10 count])
    {
      [(CHSRemoteDeviceService *)self nearbyDevicesDidChange:v10];
    }
  }

  _Block_object_dispose(&v33, 8);

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

void __63__CHSRemoteDeviceService_browseNearbyDevicesWithHandler_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = _Block_copy(*(a1 + 48));
  v4 = *(a1 + 40);
  v5 = v3;
  [v2 setObject:? forKey:?];
}

void __63__CHSRemoteDeviceService_browseNearbyDevicesWithHandler_error___block_invoke_2(uint64_t a1)
{
  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__CHSRemoteDeviceService_browseNearbyDevicesWithHandler_error___block_invoke_3;
  v3[3] = &unk_1E7453000;
  v3[4] = v2;
  v4 = *(a1 + 40);
  os_unfair_lock_assert_not_owner(v2 + 2);
  os_unfair_lock_lock(v2 + 2);
  __63__CHSRemoteDeviceService_browseNearbyDevicesWithHandler_error___block_invoke_3(v3);
  os_unfair_lock_unlock(v2 + 2);
}

- (void)nearbyDevicesDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CHSRemoteDeviceService_nearbyDevicesDidChange___block_invoke;
  v6[3] = &unk_1E7453000;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __49__CHSRemoteDeviceService_nearbyDevicesDidChange___block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
}

void __49__CHSRemoteDeviceService_nearbyDevicesDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(a1 + 32) + 24) objectForKey:{*(*(&v8 + 1) + 8 * v5), v8}];
        v6[2](v6, *(a1 + 40), 0);

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end