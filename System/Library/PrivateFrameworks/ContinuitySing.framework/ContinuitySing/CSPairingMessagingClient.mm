@interface CSPairingMessagingClient
- (CSPairingMessagingClient)init;
- (NSString)localMediaRouteIdentifier;
- (id)deviceForMediaRouteIdentifier:(id)identifier;
- (id)deviceForRemoteDisplayIdentifier:(id)identifier;
- (void)_activateWithCompletion:(id)completion;
- (void)_completePendingGroupSessionTokenRequests:(id)requests error:(id)error;
- (void)_endPairingClient;
- (void)_pairWithDevice:(id)device password:(id)password completion:(id)completion;
- (void)_pairWithDeviceIfNeeded:(id)needed password:(id)password completion:(id)completion;
- (void)_pairWithMediaRouteIdentifierIfNeeded:(id)needed password:(id)password attempts:(int64_t)attempts completion:(id)completion;
- (void)_requestGroupSessionTokenFromIdentifer:(id)identifer attempts:(int64_t)attempts completion:(id)completion;
- (void)_sendPingToDevice:(id)device completion:(id)completion;
- (void)_serviceActivationHandlersWithError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)requestGroupSessionTokenFromIdentifer:(id)identifer completion:(id)completion;
@end

@implementation CSPairingMessagingClient

- (CSPairingMessagingClient)init
{
  v10.receiver = self;
  v10.super_class = CSPairingMessagingClient;
  v2 = [(CSPairingMessagingClient *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.CSPairingMessagingClientQueue.internal", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v5 = dispatch_queue_create("com.apple.CSPairingMessagingClientQueue.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    v2->_activationState = 0;
    array = [MEMORY[0x277CBEB18] array];
    activationHandlers = v2->_activationHandlers;
    v2->_activationHandlers = array;
  }

  return v2;
}

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_rpClient invalidate];
  [(RPCompanionLinkClient *)self->_pairingClient invalidate];
  v3 = [(NSMutableArray *)self->_activationHandlers copy];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CSPairingMessagingClient_dealloc__block_invoke;
  block[3] = &unk_278E0ACD8;
  v8 = v3;
  v5 = v3;
  dispatch_async(callbackQueue, block);

  v6.receiver = self;
  v6.super_class = CSPairingMessagingClient;
  [(CSPairingMessagingClient *)&v6 dealloc];
}

void __35__CSPairingMessagingClient_dealloc__block_invoke(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = objc_alloc(MEMORY[0x277CCA9B8]);
        v8 = [v7 initWithDomain:CSPairingErrorDomain code:0 userInfo:0];
        (*(v6 + 16))(v6, v8);

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v3);
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CSPairingMessagingClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_278E0AF88;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  activationHandlers = self->_activationHandlers;
  v6 = _Block_copy(completionCopy);
  [(NSMutableArray *)activationHandlers addObject:v6];

  activationState = self->_activationState;
  if (activationState == 2)
  {
    localDevice = [(RPCompanionLinkClient *)self->_rpClient localDevice];

    if (localDevice)
    {
      v9 = ContinuitySingLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315394;
        v19 = "[CSPairingMessagingClient _activateWithCompletion:]";
        v20 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_2441FB000, v9, OS_LOG_TYPE_DEFAULT, "%s: %@ Already active", &v18, 0x16u);
      }

      [(CSPairingMessagingClient *)self _serviceActivationHandlersWithError:0];
      goto LABEL_12;
    }

    activationState = self->_activationState;
  }

  if (activationState)
  {
    v10 = ContinuitySingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_activationState];
      localDevice2 = [(RPCompanionLinkClient *)self->_rpClient localDevice];
      v18 = 136315906;
      v19 = "[CSPairingMessagingClient _activateWithCompletion:]";
      v20 = 2112;
      selfCopy2 = self;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = localDevice2;
      _os_log_impl(&dword_2441FB000, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ Nothing to do currently for activation request with state %@ and local device %@", &v18, 0x2Au);
    }
  }

  else
  {
    self->_activationState = 1;
    v13 = objc_alloc_init(MEMORY[0x277D44160]);
    rpClient = self->_rpClient;
    self->_rpClient = v13;

    [(RPCompanionLinkClient *)self->_rpClient setControlFlags:[(RPCompanionLinkClient *)self->_rpClient controlFlags]| 0x18000000240CLL];
    [(RPCompanionLinkClient *)self->_rpClient setFlags:[(RPCompanionLinkClient *)self->_rpClient flags]| 1];
    [(RPCompanionLinkClient *)self->_rpClient setDispatchQueue:self->_internalQueue];
    v15 = self->_rpClient;
    v34 = *MEMORY[0x277D44260];
    v35 = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [(RPCompanionLinkClient *)v15 registerRequestID:@"com.apple.CSPingRequestID" options:v16 handler:&__block_literal_global_12];

    objc_initWeak(&v18, self);
    v17 = self->_rpClient;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_17;
    v32[3] = &unk_278E0BC30;
    objc_copyWeak(&v33, &v18);
    [(RPCompanionLinkClient *)v17 activateWithCompletion:v32];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_19;
    v30[3] = &unk_278E0AF60;
    objc_copyWeak(&v31, &v18);
    [(RPCompanionLinkClient *)self->_rpClient setLocalDeviceUpdatedHandler:v30];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_2;
    v28[3] = &unk_278E0AF60;
    objc_copyWeak(&v29, &v18);
    [(RPCompanionLinkClient *)self->_rpClient setDeviceFoundHandler:v28];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_3;
    v26[3] = &unk_278E0BC58;
    objc_copyWeak(&v27, &v18);
    [(RPCompanionLinkClient *)self->_rpClient setDeviceChangedHandler:v26];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v18);
  }

LABEL_12:
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = ContinuitySingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[CSPairingMessagingClient _activateWithCompletion:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Received ping from %@", buf, 0x16u);
  }

  v13 = @"ACK";
  v8 = [MEMORY[0x277CBEB68] null];
  v14 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v11 = *MEMORY[0x277D44260];
  v12 = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v6[2](v6, v9, v10, 0);
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[5] = (2 * (v3 == 0));
    if (v3 || ([WeakRetained[2] localDevice], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = ContinuitySingLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = "[CSPairingMessagingClient _activateWithCompletion:]_block_invoke";
        v10 = 2112;
        v11 = v5;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@ Activate: %@", &v8, 0x20u);
      }

      [v5 _serviceActivationHandlersWithError:v3];
    }
  }
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serviceActivationHandlersWithError:0];
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 9);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
    }
  }
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 9);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
    }
  }
}

- (void)_serviceActivationHandlersWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = [(NSMutableArray *)self->_activationHandlers copy];
  [(NSMutableArray *)self->_activationHandlers removeAllObjects];
  callbackQueue = self->_callbackQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__CSPairingMessagingClient__serviceActivationHandlersWithError___block_invoke;
  v9[3] = &unk_278E0AD78;
  v10 = v5;
  v11 = errorCopy;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(callbackQueue, v9);
}

void __64__CSPairingMessagingClient__serviceActivationHandlersWithError___block_invoke(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }
}

- (void)invalidate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CSPairingMessagingClient_invalidate__block_invoke;
  block[3] = &unk_278E0ACD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __38__CSPairingMessagingClient_invalidate__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSPairingMessagingClient invalidate]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: Invalidate", &v7, 0xCu);
  }

  *(*(a1 + 32) + 40) = 0;
  [*(*(a1 + 32) + 16) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  [*(*(a1 + 32) + 24) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;
}

- (NSString)localMediaRouteIdentifier
{
  localDevice = [(RPCompanionLinkClient *)self->_rpClient localDevice];
  mediaRouteIdentifier = [localDevice mediaRouteIdentifier];

  return mediaRouteIdentifier;
}

- (id)deviceForMediaRouteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_rpClient activeDevices];
  v6 = [activeDevices countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(activeDevices);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        mediaRouteIdentifier = [v11 mediaRouteIdentifier];
        v13 = [mediaRouteIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          v14 = v11;

          idsDeviceIdentifier = [v14 idsDeviceIdentifier];
          if (idsDeviceIdentifier)
          {
            v16 = idsDeviceIdentifier;
            idsDeviceIdentifier2 = [v14 idsDeviceIdentifier];
            v18 = [idsDeviceIdentifier2 isEqual:identifierCopy];

            v8 = v14;
            if (!v18)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v8 = v14;
          }
        }
      }

      v7 = [activeDevices countByEnumeratingWithState:&v21 objects:v20 count:16];
      v14 = v8;
    }

    while (v7);
  }

  else
  {
    v14 = 0;
  }

LABEL_15:

  return v14;
}

- (id)deviceForRemoteDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_rpClient activeDevices];
  v6 = [activeDevices countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(activeDevices);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 compareWithDeviceIdentifier:identifierCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [activeDevices countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_pairWithMediaRouteIdentifierIfNeeded:(id)needed password:(id)password attempts:(int64_t)attempts completion:(id)completion
{
  neededCopy = needed;
  passwordCopy = password;
  completionCopy = completion;
  v13 = [(CSPairingMessagingClient *)self deviceForMediaRouteIdentifier:neededCopy];
  v14 = v13;
  if (v13)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke;
    block[3] = &unk_278E0B2A8;
    block[4] = self;
    v37 = v13;
    v38 = passwordCopy;
    v39 = completionCopy;
    dispatch_async(internalQueue, block);
  }

  else
  {
    v16 = ContinuitySingLog();
    v17 = v16;
    if (attempts < 2)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CSPairingMessagingClient _pairWithMediaRouteIdentifierIfNeeded:password:attempts:completion:];
      }

      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = [v21 initWithDomain:CSPairingErrorDomain code:3 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v22);
    }

    else
    {
      v18 = (attempts - 1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v29 = "[CSPairingMessagingClient _pairWithMediaRouteIdentifierIfNeeded:password:attempts:completion:]";
        v30 = 2112;
        v31 = neededCopy;
        v32 = 2048;
        v33 = 0x4000000000000000;
        v34 = 2048;
        v35 = v18;
        _os_log_impl(&dword_2441FB000, v17, OS_LOG_TYPE_DEFAULT, "%s: Device with mediaRouteIdentifier %@ not found. Waiting %fs and trying again %zu more times", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      v19 = dispatch_time(0, 2000000000);
      v20 = self->_internalQueue;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke_23;
      v23[3] = &unk_278E0BC80;
      objc_copyWeak(v27, buf);
      v24 = neededCopy;
      v25 = passwordCopy;
      v27[1] = v18;
      v26 = completionCopy;
      dispatch_after(v19, v20, v23);

      objc_destroyWeak(v27);
      objc_destroyWeak(buf);
    }
  }
}

void __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = ContinuitySingLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[CSPairingMessagingClient _pairWithMediaRouteIdentifierIfNeeded:password:attempts:completion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2048;
      v14 = 0x4000000000000000;
      _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: Retrying to pair with mediaRouteIdentifier %@ after waiting %fs", &v9, 0x20u);
    }

    [WeakRetained _pairWithMediaRouteIdentifierIfNeeded:*(a1 + 32) password:*(a1 + 40) attempts:*(a1 + 64) completion:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke_23_cold_1(a1);
    }

    v6 = *(a1 + 48);
    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v8 = [v7 initWithDomain:CSPairingErrorDomain code:0 userInfo:0];
    (*(v6 + 16))(v6, 0, v8);
  }
}

- (void)_pairWithDeviceIfNeeded:(id)needed password:(id)password completion:(id)completion
{
  neededCopy = needed;
  passwordCopy = password;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  v11 = [neededCopy statusFlags] & 0x500008A000;
  idsDeviceIdentifier = [neededCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    idsDeviceIdentifier2 = [neededCopy idsDeviceIdentifier];
    mediaRouteIdentifier = [neededCopy mediaRouteIdentifier];
    v15 = [idsDeviceIdentifier2 isEqual:mediaRouteIdentifier];
  }

  else
  {
    v15 = 1;
  }

  v16 = ContinuitySingLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v11 == 0];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(neededCopy, "statusFlags")}];
    v22 = 136315906;
    v23 = "[CSPairingMessagingClient _pairWithDeviceIfNeeded:password:completion:]";
    v24 = 2112;
    v25 = neededCopy;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&dword_2441FB000, v16, OS_LOG_TYPE_DEFAULT, "%s: Device %@ needs to pair? %@; status: %@", &v22, 0x2Au);
  }

  v19 = ContinuitySingLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v15)
    {
      if (v20)
      {
        v22 = 136315394;
        v23 = "[CSPairingMessagingClient _pairWithDeviceIfNeeded:password:completion:]";
        v24 = 2112;
        v25 = neededCopy;
        _os_log_impl(&dword_2441FB000, v19, OS_LOG_TYPE_DEFAULT, "%s: Need to ping device for info %@", &v22, 0x16u);
      }

      [(CSPairingMessagingClient *)self _sendPingToDevice:neededCopy completion:completionCopy];
    }

    else
    {
      if (v20)
      {
        v22 = 136315394;
        v23 = "[CSPairingMessagingClient _pairWithDeviceIfNeeded:password:completion:]";
        v24 = 2112;
        v25 = neededCopy;
        _os_log_impl(&dword_2441FB000, v19, OS_LOG_TYPE_DEFAULT, "%s: Device already paired %@", &v22, 0x16u);
      }

      v21 = [[CSPairingDevice alloc] initWithRPCompanionLinkDevice:neededCopy];
      completionCopy[2](completionCopy, v21, 0);
    }
  }

  else
  {
    if (v20)
    {
      v22 = 136315394;
      v23 = "[CSPairingMessagingClient _pairWithDeviceIfNeeded:password:completion:]";
      v24 = 2112;
      v25 = neededCopy;
      _os_log_impl(&dword_2441FB000, v19, OS_LOG_TYPE_DEFAULT, "%s: Requesting to pair with %@", &v22, 0x16u);
    }

    [(CSPairingMessagingClient *)self _pairWithDevice:neededCopy password:passwordCopy completion:completionCopy];
  }
}

- (void)_pairWithDevice:(id)device password:(id)password completion:(id)completion
{
  deviceCopy = device;
  passwordCopy = password;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  if (!passwordCopy)
  {
    v19 = ContinuitySingLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CSPairingMessagingClient _pairWithDevice:password:completion:];
    }

    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = CSPairingErrorDomain;
    v18 = 4;
    goto LABEL_9;
  }

  p_pairingClient = &self->_pairingClient;
  pairingClient = self->_pairingClient;
  v13 = ContinuitySingLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (pairingClient)
  {
    if (v14)
    {
      destinationDevice = [(RPCompanionLinkClient *)*p_pairingClient destinationDevice];
      *buf = 136315394;
      *&buf[4] = "[CSPairingMessagingClient _pairWithDevice:password:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = destinationDevice;
      _os_log_impl(&dword_2441FB000, v13, OS_LOG_TYPE_DEFAULT, "%s: Pairing in progress with %@", buf, 0x16u);
    }

    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = CSPairingErrorDomain;
    v18 = 0;
LABEL_9:
    v20 = [v16 initWithDomain:v17 code:v18 userInfo:0];
    completionCopy[2](completionCopy, 0, v20);

    goto LABEL_13;
  }

  if (v14)
  {
    *buf = 136315394;
    *&buf[4] = "[CSPairingMessagingClient _pairWithDevice:password:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = deviceCopy;
    _os_log_impl(&dword_2441FB000, v13, OS_LOG_TYPE_DEFAULT, "%s: Pair with %@", buf, 0x16u);
  }

  objc_initWeak(location, self);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v69 = 0;
  v21 = self->_callbackQueue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke;
  aBlock[3] = &unk_278E0BCD0;
  v41 = v21;
  v64 = v41;
  v66 = buf;
  objc_copyWeak(&v67, location);
  v65 = completionCopy;
  v22 = _Block_copy(aBlock);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_3;
  v60[3] = &unk_278E0BCF8;
  v23 = deviceCopy;
  v61 = v23;
  v24 = v22;
  v62 = v24;
  v25 = _Block_copy(v60);
  v26 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
  pairingTimer = self->_pairingTimer;
  self->_pairingTimer = v26;

  v28 = self->_pairingTimer;
  v29 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0);
  v30 = self->_pairingTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_27;
  handler[3] = &unk_278E0BD20;
  v31 = v23;
  v56 = v31;
  objc_copyWeak(&v59, location);
  v32 = v25;
  v57 = v32;
  v33 = v24;
  v58 = v33;
  dispatch_source_set_event_handler(v30, handler);
  dispatch_resume(self->_pairingTimer);
  v34 = objc_alloc_init(MEMORY[0x277D44160]);
  [v34 setDispatchQueue:self->_internalQueue];
  [v34 setDestinationDevice:v31];
  [v34 setServiceType:@"com.apple.ContinuitySingPairing"];
  [v34 setFlags:1];
  [v34 setControlFlags:{-[RPCompanionLinkClient controlFlags](self->_rpClient, "controlFlags")}];
  [v34 setPasswordType:7];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31;
  v51[3] = &unk_278E0BD48;
  objc_copyWeak(&v54, location);
  v35 = v33;
  v53 = v35;
  v52 = passwordCopy;
  [v34 setPromptForPasswordHandler:v51];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_33;
  v48[3] = &unk_278E0BD70;
  v36 = v35;
  v50 = v36;
  v37 = v31;
  v49 = v37;
  [v34 setAuthCompletionHandler:v48];
  objc_storeStrong(p_pairingClient, v34);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_34;
  v42[3] = &unk_278E0BDC0;
  objc_copyWeak(&v47, location);
  v38 = v36;
  v45 = v38;
  v39 = v32;
  v46 = v39;
  v40 = v34;
  v43 = v40;
  v44 = v37;
  [v40 activateWithCompletion:v42];

  objc_destroyWeak(&v47);
  objc_destroyWeak(&v54);

  objc_destroyWeak(&v59);
  objc_destroyWeak(&v67);

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(location);
LABEL_13:
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_2;
  block[3] = &unk_278E0BCA8;
  v15 = *(a1 + 48);
  objc_copyWeak(&v16, (a1 + 56));
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v16);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      [WeakRetained _endPairingClient];
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[CSPairingDevice alloc] initWithRPCompanionLinkDevice:v3];
    v5 = [(CSPairingDevice *)v4 mediaRouteIdentifier];
    v6 = [*(a1 + 32) mediaRouteIdentifier];
    v7 = [v5 isEqual:v6];

    v8 = [(CSPairingDevice *)v4 idsDeviceIdentifier];
    v9 = [(CSPairingDevice *)v4 mediaRouteIdentifier];
    v10 = [v8 isEqualToString:v9];

    v11 = [(CSPairingDevice *)v3 statusFlags]& 0x500008A000;
    v12 = ContinuitySingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = [MEMORY[0x277CCABB0] numberWithBool:v11 != 0];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "statusFlags")}];
      v18 = 136315906;
      v19 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke_3";
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_2441FB000, v12, OS_LOG_TYPE_DEFAULT, "%s: Found waiting for pairing device %@; paired: %@, status: %@", &v18, 0x2Au);
    }

    if (!(v10 & 1 | ((v7 & 1) == 0)))
    {
      v16 = ContinuitySingLog();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v17)
        {
          v18 = 136315394;
          v19 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
          v20 = 2112;
          v21 = v4;
          _os_log_impl(&dword_2441FB000, v16, OS_LOG_TYPE_DEFAULT, "%s: New paired device found: %@", &v18, 0x16u);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (v17)
        {
          v18 = 136315394;
          v19 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
          v20 = 2112;
          v21 = v3;
          _os_log_impl(&dword_2441FB000, v16, OS_LOG_TYPE_DEFAULT, "%s: Device found, but missing paired flag, waiting for fully paired device: %@", &v18, 0x16u);
        }
      }
    }
  }
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_27(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_27_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) mediaRouteIdentifier];
    v5 = [WeakRetained deviceForMediaRouteIdentifier:v4];

    (*(*(a1 + 40) + 16))();
  }

  v6 = *(a1 + 48);
  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v8 = [v7 initWithDomain:CSPairingErrorDomain code:2 userInfo:0];
  (*(v6 + 16))(v6, 0, v8);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ((a2 & 0x10000) != 0)
  {
    v8 = ContinuitySingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31_cold_1(v8);
    }

    v9 = *(a1 + 40);
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = CSPairingErrorDomain;
    v12 = 4;
    goto LABEL_12;
  }

  v5 = ContinuitySingLog();
  v6 = v5;
  if (!WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31_cold_2(v6);
    }

    v9 = *(a1 + 40);
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = CSPairingErrorDomain;
    v12 = 0;
LABEL_12:
    v7 = [v10 initWithDomain:v11 code:v12 userInfo:0];
    (*(v9 + 16))(v9, 0, v7);
    goto LABEL_13;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: Enter password to pair", &v13, 0xCu);
  }

  v7 = [WeakRetained pairingClient];
  [v7 tryPassword:*(a1 + 32)];
LABEL_13:
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_33_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Authentication completed with %@", &v7, 0x16u);
    }
  }
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3 || !WeakRetained)
  {
    v11 = ContinuitySingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_34_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_35;
    aBlock[3] = &unk_278E0BD98;
    v17 = *(a1 + 56);
    v6 = _Block_copy(aBlock);
    v7 = v5[9];
    v5[9] = v6;

    [*(a1 + 32) invalidate];
    v8 = [*(a1 + 40) mediaRouteIdentifier];
    v9 = [v5 deviceForMediaRouteIdentifier:v8];

    v10 = ContinuitySingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2441FB000, v10, OS_LOG_TYPE_DEFAULT, "%s: Pairing completed with rpDevice %@", &v12, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: Nearby device found while waiting for pairing: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_sendPingToDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  v8 = objc_alloc_init(MEMORY[0x277D44160]);
  [v8 setDestinationDevice:deviceCopy];
  [v8 setControlFlags:{-[RPCompanionLinkClient controlFlags](self->_rpClient, "controlFlags")}];
  [v8 setFlags:{-[RPCompanionLinkClient flags](self->_rpClient, "flags")}];
  v9 = self->_callbackQueue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke;
  aBlock[3] = &unk_278E0BDE8;
  v21 = v9;
  v22 = completionCopy;
  v10 = completionCopy;
  v11 = v9;
  v12 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_3;
  v16[3] = &unk_278E0BE10;
  v18 = deviceCopy;
  v19 = v12;
  v17 = v8;
  v13 = deviceCopy;
  v14 = v12;
  v15 = v8;
  [v15 activateWithCompletion:v16];
}

void __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_2;
  block[3] = &unk_278E0ADF0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_3_cold_1();
    }

    [*(a1 + 32) invalidate];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 136315394;
      v19 = "[CSPairingMessagingClient _sendPingToDevice:completion:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Pinging device for info %@", buf, 0x16u);
    }

    v16 = @"ACK";
    v7 = [MEMORY[0x277CBEB68] null];
    v17 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v9 = *(a1 + 32);
    v14 = *MEMORY[0x277D44260];
    v15 = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_37;
    v11[3] = &unk_278E0AFF8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    [v9 sendRequestID:@"com.apple.CSPingRequestID" request:v8 options:v10 responseHandler:v11];
  }
}

void __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_37(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = ContinuitySingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_37_cold_1();
    }

    [*(a1 + 32) invalidate];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442C0]];
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442D0]];
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442E0]];
    v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442A8]];
    v13 = *MEMORY[0x277D442E8];
    v14 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442E8]];
    if (v14)
    {
      v15 = [v6 objectForKeyedSubscript:v13];
      v16 = [v15 unsignedIntValue];
    }

    else
    {
      v16 = 0;
    }

    v17 = objc_alloc_init(CSPairingDevice);
    [(CSPairingDevice *)v17 setName:v9];
    [(CSPairingDevice *)v17 setIdsDeviceIdentifier:v10];
    [(CSPairingDevice *)v17 setSessionPairingIdentifier:v11];
    [(CSPairingDevice *)v17 setPeerVerifiedIdentifier:v12];
    [(CSPairingDevice *)v17 setStatusFlags:v16];
    v18 = ContinuitySingLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[CSPairingMessagingClient _sendPingToDevice:completion:]_block_invoke";
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_2441FB000, v18, OS_LOG_TYPE_DEFAULT, "%s: Received ack from: %@", &v19, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)requestGroupSessionTokenFromIdentifer:(id)identifer completion:(id)completion
{
  identiferCopy = identifer;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CSPairingMessagingClient_requestGroupSessionTokenFromIdentifer_completion___block_invoke;
  block[3] = &unk_278E0BE38;
  block[4] = self;
  v12 = identiferCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identiferCopy;
  dispatch_async(internalQueue, block);
}

- (void)_requestGroupSessionTokenFromIdentifer:(id)identifer attempts:(int64_t)attempts completion:(id)completion
{
  identiferCopy = identifer;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  v10 = [(CSPairingMessagingClient *)self deviceForRemoteDisplayIdentifier:identiferCopy];
  if (v10)
  {
    if (self->_pendingGroupSessionTokenCompletionHandlers)
    {
      v11 = ContinuitySingLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v39 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]";
        _os_log_impl(&dword_2441FB000, v11, OS_LOG_TYPE_DEFAULT, "%s: Pending request in progress, add to pending completions", buf, 0xCu);
      }

      pendingGroupSessionTokenCompletionHandlers = self->_pendingGroupSessionTokenCompletionHandlers;
      v13 = _Block_copy(completionCopy);
      [(NSMutableArray *)pendingGroupSessionTokenCompletionHandlers addObject:v13];

      goto LABEL_15;
    }

    array = [MEMORY[0x277CBEB18] array];
    v19 = self->_pendingGroupSessionTokenCompletionHandlers;
    self->_pendingGroupSessionTokenCompletionHandlers = array;

    if (completionCopy)
    {
      v20 = self->_pendingGroupSessionTokenCompletionHandlers;
      v21 = _Block_copy(completionCopy);
      [(NSMutableArray *)v20 addObject:v21];
    }

    v22 = objc_alloc_init(MEMORY[0x277D44160]);
    [v22 setDestinationDevice:v10];
    [v22 setControlFlags:{-[RPCompanionLinkClient controlFlags](self->_rpClient, "controlFlags")}];
    [v22 setFlags:{-[RPCompanionLinkClient flags](self->_rpClient, "flags")}];
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_39;
    aBlock[3] = &unk_278E0BE88;
    objc_copyWeak(&v33, buf);
    v23 = _Block_copy(aBlock);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_2;
    v27[3] = &unk_278E0BEB0;
    v28 = identiferCopy;
    v24 = v22;
    v29 = v24;
    v25 = v23;
    v31 = v25;
    v30 = v10;
    [v24 activateWithCompletion:v27];

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
LABEL_14:

    goto LABEL_15;
  }

  if (attempts < 2)
  {
    v26 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = [v26 initWithDomain:CSPairingErrorDomain code:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v24);
    goto LABEL_14;
  }

  v14 = (attempts - 1);
  v15 = ContinuitySingLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v39 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]";
    v40 = 2112;
    v41 = identiferCopy;
    v42 = 2048;
    v43 = 0x4000000000000000;
    v44 = 2048;
    v45 = v14;
    _os_log_impl(&dword_2441FB000, v15, OS_LOG_TYPE_DEFAULT, "%s: Device with remoteDisplayIdentifier %@ not found. Waiting %fs and trying again %zu more times", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v16 = dispatch_time(0, 2000000000);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke;
  block[3] = &unk_278E0BE60;
  objc_copyWeak(v37, buf);
  v35 = identiferCopy;
  v37[1] = v14;
  v36 = completionCopy;
  dispatch_after(v16, internalQueue, block);

  objc_destroyWeak(v37);
  objc_destroyWeak(buf);
LABEL_15:
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = ContinuitySingLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2048;
      v14 = 0x4000000000000000;
      _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: Rerequesting group session token from %@ after waiting %fs", &v9, 0x20u);
    }

    [WeakRetained _requestGroupSessionTokenFromIdentifer:*(a1 + 32) attempts:*(a1 + 56) completion:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_cold_1(a1);
    }

    v6 = *(a1 + 40);
    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v8 = [v7 initWithDomain:CSPairingErrorDomain code:0 userInfo:0];
    (*(v6 + 16))(v6, 0, v8);
  }
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _completePendingGroupSessionTokenRequests:v8 error:v5];
  }
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 40) invalidate];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      *buf = 136315394;
      v18 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]_block_invoke";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Requesting device for group session info %@", buf, 0x16u);
    }

    v7 = objc_alloc_init(CSGroupSessionTokenRequest);
    v8 = *(a1 + 40);
    v9 = CSIdentifierForMessageID(18);
    v10 = [(CSMessage *)v7 dictionaryRepresentation];
    v15 = *MEMORY[0x277D44260];
    v16 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_42;
    v12[3] = &unk_278E0AFF8;
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    [v8 sendRequestID:v9 request:v10 options:v11 responseHandler:v12];
  }
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_42(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = ContinuitySingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_42_cold_1();
    }

    [*(a1 + 32) invalidate];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [[CSGroupSessionTokenResponse alloc] initWithMessage:v6];
    v10 = ContinuitySingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CSGroupSessionTokenResponse *)v9 urlString];
      v14 = 136315394;
      v15 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]_block_invoke";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2441FB000, v10, OS_LOG_TYPE_DEFAULT, "%s: Received group session token: %@", &v14, 0x16u);
    }

    v12 = *(a1 + 40);
    v13 = [(CSGroupSessionTokenResponse *)v9 urlString];
    (*(v12 + 16))(v12, v13, 0);
  }
}

- (void)_completePendingGroupSessionTokenRequests:(id)requests error:(id)error
{
  requestsCopy = requests;
  errorCopy = error;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CSPairingMessagingClient__completePendingGroupSessionTokenRequests_error___block_invoke;
  block[3] = &unk_278E0AE18;
  block[4] = self;
  v12 = requestsCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requestsCopy;
  dispatch_async(internalQueue, block);
}

void __76__CSPairingMessagingClient__completePendingGroupSessionTokenRequests_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = 0;

  v5 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CSPairingMessagingClient__completePendingGroupSessionTokenRequests_error___block_invoke_2;
  block[3] = &unk_278E0AE18;
  v8 = v2;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6 = v2;
  dispatch_async(v5, block);
}

void __76__CSPairingMessagingClient__completePendingGroupSessionTokenRequests_error___block_invoke_2(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        (*(*(*(&v10 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }
}

- (void)_endPairingClient
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CSPairingMessagingClient__endPairingClient__block_invoke;
  block[3] = &unk_278E0ACD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __45__CSPairingMessagingClient__endPairingClient__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSPairingMessagingClient _endPairingClient]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: End pairing client", &v6, 0xCu);
  }

  v3 = [*(a1 + 32) pairingClient];
  [v3 invalidate];

  [*(a1 + 32) setPairingClient:0];
  v4 = [*(a1 + 32) pairingTimer];
  dispatch_source_cancel(v4);

  [*(a1 + 32) setPairingTimer:0];
  return [*(a1 + 32) setPendingPairingNearbyDeviceUpdateBlock:0];
}

void __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke_23_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v2, v3, "%s: self deallocated when retrying to pair with mediaRouteIdentifier %@", v4, v5, v6, v7, 2u);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_27_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v2, v3, "%s: Pairing timed out for %@", v4, v5, v6, v7, 2u);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31_cold_1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Password entered incorrect, end pairing", &v1, 0xCu);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31_cold_2(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Pairing ended unexpectedly", &v1, 0xCu);
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v2, v3, "%s: self deallocated when retrying to request session from remoteDisplayIdentifier %@", v4, v5, v6, v7, 2u);
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = 136315650;
  OUTLINED_FUNCTION_3();
  v6 = v2;
  v7 = v3;
  _os_log_error_impl(&dword_2441FB000, v4, OS_LOG_TYPE_ERROR, "%s: Error activating client to %@ to request group session token: %@", v5, 0x20u);
}

@end