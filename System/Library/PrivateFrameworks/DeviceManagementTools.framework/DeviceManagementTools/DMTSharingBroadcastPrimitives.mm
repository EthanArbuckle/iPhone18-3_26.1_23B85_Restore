@interface DMTSharingBroadcastPrimitives
- (DMTSharingBroadcastPrimitives)initWithLoggingIdentifier:(id)identifier;
- (void)activateWithCompletion:(id)completion;
- (void)addDependencyHandlers;
- (void)deactivate;
- (void)invalidateWithError:(id)error;
- (void)removeDependencyHandlers:(BOOL)handlers;
- (void)sendMessageToPairedDevice:(id)device;
- (void)serviceReceivedObjectQueue;
- (void)setMessageReceivedHandler:(id)handler;
- (void)updateRemoteDeviceWithSession:(id)session;
@end

@implementation DMTSharingBroadcastPrimitives

- (DMTSharingBroadcastPrimitives)initWithLoggingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = DMTSharingBroadcastPrimitives;
  v5 = [(DMTSharingBroadcastPrimitives *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.devicemanagementtools.broadcast", 0);
    broadcastCallbackQueue = v5->_broadcastCallbackQueue;
    v5->_broadcastCallbackQueue = v6;

    v8 = objc_opt_new();
    receivedObjectQueue = v5->_receivedObjectQueue;
    v5->_receivedObjectQueue = v8;

    v10 = objc_opt_new();
    sharingService = v5->_sharingService;
    v5->_sharingService = v10;

    [(SFService *)v5->_sharingService setLabel:identifierCopy];
    [(SFService *)v5->_sharingService setIdentifier:*MEMORY[0x277D54D70]];
    [(SFService *)v5->_sharingService setDeviceActionType:21];
    [(SFService *)v5->_sharingService setNeedsSetup:1];
    [(SFService *)v5->_sharingService setDispatchQueue:v5->_broadcastCallbackQueue];
  }

  return v5;
}

- (void)setMessageReceivedHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x24C1DD740]();
  messageReceivedHandler = self->_messageReceivedHandler;
  self->_messageReceivedHandler = v5;

  if (self->_messageReceivedHandler)
  {
    objc_initWeak(&location, self);
    broadcastCallbackQueue = [(DMTSharingBroadcastPrimitives *)self broadcastCallbackQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__DMTSharingBroadcastPrimitives_setMessageReceivedHandler___block_invoke;
    v8[3] = &unk_278F5E3E0;
    objc_copyWeak(&v9, &location);
    dispatch_async(broadcastCallbackQueue, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __59__DMTSharingBroadcastPrimitives_setMessageReceivedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained serviceReceivedObjectQueue];
    WeakRetained = v2;
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(DMTSharingBroadcastPrimitives *)self addDependencyHandlers];
  objc_initWeak(&location, self);
  sharingService = [(DMTSharingBroadcastPrimitives *)self sharingService];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DMTSharingBroadcastPrimitives_activateWithCompletion___block_invoke;
  v7[3] = &unk_278F5E3B8;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [sharingService activateWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__DMTSharingBroadcastPrimitives_activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setActivated:v4 == 0];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)deactivate
{
  sharingService = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService invalidate];
}

- (void)sendMessageToPairedDevice:(id)device
{
  deviceCopy = device;
  remoteDevice = [(DMTSharingBroadcastPrimitives *)self remoteDevice];

  if (remoteDevice)
  {
    sharingService = [(DMTSharingBroadcastPrimitives *)self sharingService];
    remoteDevice2 = [(DMTSharingBroadcastPrimitives *)self remoteDevice];
    identifier = [remoteDevice2 identifier];
    [sharingService sendToPeer:identifier flags:1 object:deviceCopy];
  }

  else
  {
    v9 = _DMTLogGeneral_1();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DMTSharingBroadcastPrimitives sendMessageToPairedDevice:];
    }
  }
}

- (void)addDependencyHandlers
{
  objc_initWeak(location, self);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke;
  v28[3] = &unk_278F5E3E0;
  objc_copyWeak(&v29, location);
  sharingService = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService setInvalidationHandler:v28];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_2;
  v26[3] = &unk_278F5E3E0;
  objc_copyWeak(&v27, location);
  sharingService2 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService2 setInterruptionHandler:v26];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_5;
  v24[3] = &unk_278F5E390;
  objc_copyWeak(&v25, location);
  sharingService3 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService3 setErrorHandler:v24];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_6;
  v22[3] = &unk_278F5E4B8;
  objc_copyWeak(&v23, location);
  sharingService4 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService4 setShowPINHandlerEx:v22];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_2_8;
  v20[3] = &unk_278F5E3E0;
  objc_copyWeak(&v21, location);
  sharingService5 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService5 setHidePINHandler:v20];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_3;
  v18[3] = &unk_278F5E508;
  objc_copyWeak(&v19, location);
  sharingService6 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService6 setSessionStartedHandler:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_31;
  v16[3] = &unk_278F5E508;
  objc_copyWeak(&v17, location);
  sharingService7 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService7 setSessionSecuredHandler:v16];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_32;
  v14[3] = &unk_278F5E530;
  objc_copyWeak(&v15, location);
  sharingService8 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService8 setSessionEndedHandler:v14];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_34;
  v12[3] = &unk_278F5E558;
  objc_copyWeak(&v13, location);
  sharingService9 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService9 setReceivedObjectHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(location);
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = DMTErrorWithCodeAndUserInfo(30, 0);
    [v3 invalidateWithError:v2];

    WeakRetained = v3;
  }
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _DMTLogGeneral_1();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_2_cold_1();
    }

    if ([WeakRetained isInvalidated])
    {
      v3 = _DMTLogGeneral_1();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_INFO, "Interrupted after invalidation, no-op", v4, 2u);
      }
    }

    else
    {
      v3 = DMTErrorWithCodeAndUserInfo(31, 0);
      [WeakRetained invalidateWithError:v3];
    }
  }
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _DMTLogGeneral_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_5_cold_1(WeakRetained, v3, v5);
    }
  }
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained showPinHandler];
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, v8);
    }
  }
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_2_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained dismissPinHandler];
    v3 = v2;
    if (v2)
    {
      (*(v2 + 16))(v2);
    }

    WeakRetained = v4;
  }
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _DMTLogGeneral_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_3_cold_1(v3, v5);
    }

    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_19;
    v10 = &unk_278F5E4E0;
    objc_copyWeak(&v12, (a1 + 32));
    v6 = v3;
    v11 = v6;
    [v6 registerRequestID:@"_pa" options:&unk_285B5BE88 handler:&v7];
    [WeakRetained updateRemoteDeviceWithSession:{v6, v7, v8, v9, v10}];

    objc_destroyWeak(&v12);
  }
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_19(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = _DMTLogGeneral_1();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_19_cold_1();
    }

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = +[DMTPairingConstants localeIdentifierKey];
        v11 = [v6 objectForKeyedSubscript:v10];
        [WeakRetained setRemoteHostLocaleIdentifier:v11];

        v12 = _DMTLogGeneral_1();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_19_cold_3(WeakRetained);
        }
      }

      else
      {
        v12 = _DMTLogGeneral_1();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_19_cold_2();
        }
      }
    }

    v13 = MGCopyAnswer();
    v14 = +[DMTPairingConstants productTypeKey];
    v17 = v14;
    v18[0] = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    v7[2](v7, 0, &unk_285B5BEB0, v15);
    [*(a1 + 32) deregisterRequestID:@"_pa"];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained broadcastCallbackQueue];
    MEMORY[0x24C1DD2C0]();

    v7 = _DMTLogGeneral_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_31_cold_1(v3);
    }

    [v5 setPaired:1];
    [v5 updateRemoteDeviceWithSession:v3];
    v8 = [v5 sessionPairedHandler];
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8);
    }

    [v5 serviceReceivedObjectQueue];
  }
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained isInvalidated];
    v10 = _DMTLogGeneral_1();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v11)
      {
        __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_32_cold_2();
      }

LABEL_5:

      goto LABEL_11;
    }

    if (v11)
    {
      __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_32_cold_1(v5);
    }

    [v8 setRemoteDevice:0];
    if ([v8 isPaired])
    {
      if (v6)
      {
        [v8 invalidateWithError:v6];
        goto LABEL_11;
      }

      v10 = DMTErrorWithCodeAndUserInfo(91, 0);
      [v8 invalidateWithError:v10];
      goto LABEL_5;
    }
  }

LABEL_11:
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_34(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained broadcastCallbackQueue];
    MEMORY[0x24C1DD2C0]();

    [v9 updateRemoteDeviceWithSession:v6];
    v11 = _DMTLogGeneral_1();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = v7;
      _os_log_impl(&dword_24891B000, v11, OS_LOG_TYPE_INFO, "Received object: %{public}@", &v14, 0xCu);
    }

    v12 = [v9 receivedObjectQueue];
    [v12 addObject:v7];

    [v9 serviceReceivedObjectQueue];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeDependencyHandlers:(BOOL)handlers
{
  broadcastCallbackQueue = [(DMTSharingBroadcastPrimitives *)self broadcastCallbackQueue];
  MEMORY[0x24C1DD2C0]();

  sharingService = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService setSessionStartedHandler:0];

  sharingService2 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService2 setShowPINHandler:0];

  sharingService3 = [(DMTSharingBroadcastPrimitives *)self sharingService];
  [sharingService3 setSessionSecuredHandler:0];

  if (!handlers)
  {
    sharingService4 = [(DMTSharingBroadcastPrimitives *)self sharingService];
    [sharingService4 setInvalidationHandler:0];

    sharingService5 = [(DMTSharingBroadcastPrimitives *)self sharingService];
    [sharingService5 setInterruptionHandler:0];

    sharingService6 = [(DMTSharingBroadcastPrimitives *)self sharingService];
    [sharingService6 setHidePINHandler:0];

    sharingService7 = [(DMTSharingBroadcastPrimitives *)self sharingService];
    [sharingService7 setSessionEndedHandler:0];

    sharingService8 = [(DMTSharingBroadcastPrimitives *)self sharingService];
    [sharingService8 setReceivedObjectHandler:0];
  }
}

- (void)invalidateWithError:(id)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = _DMTLogGeneral_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [DMTSharingBroadcastPrimitives invalidateWithError:];
  }

  broadcastCallbackQueue = [(DMTSharingBroadcastPrimitives *)self broadcastCallbackQueue];
  MEMORY[0x24C1DD2C0]();

  [(DMTSharingBroadcastPrimitives *)self setInvalidated:1];
  invalidationHandler = [(DMTSharingBroadcastPrimitives *)self invalidationHandler];
  if (invalidationHandler)
  {
    v11 = *MEMORY[0x277CCA7E8];
    v12[0] = errorCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = DMTErrorWithCodeAndUserInfo(30, v8);
    (invalidationHandler)[2](invalidationHandler, v9);
  }

  [(DMTSharingBroadcastPrimitives *)self removeDependencyHandlers:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateRemoteDeviceWithSession:(id)session
{
  sessionCopy = session;
  broadcastCallbackQueue = [(DMTSharingBroadcastPrimitives *)self broadcastCallbackQueue];
  MEMORY[0x24C1DD2C0]();

  peerDevice = [sessionCopy peerDevice];

  if (peerDevice)
  {
    v7 = [[DMTSharingDevice alloc] initWithDevice:peerDevice];
  }

  else
  {
    v7 = 0;
  }

  v8 = _DMTLogGeneral_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DMTSharingBroadcastPrimitives updateRemoteDeviceWithSession:];
  }

  [(DMTSharingBroadcastPrimitives *)self performSelectorOnMainThread:sel_setRemoteDevice_ withObject:v7 waitUntilDone:0];
}

- (void)serviceReceivedObjectQueue
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCABB0];
  receivedObjectQueue = [self receivedObjectQueue];
  v3 = [v1 numberWithUnsignedInteger:{objc_msgSend(receivedObjectQueue, "count")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_5_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_1();
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_24891B000, a3, OS_LOG_TYPE_ERROR, "%{public}@, sharing error: %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_3_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 peerDevice];
  v4 = [v3 identifier];
  v5 = [v4 UUIDString];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_24891B000, a2, OS_LOG_TYPE_DEBUG, "Session Started for %{public}@.", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_19_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_24891B000, v0, OS_LOG_TYPE_DEBUG, "Received SFMessageRequestIDPreAuth request: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_19_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 remoteHostLocaleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_31_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 peerDevice];
  v2 = [v1 identifier];
  v3 = [v2 UUIDString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __54__DMTSharingBroadcastPrimitives_addDependencyHandlers__block_invoke_32_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 peerDevice];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidateWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24891B000, v0, OS_LOG_TYPE_ERROR, "[DMT] Primitives invalidated with error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateRemoteDeviceWithSession:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_24891B000, v0, OS_LOG_TYPE_DEBUG, "Updating remoteDevice with %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end