@interface CCRapportManager
- (BOOL)activateFileTransferSessions:(id *)a3;
- (CCRapportManager)initWithQueue:(id)a3 forSharedUse:(BOOL)a4;
- (CCRapportManagerDelegate)delegate;
- (id)deviceWithIdentifier:(id)a3;
- (id)discoveredDevices;
- (id)fileTransferSessionCacheKeyWithServerDevice:(id)a3 clientTargetDeviceID:(id)a4;
- (id)fulfillFileTransferSessionFromClientDevice:(id)a3 withTargetDeviceID:(id)a4 peerPublicKey:(id)a5 error:(id *)a6;
- (id)initiateFileTransferSessionWithServerDevice:(id)a3 error:(id *)a4;
- (id)localDevice;
- (unint64_t)discoveryControlFlagsForDevicePlatform:(int64_t)a3;
- (void)activateDirectLinkToDevice:(id)a3 completionHandler:(id)a4;
- (void)activateDiscoveryClientWithCompletion:(id)a3;
- (void)activateDiscoveryLinkWithCompletion:(id)a3;
- (void)closeAllFileTransferSessions;
- (void)closeFileTransferSessionWithDeviceIdentifier:(id)a3;
- (void)createDiscoveryClientIfNotExists;
- (void)createDiscoveryClientWithControlFlags:(unint64_t)a3;
- (void)createSharedDiscoveryClientIfNotExists;
- (void)deleteDanglingFilesFromFileTransferDirectory;
- (void)deleteMergeableDeltaFileURL:(id)a3;
- (void)device:(id)a3 didChange:(unsigned int)a4;
- (void)didDiscoverDevice:(id)a3;
- (void)didLoseDevice:(id)a3;
- (void)finishedSendingRequestsToDevice:(id)a3;
- (void)handleActivationForDevice:(id)a3 error:(id)a4;
- (void)handleDiscoveryClientActivationOrError:(id)a3;
- (void)handleDiscoveryClientInvalidation;
- (void)handleInterruptionForDevice:(id)a3;
- (void)localDeviceUpdated:(id)a3;
- (void)registerForSigterm;
- (void)registerRequestID:(id)a3 requestHandler:(id)a4;
- (void)sendEvent:(id)a3 event:(id)a4 toDevice:(id)a5 completionHandler:(id)a6;
- (void)sendNextRequestToDevice:(id)a3;
- (void)sendRequest:(id)a3 request:(id)a4 device:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)startWithCompletion:(id)a3;
- (void)stop;
@end

@implementation CCRapportManager

- (CCRapportManager)initWithQueue:(id)a3 forSharedUse:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v24.receiver = self;
  v24.super_class = CCRapportManager;
  v8 = [(CCRapportManager *)&v24 init];
  if (v8)
  {
    v9 = objc_opt_new();
    devices = v8->_devices;
    v8->_devices = v9;

    v11 = [MEMORY[0x1E698E9D0] currentPersonaIdentifier];
    personaIdentifier = v8->_personaIdentifier;
    v8->_personaIdentifier = v11;

    v13 = objc_opt_new();
    unsupportedDevices = v8->_unsupportedDevices;
    v8->_unsupportedDevices = v13;

    v15 = objc_opt_new();
    registeredRequests = v8->_registeredRequests;
    v8->_registeredRequests = v15;

    objc_storeStrong(&v8->_queue, a3);
    v8->_sharedUse = 0;
    if (v4)
    {
      if (os_variant_allows_internal_security_policies())
      {
        v8->_sharedUse = 1;
      }

      else
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [CCRapportManager initWithQueue:forSharedUse:];
        }
      }
    }

    v18 = objc_opt_new();
    fileTransferSessions = v8->_fileTransferSessions;
    v8->_fileTransferSessions = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.biomesyncd.fileTransferSessionManager", v20);
    fileTransferQueue = v8->_fileTransferQueue;
    v8->_fileTransferQueue = v21;

    [(CCRapportManager *)v8 registerForSigterm];
  }

  return v8;
}

- (void)registerForSigterm
{
  signal(15, 1);
  v3 = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, self->_queue);
  sigtermSource = self->_sigtermSource;
  self->_sigtermSource = v3;

  v5 = self->_sigtermSource;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __38__CCRapportManager_registerForSigterm__block_invoke;
  handler[3] = &unk_1E85C2790;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(self->_sigtermSource);
}

uint64_t __38__CCRapportManager_registerForSigterm__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = objc_opt_class();
    _os_log_impl(&dword_1DA444000, v2, OS_LOG_TYPE_DEFAULT, "%@: received SIGTERM", &v6, 0xCu);
  }

  result = [*(a1 + 32) stop];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)createDiscoveryClientIfNotExists
{
  v3 = -[CCRapportManager discoveryControlFlagsForDevicePlatform:](self, "discoveryControlFlagsForDevicePlatform:", [MEMORY[0x1E698E9A0] platform]);

  [(CCRapportManager *)self createDiscoveryClientWithControlFlags:v3];
}

- (unint64_t)discoveryControlFlagsForDevicePlatform:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3)
    {
      v7 = 0x2000000000824;
      if (a3 != 2)
      {
        v7 = 0;
      }

      if (a3 == 1)
      {
        return 0x2000000000804;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [CCRapportManager discoveryControlFlagsForDevicePlatform:];
      }

      return 0;
    }
  }

  else
  {
    v3 = 32;
    v4 = 4196356;
    v5 = 6;
    if (a3 != 8)
    {
      v5 = 0;
    }

    if (a3 != 7)
    {
      v4 = v5;
    }

    if (a3 != 6)
    {
      v3 = v4;
    }

    if (a3 >= 6)
    {
      return v3;
    }

    else
    {
      return 4194308;
    }
  }
}

- (void)createSharedDiscoveryClientIfNotExists
{
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)createDiscoveryClientWithControlFlags:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_discoveryClient)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CCRapportManager createDiscoveryClientWithControlFlags:];
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C6B70]);
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = v6;

    [(RPCompanionLinkClient *)self->_discoveryClient setDispatchQueue:self->_queue];
    [(RPCompanionLinkClient *)self->_discoveryClient setControlFlags:a3];
    [(RPCompanionLinkClient *)self->_discoveryClient setServiceType:@"com.apple.biomesyncd.cascade.rapport"];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke;
    v16[3] = &unk_1E85C27B8;
    objc_copyWeak(&v17, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setInvalidationHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke_2;
    v14[3] = &unk_1E85C27E0;
    objc_copyWeak(&v15, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setDeviceFoundHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke_3;
    v12[3] = &unk_1E85C27E0;
    objc_copyWeak(&v13, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setDeviceLostHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke_4;
    v10[3] = &unk_1E85C2808;
    objc_copyWeak(&v11, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setDeviceChangedHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke_5;
    v8[3] = &unk_1E85C27E0;
    objc_copyWeak(&v9, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setLocalDeviceUpdatedHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDiscoveryClientInvalidation];
}

void __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDiscoverDevice:v3];
}

void __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didLoseDevice:v3];
}

void __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained device:v5 didChange:a3];
}

void __58__CCRapportManager_createDiscoveryClientWithControlFlags___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained localDeviceUpdated:v3];
}

- (void)activateDiscoveryLinkWithCompletion:(id)a3
{
  sharedUse = self->_sharedUse;
  v5 = a3;
  if (sharedUse)
  {
    [(CCRapportManager *)self createSharedDiscoveryClientIfNotExists];
  }

  else
  {
    [(CCRapportManager *)self createDiscoveryClientIfNotExists];
  }

  [(CCRapportManager *)self activateDiscoveryClientWithCompletion:v5];
}

- (void)activateDiscoveryClientWithCompletion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  discoveryClientState = self->_discoveryClientState;
  if (discoveryClientState == 1)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CCRapportManager activateDiscoveryClientWithCompletion:?];
    }

    if (v4)
    {
      v8 = CCRapportSyncError(2);
      v4[2](v4, v8);
    }
  }

  else if (discoveryClientState == 2)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CCRapportManager activateDiscoveryClientWithCompletion:?];
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    v20 = 0;
    v9 = [(CCRapportManager *)self activateFileTransferSessions:&v20];
    v10 = v20;
    if (v9)
    {
      self->_discoveryClientState = 1;
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        discoveryClient = self->_discoveryClient;
        *buf = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = discoveryClient;
        _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "%@: activating %@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v14 = self->_discoveryClient;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __58__CCRapportManager_activateDiscoveryClientWithCompletion___block_invoke;
      v17[3] = &unk_1E85C2830;
      objc_copyWeak(&v19, buf);
      v18 = v4;
      [(RPCompanionLinkClient *)v14 activateWithCompletion:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    else
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CCRapportManager activateDiscoveryClientWithCompletion:];
      }

      if (v4)
      {
        v4[2](v4, v10);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __58__CCRapportManager_activateDiscoveryClientWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleDiscoveryClientActivationOrError:v6];

  if (v6)
  {
    v4 = CCRapportSyncErrorWithUnderlying(8, v6);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)handleDiscoveryClientActivationOrError:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CCRapportManager *)self didDiscoverDevice:*(*(&v15 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v10 = __biome_log_for_category();
  v11 = v10;
  if (v4)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CCRapportManager handleDiscoveryClientActivationOrError:];
    }

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "%@: activated successfully", buf, 0xCu);
    }

    v12 = 2;
  }

  self->_discoveryClientState = v12;
  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleDiscoveryClientInvalidation
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)registerRequestID:(id)a3 requestHandler:(id)a4
{
  queue = self->_queue;
  v7 = a4;
  v10 = a3;
  dispatch_assert_queue_V2(queue);
  if (self->_sharedUse)
  {
    [(CCRapportManager *)self createSharedDiscoveryClientIfNotExists];
  }

  else
  {
    [(CCRapportManager *)self createDiscoveryClientIfNotExists];
  }

  v8 = [v7 copy];
  v9 = MEMORY[0x1DA74EA40]();
  [(NSMutableDictionary *)self->_registeredRequests setObject:v9 forKeyedSubscript:v10];

  [(RPCompanionLinkClient *)self->_discoveryClient registerRequestID:v10 options:0 handler:v7];
}

- (void)startWithCompletion:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(CCRapportManager *)self activateDiscoveryLinkWithCompletion:v5];
}

- (id)discoveredDevices
{
  dispatch_assert_queue_V2(self->_queue);
  devices = self->_devices;

  return [(NSMutableDictionary *)devices allValues];
}

- (id)localDevice
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [CCRapportDevice alloc];
  v4 = [(RPCompanionLinkClient *)self->_discoveryClient localDevice];
  v5 = [(CCRapportDevice *)v3 initWithRPCompanionLinkDevice:v4];

  return v5;
}

- (id)deviceWithIdentifier:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CCRapportManager *)self localDevice];
  v6 = [v5 rapportIdentifier];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [(CCRapportManager *)self localDevice];
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = [(NSMutableDictionary *)self->_devices allValues];
      *buf = 138412546;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_1DA444000, v9, OS_LOG_TYPE_INFO, "%@: all known devices %@", buf, 0x16u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(NSMutableDictionary *)self->_devices allValues];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 rapportIdentifier];
          v19 = [v18 isEqualToString:v4];

          if (v19)
          {
            v8 = v17;

            goto LABEL_15;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
  }

LABEL_15:

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)stop
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = objc_opt_class();
    _os_log_impl(&dword_1DA444000, v3, OS_LOG_TYPE_INFO, "%@: stop", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [(NSMutableDictionary *)self->_devices allValues];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    *&v6 = 138412290;
    v21 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v10 prefix];
          *buf = v21;
          v33 = v12;
          _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_INFO, "%@ tearing down client", buf, 0xCu);
        }

        v13 = [v10 client];
        [v13 setInvalidationHandler:0];

        v14 = [v10 client];
        [v14 invalidate];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  [(NSMutableDictionary *)self->_unsupportedDevices removeAllObjects];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_registeredRequests;
  v16 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(RPCompanionLinkClient *)self->_discoveryClient deregisterRequestID:*(*(&v22 + 1) + 8 * v19++), v21, v22];
      }

      while (v17 != v19);
      v17 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [(NSMutableDictionary *)self->_registeredRequests removeAllObjects];
  [(CCRapportManager *)self closeAllFileTransferSessions];
  [(RPCompanionLinkClient *)self->_discoveryClient invalidate];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)sendRequest:(id)a3 request:(id)a4 device:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  dispatch_assert_queue_V2(self->_queue);
  v16 = __biome_log_for_category();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CCRapportManager sendRequest:v13 request:? device:? options:? responseHandler:?];
    }

    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F8];
    }

    v17 = [v18 mutableCopy];
    [v17 setObject:v47 forKeyedSubscript:@"~~REQUEST_ID~~"];
    v19 = [v15 copy];
    [v17 setObject:v19 forKeyedSubscript:@"~~RESPONSE_HANDLER~~"];

    [v17 setObject:v14 forKeyedSubscript:@"~~OPTIONS~~"];
    v20 = [v13 requestQueue];
    [v20 addObject:v17];

    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [CCRapportManager sendRequest:v13 request:? device:? options:? responseHandler:?];
    }

    v22 = [v13 client];
    v23 = v22 == 0;

    if (!v23)
    {
      [(CCRapportManager *)self sendNextRequestToDevice:v13];
      goto LABEL_21;
    }

    objc_initWeak(&location, v13);
    objc_initWeak(&from, self);
    dispatch_assert_queue_V2(self->_queue);
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v13 prefix];
      [CCRapportManager sendRequest:v25 request:buf device:v24 options:? responseHandler:?];
    }

    v26 = objc_alloc_init(MEMORY[0x1E69C6B70]);
    [v13 setClient:v26];

    v27 = [v13 device];
    v28 = [v13 client];
    [v28 setDestinationDevice:v27];

    v29 = [v13 device];
    v30 = [v29 statusFlags];

    v31 = [v13 device];
    v32 = [v31 statusFlags];

    v33 = (v30 << 8) & 0x2000000000000;
    if ((v32 & 4) == 0)
    {
      v34 = [(CCRapportManager *)self localDevice];
      if (-[CCRapportManager isNoAWDLDiscoverySupportedForDevicePlatform:](self, "isNoAWDLDiscoverySupportedForDevicePlatform:", [v34 platform]))
      {
      }

      else
      {
        v35 = -[CCRapportManager isNoAWDLDiscoverySupportedForDevicePlatform:](self, "isNoAWDLDiscoverySupportedForDevicePlatform:", [v13 platform]);

        if (!v35)
        {
          v45 = [v13 device];
          v46 = [v45 statusFlags];

          v36 = (v46 << 18) & 0x200000 | v33;
          goto LABEL_20;
        }
      }
    }

    v36 = v33 | 0x400000;
LABEL_20:
    v37 = [v13 client];
    [v37 setControlFlags:v36];

    v38 = [v13 client];
    [v38 setServiceType:@"com.apple.biomesyncd.cascade.rapport"];

    queue = self->_queue;
    v40 = [v13 client];
    [v40 setDispatchQueue:queue];

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __71__CCRapportManager_sendRequest_request_device_options_responseHandler___block_invoke;
    v53[3] = &unk_1E85C2858;
    objc_copyWeak(&v54, &from);
    objc_copyWeak(&v55, &location);
    v41 = [v13 client];
    [v41 setInterruptionHandler:v53];

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __71__CCRapportManager_sendRequest_request_device_options_responseHandler___block_invoke_2;
    v51[3] = &unk_1E85C27B8;
    objc_copyWeak(&v52, &location);
    v42 = [v13 client];
    [v42 setInvalidationHandler:v51];

    v43 = [v13 client];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __71__CCRapportManager_sendRequest_request_device_options_responseHandler___block_invoke_3;
    v48[3] = &unk_1E85C2880;
    objc_copyWeak(&v49, &from);
    objc_copyWeak(&v50, &location);
    [v43 activateWithCompletion:v48];

    objc_destroyWeak(&v50);
    objc_destroyWeak(&v49);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v55);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    goto LABEL_21;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    [CCRapportManager sendRequest:request:device:options:responseHandler:];
  }

LABEL_21:

  v44 = *MEMORY[0x1E69E9840];
}

void __71__CCRapportManager_sendRequest_request_device_options_responseHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleInterruptionForDevice:v2];
}

void __71__CCRapportManager_sendRequest_request_device_options_responseHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateClientWithError:0];
}

void __71__CCRapportManager_sendRequest_request_device_options_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleActivationForDevice:v4 error:v3];
}

- (void)sendEvent:(id)a3 event:(id)a4 toDevice:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = __biome_log_for_category();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CCRapportManager sendEvent:v12 event:? toDevice:? completionHandler:?];
    }

    if ([v12 linkState])
    {
      v16 = [v12 client];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__CCRapportManager_sendEvent_event_toDevice_completionHandler___block_invoke_2;
      v18[3] = &unk_1E85C28A8;
      v19 = v12;
      v20 = self;
      v21 = v10;
      v22 = v11;
      v23 = v13;
      [v16 sendEventID:v21 event:v22 options:0 completion:v18];

      v17 = v19;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __63__CCRapportManager_sendEvent_event_toDevice_completionHandler___block_invoke;
      v24[3] = &unk_1E85C28A8;
      v24[4] = self;
      v25 = v10;
      v26 = v11;
      v27 = v12;
      v28 = v13;
      [(CCRapportManager *)self activateDirectLinkToDevice:v27 completionHandler:v24];

      v17 = v25;
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [CCRapportManager sendRequest:request:device:options:responseHandler:];
    }
  }
}

void __63__CCRapportManager_sendEvent_event_toDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 code] == -71148)
  {
    v3 = [v5 domain];
    v4 = [v3 isEqualToString:*MEMORY[0x1E69C6BC8]];

    if (v4)
    {
      [*(a1 + 32) invalidateClientWithError:v5];
      [*(a1 + 40) sendEvent:*(a1 + 48) event:*(a1 + 56) toDevice:*(a1 + 32) completionHandler:*(a1 + 64)];
    }
  }

  (*(*(a1 + 64) + 16))();
}

- (void)activateDirectLinkToDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 client];

  if (!v8)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CCRapportManager activateDirectLinkToDevice:v6 completionHandler:?];
    }

    v10 = objc_alloc_init(MEMORY[0x1E69C6B70]);
    [v6 setClient:v10];

    v11 = [v6 device];
    v12 = [v6 client];
    [v12 setDestinationDevice:v11];

    v13 = [v6 client];
    [v13 setServiceType:@"com.apple.biomesyncd.cascade.rapport"];

    queue = self->_queue;
    v15 = [v6 client];
    [v15 setDispatchQueue:queue];

    objc_initWeak(&location, v6);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __65__CCRapportManager_activateDirectLinkToDevice_completionHandler___block_invoke;
    v26[3] = &unk_1E85C28D0;
    v26[4] = self;
    objc_copyWeak(&v27, &location);
    v16 = [v6 client];
    [v16 setInterruptionHandler:v26];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__CCRapportManager_activateDirectLinkToDevice_completionHandler___block_invoke_2;
    v24[3] = &unk_1E85C27B8;
    objc_copyWeak(&v25, &location);
    v17 = [v6 client];
    [v17 setInvalidationHandler:v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  [v6 setLinkState:1];
  v18 = [v6 client];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__CCRapportManager_activateDirectLinkToDevice_completionHandler___block_invoke_3;
  v21[3] = &unk_1E85C28F8;
  v22 = v6;
  v23 = v7;
  v19 = v7;
  v20 = v6;
  [v18 activateWithCompletion:v21];
}

void __65__CCRapportManager_activateDirectLinkToDevice_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 handleInterruptionForDevice:WeakRetained];
}

void __65__CCRapportManager_activateDirectLinkToDevice_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateClientWithError:0];
}

void __65__CCRapportManager_activateDirectLinkToDevice_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setLinkState:2];
  (*(*(a1 + 40) + 16))();
}

- (void)handleActivationForDevice:(id)a3 error:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = __biome_log_for_category();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 prefix];
      v11 = v10;
      v12 = @"failed with error, ";
      if (!v7)
      {
        v12 = @"completed";
      }

      *v23 = 138412802;
      *&v23[4] = v10;
      *&v23[12] = 2112;
      *&v23[14] = v12;
      if (v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = &stru_1F55F1328;
      }

      *&v23[22] = 2112;
      v24 = v13;
      _os_log_impl(&dword_1DA444000, v9, OS_LOG_TYPE_DEFAULT, "%@ activation %@%@", v23, 0x20u);
    }

    if (v7)
    {
      if ([(__CFString *)v7 code]== -71165)
      {
        v14 = [(__CFString *)v7 domain];
        v15 = [v14 isEqualToString:*MEMORY[0x1E69C6BC8]];

        if (v15)
        {
          unsupportedDevices = self->_unsupportedDevices;
          v17 = [v6 rapportIdentifier];
          [(NSMutableDictionary *)unsupportedDevices setObject:v6 forKeyedSubscript:v17];

          devices = self->_devices;
          v19 = [v6 rapportIdentifier];
          [(NSMutableDictionary *)devices setObject:0 forKeyedSubscript:v19];

          v20 = __biome_log_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v6 prefix];
            *v23 = 138412290;
            *&v23[4] = v21;
            _os_log_impl(&dword_1DA444000, v20, OS_LOG_TYPE_DEFAULT, "%@ determined to not support service com.apple.biomesyncd.cascade.rapport", v23, 0xCu);
          }
        }
      }

      [v6 invalidateClientWithError:{v7, *v23, *&v23[16]}];
    }

    else
    {
      [(CCRapportManager *)self sendNextRequestToDevice:v6];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CCRapportManager handleActivationForDevice:error:];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)handleInterruptionForDevice:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __biome_log_for_category();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 prefix];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "%@ interrupted", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CCRapportManager handleInterruptionForDevice:];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendNextRequestToDevice:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    v5 = [v4 requestQueue];
    v6 = [v5 popFirstObject];

    if (v6)
    {
      v7 = [v6 objectForKeyedSubscript:@"~~REQUEST_ID~~"];
      v8 = [v6 objectForKeyedSubscript:@"~~OPTIONS~~"];
      v9 = [v8 mutableCopy];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = objc_opt_new();
      }

      v12 = v11;

      v13 = [v6 objectForKeyedSubscript:@"~~RESPONSE_HANDLER~~"];
      v14 = v13;
      if (v7 && v13)
      {
        [v6 setObject:0 forKeyedSubscript:@"~~REQUEST_ID~~"];
        [v6 setObject:0 forKeyedSubscript:@"~~OPTIONS~~"];
        [v6 setObject:0 forKeyedSubscript:@"~~RESPONSE_HANDLER~~"];
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(CCRapportManager *)self delegate];
          v17 = [v4 prefix];
          *buf = 138413314;
          v28 = v7;
          v29 = 2112;
          v30 = v16;
          v31 = 2112;
          v32 = v17;
          v33 = 2112;
          v34 = v6;
          v35 = 2112;
          v36 = v12;
          _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, "Sending requestID: %@ from %@ to %@ %@ options: %@", buf, 0x34u);
        }

        objc_initWeak(buf, v4);
        v18 = MEMORY[0x1E696AD98];
        v19 = [v4 requestQueue];
        v20 = [v18 numberWithInt:{objc_msgSend(v19, "count") != 0}];
        [v12 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69C6BD8]];

        v21 = [v4 client];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __44__CCRapportManager_sendNextRequestToDevice___block_invoke;
        v24[3] = &unk_1E85C2920;
        v25 = v14;
        objc_copyWeak(&v26, buf);
        v24[4] = self;
        [v21 sendRequestID:v7 request:v6 options:v12 responseHandler:v24];

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
      }

      else
      {
        v22 = __biome_log_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [CCRapportManager sendNextRequestToDevice:v4];
        }

        [(CCRapportManager *)self sendNextRequestToDevice:v4];
      }
    }
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [CCRapportManager sendNextRequestToDevice:];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __44__CCRapportManager_sendNextRequestToDevice___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  (*(*(a1 + 40) + 16))();
  if ([v9 code] == -71148 && (objc_msgSend(v9, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69C6BC8]), v5, v6))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained invalidateClientWithError:v9];
  }

  else
  {
    v8 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v8 sendNextRequestToDevice:WeakRetained];
  }
}

- (void)finishedSendingRequestsToDevice:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __biome_log_for_category();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 prefix];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "%@ request queue empty, invalidating client", &v9, 0xCu);
    }

    [v4 invalidateClientWithError:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [CCRapportManager finishedSendingRequestsToDevice:];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)device:(id)a3 didChange:(unsigned int)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  devices = self->_devices;
  v8 = [v6 CC_companionLinkDeviceIdentifier];
  v9 = [(NSMutableDictionary *)devices objectForKeyedSubscript:v8];

  if (v9)
  {
    while (1)
    {
      v10 = a4 & -a4;
      if (v10 > 31)
      {
        if (v10 <= 127)
        {
          if (v10 == 32)
          {
            v11 = __biome_log_for_category();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              [CCRapportManager device:v26 didChange:v9];
            }
          }

          else
          {
            if (v10 != 64)
            {
              goto LABEL_42;
            }

            v11 = __biome_log_for_category();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              [CCRapportManager device:v25 didChange:v9];
            }
          }
        }

        else
        {
          switch(v10)
          {
            case 128:
              v11 = __biome_log_for_category();
              if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                break;
              }

              v12 = [v9 prefix];
              v17 = [v6 proximity];
              if (v17 > 19)
              {
                if (v17 == 20)
                {
                  v18 = "Near";
                }

                else
                {
                  if (v17 != 30)
                  {
                    goto LABEL_52;
                  }

                  v18 = "Far";
                }
              }

              else if (v17)
              {
                if (v17 == 10)
                {
                  v18 = "Immed";
                  goto LABEL_58;
                }

LABEL_52:
                v18 = "?";
              }

              else
              {
                v18 = "Unknown";
              }

LABEL_58:
              *buf = 138412546;
              v29 = v12;
              v30 = 2080;
              v31 = v18;
              v20 = v11;
              v21 = "%@ proximity changed: %s";
LABEL_59:
              _os_log_debug_impl(&dword_1DA444000, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0x16u);
LABEL_60:

              break;
            case 256:
              v11 = __biome_log_for_category();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                [CCRapportManager device:v24 didChange:v9];
              }

              break;
            case 512:
              v11 = __biome_log_for_category();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                [CCRapportManager device:v23 didChange:v9];
              }

              break;
            default:
              goto LABEL_42;
          }
        }
      }

      else if (v10 <= 3)
      {
        switch(v10)
        {
          case 1:
            v11 = __biome_log_for_category();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              [CCRapportManager device:v33 didChange:v9];
            }

            break;
          case 2:
            v11 = __biome_log_for_category();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              [CCRapportManager device:v32 didChange:v9];
            }

            break;
          case 0:
            goto LABEL_61;
          default:
LABEL_42:
            v11 = __biome_log_for_category();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v19 = [v9 prefix];
              *buf = 138412546;
              v29 = v19;
              v30 = 1024;
              LODWORD(v31) = a4 & -a4;
              _os_log_debug_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEBUG, "%@ got unexpected change flag: RPDeviceChangeFlags(%x)", buf, 0x12u);
            }

            break;
        }
      }

      else
      {
        if (v10 == 4)
        {
          v11 = __biome_log_for_category();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_44;
          }

          v12 = [v9 prefix];
          v15 = [v6 proximity];
          if (v15 > 19)
          {
            if (v15 == 20)
            {
              v16 = "Near";
              goto LABEL_55;
            }

            if (v15 == 30)
            {
              v16 = "Far";
              goto LABEL_55;
            }
          }

          else
          {
            if (!v15)
            {
              v16 = "Unknown";
              goto LABEL_55;
            }

            if (v15 == 10)
            {
              v16 = "Immed";
LABEL_55:
              *buf = 138412546;
              v29 = v12;
              v30 = 2080;
              v31 = v16;
              v20 = v11;
              v21 = "%@ distance changed: %s";
              goto LABEL_59;
            }
          }

          v16 = "?";
          goto LABEL_55;
        }

        if (v10 != 8)
        {
          if (v10 == 16)
          {
            v11 = __biome_log_for_category();
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_44;
            }

            v12 = [v9 prefix];
            v13 = [v9 device];
            v14 = [v13 name];
            *buf = 138412546;
            v29 = v12;
            v30 = 2112;
            v31 = v14;
            _os_log_debug_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEBUG, "%@ name changed: %@", buf, 0x16u);

            goto LABEL_60;
          }

          goto LABEL_42;
        }

        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [CCRapportManager device:v27 didChange:v9];
        }
      }

LABEL_44:

      a4 ^= v10;
    }
  }

LABEL_61:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)didDiscoverDevice:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 CC_companionLinkDeviceIdentifier];

  if (v5)
  {
    v6 = [v4 model];

    if (v6)
    {
      devices = self->_devices;
      v8 = [v4 CC_companionLinkDeviceIdentifier];
      v9 = [(NSMutableDictionary *)devices objectForKeyedSubscript:v8];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        unsupportedDevices = self->_unsupportedDevices;
        v12 = [v4 CC_companionLinkDeviceIdentifier];
        v10 = [(NSMutableDictionary *)unsupportedDevices objectForKeyedSubscript:v12];

        if (!v10)
        {
          v10 = [[CCRapportDevice alloc] initWithRPCompanionLinkDevice:v4];
          v15 = __biome_log_for_category();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [CCRapportManager didDiscoverDevice:];
          }

          v16 = [(CCRapportDevice *)v10 serviceTypes];
          if (!v16 || (v17 = v16, -[CCRapportDevice serviceTypes](v10, "serviceTypes"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 containsObject:@"com.apple.biomesyncd.cascade.rapport"], v18, v17, (v19 & 1) != 0))
          {
            v20 = MEMORY[0x1E698E9D0];
            personaIdentifier = self->_personaIdentifier;
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __38__CCRapportManager_didDiscoverDevice___block_invoke;
            v25[3] = &unk_1E85C2948;
            v25[4] = self;
            v10 = v10;
            v26 = v10;
            [v20 runAsPersonaIdentifier:personaIdentifier block:v25];

            goto LABEL_13;
          }

          v22 = __biome_log_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(CCRapportDevice *)v10 prefix];
            *buf = 138412290;
            v28 = v23;
            _os_log_impl(&dword_1DA444000, v22, OS_LOG_TYPE_DEFAULT, "%@ ignoring device not listing service from serviceTypes com.apple.biomesyncd.cascade.rapport", buf, 0xCu);
          }

          v24 = self->_unsupportedDevices;
          v13 = [(CCRapportDevice *)v10 rapportIdentifier];
          [(NSMutableDictionary *)v24 setObject:v10 forKeyedSubscript:v13];
          goto LABEL_12;
        }
      }

      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v28 = objc_opt_class();
        v29 = 2112;
        v30 = v4;
        v31 = 2112;
        v32 = v10;
        _os_log_debug_impl(&dword_1DA444000, v13, OS_LOG_TYPE_DEBUG, "%@: already discovered device, %@ as %@", buf, 0x20u);
      }

LABEL_12:

      goto LABEL_13;
    }

    v10 = __biome_log_for_category();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      [CCRapportManager didDiscoverDevice:];
    }
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      [CCRapportManager didDiscoverDevice:];
    }
  }

LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
}

void __38__CCRapportManager_didDiscoverDevice___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 code] == 1)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__CCRapportManager_didDiscoverDevice___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v4 = [*(a1 + 32) delegate];
    v5 = [v4 rapportManager:*(a1 + 32) isDeviceSupported:*(a1 + 40)];
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"Ignoring";
      v8 = *(a1 + 40);
      v16 = 138412802;
      if (v5)
      {
        v7 = @"Will engage with";
      }

      v17 = v4;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ discovered device: %@", &v16, 0x20u);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (v5)
    {
      v11 = *(v9 + 32);
      v12 = [*(a1 + 40) rapportIdentifier];
      [v11 setObject:v10 forKeyedSubscript:v12];

      [v4 rapportManager:*(a1 + 32) didDiscoverCCRapportDevice:*(a1 + 40)];
    }

    else
    {
      v13 = *(v9 + 40);
      v14 = [v10 rapportIdentifier];
      [v13 setObject:v10 forKeyedSubscript:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)didLoseDevice:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  devices = self->_devices;
  v7 = [v5 CC_companionLinkDeviceIdentifier];

  v8 = [(NSMutableDictionary *)devices objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E698E9D0];
    personaIdentifier = self->_personaIdentifier;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__CCRapportManager_didLoseDevice___block_invoke;
    v11[3] = &unk_1E85C2948;
    v12 = v8;
    v13 = self;
    [v9 runAsPersonaIdentifier:personaIdentifier block:v11];
  }
}

void __34__CCRapportManager_didLoseDevice___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) prefix];
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1DA444000, v4, OS_LOG_TYPE_DEFAULT, "%@ lost", &v13, 0xCu);
  }

  if ([v3 code] == 1)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __34__CCRapportManager_didLoseDevice___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v7 = [*(a1 + 40) delegate];
    [v7 rapportManager:*(a1 + 40) didLoseNearbyCCRapportDevice:*(a1 + 32)];

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1F55F1468 code:7 userInfo:0];
    [v8 invalidateClientWithError:v9];

    v10 = *(a1 + 32);
    v11 = *(*(a1 + 40) + 32);
    v6 = [v10 rapportIdentifier];
    [v11 setObject:0 forKeyedSubscript:v6];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)localDeviceUpdated:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E698E9D0];
  personaIdentifier = self->_personaIdentifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__CCRapportManager_localDeviceUpdated___block_invoke;
  v8[3] = &unk_1E85C2948;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 runAsPersonaIdentifier:personaIdentifier block:v8];
}

void __39__CCRapportManager_localDeviceUpdated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 1)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      __39__CCRapportManager_localDeviceUpdated___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v4 = [[CCRapportDevice alloc] initWithRPCompanionLinkDevice:*(a1 + 40)];
    v5 = [*(a1 + 32) delegate];
    [v5 rapportManager:*(a1 + 32) localDeviceUpdated:v4];
  }
}

- (BOOL)activateFileTransferSessions:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E698E968]);
  v5 = [v4 initWithUseCase:*MEMORY[0x1E698E958]];
  v6 = objc_alloc(MEMORY[0x1E698E9F8]);
  v7 = [v6 initWithType:5 name:*MEMORY[0x1E698E8F8] descriptors:MEMORY[0x1E695E0F0] options:1];
  v23 = 0;
  v8 = [v5 requestAccessToResource:v7 mode:3 error:&v23];
  v9 = v23;
  fileTransferAccessAssertion = self->_fileTransferAccessAssertion;
  self->_fileTransferAccessAssertion = v8;

  v11 = self->_fileTransferAccessAssertion;
  if (v11)
  {
    v12 = [(BMAccessAssertion *)v11 path];
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
      v14 = [MEMORY[0x1E696AC08] defaultManager];
      v22 = 0;
      v15 = [v14 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v22];
      v16 = v22;

      if (v15)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          *buf = 138412546;
          v25 = v18;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_1DA444000, v17, OS_LOG_TYPE_DEFAULT, "%@: initializing file transfer directory: %@", buf, 0x16u);
        }

        objc_storeStrong(&self->_fileTransferDirectory, v13);
        [(CCRapportManager *)self deleteDanglingFilesFromFileTransferDirectory];
      }

      else
      {
        v19 = CCRapportSyncErrorWithUnderlying(13, v16);
        CCSetError();
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: access assertion does not contain a valid path to sync directory: %@", objc_opt_class(), self->_fileTransferAccessAssertion];
      v16 = CCRapportSyncErrorWithDetails(13, 0, v13);
      CCSetError();
      v15 = 0;
    }
  }

  else
  {
    v12 = CCRapportSyncErrorWithUnderlying(13, v9);
    CCSetError();
    v15 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)fileTransferSessionCacheKeyWithServerDevice:(id)a3 clientTargetDeviceID:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [a3 rapportIdentifier];
  v8 = [v5 stringWithFormat:@"%@:%@", v7, v6];

  return v8;
}

- (id)initiateFileTransferSessionWithServerDevice:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(CCRapportManager *)self localDevice];
  v7 = [v6 device];
  v8 = [v7 fileTransferTargetID];

  if (v8)
  {
    v9 = [(CCRapportManager *)self fileTransferSessionCacheKeyWithServerDevice:v5 clientTargetDeviceID:v8];
    v10 = [(NSMutableDictionary *)self->_fileTransferSessions objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v17 = objc_opt_new();
      [v17 setDispatchQueue:self->_fileTransferQueue];
      [v17 setTargetID:v8];
      v18 = [v5 device];
      v19 = [v18 statusFlags];

      if ((v19 & 4) != 0)
      {
        v20 = 17;
      }

      else
      {
        v20 = 1;
      }

      [v17 setFlags:v20];
      [v17 setTemporaryDirectoryURL:self->_fileTransferDirectory];
      v25 = 0;
      v21 = [v17 prepareTemplateAndReturnError:&v25];
      v22 = v25;
      if (v21)
      {
        [(NSMutableDictionary *)self->_fileTransferSessions setObject:v17 forKeyedSubscript:v9];
        v12 = v17;
      }

      else
      {
        v23 = CCRapportSyncErrorWithUnderlying(20, v22);
        CCSetError();

        v12 = 0;
      }
    }
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [(CCRapportManager *)self localDevice];
    v15 = [v13 stringWithFormat:@"localDevice: %@ missing fileTransferTargetID", v14];
    v16 = CCRapportSyncErrorWithDetails(19, 0, v15);
    CCSetError();

    v12 = 0;
  }

  return v12;
}

- (id)fulfillFileTransferSessionFromClientDevice:(id)a3 withTargetDeviceID:(id)a4 peerPublicKey:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(CCRapportManager *)self localDevice];
  v13 = [(CCRapportManager *)self fileTransferSessionCacheKeyWithServerDevice:v12 clientTargetDeviceID:v10];

  v14 = [(NSMutableDictionary *)self->_fileTransferSessions objectForKeyedSubscript:v13];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = objc_opt_new();
    [v17 setDispatchQueue:self->_fileTransferQueue];
    [v17 setTargetID:v10];
    v18 = [v9 device];
    v19 = [v18 statusFlags];

    [v17 setFlags:(4 * v19) & 0x10];
    [v17 setPeerPublicKey:v11];
    [v17 setTemporaryDirectoryURL:self->_fileTransferDirectory];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __102__CCRapportManager_fulfillFileTransferSessionFromClientDevice_withTargetDeviceID_peerPublicKey_error___block_invoke;
    v25[3] = &unk_1E85C2970;
    v25[4] = self;
    [v17 setProgressHandler:v25];
    v24 = 0;
    v20 = [v17 prepareTemplateAndReturnError:&v24];
    v21 = v24;
    if (v20)
    {
      [(NSMutableDictionary *)self->_fileTransferSessions setObject:v17 forKeyedSubscript:v13];
      v16 = v17;
    }

    else
    {
      v22 = CCRapportSyncErrorWithUnderlying(20, v21);
      CCSetError();

      v16 = 0;
    }
  }

  return v16;
}

void __102__CCRapportManager_fulfillFileTransferSessionFromClientDevice_withTargetDeviceID_peerPublicKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __102__CCRapportManager_fulfillFileTransferSessionFromClientDevice_withTargetDeviceID_peerPublicKey_error___block_invoke_cold_1();
  }
}

- (void)closeFileTransferSessionWithDeviceIdentifier:(id)a3
{
  fileTransferSessions = self->_fileTransferSessions;
  v5 = a3;
  v6 = [(NSMutableDictionary *)fileTransferSessions objectForKeyedSubscript:v5];
  [v6 finish];
  [(NSMutableDictionary *)self->_fileTransferSessions removeObjectForKey:v5];
}

- (void)closeAllFileTransferSessions
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_fileTransferSessions allValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_fileTransferSessions removeAllObjects];
  [(CCRapportManager *)self deleteDanglingFilesFromFileTransferDirectory];
  fileTransferAccessAssertion = self->_fileTransferAccessAssertion;
  self->_fileTransferAccessAssertion = 0;

  fileTransferDirectory = self->_fileTransferDirectory;
  self->_fileTransferDirectory = 0;

  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteDanglingFilesFromFileTransferDirectory
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13(v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteMergeableDeltaFileURL:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  [v4 removeItemAtURL:v3 error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      *buf = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_1DA444000, v6, OS_LOG_TYPE_ERROR, "%@: Failed to remove item at url %@ with error %@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (CCRapportManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithQueue:forSharedUse:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)discoveryControlFlagsForDevicePlatform:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v5 = BMDevicePlatformGetDescription();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)createDiscoveryClientWithControlFlags:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)activateDiscoveryClientWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)activateDiscoveryClientWithCompletion:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)activateDiscoveryClientWithCompletion:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleDiscoveryClientActivationOrError:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendRequest:(void *)a1 request:device:options:responseHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 prefix];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)sendRequest:(void *)a1 request:device:options:responseHandler:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 requestQueue];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendRequest:(os_log_t)log request:device:options:responseHandler:.cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1DA444000, log, OS_LOG_TYPE_DEBUG, "%@ activating client", buf, 0xCu);
}

- (void)sendEvent:(void *)a1 event:toDevice:completionHandler:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 linkState];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)activateDirectLinkToDevice:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 prefix];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)sendNextRequestToDevice:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 prefix];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)device:(uint64_t)a1 didChange:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0(a1 a2)];
  OUTLINED_FUNCTION_7(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3(&dword_1DA444000, v3, v4, "%@ no transports available; expect a lost callback");
}

- (void)device:(uint64_t)a1 didChange:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0(a1 a2)];
  OUTLINED_FUNCTION_7(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3(&dword_1DA444000, v3, v4, "%@ distance/angle/something changed");
}

- (void)device:(uint64_t)a1 didChange:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0(a1 a2)];
  OUTLINED_FUNCTION_7(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3(&dword_1DA444000, v3, v4, "%@ SSID changed");
}

- (void)device:(uint64_t)a1 didChange:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0(a1 a2)];
  OUTLINED_FUNCTION_7(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3(&dword_1DA444000, v3, v4, "%@ RSSI changed");
}

- (void)device:(uint64_t)a1 didChange:(uint64_t)a2 .cold.5(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0(a1 a2)];
  OUTLINED_FUNCTION_7(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3(&dword_1DA444000, v3, v4, "%@ distance wifi information element changed");
}

- (void)device:(uint64_t)a1 didChange:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0(a1 a2)];
  OUTLINED_FUNCTION_7(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3(&dword_1DA444000, v3, v4, "%@ pairing flags/attributes changed");
}

- (void)device:(uint64_t)a1 didChange:(uint64_t)a2 .cold.7(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0(a1 a2)];
  OUTLINED_FUNCTION_7(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3(&dword_1DA444000, v3, v4, "%@ advertisement data changed");
}

- (void)didDiscoverDevice:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_1DA444000, v0, OS_LOG_TYPE_DEBUG, "%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)didDiscoverDevice:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)didDiscoverDevice:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

void __38__CCRapportManager_didDiscoverDevice___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __34__CCRapportManager_didLoseDevice___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 40) + 24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __39__CCRapportManager_localDeviceUpdated___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __102__CCRapportManager_fulfillFileTransferSessionFromClientDevice_withTargetDeviceID_peerPublicKey_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

@end