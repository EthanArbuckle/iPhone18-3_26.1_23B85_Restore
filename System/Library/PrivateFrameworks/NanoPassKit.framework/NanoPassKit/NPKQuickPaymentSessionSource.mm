@interface NPKQuickPaymentSessionSource
- (NPKQuickPaymentSessionSource)initWithDelegate:(id)delegate buttonListener:(id)listener callbackQueue:(id)queue;
- (void)_handleAuthIntentEventFromSource:(unint64_t)source;
- (void)setDeferAuthorization:(BOOL)authorization;
- (void)setDelegateHandlingButtonEvents:(BOOL)events;
- (void)setInitialPass:(id)pass;
- (void)setLocalAuthenticationCoordinator:(id)coordinator;
- (void)setPreconditionState:(unint64_t)state;
- (void)setRequireFirstInQueue:(BOOL)queue;
- (void)setVasPasses:(id)passes;
@end

@implementation NPKQuickPaymentSessionSource

- (NPKQuickPaymentSessionSource)initWithDelegate:(id)delegate buttonListener:(id)listener callbackQueue:(id)queue
{
  delegateCopy = delegate;
  listenerCopy = listener;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = NPKQuickPaymentSessionSource;
  v11 = [(NPKQuickPaymentSessionSource *)&v21 init];
  if (v11)
  {
    if (queueCopy)
    {
      v12 = queueCopy;
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
    }

    callbackQueue = v11->_callbackQueue;
    v11->_callbackQueue = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("com.apple.NanoPassKit.NPKQuickPaymentSessionSource", v14);
    sessionSourceQueue = v11->_sessionSourceQueue;
    v11->_sessionSourceQueue = v15;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_initWeak(&location, v11);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__NPKQuickPaymentSessionSource_initWithDelegate_buttonListener_callbackQueue___block_invoke;
    v18[3] = &unk_279945EF0;
    objc_copyWeak(&v19, &location);
    [listenerCopy setButtonHandler:v18];
    objc_storeStrong(&v11->_buttonListener, listener);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __78__NPKQuickPaymentSessionSource_initWithDelegate_buttonListener_callbackQueue___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __78__NPKQuickPaymentSessionSource_initWithDelegate_buttonListener_callbackQueue___block_invoke_2;
    v6[3] = &unk_279945830;
    v7 = WeakRetained;
    v8 = a2;
    dispatch_async(v5, v6);
  }
}

- (void)setDelegateHandlingButtonEvents:(BOOL)events
{
  sessionSourceQueue = self->_sessionSourceQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NPKQuickPaymentSessionSource_setDelegateHandlingButtonEvents___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  eventsCopy = events;
  dispatch_async(sessionSourceQueue, v4);
}

- (void)setDeferAuthorization:(BOOL)authorization
{
  sessionSourceQueue = self->_sessionSourceQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__NPKQuickPaymentSessionSource_setDeferAuthorization___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  authorizationCopy = authorization;
  dispatch_async(sessionSourceQueue, v4);
}

- (void)setRequireFirstInQueue:(BOOL)queue
{
  sessionSourceQueue = self->_sessionSourceQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__NPKQuickPaymentSessionSource_setRequireFirstInQueue___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  queueCopy = queue;
  dispatch_async(sessionSourceQueue, v4);
}

- (void)setPreconditionState:(unint64_t)state
{
  sessionSourceQueue = self->_sessionSourceQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__NPKQuickPaymentSessionSource_setPreconditionState___block_invoke;
  v4[3] = &unk_279945830;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(sessionSourceQueue, v4);
}

- (void)setInitialPass:(id)pass
{
  passCopy = pass;
  sessionSourceQueue = self->_sessionSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__NPKQuickPaymentSessionSource_setInitialPass___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = passCopy;
  v6 = passCopy;
  dispatch_async(sessionSourceQueue, v7);
}

- (void)setVasPasses:(id)passes
{
  passesCopy = passes;
  sessionSourceQueue = self->_sessionSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__NPKQuickPaymentSessionSource_setVasPasses___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = passesCopy;
  v6 = passesCopy;
  dispatch_async(sessionSourceQueue, v7);
}

- (void)setLocalAuthenticationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  sessionSourceQueue = self->_sessionSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__NPKQuickPaymentSessionSource_setLocalAuthenticationCoordinator___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = coordinatorCopy;
  v6 = coordinatorCopy;
  dispatch_async(sessionSourceQueue, v7);
}

- (void)_handleAuthIntentEventFromSource:(unint64_t)source
{
  v68 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  if (source == 1)
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (!v11)
    {
      goto LABEL_11;
    }

    v8 = pk_Payment_log();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v9 = "Notice: Session source received an assistive touch gesture event";
    goto LABEL_9;
  }

  if (!source)
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      *buf = 0;
      v9 = "Notice: Session source received PMU button event";
LABEL_9:
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  dispatch_assert_queue_V2(self->_sessionSourceQueue);
  preconditionState = self->_preconditionState;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NPKQuickPaymentSessionSourcePreconditionStateToString(preconditionState);
      *buf = 138412290;
      v65 = v16;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Session source initial precondition state is %@", buf, 0xCu);
    }
  }

  if (preconditionState == 9)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_88;
    v62[3] = &unk_279944F98;
    v62[4] = self;
    v19 = v62;
    goto LABEL_73;
  }

  if (preconditionState == 6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = [WeakRetained paymentSessionSourceIsWalletInstalledRequiredToStartPaymentSession:self];

    if (v18)
    {
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke;
      v63[3] = &unk_279944F98;
      v63[4] = self;
      v19 = v63;
LABEL_73:
      [(NPKQuickPaymentSessionSource *)self _performDelegateCallback:v19];
      goto LABEL_74;
    }
  }

  v20 = NPKIsAssistiveTouchEnabled();
  v21 = v20;
  if (!self->_delegateHandlingButtonEvents)
  {
    v25 = pk_Payment_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = pk_Payment_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Session source is NOT delegating auth intent event", buf, 2u);
      }
    }

    v28 = objc_loadWeakRetained(&self->_delegate);
    [v28 paymentSessionSource:self receivedButtonEventAtDate:date authIntentSource:source delegated:0];

    if (v21 != source)
    {
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_91;
      v57[3] = &unk_279944F98;
      v57[4] = self;
      v19 = v57;
      goto LABEL_73;
    }

    if (+[NPKQuickPaymentSession hasOutstandingSessions])
    {
      v29 = pk_Payment_log();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (!v30)
      {
        goto LABEL_74;
      }

      v31 = pk_Payment_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v32 = "Notice: Outstanding payment sessions; ignoring";
        v33 = v31;
        v34 = 2;
LABEL_59:
        _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
      }

LABEL_60:

      goto LABEL_74;
    }

    if (!preconditionState)
    {
      if (self->_initialPass)
      {
        localAuthenticationCoordinator = self->_localAuthenticationCoordinator;
        if (localAuthenticationCoordinator)
        {
          [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)localAuthenticationCoordinator beginLocalAuthenticationWithCompletion:0];
        }

        v39 = [NPKQuickPaymentSession sessionWithQueue:MEMORY[0x277D85CD0]];
        [v39 setCurrentPass:self->_initialPass];
        [v39 setVasPasses:self->_vasPasses];
        [v39 setRequireFirstInQueue:self->_requireFirstInQueue];
        if (self->_deferAuthorization)
        {
          [v39 setDeferAuthorization:1];
        }

        startSession = [v39 startSession];
        v41 = pk_Payment_log();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

        if (startSession)
        {
          if (v42)
          {
            v43 = pk_Payment_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_25B300000, v43, OS_LOG_TYPE_DEFAULT, "Notice: Session source providing session to delegate", buf, 2u);
            }
          }

          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_93;
          v53[3] = &unk_279945958;
          v53[4] = self;
          v54 = v39;
          v55 = date;
          sourceCopy = source;
          v44 = v39;
          [(NPKQuickPaymentSessionSource *)self _performDelegateCallback:v53];

          goto LABEL_74;
        }

        if (v42)
        {
          v50 = pk_Payment_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v50, OS_LOG_TYPE_DEFAULT, "Notice: Payment session failed to start; session source reporting busy", buf, 2u);
          }
        }

        [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self->_localAuthenticationCoordinator invalidateLocalAuthenticationContexts];
        preconditionState = 7;
      }

      else
      {
        v48 = pk_Payment_log();
        v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);

        if (!v49)
        {
          preconditionState = 3;
          goto LABEL_72;
        }

        v39 = pk_Payment_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v39, OS_LOG_TYPE_DEFAULT, "Notice: No initial pass; session source reporting no cards", buf, 2u);
        }

        preconditionState = 3;
      }
    }

LABEL_72:
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_94;
    v52[3] = &unk_279945830;
    v52[4] = self;
    v52[5] = preconditionState;
    v19 = v52;
    goto LABEL_73;
  }

  if (v20 == source)
  {
    v22 = pk_Payment_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      v24 = pk_Payment_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: Session source is delegating auth intent event", buf, 2u);
      }
    }

    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_89;
    v59[3] = &unk_279945F18;
    v59[4] = self;
    v60 = date;
    sourceCopy2 = source;
    [(NPKQuickPaymentSessionSource *)self _performDelegateCallback:v59];

    goto LABEL_74;
  }

  if (source == 1)
  {
    v45 = pk_Payment_log();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);

    if (!v46)
    {
      goto LABEL_74;
    }

    v31 = pk_Payment_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v47 = NPKIsAssistiveTouchEnabled();
      *buf = 134218240;
      v65 = 1;
      v66 = 1024;
      v67 = v47;
      v32 = "Warning: Received unexpected auth intent source: %lu, is double click disabled: %i";
      v33 = v31;
      v34 = 18;
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (!source)
  {
    v35 = pk_Payment_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

    if (v36)
    {
      v37 = pk_Payment_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Session source is requesting AssistiveTouch enabled alert presentation", buf, 2u);
      }
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_90;
    v58[3] = &unk_279944F98;
    v58[4] = self;
    v19 = v58;
    goto LABEL_73;
  }

LABEL_74:

  v51 = *MEMORY[0x277D85DE8];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %@ Declining to handle button event. Wallet is not installed", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSource:*(a1 + 32) declinedToStartPaymentSessionDueToPreconditionState:6];

  v7 = *MEMORY[0x277D85DE8];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_88(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %@ Declining to handle button event. System state lock (sleep mode, water lock, school mode, etc) in effect", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSource:*(a1 + 32) declinedToStartPaymentSessionDueToPreconditionState:9];

  v7 = *MEMORY[0x277D85DE8];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_89(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained paymentSessionSource:a1[4] receivedButtonEventAtDate:a1[5] authIntentSource:a1[6] delegated:1];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSourceRequestsAssistiveTouchAlertPresentation:*(a1 + 32)];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_91(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSourceRequestsAssistiveTouchAlertPresentation:*(a1 + 32)];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_93(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained paymentSessionSource:a1[4] startedPaymentSession:a1[5] dueToButtonEventAtDate:a1[6] authIntentSource:a1[7]];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSource:*(a1 + 32) declinedToStartPaymentSessionDueToPreconditionState:*(a1 + 40)];
}

@end