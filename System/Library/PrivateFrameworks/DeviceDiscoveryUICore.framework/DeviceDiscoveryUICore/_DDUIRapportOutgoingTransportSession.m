@interface _DDUIRapportOutgoingTransportSession
- (DDUIDevice)remoteDevice;
- (_DDUIRapportOutgoingTransportSession)initWithServiceIdentifier:(id)a3;
- (void)activateWithErrorHandler:(id)a3 messageHandler:(id)a4 completion:(id)a5;
- (void)generateNetworkEndpointIdentifierForRemoteDevice:(id)a3 withCompletion:(id)a4;
- (void)handleIncomingMessage:(id)a3 withMessageID:(id)a4;
- (void)invalidate;
- (void)sendMessage:(id)a3 withTimeout:(double)a4 completion:(id)a5;
@end

@implementation _DDUIRapportOutgoingTransportSession

- (_DDUIRapportOutgoingTransportSession)initWithServiceIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15.receiver = self;
  v15.super_class = _DDUIRapportOutgoingTransportSession;
  v6 = [(_DDUIRapportOutgoingTransportSession *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceIdentifier, a3);
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    sessionID = v7->_sessionID;
    v7->_sessionID = v9;

    v11 = _DDUICoreRapportLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7->_sessionID;
      *buf = 134218242;
      v17 = v7;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "[_DDUIRapportOutgoingTransportSession init] {self: %p, sessionID: %@}", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (DDUIDevice)remoteDevice
{
  v3 = [_DDUIRapportDevice alloc];
  v4 = [(RPCompanionLinkClient *)self->_client destinationDevice];
  v5 = [(_DDUIRapportDevice *)v3 initWithRPCompanionLinkDevice:v4];

  return v5;
}

- (void)generateNetworkEndpointIdentifierForRemoteDevice:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = self;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession generating mapping {self: %p}", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277D44150]);
  v10 = [(_DDUIRapportOutgoingTransportSession *)self serviceIdentifier];
  v11 = [(_DDUIRapportOutgoingTransportSession *)self client];
  v12 = [v11 destinationDevice];
  v13 = [v12 identifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104___DDUIRapportOutgoingTransportSession_generateNetworkEndpointIdentifierForRemoteDevice_withCompletion___block_invoke;
  v16[3] = &unk_2788F5DA8;
  v16[4] = self;
  v17 = v6;
  v14 = v6;
  [v9 createEndpointToDeviceMapping:v10 deviceID:v13 endpointID:v7 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingMessage:(id)a3 withMessageID:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession - incoming ResponderMessage {self: %p, messageID: %@, message: %@}", &v11, 0x20u);
  }

  v9 = [(_DDUIRapportOutgoingTransportSession *)self messageHandler];
  (v9)[2](v9, v6);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)activateWithErrorHandler:(id)a3 messageHandler:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _Block_copy(v8);
    v13 = _Block_copy(v9);
    v14 = _Block_copy(v10);
    *buf = 134218754;
    v33 = self;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession activating {self: %p, errorHandler: %@, messageHandler: %@, completion: %@}", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v15 = _Block_copy(v9);
  messageHandler = self->_messageHandler;
  self->_messageHandler = v15;

  client = self->_client;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke;
  v29[3] = &unk_2788F5DD0;
  objc_copyWeak(&v31, buf);
  v18 = v8;
  v30 = v18;
  [(RPCompanionLinkClient *)client setDisconnectHandler:v29];
  v19 = self->_client;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke_4;
  v26[3] = &unk_2788F5DD0;
  objc_copyWeak(&v28, buf);
  v20 = v18;
  v27 = v20;
  [(RPCompanionLinkClient *)v19 setInterruptionHandler:v26];
  v21 = self->_client;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke_5;
  v24[3] = &unk_2788F5980;
  v24[4] = self;
  v22 = v10;
  v25 = v22;
  [(RPCompanionLinkClient *)v21 activateWithCompletion:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 withTimeout:(double)a4 completion:(id)a5
{
  v39[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];

  sessionID = self->_sessionID;
  v38[0] = @"sesID";
  v38[1] = @"msgID";
  v39[0] = sessionID;
  v39[1] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v14 = [v13 mutableCopy];

  if (v8)
  {
    [v14 setObject:v8 forKeyedSubscript:@"info"];
  }

  if (a4 <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v36 = *MEMORY[0x277D442F0];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v37 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  }

  v17 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_sessionID;
    *buf = 134219010;
    v27 = self;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v16;
    _os_log_impl(&dword_230EF9000, v17, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession sending message {self: %p, sessionID: %@, messageID: %@, message: %@, options: %@}", buf, 0x34u);
  }

  client = self->_client;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75___DDUIRapportOutgoingTransportSession_sendMessage_withTimeout_completion___block_invoke;
  v23[3] = &unk_2788F5880;
  v23[4] = self;
  v24 = v11;
  v25 = v9;
  v20 = v9;
  v21 = v11;
  [(RPCompanionLinkClient *)client sendRequestID:@"DDUI-pair-init" request:v14 options:v16 responseHandler:v23];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[_DDUIRapportOutgoingTransportSession invalidate] {self: %p}", &v6, 0xCu);
  }

  [(RPCompanionLinkClient *)self->_client invalidate];
  client = self->_client;
  self->_client = 0;

  v5 = *MEMORY[0x277D85DE8];
}

@end