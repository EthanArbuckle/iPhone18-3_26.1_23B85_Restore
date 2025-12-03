@interface _DDUIRapportOutgoingTransportSession
- (DDUIDevice)remoteDevice;
- (_DDUIRapportOutgoingTransportSession)initWithServiceIdentifier:(id)identifier;
- (void)activateWithErrorHandler:(id)handler messageHandler:(id)messageHandler completion:(id)completion;
- (void)generateNetworkEndpointIdentifierForRemoteDevice:(id)device withCompletion:(id)completion;
- (void)handleIncomingMessage:(id)message withMessageID:(id)d;
- (void)invalidate;
- (void)sendMessage:(id)message withTimeout:(double)timeout completion:(id)completion;
@end

@implementation _DDUIRapportOutgoingTransportSession

- (_DDUIRapportOutgoingTransportSession)initWithServiceIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = _DDUIRapportOutgoingTransportSession;
  v6 = [(_DDUIRapportOutgoingTransportSession *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceIdentifier, identifier);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    sessionID = v7->_sessionID;
    v7->_sessionID = uUIDString;

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
  destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
  v5 = [(_DDUIRapportDevice *)v3 initWithRPCompanionLinkDevice:destinationDevice];

  return v5;
}

- (void)generateNetworkEndpointIdentifierForRemoteDevice:(id)device withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  deviceCopy = device;
  v8 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession generating mapping {self: %p}", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277D44150]);
  serviceIdentifier = [(_DDUIRapportOutgoingTransportSession *)self serviceIdentifier];
  client = [(_DDUIRapportOutgoingTransportSession *)self client];
  destinationDevice = [client destinationDevice];
  identifier = [destinationDevice identifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104___DDUIRapportOutgoingTransportSession_generateNetworkEndpointIdentifierForRemoteDevice_withCompletion___block_invoke;
  v16[3] = &unk_2788F5DA8;
  v16[4] = self;
  v17 = completionCopy;
  v14 = completionCopy;
  [v9 createEndpointToDeviceMapping:serviceIdentifier deviceID:identifier endpointID:deviceCopy completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingMessage:(id)message withMessageID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v8 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    selfCopy = self;
    v13 = 2112;
    v14 = dCopy;
    v15 = 2112;
    v16 = messageCopy;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession - incoming ResponderMessage {self: %p, messageID: %@, message: %@}", &v11, 0x20u);
  }

  messageHandler = [(_DDUIRapportOutgoingTransportSession *)self messageHandler];
  (messageHandler)[2](messageHandler, messageCopy);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)activateWithErrorHandler:(id)handler messageHandler:(id)messageHandler completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageHandlerCopy = messageHandler;
  completionCopy = completion;
  v11 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _Block_copy(handlerCopy);
    v13 = _Block_copy(messageHandlerCopy);
    v14 = _Block_copy(completionCopy);
    *buf = 134218754;
    selfCopy = self;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession activating {self: %p, errorHandler: %@, messageHandler: %@, completion: %@}", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v15 = _Block_copy(messageHandlerCopy);
  messageHandler = self->_messageHandler;
  self->_messageHandler = v15;

  client = self->_client;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke;
  v29[3] = &unk_2788F5DD0;
  objc_copyWeak(&v31, buf);
  v18 = handlerCopy;
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
  v22 = completionCopy;
  v25 = v22;
  [(RPCompanionLinkClient *)v21 activateWithCompletion:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)message withTimeout:(double)timeout completion:(id)completion
{
  v39[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  sessionID = self->_sessionID;
  v38[0] = @"sesID";
  v38[1] = @"msgID";
  v39[0] = sessionID;
  v39[1] = uUIDString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v14 = [v13 mutableCopy];

  if (messageCopy)
  {
    [v14 setObject:messageCopy forKeyedSubscript:@"info"];
  }

  if (timeout <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v36 = *MEMORY[0x277D442F0];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
    v37 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  }

  v17 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_sessionID;
    *buf = 134219010;
    selfCopy = self;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = uUIDString;
    v32 = 2112;
    v33 = messageCopy;
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
  v24 = uUIDString;
  v25 = completionCopy;
  v20 = completionCopy;
  v21 = uUIDString;
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
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[_DDUIRapportOutgoingTransportSession invalidate] {self: %p}", &v6, 0xCu);
  }

  [(RPCompanionLinkClient *)self->_client invalidate];
  client = self->_client;
  self->_client = 0;

  v5 = *MEMORY[0x277D85DE8];
}

@end