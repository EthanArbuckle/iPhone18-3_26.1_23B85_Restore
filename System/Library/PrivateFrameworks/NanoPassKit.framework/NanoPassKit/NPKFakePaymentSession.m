@interface NPKFakePaymentSession
- (BOOL)inServiceMode;
- (NPKFakePaymentSession)initWithQueue:(id)a3;
- (id)currentPass;
- (id)vasPasses;
- (void)_handleSessionHasCredentialIfNecessaryWithCurrentPass:(id)a3;
- (void)_handleTimeoutTimer;
- (void)_handleTransactionCompleteDarwinNotification;
- (void)_scheduleDidActivateEventForPass:(id)a3;
- (void)_sendTransactionCompleteToDelegate;
- (void)_setTimeoutTimer;
- (void)deactivateSessionWithCompletion:(id)a3;
- (void)dealloc;
- (void)fieldDetectorDidEnterField:(id)a3 withProperties:(id)a4;
- (void)fieldDetectorDidExitField:(id)a3;
- (void)setCredential:(id)a3;
- (void)setCurrentPass:(id)a3;
- (void)setInServiceMode:(BOOL)a3;
- (void)setVasPasses:(id)a3;
@end

@implementation NPKFakePaymentSession

- (NPKFakePaymentSession)initWithQueue:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NPKFakePaymentSession;
  v5 = [(NPKFakePaymentSession *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_create("FakePaymentSessionInternal", 0);
    ourInternalQueue = v5->_ourInternalQueue;
    v5->_ourInternalQueue = v6;

    v8 = v5->_ourInternalQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__NPKFakePaymentSession_initWithQueue___block_invoke;
    v10[3] = &unk_2799454E0;
    v11 = v5;
    v12 = v4;
    dispatch_sync(v8, v10);
  }

  return v5;
}

void __39__NPKFakePaymentSession_initWithQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2;
  if (!v2)
  {
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
  }

  objc_storeStrong((*(a1 + 32) + 160), v3);
  if (!v2)
  {
  }

  if ((NPKIsRunningInStoreDemoMode() & 1) == 0)
  {
    v5 = objc_alloc_init(MEMORY[0x277D37EE0]);
    v6 = *(a1 + 32);
    v7 = *(v6 + 184);
    *(v6 + 184) = v5;

    [*(*(a1 + 32) + 184) registerObserver:?];
  }

  objc_initWeak(&location, *(a1 + 32));
  v8 = dispatch_get_global_queue(0, 0);
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
  v10 = *(a1 + 32);
  v11 = *(v10 + 176);
  *(v10 + 176) = v9;

  v12 = *(*(a1 + 32) + 176);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39__NPKFakePaymentSession_initWithQueue___block_invoke_2;
  handler[3] = &unk_279945030;
  objc_copyWeak(&v17, &location);
  dispatch_source_set_event_handler(v12, handler);
  [*(a1 + 32) _setTimeoutTimer];
  dispatch_resume(*(*(a1 + 32) + 176));
  out_token = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__NPKFakePaymentSession_initWithQueue___block_invoke_4;
  v13[3] = &unk_279944F20;
  objc_copyWeak(&v14, &location);
  notify_register_dispatch("com.apple.NPKFakePaymentSession.TransactionComplete", &out_token, v8, v13);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __39__NPKFakePaymentSession_initWithQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[21];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__NPKFakePaymentSession_initWithQueue___block_invoke_3;
    block[3] = &unk_279944F98;
    v5 = WeakRetained;
    dispatch_sync(v3, block);
  }
}

void __39__NPKFakePaymentSession_initWithQueue___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[21];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__NPKFakePaymentSession_initWithQueue___block_invoke_5;
    block[3] = &unk_279944F98;
    v5 = WeakRetained;
    dispatch_sync(v3, block);
  }
}

- (void)dealloc
{
  [(PKFieldDetector *)self->_fieldDetector unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = NPKFakePaymentSession;
  [(NPKQuickPaymentSession *)&v3 dealloc];
}

- (void)setCurrentPass:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Fake payment session: setting current pass %@", buf, 0xCu);
    }
  }

  v8 = [(NPKFakePaymentSession *)self ourInternalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__NPKFakePaymentSession_setCurrentPass___block_invoke;
  v11[3] = &unk_2799454E0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_sync(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __40__NPKFakePaymentSession_setCurrentPass___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOurCurrentPass:*(a1 + 40)];
  if (([*(a1 + 32) invalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) ourCallbackQueue];
    v4 = MEMORY[0x277D85DD0];
    v5 = 3221225472;
    v6 = __40__NPKFakePaymentSession_setCurrentPass___block_invoke_2;
    v7 = &unk_2799454E0;
    v3 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v2, &v4);

    [*(a1 + 32) _scheduleDidActivateEventForPass:{*(a1 + 40), v4, v5, v6, v7, v8}];
  }
}

void __40__NPKFakePaymentSession_setCurrentPass___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) didMakePassCurrent:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 paymentSession:*(a1 + 32) willActivatePass:*(a1 + 40)];
  }
}

- (id)currentPass
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v3 = [(NPKFakePaymentSession *)self ourInternalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__NPKFakePaymentSession_currentPass__block_invoke;
  v6[3] = &unk_279944FE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__NPKFakePaymentSession_currentPass__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ourCurrentPass];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setVasPasses:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Fake payment session: setting VAS passes %@", buf, 0xCu);
    }
  }

  v8 = [(NPKFakePaymentSession *)self ourInternalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__NPKFakePaymentSession_setVasPasses___block_invoke;
  v11[3] = &unk_2799454E0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_sync(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCredential:(id)a3
{
  v4 = [(NPKFakePaymentSession *)self ourInternalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NPKFakePaymentSession_setCredential___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __39__NPKFakePaymentSession_setCredential___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 ourCurrentPass];
  [v2 _handleSessionHasCredentialIfNecessaryWithCurrentPass:v3];

  v4 = [*(a1 + 32) ourCallbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NPKFakePaymentSession_setCredential___block_invoke_2;
  block[3] = &unk_279944F98;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void __39__NPKFakePaymentSession_setCredential___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidReceiveCredential:*(a1 + 32)];
  }
}

- (id)vasPasses
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v3 = [(NPKFakePaymentSession *)self ourInternalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__NPKFakePaymentSession_vasPasses__block_invoke;
  v6[3] = &unk_279944FE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__NPKFakePaymentSession_vasPasses__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ourVasPasses];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setInServiceMode:(BOOL)a3
{
  v5 = [(NPKFakePaymentSession *)self ourInternalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__NPKFakePaymentSession_setInServiceMode___block_invoke;
  v6[3] = &unk_279944FC0;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

void __42__NPKFakePaymentSession_setInServiceMode___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != [*(a1 + 32) ourInServiceMode])
  {
    [*(a1 + 32) setOurInServiceMode:?];
    if (([*(a1 + 32) invalidated] & 1) == 0)
    {
      v2 = [*(a1 + 32) ourCurrentPass];
      v3 = [*(a1 + 32) ourCallbackQueue];
      v5 = MEMORY[0x277D85DD0];
      v6 = 3221225472;
      v7 = __42__NPKFakePaymentSession_setInServiceMode___block_invoke_2;
      v8 = &unk_2799454E0;
      v9 = *(a1 + 32);
      v10 = v2;
      v4 = v2;
      dispatch_async(v3, &v5);

      [*(a1 + 32) _scheduleDidActivateEventForPass:{v4, v5, v6, v7, v8, v9}];
    }
  }
}

void __42__NPKFakePaymentSession_setInServiceMode___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) didMakePassCurrent:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 paymentSession:*(a1 + 32) willActivatePass:*(a1 + 40)];
  }
}

- (BOOL)inServiceMode
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(NPKFakePaymentSession *)self ourInternalQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__NPKFakePaymentSession_inServiceMode__block_invoke;
  v5[3] = &unk_279944FE8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __38__NPKFakePaymentSession_inServiceMode__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ourInServiceMode];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)fieldDetectorDidEnterField:(id)a3 withProperties:(id)a4
{
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Fake payment session: detected field entry", buf, 2u);
    }
  }

  v8 = [(NPKFakePaymentSession *)self ourCallbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NPKFakePaymentSession_fieldDetectorDidEnterField_withProperties___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(v8, block);

  v9 = [(NPKFakePaymentSession *)self ourInternalQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__NPKFakePaymentSession_fieldDetectorDidEnterField_withProperties___block_invoke_2;
  v10[3] = &unk_279944F98;
  v10[4] = self;
  dispatch_sync(v9, v10);
}

void __67__NPKFakePaymentSession_fieldDetectorDidEnterField_withProperties___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidEnterField:*(a1 + 32)];
  }
}

uint64_t __67__NPKFakePaymentSession_fieldDetectorDidEnterField_withProperties___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) invalidated];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _sendTransactionCompleteToDelegate];
  }

  return result;
}

- (void)fieldDetectorDidExitField:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Fake payment session: detected field exit", buf, 2u);
    }
  }

  v7 = [(NPKFakePaymentSession *)self ourCallbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NPKFakePaymentSession_fieldDetectorDidExitField___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(v7, block);
}

void __51__NPKFakePaymentSession_fieldDetectorDidExitField___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidExitField:*(a1 + 32)];
  }
}

void __59__NPKFakePaymentSession_confirmSessionExpectingCredential___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) ourCurrentPass];
  v3 = [*(a1 + 32) ourConfirmed];
  [*(a1 + 32) setOurConfirmed:1];
  if ((v3 & 1) == 0)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v2;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Fake payment session: confirming session for pass %@", &v8, 0xCu);
      }
    }

    [*(a1 + 32) setOurConfirmed:1];
    [*(a1 + 32) _handleSessionHasCredentialIfNecessaryWithCurrentPass:v2];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deactivateSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Fake payment session: deactivating session", buf, 2u);
    }
  }

  v8 = [(NPKFakePaymentSession *)self ourInternalQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NPKFakePaymentSession_deactivateSessionWithCompletion___block_invoke;
  v10[3] = &unk_279945530;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_sync(v8, v10);
}

void __57__NPKFakePaymentSession_deactivateSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidated];
  [*(a1 + 32) setInvalidated:1];
  v3 = [*(a1 + 32) ourCallbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NPKFakePaymentSession_deactivateSessionWithCompletion___block_invoke_2;
  block[3] = &unk_279945CF0;
  v7 = v2;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, block);
}

uint64_t __57__NPKFakePaymentSession_deactivateSessionWithCompletion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) delegate];
      [v4 paymentSession:*(a1 + 32) didCompleteTransactionForReason:1 withTransactionContext:0 shouldCleanupSession:1];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_scheduleDidActivateEventForPass:(id)a3
{
  v4 = a3;
  v5 = [(NPKFakePaymentSession *)self ourInternalQueue];
  dispatch_assert_queue_V2(v5);

  [(NPKFakePaymentSession *)self setChangeCardToken:[(NPKFakePaymentSession *)self changeCardToken]+ 1];
  v6 = [(NPKFakePaymentSession *)self changeCardToken];
  v7 = dispatch_time(0, 500000000);
  v8 = [(NPKFakePaymentSession *)self ourInternalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKFakePaymentSession__scheduleDidActivateEventForPass___block_invoke;
  block[3] = &unk_279945F18;
  v11 = v4;
  v12 = v6;
  block[4] = self;
  v9 = v4;
  dispatch_after(v7, v8, block);
}

void __58__NPKFakePaymentSession__scheduleDidActivateEventForPass___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == [*(a1 + 32) changeCardToken])
  {
    v3 = [*(a1 + 32) ourCallbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__NPKFakePaymentSession__scheduleDidActivateEventForPass___block_invoke_2;
    v5[3] = &unk_2799454E0;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, v5);
  }
}

void __58__NPKFakePaymentSession__scheduleDidActivateEventForPass___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) didActivatePass:*(a1 + 40)];
  }
}

- (void)_setTimeoutTimer
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Fake payment session: setting timer", v9, 2u);
    }
  }

  v6 = [(NPKFakePaymentSession *)self ourInternalQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(NPKFakePaymentSession *)self timeoutTimer];
  v8 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_handleTimeoutTimer
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Fake payment session: handling timeout", buf, 2u);
    }
  }

  v6 = [(NPKFakePaymentSession *)self ourInternalQueue];
  dispatch_assert_queue_V2(v6);

  if (![(NPKFakePaymentSession *)self invalidated])
  {
    v7 = [(NPKFakePaymentSession *)self ourCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__NPKFakePaymentSession__handleTimeoutTimer__block_invoke;
    block[3] = &unk_279944F98;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

void __44__NPKFakePaymentSession__handleTimeoutTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) didCompleteTransactionForReason:2 withTransactionContext:0 shouldCleanupSession:1];
  }
}

- (void)_handleTransactionCompleteDarwinNotification
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Fake payment session: Got transaction complete Darwin notification", v7, 2u);
    }
  }

  v6 = [(NPKFakePaymentSession *)self ourInternalQueue];
  dispatch_assert_queue_V2(v6);

  if (![(NPKFakePaymentSession *)self invalidated])
  {
    [(NPKFakePaymentSession *)self _sendTransactionCompleteToDelegate];
  }
}

- (void)_handleSessionHasCredentialIfNecessaryWithCurrentPass:(id)a3
{
  v4 = a3;
  v5 = [(NPKFakePaymentSession *)self ourInternalQueue];
  dispatch_assert_queue_V2(v5);

  if (![(NPKFakePaymentSession *)self ourPerformedFirstActivation])
  {
    [(NPKFakePaymentSession *)self setOurPerformedFirstActivation:1];
    if (![(NPKFakePaymentSession *)self invalidated])
    {
      [(NPKFakePaymentSession *)self _setTimeoutTimer];
      v6 = [(NPKFakePaymentSession *)self ourCallbackQueue];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __79__NPKFakePaymentSession__handleSessionHasCredentialIfNecessaryWithCurrentPass___block_invoke;
      v11 = &unk_2799454E0;
      v12 = self;
      v7 = v4;
      v13 = v7;
      dispatch_async(v6, &v8);

      [(NPKFakePaymentSession *)self _scheduleDidActivateEventForPass:v7, v8, v9, v10, v11, v12];
    }
  }
}

void __79__NPKFakePaymentSession__handleSessionHasCredentialIfNecessaryWithCurrentPass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) willActivatePass:*(a1 + 40)];
  }
}

- (void)_sendTransactionCompleteToDelegate
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [(NPKFakePaymentSession *)self ourCurrentPass];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 paymentPass];

    v6 = objc_alloc(MEMORY[0x277D37E38]);
    v7 = v6;
    if (v5)
    {
      v8 = [v4 paymentPass];
      v9 = [v4 paymentPass];
      v10 = [v9 npkPreferredContactlessPaymentApplications];
      v11 = [v7 initWithPaymentPass:v8 activatedPaymentApplications:v10];

      v12 = [v4 paymentPass];
      v13 = [v12 npkPreferredContactlessPaymentApplications];
      v14 = [v13 firstObject];
      [v11 setPaymentApplication:v14];
    }

    else
    {
      v11 = [v6 initWithPaymentPass:0 activatedPaymentApplications:0];
      v20[0] = v4;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [v11 setValueAddedServicePasses:v12];
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = [(NPKFakePaymentSession *)self ourCallbackQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__NPKFakePaymentSession__sendTransactionCompleteToDelegate__block_invoke;
  v18[3] = &unk_2799454E0;
  v18[4] = self;
  v19 = v11;
  v16 = v11;
  dispatch_async(v15, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __59__NPKFakePaymentSession__sendTransactionCompleteToDelegate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) didCompleteTransactionForReason:3 withTransactionContext:*(a1 + 40) shouldCleanupSession:{objc_msgSend(*(a1 + 32), "endSessionWhenAuthorizationIsConsumed")}];
  }
}

@end