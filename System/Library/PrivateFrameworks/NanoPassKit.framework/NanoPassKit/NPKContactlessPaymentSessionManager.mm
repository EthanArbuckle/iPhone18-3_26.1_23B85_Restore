@interface NPKContactlessPaymentSessionManager
- (BOOL)_canHandleRKEActionForTileItem:(id)a3 pass:(id)a4 outAction:(id *)a5 outFunction:(id *)a6 outError:(id *)a7;
- (NPKContactlessPaymentSessionManager)init;
- (id)_baseSessionStateForUpdate;
- (id)_managerContextForContactlessInterfaceTransactionContext:(id)a3;
- (id)_paymentBalancesFromTransitAppletBalances:(id)a3;
- (id)_sessionStateForBarcodeTransactionStatus:(unint64_t)a3 paymentBarcode:(id)a4 transaction:(id)a5;
- (id)_sessionStateForExpressTransactionStatus:(unint64_t)a3 pass:(id)a4 paymentApplication:(id)a5 concreteTransactions:(id)a6 ephemeralTransaction:(id)a7 mutatedBalances:(id)a8 appletState:(id)a9;
- (id)_sessionStateForPaymentBarcode:(id)a3;
- (id)_sessionStateForTransactionContext:(id)a3;
- (id)_sessionStateForUserCanceledBarcodeTransaction;
- (id)_updatedPassItemFieldWithPaymentPass:(id)a3 transitAppletBalances:(id)a4 appletState:(id)a5 paymentApplication:(id)a6;
- (void)_cleanupBarcodePaymentSession;
- (void)_cleanupQuickPaymentSession;
- (void)_handleRKEActionRequestedForPass:(id)a3 action:(id)a4 function:(id)a5 withSession:(id)a6 completion:(id)a7;
- (void)_handleServiceModeRequestEnded;
- (void)_handleSessionTimerFired;
- (void)_handleValueAddedServiceTransactions:(id)a3 forValueAddedServicePasses:(id)a4 paymentTransaction:(id)a5 outUserInterventionRequiredPasses:(id *)a6;
- (void)_prepareSessionStateForSendingToObservers:(id)a3;
- (void)_registerForServiceModeRequestNotification;
- (void)_sendSessionStateToObservers:(id)a3;
- (void)_startSessionTimerWithReason:(unint64_t)a3;
- (void)_stopSessionTimer;
- (void)barcodePaymentSession:(id)a3 didReceivePaymentBarcode:(id)a4;
- (void)barcodePaymentSession:(id)a3 didUpdateTransactionStatus:(unint64_t)a4 withTransaction:(id)a5;
- (void)handleAuthorize18013RequestWithDataToRelease:(id)a3 credential:(id)a4;
- (void)handleBarcodePaymentPinCodeEntry:(id)a3;
- (void)handleContactlessPaymentInterfaceDidAppear;
- (void)handleContactlessPaymentInterfaceDidDisappear;
- (void)handleCredential:(id)a3;
- (void)handleDidPresentPasscodeAuthentication;
- (void)handleDoublePressReceivedAtDate:(id)a3;
- (void)handleEndBarcodePaymentSessionRequestedByUI;
- (void)handleEndQuickPaymentSessionRequestedByUI;
- (void)handleEndSessionRequestedForReason:(unint64_t)a3;
- (void)handleExpressTransactionStatus:(unint64_t)a3 forPass:(id)a4 paymentApplication:(id)a5 concreteTransactions:(id)a6 ephemeralTransaction:(id)a7 mutatedBalances:(id)a8 appletState:(id)a9;
- (void)handleFailureToReleaseDataWithError:(id)a3;
- (void)handleISO18013DataReleaseCanceled;
- (void)handleISO18013Request:(id)a3 withReaderAuthInfo:(id)a4;
- (void)handleISO18013TransactionStarted;
- (void)handleLocalAuthenticationError:(id)a3;
- (void)handlePaymentBarcodeRequested;
- (void)handleRKEActionRequestedForTileItem:(id)a3 pass:(id)a4 completion:(id)a5;
- (void)handleRKETransactionForPass:(id)a3 fromTile:(id)a4;
- (void)handleRetryLoadingPaymentBarcodeRequested;
- (void)handleServiceModeRequestedForPass:(id)a3;
- (void)handleStandaloneTransactionWithAction:(unint64_t)a3 forPass:(id)a4;
- (void)handleStandaloneTransactionWithAction:(unint64_t)a3 forPass:(id)a4 withAccessory:(id)a5;
- (void)handleTransactionStarted;
- (void)handleUserSelectedPass:(id)a3;
- (void)passesDataSource:(id)a3 didRemovePasses:(id)a4;
- (void)passesDataSource:(id)a3 didUpdatePasses:(id)a4;
- (void)passesDataSourceDidReloadPasses:(id)a3;
- (void)paymentSession:(id)a3 didActivatePass:(id)a4;
- (void)paymentSession:(id)a3 didCompleteTransactionForReason:(unint64_t)a4 withTransactionContext:(id)a5 shouldCleanupSession:(BOOL)a6;
- (void)paymentSession:(id)a3 didFailTransactionForPass:(id)a4 withValueAddedServiceTransactions:(id)a5 forValueAddedServicePasses:(id)a6;
- (void)paymentSession:(id)a3 didMakePassCurrent:(id)a4;
- (void)paymentSession:(id)a3 didReceive18013Request:(id)a4 readerAuthInfo:(id)a5;
- (void)paymentSession:(id)a3 willActivatePass:(id)a4;
- (void)paymentSessionDidEnterField:(id)a3;
- (void)paymentSessionDidExitField:(id)a3;
- (void)paymentSessionDidReceiveActivationError:(id)a3;
- (void)paymentSessionDidReceiveActivityTimeout:(id)a3;
- (void)paymentSessionDidReceiveAuthorizationTimeout:(id)a3;
- (void)paymentSessionDidReceiveCredential:(id)a3;
- (void)paymentSessionDidReceiveStartTransaction:(id)a3;
- (void)paymentSessionDidReceiveTransactionError:(id)a3;
- (void)paymentSessionDidSelectPayment:(id)a3;
- (void)paymentSessionDidSelectValueAddedService:(id)a3;
- (void)paymentSessionDidStart:(id)a3;
- (void)paymentSessionIsWaitingToStart:(id)a3;
- (void)registerObserver:(id)a3 withRelativePriority:(unint64_t)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation NPKContactlessPaymentSessionManager

- (NPKContactlessPaymentSessionManager)init
{
  v18.receiver = self;
  v18.super_class = NPKContactlessPaymentSessionManager;
  v2 = [(NPKContactlessPaymentSessionManager *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPKObserverManager);
    v4 = *(v2 + 6);
    *(v2 + 6) = v3;

    v5 = objc_alloc_init(NPKQuickPaymentSessionCleanupDelegate);
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    objc_initWeak(&location, v2);
    v7 = dispatch_get_global_queue(0, 0);
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
    v9 = *(v2 + 8);
    *(v2 + 8) = v8;

    v10 = *(v2 + 8);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __43__NPKContactlessPaymentSessionManager_init__block_invoke;
    v15 = &unk_279945030;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v10, &v12);
    dispatch_resume(*(v2 + 8));
    [v2 _registerForServiceModeRequestNotification];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __43__NPKContactlessPaymentSessionManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__NPKContactlessPaymentSessionManager_init__block_invoke_2;
    block[3] = &unk_279944F98;
    v4 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)handleDidPresentPasscodeAuthentication
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling did present passcode Authentication", v6, 2u);
    }
  }

  [(NPKContactlessPaymentSessionManager *)self _stopSessionTimer];
}

- (void)handleContactlessPaymentInterfaceDidAppear
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling contactless payment interface did appear", v6, 2u);
    }
  }

  self->_contactlessPaymentInterfaceVisible = 1;
  [(NPKContactlessPaymentSessionManager *)self _startSessionTimerWithReason:1];
  [(NPKQuickPaymentSession *)self->_quickPaymentSession confirmSessionExpectingCredential:[(NPKContactlessPaymentSessionState *)self->_lastSessionState doublePressReceived]];
  if ([(NPKContactlessPaymentSessionState *)self->_lastSessionState contactlessInterfaceReady])
  {
    kdebug_trace();
  }
}

- (void)handleContactlessPaymentInterfaceDidDisappear
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling contactless payment interface did disappear with session: %@", &v11, 0xCu);
    }
  }

  self->_contactlessPaymentInterfaceVisible = 0;
  if (v3)
  {
    [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
    v7 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v7 setCompletionReason:1];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v7];
  }

  v8 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  if (v8)
  {
    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    v9 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v9 setCompletionReason:1];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleCredential:(id)a3
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
      quickPaymentSession = self->_quickPaymentSession;
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = quickPaymentSession;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling credential: %@ with quickPaymentSession:%@", &v12, 0x16u);
    }
  }

  credential = self->_credential;
  self->_credential = v4;
  v10 = v4;

  [(NPKQuickPaymentSession *)self->_quickPaymentSession setCredential:v10];
  if (self->_contactlessPaymentInterfaceVisible)
  {
    [(NPKContactlessPaymentSessionManager *)self _startSessionTimerWithReason:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleUserSelectedPass:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 uniqueID];
      v31 = 138412290;
      v32 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling user selected pass: %@", &v31, 0xCu);
    }
  }

  p_userSelectedPass = &self->_userSelectedPass;
  [(PKPass *)self->_userSelectedPass isEqualToPassIncludingMetadata:v5];
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(PKPass *)*p_userSelectedPass uniqueID];
      v15 = [v5 uniqueID];
      v16 = NSStringFromBOOL();
      v31 = 138412802;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Is previous user selected pass (%@) equal to new pass (%@)? %@", &v31, 0x20u);
    }
  }

  objc_storeStrong(&self->_userSelectedPass, a3);
  if (self->_quickPaymentSession)
  {
    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Updating payment session with user selected pass", &v31, 2u);
      }
    }

    [(NPKQuickPaymentSession *)self->_quickPaymentSession setCurrentPass:v5];
  }

  v20 = [(NPKContactlessPaymentSessionState *)self->_lastSessionState serviceModeRequestedPass];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 uniqueID];
    v23 = [(PKPass *)*p_userSelectedPass uniqueID];
    v24 = [v22 isEqualToString:v23];

    if ((v24 & 1) == 0)
    {
      v25 = pk_Payment_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (v26)
      {
        v27 = pk_Payment_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v21 uniqueID];
          v31 = 138412290;
          v32 = v28;
          _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Clearing service mode requested pass %@", &v31, 0xCu);
        }
      }

      v29 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
      [v29 setServiceModeRequestedPass:0];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v29];
      [(NPKContactlessPaymentSessionManager *)self _handleServiceModeRequestEnded];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleDoublePressReceivedAtDate:(id)a3
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
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] handleDoublePressReceivedAtDate:%@", &v10, 0xCu);
    }
  }

  v8 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v8 setDoublePressReceived:1];
  [v8 setDoublePressTimestamp:v4];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleServiceModeRequestedForPass:(id)a3
{
  v7 = a3;
  [(NPKContactlessPaymentSessionManager *)self handleUserSelectedPass:?];
  quickPaymentSession = self->_quickPaymentSession;
  if (quickPaymentSession)
  {
    [(NPKQuickPaymentSession *)quickPaymentSession setInServiceMode:1];
    [(NPKContactlessPaymentSessionManager *)self _handleServiceModeRequestEnded];
  }

  v5 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  v6 = v5;
  if (!self->_quickPaymentSession)
  {
    [v5 setServiceModeRequestedPass:v7];
  }

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v6];
}

- (void)handleRKEActionRequestedForTileItem:(id)a3 pass:(id)a4 completion:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 uniqueID];
      *buf = 138412546;
      v38 = v8;
      v39 = 2112;
      v40 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling tile requested for item: %@ pass: %@", buf, 0x16u);
    }
  }

  v15 = [v8 action];
  v16 = [v15 type];

  if (v16 == 4)
  {
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v17 = [(NPKContactlessPaymentSessionManager *)self _canHandleRKEActionForTileItem:v8 pass:v9 outAction:&v36 outFunction:&v35 outError:&v34];
    v18 = v36;
    v19 = v35;
    v20 = v34;
    if (v20 || !v17)
    {
      v28 = pk_Payment_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (v29)
      {
        v30 = pk_Payment_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = [v9 uniqueID];
          *buf = 138413058;
          v38 = v31;
          v39 = 2112;
          v40 = v18;
          v41 = 2112;
          v42 = v19;
          v43 = 2112;
          v44 = v20;
          _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Unable to handle RKE action for pass: %@ with action: %@ function: %@ error: %@", buf, 0x2Au);
        }
      }

      v32 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

      if (v32)
      {
        [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      }

      v24 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
      [v24 setCompletionReason:6];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v24];
      if (v10)
      {
        v10[2](v10, 0);
      }
    }

    else
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v21 = [NPKQuickPaymentSession sessionWithQueue:MEMORY[0x277D85CD0]];
      [(NPKContactlessPaymentSessionManager *)self setQuickPaymentSession:v21];

      v22 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [v22 setCurrentPass:v9];

      v23 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [v23 setRequireFirstInQueue:0];

      v24 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [(NPKContactlessPaymentSessionManager *)self _handleRKEActionRequestedForPass:v9 action:v18 function:v19 withSession:v24 completion:v10];
    }

LABEL_21:
    goto LABEL_22;
  }

  v25 = pk_Payment_log();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

  if (v26)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = [v9 uniqueID];
      *buf = 138412546;
      v38 = v8;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Asked to handle RKE action for unexpected item: %@ pass: %@; Aborting.", buf, 0x16u);
    }

    goto LABEL_21;
  }

LABEL_22:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)handleEndSessionRequestedForReason:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  if (v5)
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v5;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling end quick payment session requested with session: %@", &v16, 0xCu);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
    v9 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v9 setCompletionReason:a3];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v9];
  }

  v10 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  if (v10)
  {
    v11 = pk_Payment_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling end barcode payment session requested with session: %@", &v16, 0xCu);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    v14 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForUserCanceledBarcodeTransaction];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleStandaloneTransactionWithAction:(unint64_t)a3 forPass:(id)a4
{
  v8 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:4 pass:a4 paymentApplication:0 concreteTransactions:0 ephemeralTransaction:0 mutatedBalances:0 appletState:0];
  v6 = [v8 transactionContext];
  [v6 setAction:a3];

  v7 = [v8 transactionContext];
  [v7 setTransactionStatus:2];

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v8];
}

- (void)handleRKETransactionForPass:(id)a3 fromTile:(id)a4
{
  v6 = a4;
  v10 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:4 pass:a3 paymentApplication:0 concreteTransactions:0 ephemeralTransaction:0 mutatedBalances:0 appletState:0];
  v7 = [v10 transactionContext];
  [v7 setAction:5];

  v8 = [v10 transactionContext];
  [v8 setPassTile:v6];

  v9 = [v10 transactionContext];
  [v9 setTransactionStatus:2];

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v10];
}

- (void)handleStandaloneTransactionWithAction:(unint64_t)a3 forPass:(id)a4 withAccessory:(id)a5
{
  v8 = a5;
  v12 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:4 pass:a4 paymentApplication:0 concreteTransactions:0 ephemeralTransaction:0 mutatedBalances:0 appletState:0];
  v9 = [v12 transactionContext];
  [v9 setAction:a3];

  v10 = [v12 transactionContext];
  [v10 setTransactionStatus:2];

  v11 = [v12 transactionContext];
  [v11 setAccessory:v8];

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v12];
}

- (void)handleExpressTransactionStatus:(unint64_t)a3 forPass:(id)a4 paymentApplication:(id)a5 concreteTransactions:(id)a6 ephemeralTransaction:(id)a7 mutatedBalances:(id)a8 appletState:(id)a9
{
  v40 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = pk_Payment_log();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v23 = pk_Payment_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = NSStringFromNPKExpressTransactionStatus(a3);
      [v15 uniqueID];
      *buf = 138413570;
      v29 = v27;
      v31 = v30 = 2112;
      v24 = v31;
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got express transaction status %@ for pass %@ concrete transactions %@ ephemeral transactions %@ mutatedBalances:%@ applet state %@", buf, 0x3Eu);
    }
  }

  v25 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:a3 pass:v15 paymentApplication:v16 concreteTransactions:v17 ephemeralTransaction:v18 mutatedBalances:v19 appletState:v20];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleLocalAuthenticationError:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling local authentication error %@", &v12, 0xCu);
    }
  }

  v8 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v8 setDoublePressReceived:0];
  [v8 setSessionAuthorized:0];
  v9 = [v4 domain];
  if (![v9 isEqualToString:*MEMORY[0x277CD4770]])
  {

LABEL_9:
    [v8 setFailureType:1];
    goto LABEL_10;
  }

  if ([v4 code] != -9)
  {
    v11 = [v4 code];

    if (v11 == -4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v8];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleEndQuickPaymentSessionRequestedByUI
{
  v3 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

  if (v3)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling ending quick payment session requested by UI.", v10, 2u);
      }
    }

    v7 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
    v8 = [v7 paymentPass];

    if (([v8 supportsBarcodePayment] & 1) == 0)
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v9 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
      [v9 setCompletionReason:7];
      [v9 setDoublePressReceived:0];
      [v9 setSessionAuthorized:0];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v9];
    }
  }
}

- (void)handlePaymentBarcodeRequested
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  v4 = [v3 paymentPass];

  if ([v4 supportsBarcodePayment])
  {
    v5 = [v4 devicePrimaryBarcodePaymentApplication];
    [v5 state];
    IsPersonalized = PKPaymentApplicationStateIsPersonalized();

    v7 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

    v8 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (IsPersonalized && v7 && !v8)
    {
      if (v10)
      {
        v11 = pk_Payment_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18[0]) = 0;
          _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Transitioning from quickPaymentSession into barcodePaymentSession.", v18, 2u);
        }
      }

      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v12 = [NPKBarcodePaymentSession alloc];
      v13 = [(NPKContactlessPaymentSessionManager *)self credential];
      v14 = [(NPKBarcodePaymentSession *)v12 initWithPaymentPass:v4 authorizationCredential:v13];

      [v14 setDelegate:self];
      [v14 startSession];
      [(NPKContactlessPaymentSessionManager *)self setBarcodePaymentSession:v14];
      v15 = [v14 currentPaymentBarcode];
      v16 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForPaymentBarcode:v15];

      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v16];
    }

    else
    {
      if (!v10)
      {
        goto LABEL_14;
      }

      v14 = pk_Payment_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18[0] = 67109632;
        v18[1] = IsPersonalized != 0;
        v19 = 1024;
        v20 = v7 != 0;
        v21 = 1024;
        v22 = v8 == 0;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Skip creating new barcodePaymentSession - isPersonalized: %d, hasQuickPaymentSession: %d, hasNoExistingBarcodePaymentSession: %d", v18, 0x14u);
      }
    }
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleRetryLoadingPaymentBarcodeRequested
{
  v3 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (v3)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling retry loading paymentBarcode", v8, 2u);
      }
    }

    v7 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
    [v7 retryFetchingBarcode];
  }
}

- (void)handleBarcodePaymentPinCodeEntry:(id)a3
{
  v4 = a3;
  v5 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  [v5 submitPinCode:v4];
}

- (void)handleEndBarcodePaymentSessionRequestedByUI
{
  v3 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (v3)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling ending barcode payment session requested by UI.", v9, 2u);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    v7 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [v7 setCompletionReason:7];
    v8 = [v7 transactionContext];
    [v8 setTransactionStatus:2];

    [v7 setDoublePressReceived:0];
    [v7 setSessionAuthorized:0];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v7];
  }
}

- (void)handleTransactionStarted
{
  v3 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v3 setCanChangePass:0];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v3];
}

- (void)handleISO18013TransactionStarted
{
  v8 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setReleaseDataStatus:1];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setTransactionStatus:1];
  v3 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v4 = [v3 currentPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setTransactionPass:v4];

  v5 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  v6 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v7 = [v6 currentPass];
  [v5 setCurrentPass:v7];

  [v5 setSessionAuthorized:0];
  [v5 setDoublePressReceived:0];
  [v5 setContactlessInterfaceReady:0];
  [v5 setCanChangePass:0];
  [v5 setCompletionReason:0];
  [v5 setTransactionContext:v8];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v5];
}

- (void)handleISO18013DataReleaseCanceled
{
  v3 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v3 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v3 setReleaseDataStatus:6];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v3 setTransactionStatus:2];
  v4 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

  if (v4)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling ending quick payment session requested by UI.", v11, 2u);
      }
    }

    v8 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
    v9 = [v8 paymentPass];

    if (([v9 supportsBarcodePayment] & 1) == 0)
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v10 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
      [v10 setTransactionContext:v3];
      [v10 setCompletionReason:7];
      [v10 setFailureType:7];
      [v10 setDoublePressReceived:0];
      [v10 setSessionAuthorized:0];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v10];
    }
  }
}

- (void)handleISO18013Request:(id)a3 withReaderAuthInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setReleaseDataStatus:2];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setTransactionStatus:1];
  v8 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setTransactionPass:v8];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setReleaseDataRequest:v7];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setReaderAuthInfo:v6];

  v9 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  v10 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [v9 setCurrentPass:v10];

  [v9 setSessionAuthorized:0];
  [v9 setDoublePressReceived:0];
  [v9 setContactlessInterfaceReady:0];
  [v9 setCanChangePass:0];
  [v9 setCompletionReason:0];
  [v9 setTransactionContext:v11];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v9];
}

- (void)handleAuthorize18013RequestWithDataToRelease:(id)a3 credential:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  [v8 authorize18013RequestWithDataToRelease:v7 credential:v6];

  v16 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setReleaseDataStatus:3];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setTransactionStatus:1];
  v9 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setTransactionPass:v9];

  v10 = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
  v11 = [v10 transactionContext];
  v12 = [v11 releaseDataRequest];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setReleaseDataRequest:v12];

  v13 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  v14 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [v13 setCurrentPass:v14];

  [v13 setSessionAuthorized:1];
  [v13 setDoublePressReceived:1];
  v15 = [MEMORY[0x277CBEAA8] now];
  [v13 setDoublePressTimestamp:v15];

  [v13 setContactlessInterfaceReady:1];
  [v13 setCanChangePass:0];
  [v13 setCompletionReason:0];
  [v13 setTransactionContext:v16];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v13];
}

- (void)handleFailureToReleaseDataWithError:(id)a3
{
  v6 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v6 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v6 setReleaseDataStatus:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v6 setTransactionStatus:2];
  v4 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  v5 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [v4 setCurrentPass:v5];

  [v4 setTransactionContext:v6];
  [v4 setDoublePressReceived:0];
  [v4 setSessionAuthorized:0];
  [v4 setCompletionReason:5];
  [v4 setFailureType:2];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v4];
}

- (void)barcodePaymentSession:(id)a3 didReceivePaymentBarcode:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (v7 == v6)
  {
    v8 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForPaymentBarcode:v9];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v8];
  }
}

- (void)barcodePaymentSession:(id)a3 didUpdateTransactionStatus:(unint64_t)a4 withTransaction:(id)a5
{
  v15 = a3;
  v8 = a5;
  v9 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (v9 == v15)
  {
    v10 = [v15 currentPaymentBarcode];
    v11 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForBarcodeTransactionStatus:a4 paymentBarcode:v10 transaction:v8];

    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v11];
    v12 = [v11 transactionContext];
    v13 = [v12 transactionStatus];

    if (v13 == 2)
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
      v14 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];

      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v14];
      v11 = v14;
    }
  }
}

- (void)_cleanupBarcodePaymentSession
{
  v3 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  if (v3)
  {
    v4 = v3;
    [v3 invalidateSession];
    [(NPKContactlessPaymentSessionManager *)self setBarcodePaymentSession:0];
    v3 = v4;
  }
}

- (void)passesDataSource:(id)a3 didRemovePasses:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  v6 = [a4 pk_arrayByApplyingBlock:&__block_literal_global_545];
  v7 = [v5 setWithArray:v6];

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 allObjects];
      v12 = [v11 componentsJoinedByString:{@", "}];
      v31 = 138412290;
      v32 = v12;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got removed unique IDs: %@", &v31, 0xCu);
    }
  }

  v13 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v14 = [v13 currentPass];
  v15 = [v14 uniqueID];

  v16 = pk_Payment_log();
  LODWORD(v14) = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v17 = pk_Payment_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = v15;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Quick payment session pass unique ID is %@", &v31, 0xCu);
    }
  }

  if (v15 && [v7 containsObject:v15])
  {
    v18 = pk_Payment_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = pk_Payment_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Clearing quick payment session current pass because it has been removed", &v31, 2u);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
    v21 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v21 setCompletionReason:7];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v21];
  }

  v22 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  v23 = [v22 paymentPass];
  v24 = [v23 uniqueID];

  v25 = pk_Payment_log();
  LODWORD(v23) = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    v26 = pk_Payment_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = v24;
      _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Barcode payment session pass unique ID is %@", &v31, 0xCu);
    }
  }

  if (v24 && [v7 containsObject:v24])
  {
    v27 = pk_Payment_log();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      v29 = pk_Payment_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Tearing down barcode payment session because pass has been removed", &v31, 2u);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)passesDataSource:(id)a3 didUpdatePasses:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CBEB98];
  v7 = [v5 pk_arrayByApplyingBlock:&__block_literal_global_550];
  v8 = [v6 setWithArray:v7];

  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 allObjects];
      v13 = [v12 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v55 = v13;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got updated unique IDs: %@", buf, 0xCu);
    }
  }

  v14 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v15 = [v14 currentPass];
  v16 = [v15 uniqueID];

  v17 = pk_Payment_log();
  LODWORD(v15) = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v16;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Quick payment session pass unique ID is %@", buf, 0xCu);
    }
  }

  if (v16 && [v8 containsObject:v16])
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_551;
    v52[3] = &unk_279946E00;
    v53 = v16;
    v19 = [v5 pk_objectsPassingTest:v52];
    v20 = [v19 firstObject];

    if (v20)
    {
      v21 = pk_Payment_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v23 = pk_Payment_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v20 uniqueID];
          *buf = 138412290;
          v55 = v24;
          _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Setting updated payment session pass with unique ID %@", buf, 0xCu);
        }
      }

      v25 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [v25 setCurrentPass:v20];
    }
  }

  v26 = [(PKPass *)self->_userSelectedPass uniqueID];
  v27 = pk_Payment_log();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

  if (v28)
  {
    v29 = pk_Payment_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v26;
      _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] User selected pass unique ID is %@", buf, 0xCu);
    }
  }

  if (v26 && [v8 containsObject:v26])
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_553;
    v51[3] = &unk_279946E00;
    v51[4] = self;
    v30 = [v5 pk_objectsPassingTest:v51];
    v31 = [v30 firstObject];

    if (v31)
    {
      v32 = pk_Payment_log();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v33)
      {
        v34 = pk_Payment_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v31 uniqueID];
          *buf = 138412290;
          v55 = v35;
          _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Setting updated user selected pass with unique ID %@", buf, 0xCu);
        }
      }

      objc_storeStrong(&self->_userSelectedPass, v31);
    }
  }

  v36 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  v37 = [v36 paymentPass];
  v38 = [v37 uniqueID];

  v39 = pk_Payment_log();
  LODWORD(v37) = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

  if (v37)
  {
    v40 = pk_Payment_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v38;
      _os_log_impl(&dword_25B300000, v40, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Barcode payment session pass unique ID is %@", buf, 0xCu);
    }
  }

  if (v38 && [v8 containsObject:v38])
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_554;
    v49[3] = &unk_279946E00;
    v50 = v16;
    v41 = [v5 pk_objectsPassingTest:v49];
    v42 = [v41 firstObject];

    v43 = [v42 secureElementPass];
    v44 = [v43 passActivationState];

    if (v44)
    {
      v45 = pk_Payment_log();
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);

      if (v46)
      {
        v47 = pk_Payment_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v55 = v44;
          _os_log_impl(&dword_25B300000, v47, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Tearing down barcode payment session because updated pass is not activated (state %lu)", buf, 0xCu);
        }
      }

      [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_551(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_553(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [*(*(a1 + 32) + 56) uniqueID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_554(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)passesDataSourceDidReloadPasses:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got passes reloaded", &v47, 2u);
    }
  }

  v8 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v9 = [v8 currentPass];

  v10 = [v9 uniqueID];
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v47 = 138412290;
      v48 = v10;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Quick payment session pass unique ID is %@", &v47, 0xCu);
    }
  }

  if (v10)
  {
    v14 = [v4 passForUniqueID:v10];
    v15 = v14;
    if (v14)
    {
      if ([v14 isEqualToPassIncludingMetadata:v9])
      {
        goto LABEL_24;
      }

      v16 = pk_Payment_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = pk_Payment_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v15 uniqueID];
          v47 = 138412290;
          v48 = v19;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Setting reloaded pass for unique ID %@", &v47, 0xCu);
        }
      }

      v20 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [v20 setCurrentPass:v15];

      v21 = [(PKPass *)self->_userSelectedPass uniqueID];
      v22 = [v15 uniqueID];
      v23 = [v21 isEqualToString:v22];

      if (!v23)
      {
        goto LABEL_24;
      }

      v24 = v15;
      userSelectedPass = self->_userSelectedPass;
      self->_userSelectedPass = v24;
    }

    else
    {
      v26 = pk_Payment_log();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (v27)
      {
        v28 = pk_Payment_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v47) = 0;
          _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Clearing quick payment session current pass because it has been removed", &v47, 2u);
        }
      }

      userSelectedPass = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [userSelectedPass setCurrentPass:0];
    }

LABEL_24:
  }

  v29 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  v30 = [v29 paymentPass];
  v31 = [v30 uniqueID];

  v32 = pk_Payment_log();
  LODWORD(v30) = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v33 = pk_Payment_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v47 = 138412290;
      v48 = v31;
      _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Barcode payment session pass unique ID is %@", &v47, 0xCu);
    }
  }

  if (v31)
  {
    v34 = [v4 passForUniqueID:v31];
    v35 = pk_Payment_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

    if (v36)
    {
      v37 = pk_Payment_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v34 secureElementPass];
        v39 = [v38 passActivationState];
        v47 = 138412546;
        v48 = v34;
        v49 = 2048;
        v50 = v39;
        _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Reloaded barcode payment pass is %@ (state %lu)", &v47, 0x16u);
      }
    }

    if (!v34 || ([v34 secureElementPass], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "passActivationState"), v40, v41))
    {
      v42 = pk_Payment_log();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

      if (v43)
      {
        v44 = pk_Payment_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v47) = 0;
          _os_log_impl(&dword_25B300000, v44, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Tearing down barcode payment session because updated pass no longer exists or is not activated", &v47, 2u);
        }
      }

      v45 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
      [v45 invalidateSession];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)a3 withRelativePriority:(unint64_t)a4
{
  observersManager = self->_observersManager;
  v10 = a3;
  [NPKObserverManager registerObserver:"registerObserver:withRelativePriority:" withRelativePriority:?];
  v6 = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  }

  v9 = v8;

  [(NPKContactlessPaymentSessionManager *)self _prepareSessionStateForSendingToObservers:v9];
  [v10 contactlessPaymentSessionManager:self didChangeSessionState:v9];
}

- (void)unregisterObserver:(id)a3
{
  observersManager = self->_observersManager;
  v4 = a3;
  [(NPKObserverManager *)observersManager unregisterObserver:v4];
}

- (void)paymentSession:(id)a3 didMakePassCurrent:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 uniqueID];
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] New current pass from payment session: %@", &v14, 0xCu);
    }
  }

  v10 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v10 setCurrentPass:v5];
  v12 = 1;
  if ([v5 passType] != 1 || (objc_msgSend(v10, "doublePressReceived") & 1) == 0)
  {
    if (![v5 npkHasValidNFCPayload] || (-[NPKContactlessPaymentSessionManager quickPaymentSession](self, "quickPaymentSession"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v12 = 0;
    }
  }

  [v10 setPassActivating:v12];
  [v10 setContactlessInterfaceReady:0];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v10];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)paymentSession:(id)a3 willActivatePass:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 uniqueID];
      *buf = 138412290;
      v67 = v11;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session will activate pass: %@", buf, 0xCu);
    }
  }

  kdebug_trace();
  if ([v7 style] != 8)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:*MEMORY[0x277D38468] forKeyedSubscript:*MEMORY[0x277D383D8]];
    [v12 setObject:*MEMORY[0x277D384C0] forKeyedSubscript:*MEMORY[0x277D384B8]];
    v13 = v12;
    v14 = v7;
    v15 = v14;
    if (!v14 || !v13)
    {
LABEL_76:

      v56 = MEMORY[0x277D37D28];
      v65 = *MEMORY[0x277D38558];
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
      [v56 subjects:v57 sendEvent:v13];

      goto LABEL_77;
    }

    v16 = [v14 passType];
    v17 = MEMORY[0x277D38530];
    if ((v16 + 1) >= 3)
    {
      v18 = *MEMORY[0x277D38530];
    }

    else
    {
      v18 = off_2799470B8[v16 + 1];
    }

    [v13 setObject:v18 forKeyedSubscript:*MEMORY[0x277D384F0]];

    v19 = [v15 style];
    v20 = [v15 secureElementPass];
    v21 = [v20 isIdentityPass];

    if (v21)
    {
      v22 = @"identity";
    }

    else if (v19 < 0xE && ((0x27FFu >> v19) & 1) != 0)
    {
      v22 = off_2799470D0[v19];
    }

    else
    {
      v22 = *v17;
    }

    [v13 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384E8]];

    v23 = [v15 nfcPayload];
    v24 = PKAnalyticsReportSwitchToggleResultValue();
    [v13 setObject:v24 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v25 = v15;
    if ([v25 passType] == 1)
    {
      v26 = [v25 secureElementPass];
      v27 = [v26 cardType];
      if (v27 <= 4)
      {
        v24 = **(&unk_279947140 + v27);
      }
    }

    else
    {
      v24 = @"other";
    }

    [v13 setObject:v24 forKeyedSubscript:*MEMORY[0x277D384E0]];
    v28 = [v25 secureElementPass];
    if ([v28 isIdentityPass])
    {
      v29 = [v28 identityType];
      if (v29 <= 2)
      {
        if (v29 == 1)
        {
          v30 = MEMORY[0x277D383A0];
          goto LABEL_43;
        }

        if (v29 == 2)
        {
          v30 = MEMORY[0x277D38518];
          goto LABEL_43;
        }
      }

      else
      {
        switch(v29)
        {
          case 3:
            goto LABEL_27;
          case 4:
            v30 = MEMORY[0x277D38488];
            goto LABEL_43;
          case 5:
LABEL_27:
            v30 = MEMORY[0x277D384F8];
LABEL_43:
            v35 = *v30;
            goto LABEL_44;
        }
      }

LABEL_36:
      v35 = *v17;
LABEL_44:
      v34 = v35;
      goto LABEL_57;
    }

    if (![v28 isAccessPass])
    {
      goto LABEL_36;
    }

    v31 = [v28 accessType];
    v32 = [v28 accessReportingType];
    v33 = v32;
    if (v31 <= 2)
    {
      switch(v31)
      {
        case 0:
          v36 = @"general";
          if (v32)
          {
            v36 = v32;
          }

          goto LABEL_52;
        case 1:
          v34 = @"hospitality";
          goto LABEL_56;
        case 2:
          v34 = @"corporate";
LABEL_56:

LABEL_57:
          [v13 setObject:v34 forKeyedSubscript:*MEMORY[0x277D384D8]];

          v37 = [v25 secureElementPass];
          v38 = [v37 devicePaymentApplications];
          [v38 count];

          v39 = PKAnalyticsReportSwitchToggleResultValue();

          [v13 setObject:v39 forKeyedSubscript:*MEMORY[0x277D38398]];
          v40 = [v25 secureElementPass];
          v41 = *v17;
          v42 = [v40 organizationName];
          if ([v42 length])
          {
            v43 = [v40 cardType];
            if (v43 <= 4 && ((1 << v43) & 0x16) != 0)
            {
              v44 = v42;

              v41 = v44;
            }
          }

          [v13 setObject:v41 forKeyedSubscript:*MEMORY[0x277D38490]];
          v45 = [v25 secureElementPass];
          v46 = v45;
          if (v45)
          {
            v60 = v6;
            [v45 devicePaymentApplications];
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v47 = v64 = 0u;
            v48 = [v47 countByEnumeratingWithState:&v61 objects:buf count:16];
            v59 = self;
            if (v48)
            {
              v49 = v48;
              v50 = 0;
              v51 = *v62;
              while (2)
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v62 != v51)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v53 = *(*(&v61 + 1) + 8 * i);
                  if (v50 && v50 != [*(*(&v61 + 1) + 8 * i) paymentType])
                  {

                    v54 = @"multiple";
                    goto LABEL_74;
                  }

                  v50 = [v53 paymentType];
                }

                v49 = [v47 countByEnumeratingWithState:&v61 objects:buf count:16];
                if (v49)
                {
                  continue;
                }

                break;
              }
            }

            v54 = PKPaymentMethodTypeToString();
LABEL_74:

            [v13 setObject:v54 forKeyedSubscript:*MEMORY[0x277D38508]];
            v55 = [v46 issuerCountryCode];
            [v13 setObject:v55 forKeyedSubscript:*MEMORY[0x277D384D0]];

            self = v59;
            v6 = v60;
          }

          goto LABEL_76;
      }
    }

    else
    {
      if (v31 <= 4)
      {
        if (v31 == 3)
        {
          v34 = @"singlefamily";
        }

        else
        {
          v34 = @"cars";
        }

        goto LABEL_56;
      }

      if (v31 == 5)
      {
        v34 = @"multifamily";
        goto LABEL_56;
      }

      if (v31 == 6)
      {
        v34 = @"urbanmobility";
        goto LABEL_56;
      }
    }

    v36 = *v17;
LABEL_52:
    v34 = v36;
    goto LABEL_56;
  }

LABEL_77:
  [(NPKContactlessPaymentSessionManager *)self paymentSession:v6 didMakePassCurrent:v7, v59];

  v58 = *MEMORY[0x277D85DE8];
}

- (void)paymentSession:(id)a3 didActivatePass:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 uniqueID];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did activate pass: %@", &v12, 0xCu);
    }
  }

  kdebug_trace();
  if (self->_contactlessPaymentInterfaceVisible)
  {
    kdebug_trace();
  }

  v10 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v10 setCurrentPass:v5];
  [v10 setPassActivating:0];
  [v10 setContactlessInterfaceReady:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)paymentSession:(id)a3 didFailTransactionForPass:(id)a4 withValueAddedServiceTransactions:(id)a5 forValueAddedServicePasses:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
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
      v17 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      *buf = 138412802;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v38 = v11;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session %@ (current %@) failed (VAS) transaction for pass %@", buf, 0x20u);
    }
  }

  if (v12)
  {
    v32 = 0;
    [(NPKContactlessPaymentSessionManager *)self _handleValueAddedServiceTransactions:v12 forValueAddedServicePasses:v13 paymentTransaction:0 outUserInterventionRequiredPasses:&v32];
    v18 = v32;
  }

  else
  {
    v18 = 0;
  }

  if (![v18 count])
  {
    if (![v12 count])
    {
      goto LABEL_25;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v38) = 1;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __141__NPKContactlessPaymentSessionManager_paymentSession_didFailTransactionForPass_withValueAddedServiceTransactions_forValueAddedServicePasses___block_invoke;
    v31[3] = &unk_279946E28;
    v31[4] = buf;
    [v12 enumerateObjectsUsingBlock:v31];
    v22 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
    v23 = [v22 currentPass];

    v24 = pk_Payment_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = pk_Payment_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v23 style];
        *v33 = 138412546;
        v34 = v23;
        v35 = 1024;
        v36 = v27;
        _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] current pass unique ID is %@ style %d", v33, 0x12u);
      }
    }

    v28 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [v28 setCurrentPass:v11];
    [v28 setContactlessInterfaceReady:1];
    if ([v23 passType] == 1 && (*(*&buf[8] + 24) & 1) != 0)
    {
      v29 = 4;
    }

    else
    {
      if (![v23 npkHasValidNFCPayload])
      {
LABEL_24:
        [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v28];

        _Block_object_dispose(buf, 8);
        goto LABEL_25;
      }

      v29 = 2;
    }

    [v28 setFailureType:v29];
    goto LABEL_24;
  }

  v19 = pk_Payment_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

  if (v20)
  {
    v21 = pk_Payment_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Got user intervention required passes %@", buf, 0xCu);
    }
  }

LABEL_25:

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __141__NPKContactlessPaymentSessionManager_paymentSession_didFailTransactionForPass_withValueAddedServiceTransactions_forValueAddedServicePasses___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 terminalMode];
  if (result != 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)paymentSession:(id)a3 didCompleteTransactionForReason:(unint64_t)a4 withTransactionContext:(id)a5 shouldCleanupSession:(BOOL)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      v16 = NSStringFromNPKQuickPaymentSessionCompletionReason(a4);
      v27 = 138412802;
      v28 = v10;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session %@ (current %@) completed for reason %@", &v27, 0x20u);
    }
  }

  v17 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

  if (v17 == v10)
  {
    v18 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:v11];
    [v18 setCompletionReason:a4];
    v19 = a4 - 4;
    if (a4 - 4 <= 7 && ((0xF3u >> v19) & 1) != 0)
    {
      [v18 setFailureType:qword_25B59A968[v19]];
    }

    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v18];
    if ([v18 hasSession])
    {
      v20 = [v18 transactionContext];
      v21 = [v20 transactionType] == 5;

      if (a6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v21 = 0;
      if (a6)
      {
        goto LABEL_14;
      }
    }

    if (!v21)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_14:
    v22 = pk_Payment_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      v24 = pk_Payment_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Will cleanup payment session", &v27, 2u);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
    v25 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];

    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v25];
    v18 = v25;
    goto LABEL_19;
  }

LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)paymentSessionDidEnterField:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session detected field entry", buf, 2u);
    }
  }

  v8 = [v4 currentPass];
  v9 = [v8 paymentPass];
  v10 = [v9 effectiveContactlessPaymentApplicationState];
  v11 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v11 setInField:1];
  if (!v8 || v9 && v10 != 1)
  {
    [v11 setCurrentPass:v8];
    [v11 setFailureType:5];
  }

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v11];
  v12 = [v4 currentPass];
  if ([v12 style] != 8)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v13 setObject:*MEMORY[0x277D38438] forKeyedSubscript:*MEMORY[0x277D383D8]];
    v14 = v13;
    v15 = v12;
    v16 = v15;
    if (!v15 || !v14)
    {
LABEL_79:

      v55 = MEMORY[0x277D37D28];
      v66 = *MEMORY[0x277D38558];
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      [v55 subjects:v56 sendEvent:v14];

      goto LABEL_80;
    }

    v17 = [v15 passType];
    if ((v17 + 1) >= 3)
    {
      v18 = *MEMORY[0x277D38530];
    }

    else
    {
      v18 = off_2799470B8[v17 + 1];
    }

    [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x277D384F0]];

    v19 = [v16 style];
    v20 = [v16 secureElementPass];
    v21 = [v20 isIdentityPass];

    if (v21)
    {
      v22 = @"identity";
    }

    else if (v19 < 0xE && ((0x27FFu >> v19) & 1) != 0)
    {
      v22 = off_2799470D0[v19];
    }

    else
    {
      v22 = *MEMORY[0x277D38530];
    }

    [v14 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384E8]];

    v23 = [v16 nfcPayload];
    v24 = PKAnalyticsReportSwitchToggleResultValue();
    [v14 setObject:v24 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v60 = v16;
    v25 = v16;
    if ([v25 passType] == 1)
    {
      v26 = [v25 secureElementPass];
      v27 = [v26 cardType];
      if (v27 <= 4)
      {
        v24 = **(&unk_279947140 + v27);
      }
    }

    else
    {
      v24 = @"other";
    }

    [v14 setObject:v24 forKeyedSubscript:*MEMORY[0x277D384E0]];
    v28 = [v25 secureElementPass];
    v61 = v9;
    if ([v28 isIdentityPass])
    {
      v29 = [v28 identityType];
      if (v29 <= 2)
      {
        if (v29 == 1)
        {
          v30 = MEMORY[0x277D383A0];
          goto LABEL_47;
        }

        if (v29 == 2)
        {
          v30 = MEMORY[0x277D38518];
          goto LABEL_47;
        }
      }

      else
      {
        switch(v29)
        {
          case 3:
            goto LABEL_31;
          case 4:
            v30 = MEMORY[0x277D38488];
            goto LABEL_47;
          case 5:
LABEL_31:
            v30 = MEMORY[0x277D384F8];
LABEL_47:
            v34 = *v30;
            goto LABEL_60;
        }
      }

LABEL_40:
      v30 = MEMORY[0x277D38530];
      goto LABEL_47;
    }

    if (![v28 isAccessPass])
    {
      goto LABEL_40;
    }

    v31 = [v28 accessType];
    v32 = [v28 accessReportingType];
    v33 = v32;
    if (v31 <= 2)
    {
      switch(v31)
      {
        case 0:
          v35 = @"general";
          if (v32)
          {
            v35 = v32;
          }

          goto LABEL_55;
        case 1:
          v34 = @"hospitality";
          goto LABEL_59;
        case 2:
          v34 = @"corporate";
LABEL_59:

LABEL_60:
          [v14 setObject:v34 forKeyedSubscript:*MEMORY[0x277D384D8]];

          v36 = [v25 secureElementPass];
          v37 = [v36 devicePaymentApplications];
          [v37 count];

          v38 = PKAnalyticsReportSwitchToggleResultValue();

          [v14 setObject:v38 forKeyedSubscript:*MEMORY[0x277D38398]];
          v39 = [v25 secureElementPass];
          v40 = *MEMORY[0x277D38530];
          v41 = [v39 organizationName];
          if ([v41 length])
          {
            v42 = [v39 cardType];
            if (v42 <= 4 && ((1 << v42) & 0x16) != 0)
            {
              v43 = v41;

              v40 = v43;
            }
          }

          [v14 setObject:v40 forKeyedSubscript:*MEMORY[0x277D38490]];
          v44 = [v25 secureElementPass];
          v45 = v44;
          if (v44)
          {
            v58 = v12;
            [v44 devicePaymentApplications];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v46 = v65 = 0u;
            v47 = [v46 countByEnumeratingWithState:&v62 objects:buf count:16];
            v59 = v4;
            if (v47)
            {
              v48 = v47;
              v49 = 0;
              v50 = *v63;
              while (2)
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v63 != v50)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v52 = *(*(&v62 + 1) + 8 * i);
                  if (v49 && v49 != [*(*(&v62 + 1) + 8 * i) paymentType])
                  {

                    v53 = @"multiple";
                    goto LABEL_77;
                  }

                  v49 = [v52 paymentType];
                }

                v48 = [v46 countByEnumeratingWithState:&v62 objects:buf count:16];
                if (v48)
                {
                  continue;
                }

                break;
              }
            }

            v53 = PKPaymentMethodTypeToString();
LABEL_77:

            [v14 setObject:v53 forKeyedSubscript:*MEMORY[0x277D38508]];
            v54 = [v45 issuerCountryCode];
            [v14 setObject:v54 forKeyedSubscript:*MEMORY[0x277D384D0]];

            v12 = v58;
            v4 = v59;
          }

          v16 = v60;
          v9 = v61;
          goto LABEL_79;
      }
    }

    else
    {
      if (v31 <= 4)
      {
        if (v31 == 3)
        {
          v34 = @"singlefamily";
        }

        else
        {
          v34 = @"cars";
        }

        goto LABEL_59;
      }

      if (v31 == 5)
      {
        v34 = @"multifamily";
        goto LABEL_59;
      }

      if (v31 == 6)
      {
        v34 = @"urbanmobility";
        goto LABEL_59;
      }
    }

    v35 = *MEMORY[0x277D38530];
LABEL_55:
    v34 = v35;
    goto LABEL_59;
  }

LABEL_80:

  v57 = *MEMORY[0x277D85DE8];
}

- (void)paymentSessionDidExitField:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session detected field exit", buf, 2u);
    }
  }

  v8 = [(NPKContactlessPaymentSessionState *)self->_lastSessionState transactionContext];
  if (!v8 || (v9 = v8, -[NPKContactlessPaymentSessionState transactionContext](self->_lastSessionState, "transactionContext"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 transactionType], v10, v9, v11 != 5))
  {
    v14 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [v14 setInField:0];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v14];
    v15 = [v4 currentPass];
    if ([v15 style] == 8)
    {
LABEL_82:

LABEL_83:
      goto LABEL_84;
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v16 setObject:*MEMORY[0x277D38440] forKeyedSubscript:*MEMORY[0x277D383D8]];
    v17 = v16;
    v18 = v15;
    v19 = v18;
    if (!v18 || !v17)
    {
LABEL_81:

      v60 = MEMORY[0x277D37D28];
      v69 = *MEMORY[0x277D38558];
      v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
      [v60 subjects:v61 sendEvent:v17];

      goto LABEL_82;
    }

    v20 = [v18 passType];
    v21 = MEMORY[0x277D38530];
    if ((v20 + 1) >= 3)
    {
      v22 = *MEMORY[0x277D38530];
    }

    else
    {
      v22 = off_2799470B8[v20 + 1];
    }

    [v17 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384F0]];

    v23 = [v19 style];
    v24 = [v19 secureElementPass];
    v25 = [v24 isIdentityPass];

    if (v25)
    {
      v26 = @"identity";
    }

    else if (v23 < 0xE && ((0x27FFu >> v23) & 1) != 0)
    {
      v26 = off_2799470D0[v23];
    }

    else
    {
      v26 = *v21;
    }

    [v17 setObject:v26 forKeyedSubscript:*MEMORY[0x277D384E8]];

    v27 = [v19 nfcPayload];
    v28 = PKAnalyticsReportSwitchToggleResultValue();
    [v17 setObject:v28 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v29 = v19;
    if ([v29 passType] == 1)
    {
      v30 = [v29 secureElementPass];
      v31 = [v30 cardType];
      if (v31 <= 4)
      {
        v28 = **(&unk_279947140 + v31);
      }
    }

    else
    {
      v28 = @"other";
    }

    [v17 setObject:v28 forKeyedSubscript:*MEMORY[0x277D384E0]];
    v32 = [v29 secureElementPass];
    if ([v32 isIdentityPass])
    {
      v33 = [v32 identityType];
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
          v34 = MEMORY[0x277D383A0];
          goto LABEL_48;
        }

        if (v33 == 2)
        {
          v34 = MEMORY[0x277D38518];
          goto LABEL_48;
        }
      }

      else
      {
        switch(v33)
        {
          case 3:
            goto LABEL_32;
          case 4:
            v34 = MEMORY[0x277D38488];
            goto LABEL_48;
          case 5:
LABEL_32:
            v34 = MEMORY[0x277D384F8];
LABEL_48:
            v39 = *v34;
            goto LABEL_49;
        }
      }

LABEL_41:
      v39 = *v21;
LABEL_49:
      v38 = v39;
      goto LABEL_62;
    }

    if (![v32 isAccessPass])
    {
      goto LABEL_41;
    }

    v35 = [v32 accessType];
    v36 = [v32 accessReportingType];
    v37 = v36;
    if (v35 <= 2)
    {
      switch(v35)
      {
        case 0:
          v40 = @"general";
          if (v36)
          {
            v40 = v36;
          }

          goto LABEL_57;
        case 1:
          v38 = @"hospitality";
          goto LABEL_61;
        case 2:
          v38 = @"corporate";
LABEL_61:

LABEL_62:
          [v17 setObject:v38 forKeyedSubscript:*MEMORY[0x277D384D8]];

          v41 = [v29 secureElementPass];
          v42 = [v41 devicePaymentApplications];
          [v42 count];

          v43 = PKAnalyticsReportSwitchToggleResultValue();

          [v17 setObject:v43 forKeyedSubscript:*MEMORY[0x277D38398]];
          v44 = [v29 secureElementPass];
          v45 = *v21;
          v46 = [v44 organizationName];
          if ([v46 length])
          {
            v47 = [v44 cardType];
            if (v47 <= 4 && ((1 << v47) & 0x16) != 0)
            {
              v48 = v46;

              v45 = v48;
            }
          }

          [v17 setObject:v45 forKeyedSubscript:*MEMORY[0x277D38490]];
          v49 = [v29 secureElementPass];
          v50 = v49;
          if (v49)
          {
            v64 = v4;
            [v49 devicePaymentApplications];
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v51 = v68 = 0u;
            v52 = [v51 countByEnumeratingWithState:&v65 objects:buf count:16];
            v63 = v19;
            if (v52)
            {
              v53 = v52;
              v54 = 0;
              v55 = *v66;
              while (2)
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v66 != v55)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v57 = *(*(&v65 + 1) + 8 * i);
                  if (v54 && v54 != [*(*(&v65 + 1) + 8 * i) paymentType])
                  {

                    v58 = @"multiple";
                    goto LABEL_79;
                  }

                  v54 = [v57 paymentType];
                }

                v53 = [v51 countByEnumeratingWithState:&v65 objects:buf count:16];
                if (v53)
                {
                  continue;
                }

                break;
              }
            }

            v58 = PKPaymentMethodTypeToString();
LABEL_79:

            [v17 setObject:v58 forKeyedSubscript:*MEMORY[0x277D38508]];
            v59 = [v50 issuerCountryCode];
            [v17 setObject:v59 forKeyedSubscript:*MEMORY[0x277D384D0]];

            v19 = v63;
            v4 = v64;
          }

          goto LABEL_81;
      }
    }

    else
    {
      if (v35 <= 4)
      {
        if (v35 == 3)
        {
          v38 = @"singlefamily";
        }

        else
        {
          v38 = @"cars";
        }

        goto LABEL_61;
      }

      if (v35 == 5)
      {
        v38 = @"multifamily";
        goto LABEL_61;
      }

      if (v35 == 6)
      {
        v38 = @"urbanmobility";
        goto LABEL_61;
      }
    }

    v40 = *v21;
LABEL_57:
    v38 = v40;
    goto LABEL_61;
  }

  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did ignore exit field notification while on STS_ISO18013 transaction", buf, 2u);
    }

    goto LABEL_83;
  }

LABEL_84:

  v62 = *MEMORY[0x277D85DE8];
}

- (void)paymentSessionDidSelectPayment:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v5 = [v4 currentPass];

  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 uniqueID];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did select payment for unique ID: %@", &v12, 0xCu);
    }
  }

  if ([v5 passType] != 1)
  {
    v10 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [v10 setCurrentPass:v5];
    [v10 setFailureType:3];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)paymentSessionDidSelectValueAddedService:(id)a3
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session selected value added service", v6, 2u);
    }
  }
}

- (void)paymentSessionDidReceiveStartTransaction:(id)a3
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received start transaction", v6, 2u);
    }
  }
}

- (void)paymentSessionDidReceiveActivityTimeout:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v28 = [v31 currentPass];
  v4 = [v28 paymentPass];
  v5 = [v4 isTransitPass];

  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received activity timeout isTransit %i", &buf, 8u);
    }
  }

  if (v5)
  {
    v9 = NPKIsTruthOnCardTransitPass(v28);
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      if (v11)
      {
        v12 = pk_Payment_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling activity timeout in transit pass as completion", &buf, 2u);
        }
      }

      v13 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      v14 = [v13 currentPass];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = [v14 paymentPass];
      obj = [v15 npkPreferredContactlessPaymentApplications];

      v16 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v16)
      {
        v30 = *v36;
        do
        {
          v17 = 0;
          do
          {
            if (*v36 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v35 + 1) + 8 * v17);
            v19 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
            [(NPKContactlessPaymentSessionManagerTransactionContext *)v19 setTransactionStatus:2];
            v20 = [v31 currentPass];
            [(NPKContactlessPaymentSessionManagerTransactionContext *)v19 setTransactionPass:v20];

            if (NPKIsTruthOnCardTransitPass(v14))
            {
              v21 = objc_alloc_init(MEMORY[0x277D380F0]);
              v22 = dispatch_semaphore_create(0);
              *&buf = 0;
              *(&buf + 1) = &buf;
              v40 = 0x3032000000;
              v41 = __Block_byref_object_copy__7;
              v42 = __Block_byref_object_dispose__7;
              v43 = 0;
              v23 = [v14 uniqueID];
              v32[0] = MEMORY[0x277D85DD0];
              v32[1] = 3221225472;
              v32[2] = __79__NPKContactlessPaymentSessionManager_paymentSessionDidReceiveActivityTimeout___block_invoke;
              v32[3] = &unk_279946E50;
              p_buf = &buf;
              v24 = v22;
              v33 = v24;
              [v21 transitStateWithPassUniqueIdentifier:v23 paymentApplication:v18 completion:v32];

              dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
              [(NPKContactlessPaymentSessionManagerTransactionContext *)v19 updateWithConcreteTransactions:MEMORY[0x277CBEBF8] ephemeralTransaction:0 updatedPassTransitItems:MEMORY[0x277CBEBF8] paymentApplication:v18];
              if (*(*(&buf + 1) + 40))
              {
                [(NPKContactlessPaymentSessionManagerTransactionContext *)v19 forceToTransitTypeTransactionWithTransactionStatus:1];
              }

              _Block_object_dispose(&buf, 8);
            }

            else
            {
              [(NPKContactlessPaymentSessionManagerTransactionContext *)v19 updateWithConcreteTransactions:MEMORY[0x277CBEBF8] ephemeralTransaction:0 updatedPassTransitItems:MEMORY[0x277CBEBF8] paymentApplication:v18];
            }

            v25 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
            [v25 setCurrentPass:v14];
            [v25 setSessionAuthorized:0];
            [v25 setDoublePressReceived:0];
            [v25 setContactlessInterfaceReady:0];
            [v25 setCanChangePass:1];
            [v25 setCompletionReason:0];
            [v25 setTransactionContext:v19];
            [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v25];

            ++v17;
          }

          while (v16 != v17);
          v16 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v16);
      }

LABEL_27:
      goto LABEL_28;
    }

    if (v11)
    {
      v14 = pk_Payment_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v28 uniqueID];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] unexpected activity timeout event for cEMV pass with uniqueID:%@", &buf, 0xCu);
      }

      goto LABEL_27;
    }
  }

LABEL_28:

  v27 = *MEMORY[0x277D85DE8];
}

void __79__NPKContactlessPaymentSessionManager_paymentSessionDidReceiveActivityTimeout___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)paymentSessionDidReceiveCredential:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received credential", v8, 2u);
    }
  }

  v7 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v7 setSessionAuthorized:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v7];
}

- (void)paymentSession:(id)a3 didReceive18013Request:(id)a4 readerAuthInfo:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received 18013 Request", v12, 2u);
    }
  }

  [(NPKContactlessPaymentSessionManager *)self handleISO18013Request:v7 withReaderAuthInfo:v8];
}

- (void)paymentSessionDidReceiveAuthorizationTimeout:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received authorization timeout", v8, 2u);
    }
  }

  v7 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v7 setDoublePressReceived:0];
  [v7 setSessionAuthorized:0];
  if ([(NPKContactlessPaymentSessionState *)self->_lastSessionState sessionAuthorized])
  {
    [v7 setFailureType:6];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v7];
  }
}

- (void)paymentSessionDidReceiveActivationError:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received activation error", v8, 2u);
    }
  }

  v7 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v7 setDoublePressReceived:0];
  [v7 setSessionAuthorized:0];
  [v7 setFailureType:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v7];
}

- (void)paymentSessionDidReceiveTransactionError:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received transaction error", v8, 2u);
    }
  }

  v7 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v7 setDoublePressReceived:0];
  [v7 setSessionAuthorized:0];
  [v7 setFailureType:2];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v7];
}

- (void)paymentSessionIsWaitingToStart:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session waiting to start", v8, 2u);
    }
  }

  v7 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v7 setSessionWaitingToStart:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v7];
}

- (void)paymentSessionDidStart:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did start", v8, 2u);
    }
  }

  v7 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v7];
}

- (void)_cleanupQuickPaymentSession
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  if (v3)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "[NPKContactlessPaymentSessionManager _cleanupQuickPaymentSession]";
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] %s cleaning payment session:%@", &v9, 0x16u);
      }
    }

    [v3 deactivateSessionWithCompletion:0];
    [(NPKContactlessPaymentSessionManager *)self setQuickPaymentSession:0];
    v7 = [(NPKContactlessPaymentSessionManager *)self cleanupDelegate];
    [v3 setDelegate:v7];

    [(NPKContactlessPaymentSessionManager *)self _stopSessionTimer];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_managerContextForContactlessInterfaceTransactionContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  v6 = [v4 paymentPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionPass:v6];

  v7 = [v4 paymentPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setValueAddedServicePass:v7];

  v8 = [v4 transaction];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setPaymentTransaction:v8];

  v9 = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
  v10 = [v9 transactionContext];
  v11 = [v10 transactionType];

  if (v11 == 5)
  {
    if ([v4 success])
    {
      v12 = 4;
    }

    else
    {
      v12 = 5;
    }

    [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setReleaseDataStatus:v12];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionType:5];
    v13 = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
    v14 = [v13 transactionContext];
    v15 = [v14 releaseDataRequest];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setReleaseDataRequest:v15];
  }

  v16 = [v4 valueAddedServiceTransactions];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke;
  v67[3] = &unk_279946EA0;
  v17 = v4;
  v68 = v17;
  v18 = v5;
  v69 = v18;
  [v16 enumerateObjectsUsingBlock:v67];

  v19 = [v17 valueAddedServicePasses];
  v20 = [v19 firstObject];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 setValueAddedServicePass:v20];

  v21 = [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 transactionPass];

  if (!v21)
  {
    v22 = [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 valueAddedServicePass];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 setTransactionPass:v22];
  }

  v23 = [v17 transaction];
  if (v23)
  {
    v24 = objc_alloc_init(MEMORY[0x277D380F0]);
    v25 = [v17 paymentPass];
    v26 = [v25 uniqueID];
    v27 = [v17 paymentApplication];
    [v24 insertOrUpdatePaymentTransaction:v23 forPassUniqueIdentifier:v26 paymentApplication:v27 completion:0];
LABEL_12:

    goto LABEL_13;
  }

  v28 = [v17 transitHistory];

  if (v28)
  {
    v52 = self;
    v24 = [v17 paymentPass];
    v29 = [v24 uniqueID];
    v30 = objc_alloc_init(MEMORY[0x277D380F0]);
    v31 = dispatch_semaphore_create(0);
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__7;
    v65 = __Block_byref_object_dispose__7;
    v66 = 0;
    v32 = [v24 devicePrimaryPaymentApplication];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke_3;
    v58[3] = &unk_279946E50;
    v60 = &v61;
    v27 = v31;
    v59 = v27;
    [v30 transitStateWithPassUniqueIdentifier:v29 paymentApplication:v32 completion:v58];
    v53 = v30;
    v50 = v29;

    dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    v56 = 0;
    v57 = MEMORY[0x277CBEBF8];
    v55 = 0;
    v33 = v62[5];
    v34 = [v17 transitHistory];
    v35 = [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 transactionPass];
    v36 = [v35 paymentPass];
    v51 = [v33 npk_processUpdateWithAppletHistory:v34 concreteTransactions:&v57 ephemeralTransaction:&v56 mutatedBalances:&v55 pass:v36];

    v54 = [v17 transitHistory];
    v37 = [v17 date];
    v38 = [v17 paymentApplication];
    v39 = [v17 paymentPass];
    v40 = [v39 uniqueID];
    v41 = [v17 expressState];
    [v53 processTransitTransactionEventWithHistory:v54 transactionDate:v37 forPaymentApplication:v38 withPassUniqueIdentifier:v40 expressTransactionState:v41];

    v42 = v55;
    v43 = [v17 paymentApplication];
    v44 = [(NPKContactlessPaymentSessionManager *)v52 _updatedPassItemFieldWithPaymentPass:v24 transitAppletBalances:v42 appletState:v51 paymentApplication:v43];

    v46 = v56;
    v45 = v57;
    v47 = [v17 paymentApplication];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 updateWithConcreteTransactions:v45 ephemeralTransaction:v46 updatedPassTransitItems:v44 paymentApplication:v47];

    [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 forceToTransitTypeTransactionWithTransactionStatus:5];
    _Block_object_dispose(&v61, 8);

    v25 = v50;
    v26 = v53;
    goto LABEL_12;
  }

LABEL_13:
  v48 = v18;

  return v18;
}

void __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 didSucceed])
  {
    v7 = [*(a1 + 32) valueAddedServicePasses];
    v8 = MEMORY[0x277CCAC30];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke_2;
    v12[3] = &unk_279946E78;
    v13 = v6;
    v9 = [v8 predicateWithBlock:v12];
    v10 = [v7 filteredArrayUsingPredicate:v9];
    v11 = [v10 firstObject];

    if (v11)
    {
      [*(a1 + 40) setValueAddedServicePass:v11];
      *a4 = 1;
    }
  }
}

uint64_t __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 passTypeIdentifier];
  v4 = [v3 dataUsingEncoding:4];
  v5 = [v4 SHA256Hash];

  v6 = [*(a1 + 32) merchant];
  v7 = [v6 identifier];
  v8 = [v5 isEqual:v7];

  return v8;
}

void __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_handleValueAddedServiceTransactions:(id)a3 forValueAddedServicePasses:(id)a4 paymentTransaction:(id)a5 outUserInterventionRequiredPasses:(id *)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v36 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v9;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling VAS transactions: %@", buf, 0xCu);
    }
  }

  if (a6)
  {
    v35 = [MEMORY[0x277CBEB18] array];
    *a6 = v35;
  }

  else
  {
    v35 = 0;
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v21 = [v20 passTypeIdentifier];
        v22 = [v21 dataUsingEncoding:4];
        v23 = [v22 SHA256Hash];

        v24 = [v14 objectForKey:v23];
        if (!v24)
        {
          v24 = [MEMORY[0x277CBEB18] array];
          [v14 setObject:v24 forKey:v23];
        }

        [v24 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v17);
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MEMORY[0x277CBEB18] array];
  v27 = objc_alloc_init(MEMORY[0x277D380F0]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __156__NPKContactlessPaymentSessionManager__handleValueAddedServiceTransactions_forValueAddedServicePasses_paymentTransaction_outUserInterventionRequiredPasses___block_invoke;
  v37[3] = &unk_279946EC8;
  v38 = v14;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v36;
  v43 = v35;
  v28 = v35;
  v29 = v36;
  v30 = v27;
  v31 = v26;
  v32 = v25;
  v33 = v14;
  [v9 enumerateObjectsUsingBlock:v37];

  v34 = *MEMORY[0x277D85DE8];
}

void __156__NPKContactlessPaymentSessionManager__handleValueAddedServiceTransactions_forValueAddedServicePasses_paymentTransaction_outUserInterventionRequiredPasses___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 merchant];
  v6 = [v5 identifier];
  v7 = [v4 objectForKey:v6];

  if ([v3 didSucceed])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          [*(a1 + 40) addObject:{v3, v21}];
          v14 = *(a1 + 48);
          v15 = [v13 uniqueID];
          [v14 addObject:v15];

          v16 = *(a1 + 56);
          v17 = [v13 uniqueID];
          [v16 insertOrUpdateValueAddedServiceTransaction:v3 forPassUniqueIdentifier:v17 paymentTransaction:*(a1 + 64) completion:0];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [*(a1 + 40) addObject:v3];
    [*(a1 + 48) addObject:&stru_286C934F8];
    if ([v3 error] == 3)
    {
      [*(a1 + 72) addObjectsFromArray:v7];
    }

    else if ([v3 error] == 1)
    {
      v18 = [v3 merchantURL];
      v19 = [v18 length];

      if (v19)
      {
        [*(a1 + 56) insertOrUpdateValueAddedServiceTransaction:v3 forPassUniqueIdentifier:0 paymentTransaction:0 completion:0];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_baseSessionStateForUpdate
{
  v3 = [(NPKContactlessPaymentSessionState *)self->_lastSessionState copy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(NPKContactlessPaymentSessionState);
  }

  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x277CCAD78]);
  [(NPKContactlessPaymentSessionState *)v6 setUniqueID:v7];

  v8 = [MEMORY[0x277CBEAA8] date];
  [(NPKContactlessPaymentSessionState *)v6 setTimestamp:v8];

  v9 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  [(NPKContactlessPaymentSessionState *)v6 setHasSession:v9 != 0];

  v10 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setSessionStarted:](v6, "setSessionStarted:", [v10 sessionStarted]);

  v11 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setIsSwitchingSessionType:](v6, "setIsSwitchingSessionType:", [v11 isSwitchingSessionType]);

  v12 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setSessionType:](v6, "setSessionType:", [v12 sessionType]);

  if (![(NPKContactlessPaymentSessionState *)v6 hasSession]|| [(NPKContactlessPaymentSessionState *)v6 sessionStarted])
  {
    [(NPKContactlessPaymentSessionState *)v6 setSessionWaitingToStart:0];
  }

  v13 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setInServiceMode:](v6, "setInServiceMode:", [v13 inServiceMode]);

  if ([(NPKContactlessPaymentSessionState *)v6 inServiceMode])
  {
    [(NPKContactlessPaymentSessionState *)v6 setServiceModeRequestedPass:0];
  }

  [(NPKContactlessPaymentSessionState *)v6 setTransactionContext:0];
  v14 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (v14)
  {
    [(NPKContactlessPaymentSessionState *)v6 setHasSession:1];
    v15 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
    -[NPKContactlessPaymentSessionState setSessionStarted:](v6, "setSessionStarted:", [v15 sessionStarted]);

    [(NPKContactlessPaymentSessionState *)v6 setInServiceMode:0];
  }

  [(NPKContactlessPaymentSessionState *)v6 setExpressTransactionStatus:0];
  [(NPKContactlessPaymentSessionState *)v6 setFailureType:0];
  [(NPKContactlessPaymentSessionState *)v6 setCompletionReason:0];

  return v6;
}

- (void)_prepareSessionStateForSendingToObservers:(id)a3
{
  v7 = a3;
  v4 = [v7 isArmed];
  v5 = v4 & [v7 inField];
  if ([v7 inServiceMode])
  {
    v6 = [v7 doublePressReceived] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  [v7 setCanChangePass:(v5 ^ 1) & v6];
  if (([v7 hasSession] & 1) == 0)
  {
    [v7 setCurrentPass:self->_userSelectedPass];
  }
}

- (void)_sendSessionStateToObservers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(NPKContactlessPaymentSessionManager *)self _prepareSessionStateForSendingToObservers:v5];
  objc_storeStrong(&self->_lastSessionState, a3);
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] sending to observer new session State:%@", buf, 0xCu);
    }
  }

  observersManager = self->_observersManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__NPKContactlessPaymentSessionManager__sendSessionStateToObservers___block_invoke;
  v12[3] = &unk_279946EF0;
  v12[4] = self;
  v13 = v5;
  v10 = v5;
  [(NPKObserverManager *)observersManager enumerateObserversUsingBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_sessionStateForTransactionContext:(id)a3
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
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Getting session state for transaction completion", buf, 2u);
    }
  }

  v8 = [v4 valueAddedServicePasses];
  v9 = [v4 valueAddedServiceTransactions];
  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__NPKContactlessPaymentSessionManager__sessionStateForTransactionContext___block_invoke;
  v19[3] = &unk_279946E28;
  v19[4] = buf;
  [v9 enumerateObjectsUsingBlock:v19];
  v10 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v11 = [v10 currentPass];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v4 transaction];
    if (v12 || ([v4 transitHistory], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (*(v21 + 5))
    {
      v15 = [v8 firstObject];

      v13 = 0;
      v11 = v15;
      if (!v4)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  if (*(v21 + 5))
  {
    v13 = [v8 firstObject];
    if (!v4)
    {
LABEL_17:
      v14 = 0;
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

LABEL_13:
  v14 = [(NPKContactlessPaymentSessionManager *)self _managerContextForContactlessInterfaceTransactionContext:v4];
  [v14 setValueAddedServicePass:v13];
  if (v9)
  {
LABEL_18:
    v16 = [v4 transaction];
    [(NPKContactlessPaymentSessionManager *)self _handleValueAddedServiceTransactions:v9 forValueAddedServicePasses:v8 paymentTransaction:v16 outUserInterventionRequiredPasses:0];
  }

LABEL_19:
  v17 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v17 setCurrentPass:v11];
  [v17 setSessionAuthorized:0];
  [v17 setDoublePressReceived:0];
  [v17 setContactlessInterfaceReady:0];
  [v17 setCanChangePass:1];
  [v17 setTransactionContext:v14];

  _Block_object_dispose(buf, 8);

  return v17;
}

void __74__NPKContactlessPaymentSessionManager__sessionStateForTransactionContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 didSucceed])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_sessionStateForExpressTransactionStatus:(unint64_t)a3 pass:(id)a4 paymentApplication:(id)a5 concreteTransactions:(id)a6 ephemeralTransaction:(id)a7 mutatedBalances:(id)a8 appletState:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v21 setCurrentPass:v15];
  [v21 setSessionAuthorized:1];
  [v21 setDoublePressReceived:1];
  [v21 setContactlessInterfaceReady:0];
  [v21 setCanChangePass:1];
  [v21 setExpressTransactionStatus:a3];
  if (a3 == 1)
  {
    [v21 setCanChangePass:0];
  }

  else
  {
    IsComplete = NPKExpressTransactionStatusIsComplete(a3);
    if (a3 == 3 || IsComplete)
    {
      v23 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
      [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 setTransactionPass:v15];
      if (NPKIsTruthOnCard(v15))
      {
        [v15 paymentPass];
        v24 = v27 = v17;
        v25 = [(NPKContactlessPaymentSessionManager *)self _updatedPassItemFieldWithPaymentPass:v24 transitAppletBalances:v19 appletState:v20 paymentApplication:v16];

        v17 = v27;
        [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 updateWithConcreteTransactions:v27 ephemeralTransaction:v18 updatedPassTransitItems:v25 paymentApplication:v16];
        [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 forceToTransitTypeTransactionWithTransactionStatus:a3];
      }

      [v21 setTransactionContext:v23];
      [v21 setCompletionReason:3];
    }

    else if (a3 == 2)
    {
      [v21 setCompletionReason:5];
      [v21 setFailureType:2];
    }
  }

  return v21;
}

- (void)_startSessionTimerWithReason:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = pk_ui_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_ui_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"authTokenInUse";
      if (!a3)
      {
        v8 = @"sessionCreated";
      }

      v9 = v8;
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Starting contactless session timer for reason: %@", &v14, 0xCu);
    }
  }

  sessionTimer = self->_sessionTimer;
  if (a3)
  {
    v11 = 60000000000;
  }

  else
  {
    v11 = 5000000000;
  }

  v12 = dispatch_time(0, v11);
  dispatch_source_set_timer(sessionTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_stopSessionTimer
{
  v3 = pk_ui_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Stopping contactless session timer", v6, 2u);
    }
  }

  dispatch_source_set_timer(self->_sessionTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_handleSessionTimerFired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_ui_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      contactlessPaymentInterfaceVisible = self->_contactlessPaymentInterfaceVisible;
      v9[0] = 67109120;
      v9[1] = contactlessPaymentInterfaceVisible;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: contactless session timer fired with visibility %d", v9, 8u);
    }
  }

  if (self->_quickPaymentSession)
  {
    [(NPKContactlessPaymentSessionManager *)self handleEndSessionRequestedForReason:2];
  }

  v7 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (v7)
  {
    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleServiceModeRequestEnded
{
  v2 = [@"NPKEndedServiceModeRequestDarwinNotification" UTF8String];

  notify_post(v2);
}

- (void)_registerForServiceModeRequestNotification
{
  objc_initWeak(&location, self);
  v3 = [@"NPKCancelledServiceModeRequestDarwinNotification" UTF8String];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__NPKContactlessPaymentSessionManager__registerForServiceModeRequestNotification__block_invoke;
  v6[3] = &unk_279944F20;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v3, &self->_serviceModeRequestNotifyToken, v4, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __81__NPKContactlessPaymentSessionManager__registerForServiceModeRequestNotification__block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Got cancel service mode requests notification", v9, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[2] serviceModeRequestedPass];

    if (v7)
    {
      v8 = [v6 _baseSessionStateForUpdate];
      [v8 setServiceModeRequestedPass:0];
      [v6 _sendSessionStateToObservers:v8];
    }
  }
}

- (BOOL)_canHandleRKEActionForTileItem:(id)a3 pass:(id)a4 outAction:(id *)a5 outFunction:(id *)a6 outError:(id *)a7
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v55 = 0;
  v12 = [PKGetClassNFDigitalCarKeySession() getVehicleReports:&v55];
  v13 = v55;
  v14 = [v11 secureElementPass];
  v15 = [v14 devicePrimaryPaymentApplication];

  v48 = v15;
  v16 = [v15 subcredentials];
  v17 = [v16 anyObject];
  v18 = [v17 identifier];

  v19 = [v12 objectForKeyedSubscript:v18];
  v50 = v12;
  if (v19 && !v13)
  {
    v46 = a7;
    v47 = a6;
    v20 = [v10 action];
    v21 = [v20 vehicleFunctionActions];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v22 = [v10 tile];
    v23 = [v22 metadata];
    v24 = [v23 metadataTypeVehicleFunction];
    v25 = [v24 vehicleFunctions];

    v26 = [v25 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v26)
    {
      v44 = v11;
      v45 = v10;
      v27 = *v52;
      while (2)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v52 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v51 + 1) + 8 * i);
          if ([v19 isRKEFunctionSupported:v29])
          {
            v30 = [v21 objectForKeyedSubscript:v29];
            if (v30)
            {
              v31 = v30;
              v26 = v29;
              goto LABEL_18;
            }
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

      v31 = 0;
LABEL_18:
      v11 = v44;
      v10 = v45;
    }

    else
    {
      v31 = 0;
    }

    a7 = v46;
LABEL_23:
    v35 = a5;

    a6 = v47;
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v32 = pk_Payment_log();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

  if (v33)
  {
    v47 = a6;
    v21 = pk_Payment_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v34 = [v11 uniqueID];
      *buf = 138413058;
      v57 = v19;
      v58 = 2112;
      v59 = v34;
      v60 = 2112;
      v61 = v18;
      v62 = 2112;
      v63 = v13;
      _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Failed to obtain vehicle report (%@) for pass: %@ with subcredential identifier: %@! Error: %@", buf, 0x2Au);
    }

    v26 = 0;
    v31 = 0;
    goto LABEL_23;
  }

  v26 = 0;
  v31 = 0;
  v35 = a5;
  if (a5)
  {
LABEL_24:
    v36 = v31;
    *v35 = v31;
  }

LABEL_25:
  if (a6)
  {
    v37 = v26;
    *a6 = v26;
  }

  if (a7)
  {
    v38 = v13;
    *a7 = v13;
  }

  if (v31)
  {
    v39 = v26 == 0;
  }

  else
  {
    v39 = 1;
  }

  v41 = !v39 && v13 == 0;

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (void)_handleRKEActionRequestedForPass:(id)a3 action:(id)a4 function:(id)a5 withSession:(id)a6 completion:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke;
  aBlock[3] = &unk_279946F18;
  v17 = v12;
  v35 = v17;
  v18 = v13;
  v36 = v18;
  v19 = v14;
  v37 = v19;
  v20 = v15;
  v38 = v20;
  v39 = self;
  v21 = v16;
  v40 = v21;
  v22 = _Block_copy(aBlock);
  if (v17 && v18 && v19)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke_568;
    v28[3] = &unk_279946F68;
    v29 = v17;
    v30 = v19;
    v31 = v18;
    v32 = v20;
    v33 = v22;
    [v32 executeRKEActionForPass:v29 function:v30 action:v31 withCompletion:v28];
  }

  else
  {
    v23 = pk_Payment_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      v25 = pk_Payment_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v17 uniqueID];
        *buf = 138412802;
        v42 = v26;
        v43 = 2112;
        v44 = v19;
        v45 = 2112;
        v46 = v18;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Unable to handle RKE action for pass: %@ function: %@ action: %@! Invalid input.", buf, 0x20u);
      }
    }

    (*(v22 + 2))(v22, 0, 6);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) uniqueID];
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v16 = 138413314;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2048;
      v23 = a3;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Invoking RKE action completion handler for pass %@ action %@ function %@ with reason %lu for session %@", &v16, 0x34u);
    }
  }

  if (*(a1 + 56))
  {
    [*(a1 + 64) _cleanupQuickPaymentSession];
  }

  v13 = [*(a1 + 64) _sessionStateForTransactionContext:0];
  [v13 setCompletionReason:a3];
  [*(a1 + 64) _sendSessionStateToObservers:v13];
  v14 = *(a1 + 72);
  if (v14)
  {
    (*(v14 + 16))(v14, a2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke_568(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) uniqueID];
      v8 = v7;
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = @"NO";
      v12 = *(a1 + 56);
      if (a2)
      {
        v11 = @"YES";
      }

      *buf = 138413314;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] RKE action execution for pass: %@ function: %@ action: %@ completed with success: %@ for session: %@", buf, 0x34u);
    }
  }

  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = 5;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke_575;
  block[3] = &unk_279946F40;
  v14 = *(a1 + 64);
  v19 = a2;
  v17 = v14;
  v18 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_sessionStateForPaymentBarcode:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  v6 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionPass:v6];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionType:4];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionStatus:0];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setPaymentBarcode:v4];

  v7 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v7 setTransactionContext:v5];

  return v7;
}

- (id)_sessionStateForBarcodeTransactionStatus:(unint64_t)a3 paymentBarcode:(id)a4 transaction:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  v11 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setTransactionPass:v11];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setTransactionType:4];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setPaymentBarcode:v9];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setPaymentTransaction:v8];
  v12 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [v12 setTransactionContext:v10];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          [v12 setCompletionReason:6];
          v13 = v12;
          v14 = 7;
LABEL_13:
          [v13 setFailureType:v14];
LABEL_18:
          [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setTransactionStatus:2];
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setAuthenticationRequested:1];
    }

    else
    {
      v15 = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
      v16 = [v15 transactionContext];
      v17 = [v16 transactionStatus];

      if (v17 != 1)
      {
        v18 = v10;
        v19 = 0;
LABEL_16:
        [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 setTransactionStatus:v19];
        goto LABEL_20;
      }
    }

    v18 = v10;
    v19 = 1;
    goto LABEL_16;
  }

  switch(a3)
  {
    case 3uLL:
      [v12 setCompletionReason:5];
      v13 = v12;
      v14 = 2;
      goto LABEL_13;
    case 4uLL:
      [v12 setCompletionReason:3];
      goto LABEL_18;
    case 5uLL:
      [v12 setCompletionReason:2];
      v13 = v12;
      v14 = 6;
      goto LABEL_13;
  }

LABEL_19:
  v20 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [v12 setCurrentPass:v20];

  [v12 setDoublePressReceived:0];
  [v12 setContactlessInterfaceReady:0];
  [v12 setCanChangePass:1];
LABEL_20:

  return v12;
}

- (id)_sessionStateForUserCanceledBarcodeTransaction
{
  v3 = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  v4 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [v3 setCurrentPass:v4];

  [v3 setDoublePressReceived:0];
  [v3 setContactlessInterfaceReady:0];
  [v3 setCanChangePass:1];
  [v3 setCompletionReason:6];
  [v3 setFailureType:7];

  return v3;
}

- (id)_paymentBalancesFromTransitAppletBalances:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__NPKContactlessPaymentSessionManager__paymentBalancesFromTransitAppletBalances___block_invoke;
  v7[3] = &unk_279946F90;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __81__NPKContactlessPaymentSessionManager__paymentBalancesFromTransitAppletBalances___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D38008] NPK_paymentBalanceWithAppletBalance:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (id)_updatedPassItemFieldWithPaymentPass:(id)a3 transitAppletBalances:(id)a4 appletState:(id)a5 paymentApplication:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(NPKContactlessPaymentSessionManager *)self _paymentBalancesFromTransitAppletBalances:a4];
  v14 = [v11 transitPassPropertiesWithPaymentApplication:v10 pass:v12];

  v15 = [[NPKPassAssociatedInfoModel alloc] initWithPass:v12 transitProperties:v14 balances:v13 commutePlanValueRequired:1];
  v16 = [(NPKPassAssociatedInfoModel *)v15 allPassItemsFields];

  return v16;
}

@end