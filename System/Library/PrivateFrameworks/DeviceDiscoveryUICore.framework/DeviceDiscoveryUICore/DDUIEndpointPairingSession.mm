@interface DDUIEndpointPairingSession
- (BOOL)_handleIncomingMessage:(id)a3;
- (DDUIEndpointPairingSession)initWithTransportSession:(id)a3 mode:(unint64_t)a4;
- (id)processInitialMessage:(id)a3;
- (void)_activateWithErrorHandler:(id)a3 completionHandler:(id)a4;
- (void)_clearBlocks;
- (void)_failPairing;
- (void)_pairWithInfo:(id)a3;
- (void)_sendPairingWithInfo:(id)a3;
- (void)activateWithErrorHandler:(id)a3 completionHandler:(id)a4;
- (void)cancelWithMessage:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)pairWithMessage:(id)a3;
- (void)pairWithMessage:(id)a3 errorHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation DDUIEndpointPairingSession

- (DDUIEndpointPairingSession)initWithTransportSession:(id)a3 mode:(unint64_t)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v22.receiver = self;
  v22.super_class = DDUIEndpointPairingSession;
  v8 = [(DDUIEndpointPairingSession *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transportSession, a3);
    v9->_mode = a4;
    v9->_state = 0;
    v10 = [v7 sessionID];
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      v12 = [v7 sessionID];
      v13 = [v11 initWithUUIDString:v12];
      sessionID = v9->_sessionID;
      v9->_sessionID = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
      v12 = v9->_sessionID;
      v9->_sessionID = v15;
    }

    v16 = dispatch_group_create();
    activateGroup = v9->_activateGroup;
    v9->_activateGroup = v16;

    dispatch_group_enter(v9->_activateGroup);
    v18 = _DDUICoreLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v7 remoteDevice];
      *buf = 134218754;
      v24 = v9;
      v25 = 2112;
      v26 = v7;
      v27 = 2048;
      v28 = a4;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_230EF9000, v18, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession init] {self: %p, transportSession: %@, mode: %lu, remoteDevice: %@}", buf, 0x2Au);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    state = self->_state;
    *buf = 134218496;
    v10 = self;
    v11 = 2048;
    v12 = state;
    v13 = 2048;
    v14 = mode;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession dealloc] {self: %p, state: %lu, mode: %lu}", buf, 0x20u);
  }

  v6 = self->_state;
  if (v6 == 2 || !v6 && self->_mode == 1)
  {
    [(DDUIEndpointPairingSession *)self _failPairing];
  }

  if (!self->_activated)
  {
    dispatch_group_leave(self->_activateGroup);
  }

  v8.receiver = self;
  v8.super_class = DDUIEndpointPairingSession;
  [(DDUIEndpointPairingSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelWithMessage:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [a3 dictionaryRepresentation];
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    state = self->_state;
    *buf = 134218754;
    v17 = self;
    v18 = 2048;
    v19 = state;
    v20 = 2048;
    v21 = mode;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession cancelWithMessage:] {self: %p, state: %lu, mode: %lu, info: %@}", buf, 0x2Au);
  }

  v8 = self->_state;
  if (v8 == 2 || !v8 && self->_mode == 1)
  {
    self->_state = 5;
    v14 = @"type";
    v15 = &unk_2845C3448;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v9 mutableCopy];

    if (v4)
    {
      [v10 setObject:v4 forKeyedSubscript:@"usi"];
    }

    transportSession = self->_transportSession;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__DDUIEndpointPairingSession_cancelWithMessage___block_invoke;
    v13[3] = &unk_2788F5DF8;
    v13[4] = self;
    [(DDUIEndpointPairingTransportSession *)transportSession sendMessage:v10 withCompletion:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __48__DDUIEndpointPairingSession_cancelWithMessage___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession cancel finished sending {self: %p, error: %@}", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    state = self->_state;
    v11 = 134218496;
    v12 = self;
    v13 = 2048;
    v14 = state;
    v15 = 2048;
    v16 = mode;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession invalidate] {self: %p, state: %lu, mode: %lu}", &v11, 0x20u);
  }

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  v8 = self->_state;
  if (v8 == 2 || !v8 && self->_mode == 1)
  {
    self->_state = 5;
    [(DDUIEndpointPairingSession *)self _failPairing];
  }

  else
  {
    [(DDUIEndpointPairingTransportSession *)self->_transportSession invalidate];
    transportSession = self->_transportSession;
    self->_transportSession = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pairWithMessage:(id)a3 errorHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  [(DDUIEndpointPairingSession *)self _activateWithErrorHandler:a4 completionHandler:a5];
  v9 = [v8 dictionaryRepresentation];

  [(DDUIEndpointPairingSession *)self _pairWithInfo:v9];
}

- (void)pairWithMessage:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(DDUIEndpointPairingSession *)self _pairWithInfo:v4];
}

- (void)_sendPairingWithInfo:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DDUIEndpointPairingSession *)self mode];
  if (v5 == 1)
  {
    v15 = @"type";
    v16 = &unk_2845C3478;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v7 = [v11 mutableCopy];

    if (v4)
    {
      [v7 setObject:v4 forKeyedSubscript:@"usi"];
    }

    [(DDUIEndpointPairingSession *)self setState:3];
    v8 = [(DDUIEndpointPairingSession *)self transportSession];
    v9 = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke_22;
    v13[3] = &unk_2788F5DF8;
    v13[4] = self;
    v10 = v13;
    goto LABEL_9;
  }

  if (!v5)
  {
    [(DDUIEndpointPairingSession *)self setState:2];
    v17 = @"type";
    v18[0] = &unk_2845C3460;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v7 = [v6 mutableCopy];

    if (v4)
    {
      [v7 setObject:v4 forKeyedSubscript:@"usi"];
    }

    v8 = [(DDUIEndpointPairingSession *)self transportSession];
    v9 = v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke;
    v14[3] = &unk_2788F5DF8;
    v14[4] = self;
    v10 = v14;
LABEL_9:
    [v8 sendMessage:v7 withCompletion:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession start message finished sending {self: %p, error: %@}", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke_22(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke_22_cold_1(a1, v3, v5);
    }

    v6 = [*(a1 + 32) errorHandler];

    if (v6)
    {
      v7 = [*(a1 + 32) errorHandler];
      (v7)[2](v7, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v8 startUserInfo];
      v15 = 134218498;
      v16 = v8;
      v17 = 2112;
      v18 = 0;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession accept message finished sending {self: %p, error: %@, startUserInfo: %@}", &v15, 0x20u);
    }

    v10 = [*(a1 + 32) completionHandler];

    if (v10)
    {
      v11 = [DDUIPairCompleteMessage alloc];
      v12 = [(DDUIPairCompleteMessage *)v11 initWithDictionaryRepresentation:MEMORY[0x277CBEC10]];
      v13 = [*(a1 + 32) completionHandler];
      (v13)[2](v13, 0, 0, v12);
    }

    [*(a1 + 32) _clearBlocks];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)activateWithErrorHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__DDUIEndpointPairingSession_activateWithErrorHandler_completionHandler___block_invoke;
  v8[3] = &unk_2788F5E20;
  v9 = v6;
  v7 = v6;
  [(DDUIEndpointPairingSession *)self _activateWithErrorHandler:a3 completionHandler:v8];
}

uint64_t __73__DDUIEndpointPairingSession_activateWithErrorHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_activateWithErrorHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_state)
  {
    objc_initWeak(&location, self);
    self->_state = 1;
    transportSession = self->_transportSession;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke;
    v16[3] = &unk_2788F5E48;
    objc_copyWeak(&v18, &location);
    v9 = v6;
    v17 = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_25;
    v14[3] = &unk_2788F5E70;
    objc_copyWeak(&v15, &location);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_2;
    v10[3] = &unk_2788F5E98;
    objc_copyWeak(&v13, &location);
    v11 = v7;
    v12 = v9;
    [(DDUIEndpointPairingTransportSession *)transportSession activateWithErrorHandler:v16 messageHandler:v14 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = _DDUICoreLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_cold_1(WeakRetained, v3, v5);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleIncomingMessage:v5];
  }
}

void __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = _DDUICoreLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218498;
      v9 = WeakRetained;
      v10 = 2048;
      v11 = [WeakRetained mode];
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession activated {self: %p,  mode: %lu, inSession: %@}", &v8, 0x20u);
    }

    [WeakRetained setCompletionHandler:*(a1 + 32)];
    [WeakRetained setErrorHandler:*(a1 + 40)];
    [WeakRetained setState:2];
    v6 = [WeakRetained activateGroup];
    dispatch_group_leave(v6);

    [WeakRetained setActivated:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_pairWithInfo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DDUIEndpointPairingSession *)self activateGroup];
  v6 = DDUICorePrimaryQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__DDUIEndpointPairingSession__pairWithInfo___block_invoke;
  block[3] = &unk_2788F5EC0;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(v5, v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __44__DDUIEndpointPairingSession__pairWithInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendPairingWithInfo:*(a1 + 32)];
}

- (id)processInitialMessage:(id)a3
{
  v4 = a3;
  if ([(DDUIEndpointPairingSession *)self _handleIncomingMessage:v4])
  {
    v5 = [DDUIPairInitiateMessage alloc];
    v6 = [v4 objectForKeyedSubscript:@"usi"];
    v7 = [(DDUIPairInitiateMessage *)v5 initWithDictionaryRepresentation:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_handleIncomingMessage:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  v6 = [v5 unsignedIntegerValue];

  v7 = v6 - 1;
  v8 = _DDUICoreLog();
  v9 = v8;
  if ((v6 - 1) >= 4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DDUIEndpointPairingSession *)self _handleIncomingMessage:v4, v9];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = DDUIEndpointPairingSessionStateString(self->_state);
    mode = self->_mode;
    v12 = off_2788F5F08[v6 - 1];
    *buf = 134219010;
    v31 = self;
    v32 = 2112;
    v33 = v10;
    v34 = 2048;
    v35 = mode;
    v36 = 2112;
    v37 = v12;
    v38 = 2112;
    v39 = v4;
    _os_log_impl(&dword_230EF9000, v9, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession _handleIncomingMessage] {self: %p, state: %@, mode: %lu, messageType: %@, message: %@}", buf, 0x34u);
  }

  if (self->_state == 2)
  {
    switch(v6)
    {
      case 4:
        self->_state = 5;
        (*(self->_errorHandler + 2))();
        goto LABEL_15;
      case 3:
        self->_state = 5;
        completionHandler = self->_completionHandler;
        v18 = [DDUIPairCompleteMessage alloc];
        v15 = [v4 objectForKeyedSubscript:@"usi"];
        v16 = [(DDUIPairCompleteMessage *)v18 initWithDictionaryRepresentation:v15];
        completionHandler[2](completionHandler, 1, 0, v16);
        break;
      case 2:
        self->_state = 4;
        if (self->_mode != 1)
        {
          v21 = [DDUIPairCompleteMessage alloc];
          v22 = [v4 objectForKeyedSubscript:@"usi"];
          v9 = [(DDUIPairCompleteMessage *)v21 initWithDictionaryRepresentation:v22];

          v23 = [v9 listenerUUID];

          if (v23)
          {
            transportSession = self->_transportSession;
            v25 = [v9 listenerUUID];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __53__DDUIEndpointPairingSession__handleIncomingMessage___block_invoke;
            v28[3] = &unk_2788F5EE8;
            v28[4] = self;
            v9 = v9;
            v29 = v9;
            [(DDUIEndpointPairingTransportSession *)transportSession generateNetworkEndpointIdentifierForRemoteDevice:v25 withCompletion:v28];
          }

          else
          {
            v26 = _DDUICoreLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v31 = self;
              _os_log_impl(&dword_230EF9000, v26, OS_LOG_TYPE_DEFAULT, "No listener returned from remote device, skipping generating mapping {self: %p}", buf, 0xCu);
            }

            v27 = [(DDUIEndpointPairingSession *)self completionHandler];
            (v27)[2](v27, 0, 0, v9);

            [(DDUIEndpointPairingSession *)self _clearBlocks];
          }

          goto LABEL_16;
        }

        v13 = self->_completionHandler;
        v14 = [DDUIPairCompleteMessage alloc];
        v15 = [v4 objectForKeyedSubscript:@"usi"];
        v16 = [(DDUIPairCompleteMessage *)v14 initWithDictionaryRepresentation:v15];
        (*(v13 + 2))(v13, 0, 0, v16);
        break;
      default:
LABEL_15:
        v9 = self->_completionHandler;
        self->_completionHandler = 0;
LABEL_16:

        goto LABEL_17;
    }

    [(DDUIEndpointPairingSession *)self _clearBlocks];
    goto LABEL_15;
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v7 < 4;
}

void __53__DDUIEndpointPairingSession__handleIncomingMessage___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 134218242;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession _handleIncomingMessage].block generated mapping {self: %p, identifier: %@}", &v8, 0x16u);
  }

  v6 = [*(a1 + 32) completionHandler];
  (v6)[2](v6, 0, v3, *(a1 + 40));

  [*(a1 + 32) _clearBlocks];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_failPairing
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    state = self->_state;
    *buf = 134218496;
    v15 = self;
    v16 = 2048;
    v17 = state;
    v18 = 2048;
    v19 = mode;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession _failPairing] {self: %p, state: %lu, mode: %lu}", buf, 0x20u);
  }

  v12 = @"type";
  v13 = &unk_2845C3490;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = self->_transportSession;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__DDUIEndpointPairingSession__failPairing__block_invoke;
  v10[3] = &unk_2788F5BA0;
  v10[4] = self;
  v11 = v7;
  v8 = v7;
  [(DDUIEndpointPairingTransportSession *)v8 sendMessage:v6 withTimeout:v10 completion:1.0];

  v9 = *MEMORY[0x277D85DE8];
}

void __42__DDUIEndpointPairingSession__failPairing__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession pairing failure finished sending {self: %p, error: %@}", &v7, 0x16u);
  }

  [*(a1 + 40) invalidate];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clearBlocks
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;
}

void __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke_22_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_230EF9000, a2, a3, "DDUIEndpointPairingSession accept message failed to send {self: %p, error: %@}", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_230EF9000, a2, a3, "DDUIEndpointPairingSession failed to activate {self: %p, error: %@}", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingMessage:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = DDUIEndpointPairingSessionStateString(*(a1 + 48));
  v7 = *(a1 + 40);
  v9 = 134219010;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  v13 = 2048;
  v14 = v7;
  v15 = 2112;
  v16 = @"invalid";
  v17 = 2112;
  v18 = a2;
  _os_log_error_impl(&dword_230EF9000, a3, OS_LOG_TYPE_ERROR, "[DDUIEndpointPairingSession _handleIncomingMessage] -- invalid message type! {self: %p, state: %@, mode: %lu, messageType: %@, message: %@}", &v9, 0x34u);

  v8 = *MEMORY[0x277D85DE8];
}

@end