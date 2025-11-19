@interface NPKQuickPaymentSession
+ (BOOL)hasOutstandingSessions;
+ (NPKQuickPaymentSession)sessionWithQueue:(id)a3;
+ (id)_outstandingSessionHashTable;
+ (void)_handleNewContactlessSession:(id)a3;
- (BOOL)_invokeStateUpdateForReason:(unint64_t)a3 shouldCleanupSession:(BOOL)a4;
- (BOOL)_sessionQueue_enablePersistentCardEmulation;
- (BOOL)_sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue:(id)a3;
- (BOOL)_sessionQueue_updateContactlessSessionForPass:(id)a3 paymentApplications:(id)a4 vasPasses:(id)a5 sessionConfirmed:(BOOL)a6 deferAuthorization:(BOOL)a7;
- (BOOL)startSessionWithCompletion:(id)a3;
- (NPKQuickPaymentSession)initWithQueue:(id)a3;
- (NPKQuickPaymentSessionDelegate)delegate;
- (void)_checkContactlessValidity:(unint64_t)a3 authorizationValidity:(unint64_t)a4 performWork:(id)a5;
- (void)_checkContactlessValidity:(unint64_t)a3 performWork:(id)a4;
- (void)_handleConventionalTransactionWithContext:(id)a3;
- (void)_handleFieldEntry;
- (void)_handleFieldExit;
- (void)_handleTransactionCompleteWithContext:(id)a3;
- (void)_internalQueue_deactivateSessionWithCompletion:(id)a3;
- (void)_internalQueue_getContactlessAndAuthorizationValidityAndPerformWork:(id)a3;
- (void)_internalQueue_invokeDeactivationCompletionBlocks;
- (void)_internalQueue_setCurrentPass:(id)a3;
- (void)_internalQueue_updateContactlessSessionForPass:(id)a3 vasPasses:(id)a4 deferAuthorization:(BOOL)a5;
- (void)_internalQueue_updateContactlessValidityAndPerformWork:(id)a3;
- (void)_internalQueue_updateSessionWithCurrentPassAndLoyaltyState;
- (void)_loyaltyEngineConfigurationChanged:(id)a3;
- (void)_sessionQueue_invokeAppropriateCallbackForActivationWithSuccess:(BOOL)a3 invokeOnSuccess:(BOOL)a4 contactlessValidity:(unint64_t)a5 forPass:(id)a6;
- (void)_updateAuthorizationValidity;
- (void)_updateSessionWithCredentialAndActivate;
- (void)authorize18013RequestWithDataToRelease:(id)a3 credential:(id)a4;
- (void)confirmSessionExpectingCredential:(BOOL)a3;
- (void)contactlessInterfaceSession:(id)a3 didEndPersistentCardEmulationWithContexts:(id)a4;
- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4;
- (void)contactlessInterfaceSession:(id)a3 didReceive18013Request:(id)a4 readerAuthInfo:(id)a5;
- (void)contactlessInterfaceSessionDidFail:(id)a3 forPaymentApplications:(id)a4 paymentPass:(id)a5 valueAddedServicePasses:(id)a6;
- (void)contactlessInterfaceSessionDidFailDeferredAuthorization:(id)a3;
- (void)contactlessInterfaceSessionDidFailTransaction:(id)a3 forPaymentApplication:(id)a4 paymentPass:(id)a5;
- (void)contactlessInterfaceSessionDidReceiveActivityTimeout:(id)a3;
- (void)contactlessInterfaceSessionDidReceiveTerminalError:(id)a3;
- (void)contactlessInterfaceSessionDidReceiveUntrustedTerminal:(id)a3;
- (void)contactlessInterfaceSessionDidSelectPayment:(id)a3;
- (void)contactlessInterfaceSessionDidSelectValueAddedService:(id)a3;
- (void)contactlessInterfaceSessionDidStartTransaction:(id)a3 withContext:(id)a4;
- (void)contactlessInterfaceSessionDidTerminate:(id)a3;
- (void)contactlessInterfaceSessionDidTerminate:(id)a3 withErrorCode:(unint64_t)a4;
- (void)contactlessInterfaceSessionDidTimeout:(id)a3 forPaymentApplications:(id)a4 paymentPass:(id)a5 valueAddedServicePasses:(id)a6;
- (void)contactlessInterfaceSessionHasPendingServerRequest:(id)a3;
- (void)deactivateSessionWithCompletion:(id)a3;
- (void)dealloc;
- (void)executeRKEActionForPass:(id)a3 function:(id)a4 action:(id)a5 withCompletion:(id)a6;
- (void)setCredential:(id)a3;
- (void)setCurrentPass:(id)a3;
- (void)setDeferAuthorization:(BOOL)a3;
- (void)setInField:(BOOL)a3;
- (void)setInServiceMode:(BOOL)a3;
- (void)setVasPasses:(id)a3;
- (void)stsSession:(id)a3 didDetectField:(BOOL)a4;
@end

@implementation NPKQuickPaymentSession

+ (NPKQuickPaymentSession)sessionWithQueue:(id)a3
{
  v3 = a3;
  v4 = off_279943028;
  if ((NPKIsRunningInUIOnlyDemoMode() & 1) == 0 && !NPKIsRunningInStoreDemoMode())
  {
    v4 = off_279943D58;
  }

  v5 = [objc_alloc(*v4) initWithQueue:v3];

  return v5;
}

+ (id)_outstandingSessionHashTable
{
  if (_outstandingSessionHashTable_onceToken != -1)
  {
    +[NPKQuickPaymentSession _outstandingSessionHashTable];
  }

  v3 = _outstandingSessionHashTable_hashTable;

  return v3;
}

void __54__NPKQuickPaymentSession__outstandingSessionHashTable__block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = _outstandingSessionHashTable_hashTable;
  _outstandingSessionHashTable_hashTable = v0;
}

+ (BOOL)hasOutstandingSessions
{
  v22 = *MEMORY[0x277D85DE8];
  [a1 _outstandingSessionHashTable];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = pk_Payment_log();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

        if (v8)
        {
          v9 = pk_Payment_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v6 isDeactivated];
            *buf = 138412546;
            v18 = v6;
            v19 = 1024;
            v20 = v10;
            _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: session: %@ deactivated %d", buf, 0x12u);
          }
        }

        if (v6 && ![v6 isDeactivated])
        {
          LOBYTE(v3) = 1;
          goto LABEL_16;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (void)_handleNewContactlessSession:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handling new contactless session: %@", &v10, 0xCu);
    }
  }

  v8 = [a1 _outstandingSessionHashTable];
  [v8 addObject:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (NPKQuickPaymentSession)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NPKQuickPaymentSession;
  v6 = [(NPKQuickPaymentSession *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("NPKQuickPaymentSessionInternalQueue", v7);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v8;

    v10 = dispatch_queue_create("NPKQuickPaymentSessionQueue", v7);
    paymentSessionQueue = v6->_paymentSessionQueue;
    v6->_paymentSessionQueue = v10;

    objc_storeStrong(&v6->_callbackQueue, a3);
    v6->_requireFirstInQueue = 1;
    v6->_endSessionWhenAuthorizationIsConsumed = 1;
    atomic_store(0, &v6->_atomicIsSwitchingSessionTypeCount);
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(NPKQuickPaymentSession *)self contactlessSession];
  v5 = [v4 lifecycleState];

  if (v5 != 2)
  {
    v6 = [(NPKQuickPaymentSession *)self contactlessSession];
    [v6 invalidateSessionWithCompletion:&__block_literal_global_117];
  }

  objc_storeWeak(&self->_delegate, 0);
  [(PKFieldDetector *)self->_fieldDetector unregisterObserver:self];
  fieldDetector = self->_fieldDetector;
  self->_fieldDetector = 0;

  v8.receiver = self;
  v8.super_class = NPKQuickPaymentSession;
  [(NPKQuickPaymentSession *)&v8 dealloc];
}

void __33__NPKQuickPaymentSession_dealloc__block_invoke()
{
  v0 = pk_Payment_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);

  if (v1)
  {
    v2 = pk_Payment_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_DEFAULT, "Warning: Quick payment session: invalidated session we left open", v3, 2u);
    }
  }
}

- (BOOL)startSessionWithCompletion:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  [objc_opt_class() _handleNewContactlessSession:self];
  paymentSessionQueue = self->_paymentSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke;
  block[3] = &unk_279947610;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(paymentSessionQueue, block);
  LOBYTE(v4) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v4;
}

void __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke_2;
  v5[3] = &unk_2799475E8;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  *(*(*(a1 + 48) + 8) + 24) = [v2 _sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue:v5];
}

void __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 72));
  kdebug_trace();
  v2 = [*(a1 + 32) currentPass];
  if (v2)
  {
    [*(a1 + 32) _internalQueue_updateSessionWithCurrentPassAndLoyaltyState];
  }

  if ([*(a1 + 32) inServiceMode])
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke_3;
    block[3] = &unk_279944F98;
    block[4] = v3;
    dispatch_async(v4, block);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, *(*(*(a1 + 48) + 8) + 24));
  }
}

- (void)authorize18013RequestWithDataToRelease:(id)a3 credential:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Authorizing ISO18013 Request with dataToRelease:%@ credential:%@", buf, 0x16u);
    }
  }

  v11 = [(NPKQuickPaymentSession *)self paymentSessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NPKQuickPaymentSession_authorize18013RequestWithDataToRelease_credential___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(v11, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __76__NPKQuickPaymentSession_authorize18013RequestWithDataToRelease_credential___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactlessSession];
  [v2 authorize18013RequestWithDataToRelease:*(a1 + 40) credential:*(a1 + 48)];
}

- (void)executeRKEActionForPass:(id)a3 function:(id)a4 action:(id)a5 withCompletion:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = _Block_copy(v13);
      *buf = 138413058;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Executing RKE action for pass:%@ function:%@ action:%@ with completion:%@", buf, 0x2Au);
    }
  }

  if ([(NPKQuickPaymentSession *)self requireFirstInQueue])
  {
    v18 = pk_General_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v20 = pk_General_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v30 = "[NPKQuickPaymentSession executeRKEActionForPass:function:action:withCompletion:]";
        v31 = 2082;
        v32 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKQuickPaymentSession.m";
        v33 = 2048;
        v34 = 238;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: We don't need to require first in queue when executing RKE actions.)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke;
  v25[3] = &unk_279947688;
  v25[4] = self;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v21 = v13;
  v22 = v12;
  v23 = v11;
  [(NPKQuickPaymentSession *)self startSessionWithCompletion:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_2;
    block[3] = &unk_279945BB0;
    v10 = *(a1 + 32);
    v3 = *(v10 + 64);
    v4 = *(&v10 + 1);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v12 = v10;
    v13 = v7;
    dispatch_async(v3, block);
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

void __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contactlessSession];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_3;
  v5[3] = &unk_279947660;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  [v2 sendRKEFunction:v3 action:v4 withAuthorization:0 completion:v5];
}

void __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_4;
  v4[3] = &unk_279947638;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

uint64_t __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)setCurrentPass:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 uniqueID];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Payment session: setting current pass to %@", buf, 0xCu);
    }
  }

  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__NPKQuickPaymentSession_setCurrentPass___block_invoke;
  v12[3] = &unk_2799454E0;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  dispatch_sync(internalQueue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __41__NPKQuickPaymentSession_setCurrentPass___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) uniqueID];
  v3 = [*(a1 + 40) uniqueID];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 40) uniqueID];
        v9 = [*(*(a1 + 32) + 32) uniqueID];
        *buf = 138412546;
        *v39 = v8;
        *&v39[8] = 2112;
        *&v39[10] = v9;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Payment session: new pass: (%@) is same as current pass in session (%@), returning.", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = NPKQuickPaymentSessionTypeForPass(*(*(a1 + 32) + 32));
    v11 = *(*(a1 + 32) + 56);
    v12 = NPKQuickPaymentSessionTypeForPass(*(a1 + 40));
    v13 = v12;
    if (*(a1 + 40))
    {
      v16 = v10 != 1 || v11 != 1 || v11 != v12;
      if (*(*(a1 + 32) + 96))
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = pk_Payment_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = pk_Payment_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromNPKQuickPaymentSessionType(v10);
        v22 = NSStringFromNPKQuickPaymentSessionType(v11);
        v23 = NSStringFromNPKQuickPaymentSessionType(v13);
        v24 = *(a1 + 40);
        v25 = *(*(a1 + 32) + 96) != 0;
        *buf = 67110402;
        *v39 = v17;
        *&v39[4] = 2112;
        *&v39[6] = v21;
        *&v39[14] = 2112;
        *&v39[16] = v22;
        v40 = 2112;
        v41 = v23;
        v42 = 2112;
        v43 = v24;
        v44 = 1024;
        v45 = v25;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Needs to refresh session:%d, current pass sessionType:%@ current session:%@ expected:%@ currentPass:%@ hasContactLessSession:%d", buf, 0x36u);
      }
    }

    v26 = *(a1 + 32);
    if (v17)
    {
      add = atomic_fetch_add(v26 + 4, 1u);
      *(*(a1 + 32) + 21) = 0;
      v28 = pk_Payment_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        v30 = pk_Payment_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [*(a1 + 40) uniqueID];
          *buf = 138412546;
          *v39 = v31;
          *&v39[8] = 2048;
          *&v39[10] = add + 1;
          _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: refreshing session for pass with uniqueID:%@ count:%lu", buf, 0x16u);
        }
      }

      [*(*(a1 + 32) + 96) setDelegate:0];
      [*(a1 + 32) _internalQueue_deactivateSessionWithCompletion:&__block_literal_global_124];
      [*(a1 + 32) _internalQueue_setCurrentPass:*(a1 + 40)];
      v33 = *(a1 + 32);
      v32 = *(a1 + 40);
      v34 = *(v33 + 64);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_125;
      v36[3] = &unk_2799454E0;
      v36[4] = v33;
      v37 = v32;
      dispatch_async(v34, v36);
    }

    else
    {
      [(atomic_uint *)v26 _internalQueue_setCurrentPass:*(a1 + 40)];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_122()
{
  v0 = pk_Payment_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);

  if (v1)
  {
    v2 = pk_Payment_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_DEFAULT, "Notice: Old session deactivated", v3, 2u);
    }
  }
}

void __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_125(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_2;
  v2[3] = &unk_2799454E0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue:v2];
}

void __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  add = atomic_fetch_add((*(a1 + 32) + 16), 0xFFFFFFFF);
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = add - 1;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: finish refresh session count:%lu", &v7, 0xCu);
    }
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 72));
  if (*(a1 + 40))
  {
    [*(a1 + 32) _internalQueue_updateSessionWithCurrentPassAndLoyaltyState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_internalQueue_setCurrentPass:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  currentPass = self->_currentPass;
  objc_storeStrong(&self->_currentPass, a3);
  if (currentPass != v5)
  {
    v7 = NPKQuickPaymentSessionTypeForPass(v5);
    if ([(NPKQuickPaymentSession *)self sessionStarted])
    {
      if (v7 != self->_sessionType)
      {
        v8 = pk_General_log();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

        if (v9)
        {
          v10 = pk_General_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = NSStringFromNPKQuickPaymentSessionType(v7);
            v12 = NSStringFromNPKQuickPaymentSessionType(self->_sessionType);
            *buf = 138412802;
            v22 = v11;
            v23 = 2112;
            v24 = v5;
            v25 = 2112;
            v26 = v12;
            _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: expected session type:%@ for pass:%@, current session type:%@ doesn't match. Expect bad thing to happen.", buf, 0x20u);
          }
        }
      }
    }

    callbackQueue = self->_callbackQueue;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __56__NPKQuickPaymentSession__internalQueue_setCurrentPass___block_invoke;
    v18 = &unk_2799454E0;
    v19 = self;
    v20 = v5;
    dispatch_async(callbackQueue, &v15);
    if (self->_contactlessSession)
    {
      [(NPKQuickPaymentSession *)self _internalQueue_updateSessionWithCurrentPassAndLoyaltyState:v15];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __56__NPKQuickPaymentSession__internalQueue_setCurrentPass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) didMakePassCurrent:*(a1 + 40)];
  }
}

- (void)setVasPasses:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NPKQuickPaymentSession_setVasPasses___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void *__39__NPKQuickPaymentSession_setVasPasses___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  result = *(a1 + 32);
  if (result[12])
  {

    return [result _internalQueue_updateSessionWithCurrentPassAndLoyaltyState];
  }

  return result;
}

- (void)setCredential:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: requested to set credential:%@", buf, 0xCu);
    }
  }

  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__NPKQuickPaymentSession_setCredential___block_invoke;
  v11[3] = &unk_2799454E0;
  v12 = v4;
  v13 = self;
  v9 = v4;
  dispatch_async(internalQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __40__NPKQuickPaymentSession_setCredential___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: setting credential:%@", buf, 0xCu);
    }
  }

  objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
  v6 = *(a1 + 40);
  if (*(v6 + 25) == 1)
  {
    [v6 _updateSessionWithCredentialAndActivate];
    v6 = *(a1 + 40);
  }

  v7 = *(v6 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NPKQuickPaymentSession_setCredential___block_invoke_128;
  block[3] = &unk_279944F98;
  block[4] = v6;
  dispatch_async(v7, block);
  v8 = *MEMORY[0x277D85DE8];
}

void __40__NPKQuickPaymentSession_setCredential___block_invoke_128(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: paymentSessionDidReceiveCredential callback", v8, 2u);
    }
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 paymentSessionDidReceiveCredential:*(a1 + 32)];
  }
}

- (void)confirmSessionExpectingCredential:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__NPKQuickPaymentSession_confirmSessionExpectingCredential___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

uint64_t __60__NPKQuickPaymentSession_confirmSessionExpectingCredential___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 25);
  *(v1 + 25) = 1;
  if ((v2 & 1) == 0 && (*(*(result + 32) + 8) || (*(result + 40) & 1) == 0))
  {
    return [*(result + 32) _updateSessionWithCredentialAndActivate];
  }

  return result;
}

- (void)setDeferAuthorization:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"no";
      if (v3)
      {
        v8 = @"yes";
      }

      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Setting defer authorization on quick payment session: %@", buf, 0xCu);
    }
  }

  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__NPKQuickPaymentSession_setDeferAuthorization___block_invoke;
  v11[3] = &unk_279944FC0;
  v11[4] = self;
  v12 = v3;
  dispatch_sync(internalQueue, v11);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setInServiceMode:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__NPKQuickPaymentSession_setInServiceMode___block_invoke;
  v4[3] = &unk_279944FC0;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(internalQueue, v4);
}

void __43__NPKQuickPaymentSession_setInServiceMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 22))
  {
    *(v2 + 22) = v1;
    if (*(a1 + 40) == 1)
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__NPKQuickPaymentSession_setInServiceMode___block_invoke_2;
      block[3] = &unk_279944F98;
      block[4] = v3;
      dispatch_async(v4, block);
    }

    else
    {
      v5 = pk_Payment_log();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v7 = pk_Payment_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Cannot disable persistent card emulation on a session!", v8, 2u);
        }
      }
    }
  }
}

void __43__NPKQuickPaymentSession_setInServiceMode___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _sessionQueue_enablePersistentCardEmulation])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__NPKQuickPaymentSession_setInServiceMode___block_invoke_3;
    block[3] = &unk_279944F98;
    block[4] = v2;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Failed to enable service mode!", v7, 2u);
      }
    }
  }
}

- (void)setInField:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__NPKQuickPaymentSession_setInField___block_invoke;
  v4[3] = &unk_279944FC0;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(internalQueue, v4);
}

uint64_t __37__NPKQuickPaymentSession_setInField___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 23))
  {
    *(v2 + 23) = v1;
  }

  return result;
}

- (void)_updateSessionWithCredentialAndActivate
{
  kdebug_trace();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 26);
  *(v2 + 26) = 1;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @" (first activation)";
      if (v3)
      {
        v7 = &stru_286C934F8;
      }

      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: updating session%@", buf, 0xCu);
    }
  }

  v8 = [*(a1 + 32) contactlessSession];
  v9 = [*(a1 + 32) deferAuthorization];
  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_143;
  v13[3] = &unk_279947700;
  v15 = v3 ^ 1;
  v13[4] = v10;
  v14 = v8;
  v16 = v9;
  v11 = v8;
  [v10 _internalQueue_getContactlessAndAuthorizationValidityAndPerformWork:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_143(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_2;
    block[3] = &unk_279944F98;
    block[4] = v6;
    dispatch_async(v7, block);
  }

  v8 = *(*(a1 + 32) + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_3;
  v11[3] = &unk_2799476D8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  v14 = a2;
  v15 = a3;
  v16 = *(a1 + 49);
  dispatch_async(v8, v11);
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 currentPass];
    [v6 paymentSession:v4 willActivatePass:v5];
  }
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v2;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Confirm or renew quick payment session state is %u", buf, 8u);
    }
  }

  if ((v2 - 1) <= 1)
  {
    v6 = *(a1 + 56);
    v9 = *(a1 + 64);
    v8 = *(a1 + 48);
    [*(a1 + 40) _checkContactlessValidity:? authorizationValidity:? performWork:?];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_146(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 contactlessSession];
    v5 = [v4 activatedPaymentApplications];
    v6 = [v3 _sessionQueue_authorizeWithUseCredential:objc_msgSend(v5 deferAuthorizationIfCredentialUsed:{"count") != 0, *(a1 + 48)}];

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [v8 currentPass];
    [v8 _sessionQueue_invokeAppropriateCallbackForActivationWithSuccess:v6 invokeOnSuccess:1 contactlessValidity:v7 forPass:v9];
  }
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
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: deactivating session", buf, 2u);
    }
  }

  *buf = 0;
  v16 = buf;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [(NPKQuickPaymentSession *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKQuickPaymentSession_deactivateSessionWithCompletion___block_invoke;
  block[3] = &unk_279947610;
  v14 = buf;
  block[4] = self;
  v9 = v4;
  v13 = v9;
  dispatch_sync(v8, block);

  if ((v16[24] & 1) == 0)
  {
    callbackQueue = self->_callbackQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__NPKQuickPaymentSession_deactivateSessionWithCompletion___block_invoke_2;
    v11[3] = &unk_279944F98;
    v11[4] = self;
    dispatch_async(callbackQueue, v11);
  }

  _Block_object_dispose(buf, 8);
}

uint64_t __58__NPKQuickPaymentSession_deactivateSessionWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDeactivating])
  {
    v2 = 1;
  }

  else
  {
    v2 = [*(a1 + 32) isDeactivated];
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _internalQueue_deactivateSessionWithCompletion:v4];
}

- (void)_internalQueue_deactivateSessionWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKQuickPaymentSession *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v14 = [(NPKQuickPaymentSession *)self isDeactivating];
      v15 = 1024;
      v16 = [(NPKQuickPaymentSession *)self isDeactivated];
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Deactivate quick payment session: deactivating %d deactivated %d", buf, 0xEu);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke;
  v11[3] = &unk_279947728;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  [(NPKQuickPaymentSession *)self _internalQueue_updateContactlessValidityAndPerformWork:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactlessSession];
  v3 = [*(a1 + 32) contactlessSessionHandle];
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) deactivationCompletionBlocks];

    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 32) setDeactivationCompletionBlocks:v5];
    }

    v6 = [*(a1 + 32) deactivationCompletionBlocks];
    v7 = _Block_copy(*(a1 + 40));
    [v6 addObject:v7];
  }

  if (([*(a1 + 32) isDeactivating] & 1) == 0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_2;
    aBlock[3] = &unk_2799454E0;
    aBlock[4] = *(a1 + 32);
    v8 = v2;
    v19 = v8;
    v9 = _Block_copy(aBlock);
    kdebug_trace();
    if (v8)
    {
      v10 = *(*(a1 + 32) + 64);
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_2_150;
      v15 = &unk_279945530;
      v16 = v8;
      v17 = v9;
      dispatch_async(v10, &v12);
    }

    else
    {
      [v3 invalidateSessionWithCompletion:v9];
    }

    [*(a1 + 32) setContactlessSessionHandle:{0, v12, v13, v14, v15}];
    [*(a1 + 32) setContactlessSession:0];
    v11 = [*(a1 + 32) fieldDetector];
    [v11 unregisterObserver:*(a1 + 32)];

    [*(a1 + 32) setFieldDetector:0];
    [*(a1 + 32) setDeactivating:1];
  }
}

void __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_2(uint64_t a1)
{
  kdebug_trace();
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Deactivate quick payment session: underlying session deactivated", buf, 2u);
    }
  }

  v5 = *(*(a1 + 32) + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_149;
  v8[3] = &unk_2799454E0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  dispatch_async(v5, v8);
}

uint64_t __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_149(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  [*(a1 + 40) setDeactivating:0];
  [*(a1 + 40) setDeactivated:1];
  v2 = *(a1 + 40);

  return [v2 _internalQueue_invokeDeactivationCompletionBlocks];
}

- (void)_internalQueue_updateContactlessSessionForPass:(id)a3 vasPasses:(id)a4 deferAuthorization:(BOOL)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 uniqueID];
      v14 = [v9 pk_arrayByApplyingBlock:&__block_literal_global_154];
      *buf = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Internal queue: updating contactless session for pass %@ auto-select VAS passes %@", buf, 0x16u);
    }
  }

  dispatch_assert_queue_V2(self->_internalQueue);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_158;
  v18[3] = &unk_2799477A0;
  v19 = v8;
  v20 = self;
  v21 = v9;
  v22 = a5;
  v15 = v9;
  v16 = v8;
  [(NPKQuickPaymentSession *)self _internalQueue_updateContactlessValidityAndPerformWork:v18];

  v17 = *MEMORY[0x277D85DE8];
}

id __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 passTypeIdentifier];
  v5 = [v3 uniqueID];

  v6 = [v2 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

void __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_158(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) paymentPass];
  v5 = [v4 npkPreferredContactlessPaymentApplications];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v7 + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_2;
  v10[3] = &unk_279947778;
  v10[4] = v7;
  v14 = a2;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 48);
  v15 = *(a1 + 56);
  v9 = v5;
  dispatch_async(v8, v10);
}

void __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_3;
  v10[3] = &unk_279947750;
  v4 = *(a1 + 32);
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *v2;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v14 = *(a1 + 72);
  v13 = *(a1 + 64);
  [v4 _checkContactlessValidity:v3 performWork:v10];
}

void __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_3(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) paymentPass];
    if (!v3 || ([*(a1 + 32) paymentPass], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "contactlessActivationState"), v4, v3, !v5))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(v7 + 80);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_4;
      block[3] = &unk_2799454E0;
      block[4] = v7;
      v30 = v6;
      dispatch_async(v8, block);
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v9 = *(a1 + 40);
    v10 = *(v9 + 72);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_5;
    v24[3] = &unk_279944FE8;
    v24[4] = v9;
    v24[5] = &v25;
    dispatch_sync(v10, v24);
    v11 = [*(a1 + 40) _sessionQueue_updateContactlessSessionForPass:*(a1 + 32) paymentApplications:*(a1 + 48) vasPasses:*(a1 + 56) sessionConfirmed:*(v26 + 24) deferAuthorization:*(a1 + 72)];
    v12 = [*(a1 + 40) contactlessSession];
    v13 = [v12 activatedPaymentApplications];
    if ([v13 count])
    {
      v14 = 1;
    }

    else
    {
      v15 = [*(a1 + 40) contactlessSession];
      v16 = [v15 activatedValueAddedServicePasses];
      v14 = [v16 count] != 0;
    }

    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(v26 + 24);
        *buf = 67109632;
        v32 = v11;
        v33 = 1024;
        v34 = v14;
        v35 = 1024;
        v36 = v20;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Internal queue update contactless session: success %d now activated %d session confirmed %d", buf, 0x14u);
      }

      v21 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v21 = *(a1 + 40);
      if (!v14)
      {
LABEL_12:
        v22 = 0;
LABEL_15:
        [v21 _sessionQueue_invokeAppropriateCallbackForActivationWithSuccess:v11 invokeOnSuccess:v22 & 1 contactlessValidity:*(a1 + 64) forPass:*(a1 + 32)];
        _Block_object_dispose(&v25, 8);
        goto LABEL_16;
      }
    }

    v22 = *(v26 + 24);
    goto LABEL_15;
  }

LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
}

void __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) willActivatePass:*(a1 + 40)];
  }
}

uint64_t __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) isConfirmed];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_sessionQueue_updateContactlessSessionForPass:(id)a3 paymentApplications:(id)a4 vasPasses:(id)a5 sessionConfirmed:(BOOL)a6 deferAuthorization:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v58 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = pk_Payment_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = pk_Payment_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v12 uniqueID];
      v19 = [v14 pk_arrayByApplyingBlock:&__block_literal_global_160];
      v20 = [(NPKQuickPaymentSession *)self contactlessSession];
      *buf = 138412802;
      v54 = v18;
      v55 = 2112;
      *v56 = v19;
      *&v56[8] = 2112;
      v57 = v20;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Session queue update contactless session: pass %@ auto-select VAS passes %@ (session %@)", buf, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_paymentSessionQueue);
  v21 = [v12 paymentPass];
  v22 = [(NPKQuickPaymentSession *)self contactlessSession];

  if (!v22)
  {
    v26 = 1;
    goto LABEL_38;
  }

  v23 = MEMORY[0x277CBEBF8];
  if (v14)
  {
    v23 = v14;
  }

  v24 = v23;
  v48 = v7;
  if (!v12)
  {
    goto LABEL_15;
  }

  if (!v21)
  {
    v27 = [v12 nfcPayload];

    if (v27)
    {
      v52 = v12;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];

      v25 = 0;
      v24 = v28;
      goto LABEL_16;
    }

LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

  if ([v21 contactlessActivationState])
  {
    goto LABEL_15;
  }

  v25 = v13;
LABEL_16:
  v29 = pk_Payment_log();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v31 = pk_Payment_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v24 pk_arrayByApplyingBlock:&__block_literal_global_164];
      *buf = 138412290;
      v54 = v32;
      _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: Using VAS passes when updating contactless session: %@", buf, 0xCu);
    }
  }

  v49 = v12;
  v50 = v8;
  v51 = v14;
  v33 = v13;
  kdebug_trace();
  v34 = [(NPKQuickPaymentSession *)self contactlessSession];
  v35 = [v34 activatedValueAddedServicePasses];
  v36 = PKEqualObjects();

  v37 = v24;
  if (v36)
  {
    v38 = 1;
  }

  else
  {
    v38 = [v34 activateValueAddedServicePasses:v24];
  }

  if ([v25 count])
  {
    v39 = v21;
  }

  else
  {
    v39 = 0;
  }

  v40 = [v34 activatePaymentApplications:v25 forPaymentPass:v39];
  kdebug_trace();
  v41 = pk_Payment_log();
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

  if (v42)
  {
    v43 = pk_Payment_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v54 = v34;
      v55 = 1024;
      *v56 = v38;
      *&v56[4] = 1024;
      *&v56[6] = v40;
      LOWORD(v57) = 1024;
      *(&v57 + 2) = v50;
      _os_log_impl(&dword_25B300000, v43, OS_LOG_TYPE_DEFAULT, "Notice: Session queue update contactless session::%@ VAS success %d payment success %d session confirmed %d", buf, 0x1Eu);
    }
  }

  v13 = v33;
  v26 = v38 | v40;
  if (v26)
  {
    v14 = v51;
    v44 = v37;
    v12 = v49;
    if (v50)
    {
      if ([v25 count] || objc_msgSend(v44, "count"))
      {
        v45 = [v34 activatedPaymentApplications];
        v26 = -[NPKQuickPaymentSession _sessionQueue_authorizeWithUseCredential:deferAuthorizationIfCredentialUsed:](self, "_sessionQueue_authorizeWithUseCredential:deferAuthorizationIfCredentialUsed:", [v45 count] != 0, v48);
      }

      else
      {
        v26 = 1;
      }
    }
  }

  else
  {
    v14 = v51;
    v44 = v37;
    v12 = v49;
  }

LABEL_38:
  v46 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

- (void)_sessionQueue_invokeAppropriateCallbackForActivationWithSuccess:(BOOL)a3 invokeOnSuccess:(BOOL)a4 contactlessValidity:(unint64_t)a5 forPass:(id)a6
{
  v7 = a4;
  v8 = a3;
  v30 = *MEMORY[0x277D85DE8];
  v10 = a6;
  dispatch_assert_queue_V2(self->_paymentSessionQueue);
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      v23 = v8;
      v24 = 1024;
      v25 = v7;
      v26 = 1024;
      v27 = a5;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Invoking callback for activation: success %d invokeOnSuccess %d contactlessValidity %u pass %@", buf, 0x1Eu);
    }
  }

  callbackQueue = self->_callbackQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __134__NPKQuickPaymentSession__sessionQueue_invokeAppropriateCallbackForActivationWithSuccess_invokeOnSuccess_contactlessValidity_forPass___block_invoke;
  v17[3] = &unk_2799477F0;
  v20 = v8;
  v21 = v7;
  v18 = v10;
  v19 = a5;
  v17[4] = self;
  v15 = v10;
  dispatch_async(callbackQueue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __134__NPKQuickPaymentSession__sessionQueue_invokeAppropriateCallbackForActivationWithSuccess_invokeOnSuccess_contactlessValidity_forPass___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 57) == 1)
    {
      v1 = *(a1 + 32);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __134__NPKQuickPaymentSession__sessionQueue_invokeAppropriateCallbackForActivationWithSuccess_invokeOnSuccess_contactlessValidity_forPass___block_invoke_2;
      v5[3] = &unk_2799477C8;
      v7 = 1;
      v5[4] = v1;
      v2 = *(a1 + 48);
      v6 = *(a1 + 40);
      [v1 _checkContactlessValidity:v2 performWork:v5];
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [v3 endSessionWhenAuthorizationIsConsumed];

    [v3 _callbackQueue_invokeDidCompleteForReason:4 withTransactionContext:0 shouldCleanupSession:v4];
  }
}

void __134__NPKQuickPaymentSession__sessionQueue_invokeAppropriateCallbackForActivationWithSuccess_invokeOnSuccess_contactlessValidity_forPass___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 48) == 1)
    {
      v3 = [*(a1 + 32) delegate];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v5 = [*(a1 + 32) delegate];
        [v5 paymentSession:*(a1 + 32) didActivatePass:*(a1 + 40)];
      }
    }
  }
}

- (BOOL)_sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_paymentSessionQueue);
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Starting contactless session on session queue", buf, 2u);
    }
  }

  v8 = dispatch_group_create();
  *buf = 0;
  v54 = buf;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__10;
  v57 = __Block_byref_object_dispose__10;
  v58 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__10;
  v51[4] = __Block_byref_object_dispose__10;
  v52 = 0;
  dispatch_group_enter(v8);
  dispatch_group_enter(v8);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke;
  aBlock[3] = &unk_279947818;
  v49 = buf;
  v50 = v51;
  v9 = v8;
  v48 = v9;
  v10 = _Block_copy(aBlock);
  v11 = dispatch_get_global_queue(33, 0);
  v12 = NPKQuickPaymentSessionTypeForPass(self->_currentPass);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v18 = [MEMORY[0x277D380F8] startDigitalCarKeySessionWithCompletion:v10 targetQueue:v11];
      v19 = 2;
    }

    else
    {
      v18 = [MEMORY[0x277D380F8] startSTSContactlessInterfaceSessionWithDelegate:self completion:v10];
      v19 = 3;
    }
  }

  else
  {
    if (!v12)
    {
      v13 = pk_General_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        v15 = pk_General_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = NSStringFromNPKQuickPaymentSessionType(0);
          currentPass = self->_currentPass;
          *v59 = 138412802;
          v60 = v16;
          v61 = 2112;
          v62 = @"NPKQuickPaymentSessionContactlessType";
          v63 = 2112;
          v64 = currentPass;
          _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: falling back from session type:%@ to:%@ for pass:%@.", v59, 0x20u);
        }
      }
    }

    v18 = [MEMORY[0x277D380F8] startContactlessInterfaceSessionWithCompletion:v10 targetQueue:v11];
    v19 = 1;
  }

  self->_sessionType = v19;
  v20 = pk_General_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v22 = pk_General_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = NSStringFromNPKQuickPaymentSessionType(v19);
      v24 = self->_currentPass;
      *v59 = 138412802;
      v60 = v18;
      v61 = 2112;
      v62 = v23;
      v63 = 2112;
      v64 = v24;
      _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Obtain session handler:%@ for sessionType:%@ pass:%@", v59, 0x20u);
    }
  }

  v25 = [v18 isFirstInQueue];
  v26 = ![(NPKQuickPaymentSession *)self requireFirstInQueue]| v25;
  if (v26)
  {
    if ((v25 & 1) == 0)
    {
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_169;
      block[3] = &unk_279944F98;
      block[4] = self;
      dispatch_async(callbackQueue, block);
    }

    internalQueue = self->_internalQueue;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_2;
    v44[3] = &unk_2799454E0;
    v44[4] = self;
    v45 = v18;
    dispatch_sync(internalQueue, v44);
  }

  else
  {
    v29 = pk_Payment_log();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      v31 = pk_Payment_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 0;
        _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: Was not first in queue; tearing down and invalidating session", v59, 2u);
      }
    }

    [v18 invalidateSession];
    v32 = self->_internalQueue;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_172;
    v43[3] = &unk_279944F98;
    v43[4] = self;
    dispatch_sync(v32, v43);
  }

  dispatch_group_leave(v9);
  v33 = [(NPKQuickPaymentSession *)self internalQueue];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_2_173;
  v37[3] = &unk_279947840;
  v41 = v26 & 1;
  v42 = v25;
  v37[4] = self;
  v38 = v4;
  v39 = buf;
  v40 = v51;
  v34 = v4;
  dispatch_group_notify(v9, v33, v37);

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(buf, 8);

  v35 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_169(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionIsWaitingToStart:*(a1 + 32)];
  }
}

void __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_2_173(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412290;
        v22 = v13;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: No contactless session; marking as deactivated (error: %@)", buf, 0xCu);
      }
    }

    [*(a1 + 32) setContactlessSession:0];
    [*(a1 + 32) setContactlessSessionHandle:0];
    v14 = [*(a1 + 32) fieldDetector];
    [v14 unregisterObserver:*(a1 + 32)];

    [*(a1 + 32) setFieldDetector:0];
    [*(a1 + 32) setDeactivating:0];
    [*(a1 + 32) setDeactivated:1];
    *(*(a1 + 32) + 56) = 0;
    if (*(a1 + 64) == 1)
    {
      v15 = *(a1 + 32);
      v16 = *(v15 + 80);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_177;
      v19[3] = &unk_279944F98;
      v19[4] = v15;
      dispatch_async(v16, v19);
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 setContactlessSession:?];
    [*(*(*(a1 + 48) + 8) + 40) setDelegate:*(a1 + 32)];
    v4 = [*(a1 + 32) fieldDetector];

    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D37EE0]);
      [*(a1 + 32) setFieldDetector:v5];

      v6 = [*(a1 + 32) fieldDetector];
      [v6 registerObserver:*(a1 + 32)];
    }

    if ((*(a1 + 65) & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 80);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_3;
      block[3] = &unk_279944F98;
      block[4] = v7;
      dispatch_async(v8, block);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))();
    }

LABEL_15:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v18 = *MEMORY[0x277D85DE8];

  [v3 _internalQueue_deactivateSessionWithCompletion:0];
}

void __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidStart:*(a1 + 32)];
  }
}

- (BOOL)_sessionQueue_enablePersistentCardEmulation
{
  dispatch_assert_queue_V2(self->_paymentSessionQueue);
  v3 = [(NPKQuickPaymentSession *)self contactlessSession];

  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Enabling persistent card emulation", buf, 2u);
      }
    }

    v7 = [(NPKQuickPaymentSession *)self contactlessSession];
    v8 = [v7 queuePersistentCardEmulation];
  }

  else
  {
    if (!v5)
    {
      return 1;
    }

    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: No contactless session; not yet enabling persistent card emulation", v10, 2u);
    }

    v8 = 1;
  }

  return v8;
}

void __102__NPKQuickPaymentSession__sessionQueue_authorizeWithUseCredential_deferAuthorizationIfCredentialUsed___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8));
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 56);
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 40) count] != 0;
  if ((*(a1 + 64) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
  }
}

- (void)_internalQueue_updateSessionWithCurrentPassAndLoyaltyState
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: updating with current pass and loyalty state", v8, 2u);
    }
  }

  currentPass = self->_currentPass;
  v7 = [(NSDictionary *)self->_vasPasses allValues];
  [(NPKQuickPaymentSession *)self _internalQueue_updateContactlessSessionForPass:currentPass vasPasses:v7 deferAuthorization:[(NPKQuickPaymentSession *)self deferAuthorization]];
}

- (void)_internalQueue_updateContactlessValidityAndPerformWork:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  v4 = v5;
  ++self->_contactlessValidity;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)_updateAuthorizationValidity
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NPKQuickPaymentSession__updateAuthorizationValidity__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_getContactlessAndAuthorizationValidityAndPerformWork:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, self->_contactlessValidity, self->_authorizationValidity);
    v4 = v5;
  }
}

- (void)_checkContactlessValidity:(unint64_t)a3 performWork:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__NPKQuickPaymentSession__checkContactlessValidity_performWork___block_invoke;
    block[3] = &unk_279947890;
    block[5] = &v9;
    block[6] = a3;
    block[4] = self;
    dispatch_sync(internalQueue, block);
    v6[2](v6, *(v10 + 24));
    _Block_object_dispose(&v9, 8);
  }
}

void *__64__NPKQuickPaymentSession__checkContactlessValidity_performWork___block_invoke(void *result)
{
  if (result[6] == *(result[4] + 104))
  {
    *(*(result[5] + 8) + 24) = 1;
  }

  return result;
}

- (void)_checkContactlessValidity:(unint64_t)a3 authorizationValidity:(unint64_t)a4 performWork:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    internalQueue = self->_internalQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__NPKQuickPaymentSession__checkContactlessValidity_authorizationValidity_performWork___block_invoke;
    v10[3] = &unk_2799478B8;
    v10[6] = a3;
    v10[7] = a4;
    v10[4] = self;
    v10[5] = &v11;
    dispatch_sync(internalQueue, v10);
    v8[2](v8, *(v12 + 24));
    _Block_object_dispose(&v11, 8);
  }
}

void *__86__NPKQuickPaymentSession__checkContactlessValidity_authorizationValidity_performWork___block_invoke(void *result)
{
  v1 = result[4];
  if (result[6] == *(v1 + 104) && result[7] == *(v1 + 112))
  {
    *(*(result[5] + 8) + 24) = 1;
  }

  return result;
}

- (void)contactlessInterfaceSessionDidFailTransaction:(id)a3 forPaymentApplication:(id)a4 paymentPass:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 applicationIdentifier];
      v13 = [v8 uniqueID];
      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: did fail transaction for AID %@ and pass with unique ID %@", buf, 0x16u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__NPKQuickPaymentSession_contactlessInterfaceSessionDidFailTransaction_forPaymentApplication_paymentPass___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __106__NPKQuickPaymentSession_contactlessInterfaceSessionDidFailTransaction_forPaymentApplication_paymentPass___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 endSessionWhenAuthorizationIsConsumed];

  return [v1 _callbackQueue_invokeDidCompleteForReason:5 withTransactionContext:0 shouldCleanupSession:v2];
}

- (void)contactlessInterfaceSessionDidTimeout:(id)a3 forPaymentApplications:(id)a4 paymentPass:(id)a5 valueAddedServicePasses:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [a4 pk_createArrayByApplyingBlock:&__block_literal_global_180];
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 uniqueID];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Session timed out for AID(s) %@ and pass with unique ID %@", buf, 0x16u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__NPKQuickPaymentSession_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_181;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __123__NPKQuickPaymentSession_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_181(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 22) == 1)
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Ignoring timeout for service mode (should get persistent card emulation event instead)", buf, 2u);
      }
    }
  }

  else
  {
    v5 = *(v1 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __123__NPKQuickPaymentSession_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_182;
    block[3] = &unk_279944F98;
    block[4] = v1;
    dispatch_async(v5, block);
  }
}

uint64_t __123__NPKQuickPaymentSession_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_182(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 endSessionWhenAuthorizationIsConsumed];

  return [v1 _callbackQueue_invokeDidCompleteForReason:2 withTransactionContext:0 shouldCleanupSession:v2];
}

- (void)contactlessInterfaceSessionDidFail:(id)a3 forPaymentApplications:(id)a4 paymentPass:(id)a5 valueAddedServicePasses:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [a4 pk_createArrayByApplyingBlock:&__block_literal_global_184];
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 uniqueID];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Session failed for AID(s) %@ and pass with unique ID %@", buf, 0x16u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__NPKQuickPaymentSession_contactlessInterfaceSessionDidFail_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_185;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)contactlessInterfaceSessionDidStartTransaction:(id)a3 withContext:(id)a4
{
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Received Start Transaction", buf, 2u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NPKQuickPaymentSession_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __85__NPKQuickPaymentSession_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 22) == 1)
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: In service mode; ignoring Start Transaction", buf, 2u);
      }
    }
  }

  else
  {
    v5 = *(v1 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__NPKQuickPaymentSession_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke_186;
    block[3] = &unk_279944F98;
    block[4] = v1;
    dispatch_async(v5, block);
  }
}

void __85__NPKQuickPaymentSession_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke_186(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidReceiveStartTransaction:*(a1 + 32)];
  }
}

- (void)contactlessInterfaceSession:(id)a3 didReceive18013Request:(id)a4 readerAuthInfo:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: did received ISO18013 Requests %@", buf, 0xCu);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__NPKQuickPaymentSession_contactlessInterfaceSession_didReceive18013Request_readerAuthInfo___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v17 = v7;
  v18 = v8;
  v13 = v8;
  v14 = v7;
  dispatch_async(callbackQueue, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __92__NPKQuickPaymentSession_contactlessInterfaceSession_didReceive18013Request_readerAuthInfo___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 48));
    [v4 paymentSession:a1[4] didReceive18013Request:a1[5] readerAuthInfo:a1[6]];
  }
}

- (void)contactlessInterfaceSessionDidReceiveActivityTimeout:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Received activity timeout", buf, 2u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __79__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 22) == 1)
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: In service mode; ignoring activity timeout", buf, 2u);
      }
    }
  }

  else
  {
    v5 = *(v1 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke_191;
    block[3] = &unk_279944F98;
    block[4] = v1;
    dispatch_async(v5, block);
  }
}

void __79__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke_191(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidReceiveActivityTimeout:*(a1 + 32)];
  }
}

- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Received Finish Transaction", &v24, 2u);
    }
  }

  v9 = [v5 transitHistory];
  if (v9)
  {
    v10 = [v5 transaction];

    if (!v10)
    {
      v18 = pk_Payment_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v15 = pk_Payment_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          v16 = "Notice: Handling truth-on-card transit transaction";
          goto LABEL_19;
        }

LABEL_20:
      }

LABEL_21:
      [(NPKQuickPaymentSession *)self _handleTransactionCompleteWithContext:v5, v24];
      goto LABEL_22;
    }
  }

  v11 = [v5 paymentPass];
  v12 = [v11 isTransitPass];

  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v16 = "Notice: Handling transit transaction";
LABEL_19:
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, v16, &v24, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v14)
  {
    v17 = pk_Payment_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Handling conventional transaction", &v24, 2u);
    }
  }

  [(NPKQuickPaymentSession *)self _handleConventionalTransactionWithContext:v5];
LABEL_22:
  v20 = MEMORY[0x277D37D28];
  v21 = *MEMORY[0x277D38538];
  v25 = *MEMORY[0x277D384A0];
  v26[0] = *MEMORY[0x277D384A8];
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [v20 subject:v21 sendEvent:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)contactlessInterfaceSessionDidReceiveUntrustedTerminal:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: contactlessInterfaceSessionDidReceiveUntrustedTerminal:%@", buf, 0xCu);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveUntrustedTerminal___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
  v9 = MEMORY[0x277D37D28];
  v10 = *MEMORY[0x277D38538];
  v19[0] = *MEMORY[0x277D38558];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v12 = *MEMORY[0x277D383C0];
  v17[0] = *MEMORY[0x277D383D8];
  v17[1] = v12;
  v13 = *MEMORY[0x277D383D0];
  v18[0] = *MEMORY[0x277D38458];
  v18[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v9 subjects:v11 sendEvent:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)contactlessInterfaceSessionDidReceiveTerminalError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: contactlessInterfaceSessionDidReceiveTerminalError: %@", buf, 0xCu);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveTerminalError___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)contactlessInterfaceSessionDidTerminate:(id)a3 withErrorCode:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: contactlessInterfaceSessionDidTerminate:%@ with error code:%lu", buf, 0x16u);
    }
  }

  callbackQueue = self->_callbackQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__NPKQuickPaymentSession_contactlessInterfaceSessionDidTerminate_withErrorCode___block_invoke;
  v12[3] = &unk_279945830;
  v12[4] = self;
  v12[5] = a4;
  dispatch_async(callbackQueue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __80__NPKQuickPaymentSession_contactlessInterfaceSessionDidTerminate_withErrorCode___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = 5;
  if (v2 == 3)
  {
    v4 = 9;
  }

  if (v2 == 2)
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  return [v1 _callbackQueue_invokeDidCompleteForReason:v5 withTransactionContext:0 shouldCleanupSession:1];
}

- (void)contactlessInterfaceSessionDidTerminate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: contactlessInterfaceSessionDidTerminate:%@", buf, 0xCu);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NPKQuickPaymentSession_contactlessInterfaceSessionDidTerminate___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)contactlessInterfaceSession:(id)a3 didEndPersistentCardEmulationWithContexts:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: ended persistent card emulation with contexts: %@", &v13, 0xCu);
    }
  }

  v11 = [v6 firstObject];
  [(NPKQuickPaymentSession *)self contactlessInterfaceSession:v7 didFinishTransactionWithContext:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)contactlessInterfaceSessionDidSelectPayment:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: selected payment", buf, 2u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NPKQuickPaymentSession_contactlessInterfaceSessionDidSelectPayment___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __70__NPKQuickPaymentSession_contactlessInterfaceSessionDidSelectPayment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidSelectPayment:*(a1 + 32)];
  }
}

- (void)contactlessInterfaceSessionDidSelectValueAddedService:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: selected VAS", buf, 2u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NPKQuickPaymentSession_contactlessInterfaceSessionDidSelectValueAddedService___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __80__NPKQuickPaymentSession_contactlessInterfaceSessionDidSelectValueAddedService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidSelectValueAddedService:*(a1 + 32)];
  }
}

- (void)contactlessInterfaceSessionDidFailDeferredAuthorization:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: failed deferred authorization", buf, 2u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NPKQuickPaymentSession_contactlessInterfaceSessionDidFailDeferredAuthorization___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)contactlessInterfaceSessionHasPendingServerRequest:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: has pending server request, sending timeout event", buf, 2u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NPKQuickPaymentSession_contactlessInterfaceSessionHasPendingServerRequest___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)stsSession:(id)a3 didDetectField:(BOOL)a4
{
  if (a4)
  {
    [(NPKQuickPaymentSession *)self _handleFieldEntry];
  }

  else
  {
    [(NPKQuickPaymentSession *)self _handleFieldExit];
  }
}

- (void)_handleTransactionCompleteWithContext:(id)a3
{
  v4 = a3;
  callbackQueue = self->_callbackQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__NPKQuickPaymentSession__handleTransactionCompleteWithContext___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, v7);
}

uint64_t __64__NPKQuickPaymentSession__handleTransactionCompleteWithContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 endSessionWhenAuthorizationIsConsumed];

  return [v1 _callbackQueue_invokeDidCompleteForReason:3 withTransactionContext:v2 shouldCleanupSession:v3];
}

- (void)_handleConventionalTransactionWithContext:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 paymentApplication];
  v6 = [v4 paymentPass];
  v7 = [v4 transaction];
  v8 = [v4 valueAddedServicePasses];
  v9 = [v4 valueAddedServiceTransactions];
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v5 applicationIdentifier];
      v13 = [v6 uniqueID];
      *buf = 138413570;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v8;
      v29 = 1024;
      v30 = [v4 success];
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Transaction: %@ AID: %@ UniqueID: %@ valueAddedServiceTransactions: %@ valueAddedServicePasses: %@ success: %u", buf, 0x3Au);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v24) = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__NPKQuickPaymentSession__handleConventionalTransactionWithContext___block_invoke;
  v22[3] = &unk_279946E28;
  v22[4] = buf;
  [v9 enumerateObjectsUsingBlock:v22];
  v14 = [v4 paymentPass];
  if ([v14 isAccessPass])
  {
    v15 = [v4 success];
  }

  else
  {
    v15 = 0;
  }

  if (v7 || ((*(*&buf[8] + 24) | v15) & 1) != 0)
  {
    kdebug_trace();
    [(NPKQuickPaymentSession *)self _handleTransactionCompleteWithContext:v4];
  }

  else
  {
    kdebug_trace();
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__NPKQuickPaymentSession__handleConventionalTransactionWithContext___block_invoke_2;
    block[3] = &unk_279945880;
    block[4] = self;
    v20 = v9;
    v21 = v8;
    dispatch_async(callbackQueue, block);
  }

  _Block_object_dispose(buf, 8);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __68__NPKQuickPaymentSession__handleConventionalTransactionWithContext___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 didSucceed];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void __68__NPKQuickPaymentSession__handleConventionalTransactionWithContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 currentPass];
    [v6 paymentSession:v4 didFailTransactionForPass:v5 withValueAddedServiceTransactions:*(a1 + 40) forValueAddedServicePasses:*(a1 + 48)];
  }
}

- (void)_loyaltyEngineConfigurationChanged:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NPKQuickPaymentSession__loyaltyEngineConfigurationChanged___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __61__NPKQuickPaymentSession__loyaltyEngineConfigurationChanged___block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Loyalty engine configuration changed", v6, 2u);
    }
  }

  return [*(a1 + 32) _internalQueue_updateSessionWithCurrentPassAndLoyaltyState];
}

- (BOOL)_invokeStateUpdateForReason:(unint64_t)a3 shouldCleanupSession:(BOOL)a4
{
  if (a4)
  {
    return 0;
  }

  switch(a3)
  {
    case 2uLL:
      v11 = [(NPKQuickPaymentSession *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v8 = [(NPKQuickPaymentSession *)self delegate];
        [v8 paymentSessionDidReceiveAuthorizationTimeout:self];
        goto LABEL_12;
      }

      break;
    case 4uLL:
      v9 = [(NPKQuickPaymentSession *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v8 = [(NPKQuickPaymentSession *)self delegate];
        [v8 paymentSessionDidReceiveActivationError:self];
        goto LABEL_12;
      }

      break;
    case 5uLL:
      v6 = [(NPKQuickPaymentSession *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [(NPKQuickPaymentSession *)self delegate];
        [v8 paymentSessionDidReceiveTransactionError:self];
LABEL_12:

        return 1;
      }

      break;
  }

  return 0;
}

- (void)_internalQueue_invokeDeactivationCompletionBlocks
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [(NPKQuickPaymentSession *)self deactivationCompletionBlocks];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__NPKQuickPaymentSession__internalQueue_invokeDeactivationCompletionBlocks__block_invoke;
  v5[3] = &unk_279947900;
  v5[4] = self;
  [v3 enumerateObjectsUsingBlock:v5];

  v4 = [(NPKQuickPaymentSession *)self deactivationCompletionBlocks];
  [v4 removeAllObjects];
}

- (void)_handleFieldEntry
{
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__NPKQuickPaymentSession__handleFieldEntry__block_invoke;
  v4[3] = &unk_279945030;
  objc_copyWeak(&v5, &location);
  dispatch_async(internalQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__NPKQuickPaymentSession__handleFieldEntry__block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ([WeakRetained inField] & 1) == 0)
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: did enter field", buf, 2u);
      }
    }

    *(v2 + 23) = 1;
    v6 = *(v2 + 10);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__NPKQuickPaymentSession__handleFieldEntry__block_invoke_212;
    block[3] = &unk_279944F98;
    block[4] = v2;
    dispatch_async(v6, block);
    v7 = [v2 currentPass];
    if ([v7 style] == 8)
    {
      goto LABEL_79;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v8 setObject:*MEMORY[0x277D38438] forKeyedSubscript:*MEMORY[0x277D383D8]];
    v9 = v8;
    v10 = v7;
    v11 = v10;
    if (!v10 || !v9)
    {
LABEL_78:

      v53 = MEMORY[0x277D37D28];
      v62 = *MEMORY[0x277D38558];
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
      [v53 subjects:v54 sendEvent:v9];

LABEL_79:
      goto LABEL_80;
    }

    v12 = [v10 passType];
    v13 = MEMORY[0x277D38530];
    if ((v12 + 1) >= 3)
    {
      v14 = *MEMORY[0x277D38530];
    }

    else
    {
      v14 = off_2799479A0[v12 + 1];
    }

    [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277D384F0]];

    v15 = [v11 style];
    v16 = [v11 secureElementPass];
    v17 = [v16 isIdentityPass];

    if (v17)
    {
      v18 = @"identity";
    }

    else if (v15 < 0xE && ((0x27FFu >> v15) & 1) != 0)
    {
      v18 = off_2799479B8[v15];
    }

    else
    {
      v18 = *v13;
    }

    [v9 setObject:v18 forKeyedSubscript:*MEMORY[0x277D384E8]];

    v19 = [v11 nfcPayload];
    v20 = PKAnalyticsReportSwitchToggleResultValue();
    [v9 setObject:v20 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v21 = v11;
    if ([v21 passType] == 1)
    {
      v22 = [v21 secureElementPass];
      v23 = [v22 cardType];
      if (v23 <= 4)
      {
        v20 = **(&unk_279947A28 + v23);
      }
    }

    else
    {
      v20 = @"other";
    }

    [v9 setObject:v20 forKeyedSubscript:*MEMORY[0x277D384E0]];
    v24 = [v21 secureElementPass];
    if ([v24 isIdentityPass])
    {
      v25 = [v24 identityType];
      if (v25 <= 2)
      {
        if (v25 == 1)
        {
          v26 = MEMORY[0x277D383A0];
          goto LABEL_45;
        }

        if (v25 == 2)
        {
          v26 = MEMORY[0x277D38518];
          goto LABEL_45;
        }
      }

      else
      {
        switch(v25)
        {
          case 3:
            goto LABEL_29;
          case 4:
            v26 = MEMORY[0x277D38488];
            goto LABEL_45;
          case 5:
LABEL_29:
            v26 = MEMORY[0x277D384F8];
LABEL_45:
            v31 = *v26;
            goto LABEL_46;
        }
      }

LABEL_38:
      v31 = *v13;
LABEL_46:
      v30 = v31;
      goto LABEL_59;
    }

    if (![v24 isAccessPass])
    {
      goto LABEL_38;
    }

    v27 = [v24 accessType];
    v28 = [v24 accessReportingType];
    v29 = v28;
    if (v27 <= 2)
    {
      switch(v27)
      {
        case 0:
          v32 = @"general";
          if (v28)
          {
            v32 = v28;
          }

          goto LABEL_54;
        case 1:
          v30 = @"hospitality";
          goto LABEL_58;
        case 2:
          v30 = @"corporate";
LABEL_58:

LABEL_59:
          [v9 setObject:v30 forKeyedSubscript:*MEMORY[0x277D384D8]];

          v33 = [v21 secureElementPass];
          v34 = [v33 devicePaymentApplications];
          [v34 count];

          v35 = PKAnalyticsReportSwitchToggleResultValue();

          [v9 setObject:v35 forKeyedSubscript:*MEMORY[0x277D38398]];
          v36 = [v21 secureElementPass];
          v37 = *v13;
          v38 = [v36 organizationName];
          if ([v38 length])
          {
            v39 = [v36 cardType];
            if (v39 <= 4 && ((1 << v39) & 0x16) != 0)
            {
              v40 = v38;

              v37 = v40;
            }
          }

          [v9 setObject:v37 forKeyedSubscript:*MEMORY[0x277D38490]];
          v41 = [v21 secureElementPass];
          v42 = v41;
          if (v41)
          {
            v56 = v11;
            v43 = [v41 devicePaymentApplications];
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v44 = v43;
            v45 = [v44 countByEnumeratingWithState:&v58 objects:buf count:16];
            if (v45)
            {
              v46 = v45;
              v47 = 0;
              v48 = *v59;
              while (2)
              {
                for (i = 0; i != v46; ++i)
                {
                  if (*v59 != v48)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v50 = *(*(&v58 + 1) + 8 * i);
                  if (v47 && v47 != [*(*(&v58 + 1) + 8 * i) paymentType])
                  {

                    v51 = @"multiple";
                    goto LABEL_76;
                  }

                  v47 = [v50 paymentType];
                }

                v46 = [v44 countByEnumeratingWithState:&v58 objects:buf count:16];
                if (v46)
                {
                  continue;
                }

                break;
              }
            }

            v51 = PKPaymentMethodTypeToString();
LABEL_76:

            [v9 setObject:v51 forKeyedSubscript:*MEMORY[0x277D38508]];
            v52 = [v42 issuerCountryCode];
            [v9 setObject:v52 forKeyedSubscript:*MEMORY[0x277D384D0]];

            v11 = v56;
          }

          goto LABEL_78;
      }
    }

    else
    {
      if (v27 <= 4)
      {
        if (v27 == 3)
        {
          v30 = @"singlefamily";
        }

        else
        {
          v30 = @"cars";
        }

        goto LABEL_58;
      }

      if (v27 == 5)
      {
        v30 = @"multifamily";
        goto LABEL_58;
      }

      if (v27 == 6)
      {
        v30 = @"urbanmobility";
        goto LABEL_58;
      }
    }

    v32 = *v13;
LABEL_54:
    v30 = v32;
    goto LABEL_58;
  }

LABEL_80:

  v55 = *MEMORY[0x277D85DE8];
}

void __43__NPKQuickPaymentSession__handleFieldEntry__block_invoke_212(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidEnterField:*(a1 + 32)];
  }
}

- (void)_handleFieldExit
{
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__NPKQuickPaymentSession__handleFieldExit__block_invoke;
  v4[3] = &unk_279945030;
  objc_copyWeak(&v5, &location);
  dispatch_async(internalQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__NPKQuickPaymentSession__handleFieldExit__block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained inField])
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: did exit field", buf, 2u);
      }
    }

    *(v2 + 23) = 0;
    v6 = *(v2 + 10);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__NPKQuickPaymentSession__handleFieldExit__block_invoke_216;
    block[3] = &unk_279944F98;
    block[4] = v2;
    dispatch_async(v6, block);
    v7 = [v2 currentPass];
    if ([v7 style] == 8)
    {
      goto LABEL_79;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v8 setObject:*MEMORY[0x277D38440] forKeyedSubscript:*MEMORY[0x277D383D8]];
    v9 = v8;
    v10 = v7;
    v11 = v10;
    if (!v10 || !v9)
    {
LABEL_78:

      v53 = MEMORY[0x277D37D28];
      v62 = *MEMORY[0x277D38558];
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
      [v53 subjects:v54 sendEvent:v9];

LABEL_79:
      goto LABEL_80;
    }

    v12 = [v10 passType];
    v13 = MEMORY[0x277D38530];
    if ((v12 + 1) >= 3)
    {
      v14 = *MEMORY[0x277D38530];
    }

    else
    {
      v14 = off_2799479A0[v12 + 1];
    }

    [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277D384F0]];

    v15 = [v11 style];
    v16 = [v11 secureElementPass];
    v17 = [v16 isIdentityPass];

    if (v17)
    {
      v18 = @"identity";
    }

    else if (v15 < 0xE && ((0x27FFu >> v15) & 1) != 0)
    {
      v18 = off_2799479B8[v15];
    }

    else
    {
      v18 = *v13;
    }

    [v9 setObject:v18 forKeyedSubscript:*MEMORY[0x277D384E8]];

    v19 = [v11 nfcPayload];
    v20 = PKAnalyticsReportSwitchToggleResultValue();
    [v9 setObject:v20 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v21 = v11;
    if ([v21 passType] == 1)
    {
      v22 = [v21 secureElementPass];
      v23 = [v22 cardType];
      if (v23 <= 4)
      {
        v20 = **(&unk_279947A28 + v23);
      }
    }

    else
    {
      v20 = @"other";
    }

    [v9 setObject:v20 forKeyedSubscript:*MEMORY[0x277D384E0]];
    v24 = [v21 secureElementPass];
    if ([v24 isIdentityPass])
    {
      v25 = [v24 identityType];
      if (v25 <= 2)
      {
        if (v25 == 1)
        {
          v26 = MEMORY[0x277D383A0];
          goto LABEL_45;
        }

        if (v25 == 2)
        {
          v26 = MEMORY[0x277D38518];
          goto LABEL_45;
        }
      }

      else
      {
        switch(v25)
        {
          case 3:
            goto LABEL_29;
          case 4:
            v26 = MEMORY[0x277D38488];
            goto LABEL_45;
          case 5:
LABEL_29:
            v26 = MEMORY[0x277D384F8];
LABEL_45:
            v31 = *v26;
            goto LABEL_46;
        }
      }

LABEL_38:
      v31 = *v13;
LABEL_46:
      v30 = v31;
      goto LABEL_59;
    }

    if (![v24 isAccessPass])
    {
      goto LABEL_38;
    }

    v27 = [v24 accessType];
    v28 = [v24 accessReportingType];
    v29 = v28;
    if (v27 <= 2)
    {
      switch(v27)
      {
        case 0:
          v32 = @"general";
          if (v28)
          {
            v32 = v28;
          }

          goto LABEL_54;
        case 1:
          v30 = @"hospitality";
          goto LABEL_58;
        case 2:
          v30 = @"corporate";
LABEL_58:

LABEL_59:
          [v9 setObject:v30 forKeyedSubscript:*MEMORY[0x277D384D8]];

          v33 = [v21 secureElementPass];
          v34 = [v33 devicePaymentApplications];
          [v34 count];

          v35 = PKAnalyticsReportSwitchToggleResultValue();

          [v9 setObject:v35 forKeyedSubscript:*MEMORY[0x277D38398]];
          v36 = [v21 secureElementPass];
          v37 = *v13;
          v38 = [v36 organizationName];
          if ([v38 length])
          {
            v39 = [v36 cardType];
            if (v39 <= 4 && ((1 << v39) & 0x16) != 0)
            {
              v40 = v38;

              v37 = v40;
            }
          }

          [v9 setObject:v37 forKeyedSubscript:*MEMORY[0x277D38490]];
          v41 = [v21 secureElementPass];
          v42 = v41;
          if (v41)
          {
            v56 = v11;
            v43 = [v41 devicePaymentApplications];
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v44 = v43;
            v45 = [v44 countByEnumeratingWithState:&v58 objects:buf count:16];
            if (v45)
            {
              v46 = v45;
              v47 = 0;
              v48 = *v59;
              while (2)
              {
                for (i = 0; i != v46; ++i)
                {
                  if (*v59 != v48)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v50 = *(*(&v58 + 1) + 8 * i);
                  if (v47 && v47 != [*(*(&v58 + 1) + 8 * i) paymentType])
                  {

                    v51 = @"multiple";
                    goto LABEL_76;
                  }

                  v47 = [v50 paymentType];
                }

                v46 = [v44 countByEnumeratingWithState:&v58 objects:buf count:16];
                if (v46)
                {
                  continue;
                }

                break;
              }
            }

            v51 = PKPaymentMethodTypeToString();
LABEL_76:

            [v9 setObject:v51 forKeyedSubscript:*MEMORY[0x277D38508]];
            v52 = [v42 issuerCountryCode];
            [v9 setObject:v52 forKeyedSubscript:*MEMORY[0x277D384D0]];

            v11 = v56;
          }

          goto LABEL_78;
      }
    }

    else
    {
      if (v27 <= 4)
      {
        if (v27 == 3)
        {
          v30 = @"singlefamily";
        }

        else
        {
          v30 = @"cars";
        }

        goto LABEL_58;
      }

      if (v27 == 5)
      {
        v30 = @"multifamily";
        goto LABEL_58;
      }

      if (v27 == 6)
      {
        v30 = @"urbanmobility";
        goto LABEL_58;
      }
    }

    v32 = *v13;
LABEL_54:
    v30 = v32;
    goto LABEL_58;
  }

LABEL_80:

  v55 = *MEMORY[0x277D85DE8];
}

void __42__NPKQuickPaymentSession__handleFieldExit__block_invoke_216(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidExitField:*(a1 + 32)];
  }
}

- (NPKQuickPaymentSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end