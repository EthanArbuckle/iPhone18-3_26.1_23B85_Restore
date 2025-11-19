@interface DDUICoreAgent
+ (id)sharedInstance;
- (_DDUINotificationManager)notificationManager;
- (void)_handleIncomingContinuityCameraConfirmation:(id)a3;
- (void)_handleIncomingPairingSession:(id)a3 pairingMessage:(id)a4;
- (void)_setupDDUIServiceIfNeededWithCompletion:(id)a3;
- (void)_setupListenerIfNeededWithCompletion:(id)a3;
- (void)_showNotificationForPairingSession:(id)a3 pairingMessage:(id)a4;
- (void)_startOnQueue;
- (void)start;
- (void)startNFCServerWithLocalIdentity:(id)a3 listenerUUID:(id)a4 remotePublicKey:(id)a5 contactID:(id)a6 deviceModel:(id)a7 deviceName:(id)a8;
- (void)stopNFCServer;
@end

@implementation DDUICoreAgent

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DDUICoreAgent_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __31__DDUICoreAgent_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)start
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "Starting up DDUICoreAgent {self: %@}", buf, 0xCu);
  }

  v4 = DDUICorePrimaryQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__DDUICoreAgent_start__block_invoke;
  block[3] = &unk_2788F5A68;
  block[4] = self;
  dispatch_async(v4, block);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)startNFCServerWithLocalIdentity:(id)a3 listenerUUID:(id)a4 remotePublicKey:(id)a5 contactID:(id)a6 deviceModel:(id)a7 deviceName:(id)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = self;
    _os_log_impl(&dword_230EF9000, v20, OS_LOG_TYPE_DEFAULT, "Starting NFC server {self: %@}", buf, 0xCu);
  }

  v21 = DDUICorePrimaryQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__DDUICoreAgent_startNFCServerWithLocalIdentity_listenerUUID_remotePublicKey_contactID_deviceModel_deviceName___block_invoke;
  block[3] = &unk_2788F5A90;
  block[4] = self;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v14;
  dispatch_async(v21, block);

  v28 = *MEMORY[0x277D85DE8];
}

void __111__DDUICoreAgent_startNFCServerWithLocalIdentity_listenerUUID_remotePublicKey_contactID_deviceModel_deviceName___block_invoke(id *a1)
{
  [a1[4] _startOnQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __111__DDUICoreAgent_startNFCServerWithLocalIdentity_listenerUUID_remotePublicKey_contactID_deviceModel_deviceName___block_invoke_2;
  v7[3] = &unk_2788F5A90;
  v6 = *(a1 + 2);
  v2 = *(&v6 + 1);
  v3 = a1[6];
  v4 = a1[7];
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  [v6 _setupDDUIServiceIfNeededWithCompletion:v7];
}

void __111__DDUICoreAgent_startNFCServerWithLocalIdentity_listenerUUID_remotePublicKey_contactID_deviceModel_deviceName___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dduiService];
  [v2 startNearFieldServerWithLocalIdentity:*(a1 + 40) listenerUUID:*(a1 + 48) remotePublicKey:*(a1 + 56) contactID:*(a1 + 64) deviceModel:*(a1 + 72) deviceName:*(a1 + 80) completionHandler:&__block_literal_global_0];
}

void __111__DDUICoreAgent_startNFCServerWithLocalIdentity_listenerUUID_remotePublicKey_contactID_deviceModel_deviceName___block_invoke_3()
{
  v0 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_230EF9000, v0, OS_LOG_TYPE_DEFAULT, "did start NFC server", v1, 2u);
  }
}

- (void)stopNFCServer
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "Stopping NFC server {self: %@}", buf, 0xCu);
  }

  v4 = DDUICorePrimaryQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__DDUICoreAgent_stopNFCServer__block_invoke;
  block[3] = &unk_2788F5A68;
  block[4] = self;
  dispatch_async(v4, block);

  v5 = *MEMORY[0x277D85DE8];
}

void __30__DDUICoreAgent_stopNFCServer__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 32) dduiService];
    [v2 stopNearFieldServer];
  }
}

- (void)_startOnQueue
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_started)
  {
    self->_started = 1;
    v3 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "Setup event stream handler {self: %@}", buf, 0xCu);
    }

    v4 = DDUICorePrimaryQueue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__DDUICoreAgent__startOnQueue__block_invoke;
    handler[3] = &unk_2788F5AE0;
    handler[4] = self;
    xpc_set_event_stream_handler("com.apple.rapport.matching", v4, handler);

    v5 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
    [v5 activateWithCompletion:&__block_literal_global_9];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __30__DDUICoreAgent__startOnQueue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__DDUICoreAgent__startOnQueue__block_invoke_2;
  aBlock[3] = &unk_2788F5A68;
  v4 = v3;
  v16 = v4;
  v5 = _Block_copy(aBlock);
  string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86430]);
  if (string)
  {
    v7 = string;
    if (!strcmp(string, "com.apple.devicediscoveryui.rapportwake"))
    {
      v8 = *(a1 + 32);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __30__DDUICoreAgent__startOnQueue__block_invoke_3;
      v13[3] = &unk_2788F5AB8;
      v14 = v5;
      [v8 _setupListenerIfNeededWithCompletion:v13];
      v9 = v14;
    }

    else
    {
      if (strcmp(v7, "com.apple.DDUI-Picker"))
      {
        v5[2](v5);
        goto LABEL_8;
      }

      v10 = *(a1 + 32);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __30__DDUICoreAgent__startOnQueue__block_invoke_2_5;
      v11[3] = &unk_2788F5AB8;
      v12 = v5;
      [v10 _setupDDUIServiceIfNeededWithCompletion:v11];
      v9 = v12;
    }
  }

LABEL_8:
}

void __30__DDUICoreAgent__startOnQueue__block_invoke_2(uint64_t a1)
{
  if (xpc_dictionary_get_BOOL(*(a1 + 32), "replyRequired"))
  {
    v2 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_230EF9000, v2, OS_LOG_TYPE_DEFAULT, "configureXPC -- sending reply", v4, 2u);
    }

    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      xpc_dictionary_send_reply();
    }
  }
}

- (void)_setupListenerIfNeededWithCompletion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_endpointPairingListener)
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy_;
    v17[4] = __Block_byref_object_dispose_;
    v18 = _Block_copy(v4);
    v6 = [DDUIEndpointPairingListener alloc];
    v7 = DDUIEndpointPairingListeningTransportForOptions(-1);
    v8 = [(DDUIEndpointPairingListener *)v6 initWithTransport:v7];
    endpointPairingListener = self->_endpointPairingListener;
    self->_endpointPairingListener = v8;

    v10 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_endpointPairingListener;
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_230EF9000, v10, OS_LOG_TYPE_DEFAULT, "setupDDUIListenerIfNeeded, created listener for all available transports {endpointPairingListener: %@}", buf, 0xCu);
    }

    v12 = self->_endpointPairingListener;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__DDUICoreAgent__setupListenerIfNeededWithCompletion___block_invoke;
    v16[3] = &unk_2788F5B28;
    v16[4] = v17;
    v14[4] = v17;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__DDUICoreAgent__setupListenerIfNeededWithCompletion___block_invoke_11;
    v15[3] = &unk_2788F5B50;
    v15[4] = self;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__DDUICoreAgent__setupListenerIfNeededWithCompletion___block_invoke_13;
    v14[3] = &unk_2788F5B78;
    [(DDUIEndpointPairingListener *)v12 beginListeningWithErrorHandler:v16 pairingHandler:v15 completion:v14];
    _Block_object_dispose(v17, 8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__DDUICoreAgent__setupListenerIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "setupDDUIListenerIfNeeded, received an error {listenError: %@}", &v9, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  if (v6)
  {
    (*(v6 + 16))();
    v5 = *(*(a1 + 32) + 8);
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0;
  }

  *(v5 + 40) = 0;

  v8 = *MEMORY[0x277D85DE8];
}

void __54__DDUICoreAgent__setupListenerIfNeededWithCompletion___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 remoteDevice];
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_230EF9000, v7, OS_LOG_TYPE_DEFAULT, "setupDDUIListenerIfNeeded, incoming pairing session {pairInitiateMessage: %@, pairingSession: %@ remoteDevice %@}", &v12, 0x20u);
  }

  v9 = [v5 sessionType];
  v10 = *(a1 + 32);
  if (v9 == 1)
  {
    [v10 _handleIncomingContinuityCameraConfirmation:v5];
  }

  else
  {
    [v10 _handleIncomingPairingSession:v5 pairingMessage:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __54__DDUICoreAgent__setupListenerIfNeededWithCompletion___block_invoke_13(uint64_t a1)
{
  v2 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_230EF9000, v2, OS_LOG_TYPE_DEFAULT, "setupDDUIListenerIfNeeded, began", v6, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    (*(v4 + 16))();
    v3 = *(*(a1 + 32) + 8);
    v5 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
  }

  *(v3 + 40) = 0;
}

- (void)_setupDDUIServiceIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl() && !self->_dduiService)
  {
    v5 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Creating DDUI service", buf, 2u);
    }

    v6 = objc_alloc_init(_TtC21DeviceDiscoveryUICore11DDUIService);
    dduiService = self->_dduiService;
    self->_dduiService = v6;

    v8 = self->_dduiService;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__DDUICoreAgent__setupDDUIServiceIfNeededWithCompletion___block_invoke;
    v9[3] = &unk_2788F5AB8;
    v10 = v4;
    [(DDUIService *)v8 startServerWithCompletionHandler:v9];
  }

  else
  {
    v4[2](v4);
  }
}

uint64_t __57__DDUICoreAgent__setupDDUIServiceIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_230EF9000, v2, OS_LOG_TYPE_INFO, "DDUI service started.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_handleIncomingPairingSession:(id)a3 pairingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DDUICoreAgent *)self notificationManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__DDUICoreAgent__handleIncomingPairingSession_pairingMessage___block_invoke;
  v23[3] = &unk_2788F5BA0;
  v24 = v6;
  v25 = v8;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__DDUICoreAgent__handleIncomingPairingSession_pairingMessage___block_invoke_17;
  v20[3] = &unk_2788F5BC8;
  v9 = v24;
  v21 = v9;
  v22 = v25;
  v10 = v25;
  [v9 activateWithErrorHandler:v23 completionHandler:v20];
  v11 = [v7 applicationInfo];
  v12 = [v11 bundleIDPrefixedServiceIdentifier];

  endpointPairingListener = self->_endpointPairingListener;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__DDUICoreAgent__handleIncomingPairingSession_pairingMessage___block_invoke_19;
  v16[3] = &unk_2788F5BF0;
  v17 = v9;
  v18 = self;
  v19 = v7;
  v14 = v7;
  v15 = v9;
  [(DDUIEndpointPairingListener *)endpointPairingListener checkIfUserNeedsReconfirmationForSession:v15 withServiceIdentifier:v12 completion:v16];
}

void __62__DDUICoreAgent__handleIncomingPairingSession_pairingMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__DDUICoreAgent__handleIncomingPairingSession_pairingMessage___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) sessionID];
  [v5 cancelMessageWithID:v6];
}

void __62__DDUICoreAgent__handleIncomingPairingSession_pairingMessage___block_invoke_17(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "incoming pairingSession, finished pairing {pairingSession: %@, result %d}", &v9, 0x12u);
  }

  if (a2 == 1)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) sessionID];
    [v6 cancelMessageWithID:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __62__DDUICoreAgent__handleIncomingPairingSession_pairingMessage___block_invoke_19(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5 || (a2 & 1) != 0)
  {
    [*(a1 + 40) _showNotificationForPairingSession:*(a1 + 32) pairingMessage:*(a1 + 48)];
  }

  else
  {
    v6 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_230EF9000, v6, OS_LOG_TYPE_DEFAULT, "Responding with existing listener UUID %@", &v9, 0xCu);
    }

    v7 = [[DDUIPairCompleteMessage alloc] initWithNotificationResult:1 listenerUUID:v5];
    [*(a1 + 32) pairWithMessage:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_showNotificationForPairingSession:(id)a3 pairingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DDUICoreAgent *)self notificationManager];
  v9 = [v7 applicationInfo];
  if (v9)
  {
    objc_initWeak(&location, self);
    v10 = [v6 sessionID];
    v11 = [v6 remoteDevice];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__DDUICoreAgent__showNotificationForPairingSession_pairingMessage___block_invoke;
    v12[3] = &unk_2788F5C40;
    objc_copyWeak(&v15, &location);
    v13 = v6;
    v14 = v9;
    [v8 handleApplicationInfo:v14 withID:v10 fromDevice:v11 completionHandler:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __67__DDUICoreAgent__showNotificationForPairingSession_pairingMessage___block_invoke(id *a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (a2 == 1)
  {
    v6 = *(WeakRetained + 2);
    v7 = a1[4];
    v8 = [a1[5] bundleIDPrefixedServiceIdentifier];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__DDUICoreAgent__showNotificationForPairingSession_pairingMessage___block_invoke_2;
    v10[3] = &unk_2788F5C18;
    v11 = a1[4];
    [v6 createListenerMappingForSession:v7 withServiceIdentifier:v8 completion:v10];
  }

  else
  {
    v9 = [[DDUIPairCompleteMessage alloc] initWithNotificationResult:a2];
    [a1[4] pairWithMessage:v9];
  }
}

void __67__DDUICoreAgent__showNotificationForPairingSession_pairingMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "Received listener uuid %@", &v10, 0xCu);
  }

  v5 = [DDUIPairCompleteMessage alloc];
  if (v3)
  {
    v6 = 1;
    v7 = v3;
  }

  else
  {
    v6 = 6;
    v7 = 0;
  }

  v8 = [(DDUIPairCompleteMessage *)v5 initWithNotificationResult:v6 listenerUUID:v7];
  [*(a1 + 32) pairWithMessage:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (_DDUINotificationManager)notificationManager
{
  notificationManager = self->_notificationManager;
  if (!notificationManager)
  {
    v4 = objc_alloc_init(_DDUINotificationManager);
    v5 = self->_notificationManager;
    self->_notificationManager = v4;

    notificationManager = self->_notificationManager;
  }

  return notificationManager;
}

- (void)_handleIncomingContinuityCameraConfirmation:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DDUICoreAgent *)self notificationManager];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke;
  v51[3] = &unk_2788F5BA0;
  v52 = v4;
  v53 = v5;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke_24;
  v48[3] = &unk_2788F5BC8;
  v6 = v52;
  v49 = v6;
  v7 = v53;
  v50 = v7;
  [v6 activateWithErrorHandler:v51 completionHandler:v48];
  v8 = [v6 incomingMessage];
  v9 = [v8 objectForKeyedSubscript:@"actionType"];

  if ([v9 unsignedIntValue] == 1)
  {
    v10 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
    v11 = [v10 shouldAutoAcceptCCConfirmation];

    v12 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 remoteDevice];
      v14 = [v13 identifier];
      *buf = 138412546;
      v55 = v14;
      v56 = 1024;
      v57 = v11;
      _os_log_impl(&dword_230EF9000, v12, OS_LOG_TYPE_DEFAULT, "Incoming continuity camera confirmation request from: %@, shouldByPassConfirmation: %d", buf, 0x12u);
    }

    if (!v11)
    {
      v30 = [v6 sessionID];
      v31 = [v6 remoteDevice];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke_29;
      v46[3] = &unk_2788F5C68;
      v47 = v6;
      [v7 handleContinuityCameraConfirmationWithID:v30 fromDevice:v31 completionHandler:v46];

      v19 = v47;
      goto LABEL_22;
    }

    v15 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
    v16 = [v6 remoteDevice];
    v17 = [v16 identifier];
    v18 = @"Automatic Accept";
    goto LABEL_6;
  }

  if ([v9 unsignedIntValue] != 3)
  {
    if ([v9 unsignedIntValue] != 4)
    {
      v37 = [v6 sessionID];
      [v7 cancelMessageWithID:v37];

      v19 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
      [(DDUIPairCompleteMessage *)v19 cancelCurrentProxCard];
      goto LABEL_22;
    }

    v32 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
    v33 = [v32 shouldAutoAcceptCCConfirmation];

    v34 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v6 remoteDevice];
      v36 = [v35 identifier];
      *buf = 138412546;
      v55 = v36;
      v56 = 1024;
      v57 = v33;
      _os_log_impl(&dword_230EF9000, v34, OS_LOG_TYPE_DEFAULT, "Incoming continuity mic-only confirmation request from: %@, shouldByPassConfirmation: %d", buf, 0x12u);
    }

    if (!v33)
    {
      v38 = [v6 sessionID];
      v39 = [v6 remoteDevice];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke_37;
      v41[3] = &unk_2788F5C68;
      v42 = v6;
      [v7 handleMicOnlyConfirmationWithID:v38 fromDevice:v39 completionHandler:v41];

      v19 = v42;
      goto LABEL_22;
    }

    v15 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
    v16 = [v6 remoteDevice];
    v17 = [v16 identifier];
    v18 = *MEMORY[0x277D44300];
LABEL_6:
    [v15 enterSessionWithRemoteDeviceID:v17 reason:v18];

    v19 = [[DDUIPairCompleteMessage alloc] initWithNotificationResult:1];
    [v6 pairWithMessage:v19];
    goto LABEL_22;
  }

  v19 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
  v20 = [v6 remoteDevice];
  v21 = [v20 identifier];
  v22 = [(DDUIPairCompleteMessage *)v19 shouldByPassConfirmationForRemoteDeviceID:v21];

  v23 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v6 remoteDevice];
    v25 = [v24 identifier];
    *buf = 138412546;
    v55 = v25;
    v56 = 1024;
    v57 = v22;
    _os_log_impl(&dword_230EF9000, v23, OS_LOG_TYPE_DEFAULT, "Incoming dedicated continuity camera confirmation request from: %@, shouldByPassConfirmation: %d", buf, 0x12u);
  }

  v26 = [v6 remoteDevice];
  v27 = v26;
  if (v22)
  {
    v28 = [v26 identifier];
    [(DDUIPairCompleteMessage *)v19 enterSessionWithRemoteDeviceID:v28 reason:@"Automatic Dedicated Accept"];

    v29 = [[DDUIPairCompleteMessage alloc] initWithNotificationResult:1];
    [v6 pairWithMessage:v29];
  }

  else
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke_33;
    v43[3] = &unk_2788F5BA0;
    v44 = v6;
    v45 = v19;
    [(DDUIPairCompleteMessage *)v45 presentProxCardForDevice:v27 completion:v43];

    v29 = v44;
  }

LABEL_22:
  v40 = *MEMORY[0x277D85DE8];
}

void __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__DDUICoreAgent__handleIncomingPairingSession_pairingMessage___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) sessionID];
  [v5 cancelMessageWithID:v6];
}

void __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke_24(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "incoming pairingSession, finished pairing {pairingSession: %@, result %d}", &v9, 0x12u);
  }

  if (a2 == 1)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) sessionID];
    [v6 cancelMessageWithID:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke_29(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v4 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
    [v4 saveDedicatedDeviceInformation:0];
  }

  v5 = [[DDUIPairCompleteMessage alloc] initWithNotificationResult:a2];
  [*(a1 + 32) pairWithMessage:v5];
}

void __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke_33(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.DeviceDiscoveryUI", "agent");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) remoteDevice];
      v7 = [v6 identifier];
      v19 = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "Dedicated camera request from: %@, declined prox card setup: %@", &v19, 0x16u);
    }

    v8 = [[DDUIPairCompleteMessage alloc] initWithNotificationResult:7];
    v9 = a1 + 32;
  }

  else
  {
    if (v5)
    {
      v10 = [*(a1 + 32) remoteDevice];
      v11 = [v10 identifier];
      v19 = 138412290;
      v20 = v11;
      _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "Dedicated camera request from: %@, accepted prox card setup", &v19, 0xCu);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v9 = a1 + 32;
    v14 = [v12 remoteDevice];
    v15 = [v14 identifier];
    [v13 enterSessionWithRemoteDeviceID:v15 reason:@"Prox Card Dedicated Accept"];

    v16 = *(v9 + 8);
    v17 = [*v9 remoteDevice];
    [v16 saveDedicatedDeviceInformation:v17];

    v8 = [[DDUIPairCompleteMessage alloc] initWithNotificationResult:1];
  }

  [*v9 pairWithMessage:v8];

  v18 = *MEMORY[0x277D85DE8];
}

void __61__DDUICoreAgent__handleIncomingContinuityCameraConfirmation___block_invoke_37(uint64_t a1, uint64_t a2)
{
  v3 = [[DDUIPairCompleteMessage alloc] initWithNotificationResult:a2];
  [*(a1 + 32) pairWithMessage:v3];
}

void __62__DDUICoreAgent__handleIncomingPairingSession_pairingMessage___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_230EF9000, v2, v3, "incoming pairingSession, failed to pair {pairingSession: %@ error %@}");
  v4 = *MEMORY[0x277D85DE8];
}

@end