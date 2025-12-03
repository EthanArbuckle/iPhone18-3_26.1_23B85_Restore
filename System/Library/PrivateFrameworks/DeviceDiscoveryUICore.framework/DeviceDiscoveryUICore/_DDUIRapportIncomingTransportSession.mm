@interface _DDUIRapportIncomingTransportSession
- (_DDUIRapportIncomingTransportSession)initWithOptions:(id)options;
- (void)activateWithErrorHandler:(id)handler messageHandler:(id)messageHandler completion:(id)completion;
- (void)invalidate;
- (void)sendMessage:(id)message withTimeout:(double)timeout completion:(id)completion;
@end

@implementation _DDUIRapportIncomingTransportSession

- (_DDUIRapportIncomingTransportSession)initWithOptions:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = _DDUIRapportIncomingTransportSession;
  v5 = [(_DDUIRapportIncomingTransportSession *)&v17 init];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D442D0]];
    destinationID = v5->_destinationID;
    v5->_destinationID = v6;

    if (optionsCopy)
    {
      v8 = [[_DDUIRapportDevice alloc] initWithIncomingMessageOptions:optionsCopy];
      cachedDevice = v5->_cachedDevice;
      v5->_cachedDevice = v8;

      v10 = _DDUICoreRapportLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        name = [(_DDUIRapportDevice *)v5->_cachedDevice name];
        identifier = [(_DDUIRapportDevice *)v5->_cachedDevice identifier];
        model = [(_DDUIRapportDevice *)v5->_cachedDevice model];
        accountIdentifier = [(_DDUIRapportDevice *)v5->_cachedDevice accountIdentifier];
        *buf = 138413058;
        v19 = name;
        v20 = 2112;
        v21 = identifier;
        v22 = 2112;
        v23 = model;
        v24 = 2112;
        v25 = accountIdentifier;
        _os_log_impl(&dword_230EF9000, v10, OS_LOG_TYPE_DEFAULT, "_DDUIRapportIncomingTransportSession init. Created DDUIDevice: name: %@, identifier: %@, model: %@, accountID: %@", buf, 0x2Au);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)activateWithErrorHandler:(id)handler messageHandler:(id)messageHandler completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  messageHandlerCopy = messageHandler;
  v9 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v9, OS_LOG_TYPE_DEFAULT, "_DDUIRapportIncomingTransportSession activating {self: %p}", &v13, 0xCu);
  }

  v10 = _Block_copy(messageHandlerCopy);
  messageHandler = self->_messageHandler;
  self->_messageHandler = v10;

  completionCopy[2](completionCopy, self);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)message withTimeout:(double)timeout completion:(id)completion
{
  v42[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  sessionID = self->_sessionID;
  v41[0] = @"sesID";
  v41[1] = @"msgID";
  v42[0] = sessionID;
  v42[1] = uUIDString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
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
    v39 = *MEMORY[0x277D442F0];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
    v40 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  }

  v17 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [(_DDUIRapportIncomingTransportSession *)self sessionID];
    *buf = 134219010;
    selfCopy = self;
    v31 = 2112;
    v32 = sessionID;
    v33 = 2112;
    v34 = uUIDString;
    v35 = 2112;
    v36 = messageCopy;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&dword_230EF9000, v17, OS_LOG_TYPE_DEFAULT, "_DDUIRapportIncomingTransportSession sending message {self: %p, sessionID: %@ messageID: %@, message: %@, options: %@}", buf, 0x34u);
  }

  v19 = _DDUIRapportContinuityCameraResponseMessageID;
  if (self->_sessionType != 1)
  {
    v19 = _DDUIRapportPairingResponderMessageID;
  }

  v20 = *v19;
  client = self->_client;
  destinationID = self->_destinationID;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75___DDUIRapportIncomingTransportSession_sendMessage_withTimeout_completion___block_invoke;
  v26[3] = &unk_2788F5880;
  v26[4] = self;
  v27 = uUIDString;
  v28 = completionCopy;
  v23 = completionCopy;
  v24 = uUIDString;
  [(RPCompanionLinkClient *)client sendRequestID:v20 request:v14 destinationID:destinationID options:v16 responseHandler:v26];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[_DDUIRapportIncomingTransportSession invalidate] {self: %p}", &v7, 0xCu);
  }

  messageHandler = self->_messageHandler;
  self->_messageHandler = 0;

  client = self->_client;
  self->_client = 0;

  v6 = *MEMORY[0x277D85DE8];
}

@end