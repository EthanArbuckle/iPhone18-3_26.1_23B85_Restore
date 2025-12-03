@interface NPKContactlessPaymentSessionManager
- (BOOL)_canHandleRKEActionForTileItem:(id)item pass:(id)pass outAction:(id *)action outFunction:(id *)function outError:(id *)error;
- (NPKContactlessPaymentSessionManager)init;
- (id)_baseSessionStateForUpdate;
- (id)_managerContextForContactlessInterfaceTransactionContext:(id)context;
- (id)_paymentBalancesFromTransitAppletBalances:(id)balances;
- (id)_sessionStateForBarcodeTransactionStatus:(unint64_t)status paymentBarcode:(id)barcode transaction:(id)transaction;
- (id)_sessionStateForExpressTransactionStatus:(unint64_t)status pass:(id)pass paymentApplication:(id)application concreteTransactions:(id)transactions ephemeralTransaction:(id)transaction mutatedBalances:(id)balances appletState:(id)state;
- (id)_sessionStateForPaymentBarcode:(id)barcode;
- (id)_sessionStateForTransactionContext:(id)context;
- (id)_sessionStateForUserCanceledBarcodeTransaction;
- (id)_updatedPassItemFieldWithPaymentPass:(id)pass transitAppletBalances:(id)balances appletState:(id)state paymentApplication:(id)application;
- (void)_cleanupBarcodePaymentSession;
- (void)_cleanupQuickPaymentSession;
- (void)_handleRKEActionRequestedForPass:(id)pass action:(id)action function:(id)function withSession:(id)session completion:(id)completion;
- (void)_handleServiceModeRequestEnded;
- (void)_handleSessionTimerFired;
- (void)_handleValueAddedServiceTransactions:(id)transactions forValueAddedServicePasses:(id)passes paymentTransaction:(id)transaction outUserInterventionRequiredPasses:(id *)requiredPasses;
- (void)_prepareSessionStateForSendingToObservers:(id)observers;
- (void)_registerForServiceModeRequestNotification;
- (void)_sendSessionStateToObservers:(id)observers;
- (void)_startSessionTimerWithReason:(unint64_t)reason;
- (void)_stopSessionTimer;
- (void)barcodePaymentSession:(id)session didReceivePaymentBarcode:(id)barcode;
- (void)barcodePaymentSession:(id)session didUpdateTransactionStatus:(unint64_t)status withTransaction:(id)transaction;
- (void)handleAuthorize18013RequestWithDataToRelease:(id)release credential:(id)credential;
- (void)handleBarcodePaymentPinCodeEntry:(id)entry;
- (void)handleContactlessPaymentInterfaceDidAppear;
- (void)handleContactlessPaymentInterfaceDidDisappear;
- (void)handleCredential:(id)credential;
- (void)handleDidPresentPasscodeAuthentication;
- (void)handleDoublePressReceivedAtDate:(id)date;
- (void)handleEndBarcodePaymentSessionRequestedByUI;
- (void)handleEndQuickPaymentSessionRequestedByUI;
- (void)handleEndSessionRequestedForReason:(unint64_t)reason;
- (void)handleExpressTransactionStatus:(unint64_t)status forPass:(id)pass paymentApplication:(id)application concreteTransactions:(id)transactions ephemeralTransaction:(id)transaction mutatedBalances:(id)balances appletState:(id)state;
- (void)handleFailureToReleaseDataWithError:(id)error;
- (void)handleISO18013DataReleaseCanceled;
- (void)handleISO18013Request:(id)request withReaderAuthInfo:(id)info;
- (void)handleISO18013TransactionStarted;
- (void)handleLocalAuthenticationError:(id)error;
- (void)handlePaymentBarcodeRequested;
- (void)handleRKEActionRequestedForTileItem:(id)item pass:(id)pass completion:(id)completion;
- (void)handleRKETransactionForPass:(id)pass fromTile:(id)tile;
- (void)handleRetryLoadingPaymentBarcodeRequested;
- (void)handleServiceModeRequestedForPass:(id)pass;
- (void)handleStandaloneTransactionWithAction:(unint64_t)action forPass:(id)pass;
- (void)handleStandaloneTransactionWithAction:(unint64_t)action forPass:(id)pass withAccessory:(id)accessory;
- (void)handleTransactionStarted;
- (void)handleUserSelectedPass:(id)pass;
- (void)passesDataSource:(id)source didRemovePasses:(id)passes;
- (void)passesDataSource:(id)source didUpdatePasses:(id)passes;
- (void)passesDataSourceDidReloadPasses:(id)passes;
- (void)paymentSession:(id)session didActivatePass:(id)pass;
- (void)paymentSession:(id)session didCompleteTransactionForReason:(unint64_t)reason withTransactionContext:(id)context shouldCleanupSession:(BOOL)cleanupSession;
- (void)paymentSession:(id)session didFailTransactionForPass:(id)pass withValueAddedServiceTransactions:(id)transactions forValueAddedServicePasses:(id)passes;
- (void)paymentSession:(id)session didMakePassCurrent:(id)current;
- (void)paymentSession:(id)session didReceive18013Request:(id)request readerAuthInfo:(id)info;
- (void)paymentSession:(id)session willActivatePass:(id)pass;
- (void)paymentSessionDidEnterField:(id)field;
- (void)paymentSessionDidExitField:(id)field;
- (void)paymentSessionDidReceiveActivationError:(id)error;
- (void)paymentSessionDidReceiveActivityTimeout:(id)timeout;
- (void)paymentSessionDidReceiveAuthorizationTimeout:(id)timeout;
- (void)paymentSessionDidReceiveCredential:(id)credential;
- (void)paymentSessionDidReceiveStartTransaction:(id)transaction;
- (void)paymentSessionDidReceiveTransactionError:(id)error;
- (void)paymentSessionDidSelectPayment:(id)payment;
- (void)paymentSessionDidSelectValueAddedService:(id)service;
- (void)paymentSessionDidStart:(id)start;
- (void)paymentSessionIsWaitingToStart:(id)start;
- (void)registerObserver:(id)observer withRelativePriority:(unint64_t)priority;
- (void)unregisterObserver:(id)observer;
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
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = quickPaymentSession;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling contactless payment interface did disappear with session: %@", &v11, 0xCu);
    }
  }

  self->_contactlessPaymentInterfaceVisible = 0;
  if (quickPaymentSession)
  {
    [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
    v7 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v7 setCompletionReason:1];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v7];
  }

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  if (barcodePaymentSession)
  {
    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    v9 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v9 setCompletionReason:1];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleCredential:(id)credential
{
  v16 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      quickPaymentSession = self->_quickPaymentSession;
      v12 = 138412546;
      v13 = credentialCopy;
      v14 = 2112;
      v15 = quickPaymentSession;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling credential: %@ with quickPaymentSession:%@", &v12, 0x16u);
    }
  }

  credential = self->_credential;
  self->_credential = credentialCopy;
  v10 = credentialCopy;

  [(NPKQuickPaymentSession *)self->_quickPaymentSession setCredential:v10];
  if (self->_contactlessPaymentInterfaceVisible)
  {
    [(NPKContactlessPaymentSessionManager *)self _startSessionTimerWithReason:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleUserSelectedPass:(id)pass
{
  v37 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v31 = 138412290;
      v32 = uniqueID;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling user selected pass: %@", &v31, 0xCu);
    }
  }

  p_userSelectedPass = &self->_userSelectedPass;
  [(PKPass *)self->_userSelectedPass isEqualToPassIncludingMetadata:passCopy];
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [(PKPass *)*p_userSelectedPass uniqueID];
      uniqueID3 = [passCopy uniqueID];
      v16 = NSStringFromBOOL();
      v31 = 138412802;
      v32 = uniqueID2;
      v33 = 2112;
      v34 = uniqueID3;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Is previous user selected pass (%@) equal to new pass (%@)? %@", &v31, 0x20u);
    }
  }

  objc_storeStrong(&self->_userSelectedPass, pass);
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

    [(NPKQuickPaymentSession *)self->_quickPaymentSession setCurrentPass:passCopy];
  }

  serviceModeRequestedPass = [(NPKContactlessPaymentSessionState *)self->_lastSessionState serviceModeRequestedPass];
  v21 = serviceModeRequestedPass;
  if (serviceModeRequestedPass)
  {
    uniqueID4 = [serviceModeRequestedPass uniqueID];
    uniqueID5 = [(PKPass *)*p_userSelectedPass uniqueID];
    v24 = [uniqueID4 isEqualToString:uniqueID5];

    if ((v24 & 1) == 0)
    {
      v25 = pk_Payment_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (v26)
      {
        v27 = pk_Payment_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID6 = [v21 uniqueID];
          v31 = 138412290;
          v32 = uniqueID6;
          _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Clearing service mode requested pass %@", &v31, 0xCu);
        }
      }

      _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
      [_baseSessionStateForUpdate setServiceModeRequestedPass:0];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
      [(NPKContactlessPaymentSessionManager *)self _handleServiceModeRequestEnded];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleDoublePressReceivedAtDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dateCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] handleDoublePressReceivedAtDate:%@", &v10, 0xCu);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:1];
  [_baseSessionStateForUpdate setDoublePressTimestamp:dateCopy];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleServiceModeRequestedForPass:(id)pass
{
  passCopy = pass;
  [(NPKContactlessPaymentSessionManager *)self handleUserSelectedPass:?];
  quickPaymentSession = self->_quickPaymentSession;
  if (quickPaymentSession)
  {
    [(NPKQuickPaymentSession *)quickPaymentSession setInServiceMode:1];
    [(NPKContactlessPaymentSessionManager *)self _handleServiceModeRequestEnded];
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  v6 = _baseSessionStateForUpdate;
  if (!self->_quickPaymentSession)
  {
    [_baseSessionStateForUpdate setServiceModeRequestedPass:passCopy];
  }

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v6];
}

- (void)handleRKEActionRequestedForTileItem:(id)item pass:(id)pass completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  passCopy = pass;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412546;
      v38 = itemCopy;
      v39 = 2112;
      v40 = uniqueID;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling tile requested for item: %@ pass: %@", buf, 0x16u);
    }
  }

  action = [itemCopy action];
  type = [action type];

  if (type == 4)
  {
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v17 = [(NPKContactlessPaymentSessionManager *)self _canHandleRKEActionForTileItem:itemCopy pass:passCopy outAction:&v36 outFunction:&v35 outError:&v34];
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
          uniqueID2 = [passCopy uniqueID];
          *buf = 138413058;
          v38 = uniqueID2;
          v39 = 2112;
          v40 = v18;
          v41 = 2112;
          v42 = v19;
          v43 = 2112;
          v44 = v20;
          _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Unable to handle RKE action for pass: %@ with action: %@ function: %@ error: %@", buf, 0x2Au);
        }
      }

      quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

      if (quickPaymentSession)
      {
        [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      }

      quickPaymentSession4 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
      [quickPaymentSession4 setCompletionReason:6];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:quickPaymentSession4];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v21 = [NPKQuickPaymentSession sessionWithQueue:MEMORY[0x277D85CD0]];
      [(NPKContactlessPaymentSessionManager *)self setQuickPaymentSession:v21];

      quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [quickPaymentSession2 setCurrentPass:passCopy];

      quickPaymentSession3 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [quickPaymentSession3 setRequireFirstInQueue:0];

      quickPaymentSession4 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [(NPKContactlessPaymentSessionManager *)self _handleRKEActionRequestedForPass:passCopy action:v18 function:v19 withSession:quickPaymentSession4 completion:completionCopy];
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
      uniqueID3 = [passCopy uniqueID];
      *buf = 138412546;
      v38 = itemCopy;
      v39 = 2112;
      v40 = uniqueID3;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Asked to handle RKE action for unexpected item: %@ pass: %@; Aborting.", buf, 0x16u);
    }

    goto LABEL_21;
  }

LABEL_22:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)handleEndSessionRequestedForReason:(unint64_t)reason
{
  v18 = *MEMORY[0x277D85DE8];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  if (quickPaymentSession)
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = quickPaymentSession;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling end quick payment session requested with session: %@", &v16, 0xCu);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
    v9 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v9 setCompletionReason:reason];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v9];
  }

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  if (barcodePaymentSession)
  {
    v11 = pk_Payment_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = barcodePaymentSession;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling end barcode payment session requested with session: %@", &v16, 0xCu);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    _sessionStateForUserCanceledBarcodeTransaction = [(NPKContactlessPaymentSessionManager *)self _sessionStateForUserCanceledBarcodeTransaction];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_sessionStateForUserCanceledBarcodeTransaction];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleStandaloneTransactionWithAction:(unint64_t)action forPass:(id)pass
{
  v8 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:4 pass:pass paymentApplication:0 concreteTransactions:0 ephemeralTransaction:0 mutatedBalances:0 appletState:0];
  transactionContext = [v8 transactionContext];
  [transactionContext setAction:action];

  transactionContext2 = [v8 transactionContext];
  [transactionContext2 setTransactionStatus:2];

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v8];
}

- (void)handleRKETransactionForPass:(id)pass fromTile:(id)tile
{
  tileCopy = tile;
  v10 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:4 pass:pass paymentApplication:0 concreteTransactions:0 ephemeralTransaction:0 mutatedBalances:0 appletState:0];
  transactionContext = [v10 transactionContext];
  [transactionContext setAction:5];

  transactionContext2 = [v10 transactionContext];
  [transactionContext2 setPassTile:tileCopy];

  transactionContext3 = [v10 transactionContext];
  [transactionContext3 setTransactionStatus:2];

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v10];
}

- (void)handleStandaloneTransactionWithAction:(unint64_t)action forPass:(id)pass withAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:4 pass:pass paymentApplication:0 concreteTransactions:0 ephemeralTransaction:0 mutatedBalances:0 appletState:0];
  transactionContext = [v12 transactionContext];
  [transactionContext setAction:action];

  transactionContext2 = [v12 transactionContext];
  [transactionContext2 setTransactionStatus:2];

  transactionContext3 = [v12 transactionContext];
  [transactionContext3 setAccessory:accessoryCopy];

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v12];
}

- (void)handleExpressTransactionStatus:(unint64_t)status forPass:(id)pass paymentApplication:(id)application concreteTransactions:(id)transactions ephemeralTransaction:(id)transaction mutatedBalances:(id)balances appletState:(id)state
{
  v40 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  applicationCopy = application;
  transactionsCopy = transactions;
  transactionCopy = transaction;
  balancesCopy = balances;
  stateCopy = state;
  v21 = pk_Payment_log();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v23 = pk_Payment_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = NSStringFromNPKExpressTransactionStatus(status);
      [passCopy uniqueID];
      *buf = 138413570;
      v29 = v27;
      v31 = v30 = 2112;
      v24 = v31;
      v32 = 2112;
      v33 = transactionsCopy;
      v34 = 2112;
      v35 = transactionCopy;
      v36 = 2112;
      v37 = balancesCopy;
      v38 = 2112;
      v39 = stateCopy;
      _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got express transaction status %@ for pass %@ concrete transactions %@ ephemeral transactions %@ mutatedBalances:%@ applet state %@", buf, 0x3Eu);
    }
  }

  v25 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:status pass:passCopy paymentApplication:applicationCopy concreteTransactions:transactionsCopy ephemeralTransaction:transactionCopy mutatedBalances:balancesCopy appletState:stateCopy];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleLocalAuthenticationError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = errorCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling local authentication error %@", &v12, 0xCu);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CD4770]])
  {

LABEL_9:
    [_baseSessionStateForUpdate setFailureType:1];
    goto LABEL_10;
  }

  if ([errorCopy code] != -9)
  {
    code = [errorCopy code];

    if (code == -4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleEndQuickPaymentSessionRequestedByUI
{
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

  if (quickPaymentSession)
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

    userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
    paymentPass = [userSelectedPass paymentPass];

    if (([paymentPass supportsBarcodePayment] & 1) == 0)
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
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  paymentPass = [userSelectedPass paymentPass];

  if ([paymentPass supportsBarcodePayment])
  {
    devicePrimaryBarcodePaymentApplication = [paymentPass devicePrimaryBarcodePaymentApplication];
    [devicePrimaryBarcodePaymentApplication state];
    IsPersonalized = PKPaymentApplicationStateIsPersonalized();

    quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

    barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (IsPersonalized && quickPaymentSession && !barcodePaymentSession)
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
      credential = [(NPKContactlessPaymentSessionManager *)self credential];
      v14 = [(NPKBarcodePaymentSession *)v12 initWithPaymentPass:paymentPass authorizationCredential:credential];

      [v14 setDelegate:self];
      [v14 startSession];
      [(NPKContactlessPaymentSessionManager *)self setBarcodePaymentSession:v14];
      currentPaymentBarcode = [v14 currentPaymentBarcode];
      v16 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForPaymentBarcode:currentPaymentBarcode];

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
        v20 = quickPaymentSession != 0;
        v21 = 1024;
        v22 = barcodePaymentSession == 0;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Skip creating new barcodePaymentSession - isPersonalized: %d, hasQuickPaymentSession: %d, hasNoExistingBarcodePaymentSession: %d", v18, 0x14u);
      }
    }
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleRetryLoadingPaymentBarcodeRequested
{
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession)
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

    barcodePaymentSession2 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
    [barcodePaymentSession2 retryFetchingBarcode];
  }
}

- (void)handleBarcodePaymentPinCodeEntry:(id)entry
{
  entryCopy = entry;
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  [barcodePaymentSession submitPinCode:entryCopy];
}

- (void)handleEndBarcodePaymentSessionRequestedByUI
{
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession)
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
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [_baseSessionStateForUpdate setCompletionReason:7];
    transactionContext = [_baseSessionStateForUpdate transactionContext];
    [transactionContext setTransactionStatus:2];

    [_baseSessionStateForUpdate setDoublePressReceived:0];
    [_baseSessionStateForUpdate setSessionAuthorized:0];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
  }
}

- (void)handleTransactionStarted
{
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCanChangePass:0];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleISO18013TransactionStarted
{
  v8 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setReleaseDataStatus:1];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setTransactionStatus:1];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setTransactionPass:currentPass];

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass2 = [quickPaymentSession2 currentPass];
  [_baseSessionStateForUpdate setCurrentPass:currentPass2];

  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:0];
  [_baseSessionStateForUpdate setCompletionReason:0];
  [_baseSessionStateForUpdate setTransactionContext:v8];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleISO18013DataReleaseCanceled
{
  v3 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v3 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v3 setReleaseDataStatus:6];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v3 setTransactionStatus:2];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

  if (quickPaymentSession)
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

    userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
    paymentPass = [userSelectedPass paymentPass];

    if (([paymentPass supportsBarcodePayment] & 1) == 0)
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

- (void)handleISO18013Request:(id)request withReaderAuthInfo:(id)info
{
  infoCopy = info;
  requestCopy = request;
  v11 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setReleaseDataStatus:2];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setTransactionStatus:1];
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setTransactionPass:userSelectedPass];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setReleaseDataRequest:requestCopy];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setReaderAuthInfo:infoCopy];

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  userSelectedPass2 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass2];

  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:0];
  [_baseSessionStateForUpdate setCompletionReason:0];
  [_baseSessionStateForUpdate setTransactionContext:v11];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleAuthorize18013RequestWithDataToRelease:(id)release credential:(id)credential
{
  credentialCopy = credential;
  releaseCopy = release;
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  [quickPaymentSession authorize18013RequestWithDataToRelease:releaseCopy credential:credentialCopy];

  v16 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setReleaseDataStatus:3];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setTransactionStatus:1];
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setTransactionPass:userSelectedPass];

  lastSessionState = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
  transactionContext = [lastSessionState transactionContext];
  releaseDataRequest = [transactionContext releaseDataRequest];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setReleaseDataRequest:releaseDataRequest];

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  userSelectedPass2 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass2];

  [_baseSessionStateForUpdate setSessionAuthorized:1];
  [_baseSessionStateForUpdate setDoublePressReceived:1];
  v15 = [MEMORY[0x277CBEAA8] now];
  [_baseSessionStateForUpdate setDoublePressTimestamp:v15];

  [_baseSessionStateForUpdate setContactlessInterfaceReady:1];
  [_baseSessionStateForUpdate setCanChangePass:0];
  [_baseSessionStateForUpdate setCompletionReason:0];
  [_baseSessionStateForUpdate setTransactionContext:v16];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleFailureToReleaseDataWithError:(id)error
{
  v6 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v6 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v6 setReleaseDataStatus:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v6 setTransactionStatus:2];
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass];

  [_baseSessionStateForUpdate setTransactionContext:v6];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setCompletionReason:5];
  [_baseSessionStateForUpdate setFailureType:2];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)barcodePaymentSession:(id)session didReceivePaymentBarcode:(id)barcode
{
  barcodeCopy = barcode;
  sessionCopy = session;
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession == sessionCopy)
  {
    v8 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForPaymentBarcode:barcodeCopy];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v8];
  }
}

- (void)barcodePaymentSession:(id)session didUpdateTransactionStatus:(unint64_t)status withTransaction:(id)transaction
{
  sessionCopy = session;
  transactionCopy = transaction;
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession == sessionCopy)
  {
    currentPaymentBarcode = [sessionCopy currentPaymentBarcode];
    v11 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForBarcodeTransactionStatus:status paymentBarcode:currentPaymentBarcode transaction:transactionCopy];

    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v11];
    transactionContext = [v11 transactionContext];
    transactionStatus = [transactionContext transactionStatus];

    if (transactionStatus == 2)
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
      _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];

      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
      v11 = _baseSessionStateForUpdate;
    }
  }
}

- (void)_cleanupBarcodePaymentSession
{
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  if (barcodePaymentSession)
  {
    v4 = barcodePaymentSession;
    [barcodePaymentSession invalidateSession];
    [(NPKContactlessPaymentSessionManager *)self setBarcodePaymentSession:0];
    barcodePaymentSession = v4;
  }
}

- (void)passesDataSource:(id)source didRemovePasses:(id)passes
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  v6 = [passes pk_arrayByApplyingBlock:&__block_literal_global_545];
  v7 = [v5 setWithArray:v6];

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [v7 allObjects];
      v12 = [allObjects componentsJoinedByString:{@", "}];
      v31 = 138412290;
      v32 = v12;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got removed unique IDs: %@", &v31, 0xCu);
    }
  }

  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];
  uniqueID = [currentPass uniqueID];

  v16 = pk_Payment_log();
  LODWORD(currentPass) = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (currentPass)
  {
    v17 = pk_Payment_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = uniqueID;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Quick payment session pass unique ID is %@", &v31, 0xCu);
    }
  }

  if (uniqueID && [v7 containsObject:uniqueID])
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

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  paymentPass = [barcodePaymentSession paymentPass];
  uniqueID2 = [paymentPass uniqueID];

  v25 = pk_Payment_log();
  LODWORD(paymentPass) = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (paymentPass)
  {
    v26 = pk_Payment_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = uniqueID2;
      _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Barcode payment session pass unique ID is %@", &v31, 0xCu);
    }
  }

  if (uniqueID2 && [v7 containsObject:uniqueID2])
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

- (void)passesDataSource:(id)source didUpdatePasses:(id)passes
{
  v56 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  v6 = MEMORY[0x277CBEB98];
  v7 = [passesCopy pk_arrayByApplyingBlock:&__block_literal_global_550];
  v8 = [v6 setWithArray:v7];

  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [v8 allObjects];
      v13 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v55 = v13;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got updated unique IDs: %@", buf, 0xCu);
    }
  }

  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];
  uniqueID = [currentPass uniqueID];

  v17 = pk_Payment_log();
  LODWORD(currentPass) = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (currentPass)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = uniqueID;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Quick payment session pass unique ID is %@", buf, 0xCu);
    }
  }

  if (uniqueID && [v8 containsObject:uniqueID])
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_551;
    v52[3] = &unk_279946E00;
    v53 = uniqueID;
    v19 = [passesCopy pk_objectsPassingTest:v52];
    firstObject = [v19 firstObject];

    if (firstObject)
    {
      v21 = pk_Payment_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v23 = pk_Payment_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID2 = [firstObject uniqueID];
          *buf = 138412290;
          v55 = uniqueID2;
          _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Setting updated payment session pass with unique ID %@", buf, 0xCu);
        }
      }

      quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [quickPaymentSession2 setCurrentPass:firstObject];
    }
  }

  uniqueID3 = [(PKPass *)self->_userSelectedPass uniqueID];
  v27 = pk_Payment_log();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

  if (v28)
  {
    v29 = pk_Payment_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = uniqueID3;
      _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] User selected pass unique ID is %@", buf, 0xCu);
    }
  }

  if (uniqueID3 && [v8 containsObject:uniqueID3])
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_553;
    v51[3] = &unk_279946E00;
    v51[4] = self;
    v30 = [passesCopy pk_objectsPassingTest:v51];
    firstObject2 = [v30 firstObject];

    if (firstObject2)
    {
      v32 = pk_Payment_log();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v33)
      {
        v34 = pk_Payment_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID4 = [firstObject2 uniqueID];
          *buf = 138412290;
          v55 = uniqueID4;
          _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Setting updated user selected pass with unique ID %@", buf, 0xCu);
        }
      }

      objc_storeStrong(&self->_userSelectedPass, firstObject2);
    }
  }

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  paymentPass = [barcodePaymentSession paymentPass];
  uniqueID5 = [paymentPass uniqueID];

  v39 = pk_Payment_log();
  LODWORD(paymentPass) = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

  if (paymentPass)
  {
    v40 = pk_Payment_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = uniqueID5;
      _os_log_impl(&dword_25B300000, v40, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Barcode payment session pass unique ID is %@", buf, 0xCu);
    }
  }

  if (uniqueID5 && [v8 containsObject:uniqueID5])
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_554;
    v49[3] = &unk_279946E00;
    v50 = uniqueID;
    v41 = [passesCopy pk_objectsPassingTest:v49];
    firstObject3 = [v41 firstObject];

    secureElementPass = [firstObject3 secureElementPass];
    passActivationState = [secureElementPass passActivationState];

    if (passActivationState)
    {
      v45 = pk_Payment_log();
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);

      if (v46)
      {
        v47 = pk_Payment_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v55 = passActivationState;
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

- (void)passesDataSourceDidReloadPasses:(id)passes
{
  v51 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
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

  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];

  uniqueID = [currentPass uniqueID];
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v47 = 138412290;
      v48 = uniqueID;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Quick payment session pass unique ID is %@", &v47, 0xCu);
    }
  }

  if (uniqueID)
  {
    v14 = [passesCopy passForUniqueID:uniqueID];
    v15 = v14;
    if (v14)
    {
      if ([v14 isEqualToPassIncludingMetadata:currentPass])
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
          uniqueID2 = [v15 uniqueID];
          v47 = 138412290;
          v48 = uniqueID2;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Setting reloaded pass for unique ID %@", &v47, 0xCu);
        }
      }

      quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [quickPaymentSession2 setCurrentPass:v15];

      uniqueID3 = [(PKPass *)self->_userSelectedPass uniqueID];
      uniqueID4 = [v15 uniqueID];
      v23 = [uniqueID3 isEqualToString:uniqueID4];

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

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  paymentPass = [barcodePaymentSession paymentPass];
  uniqueID5 = [paymentPass uniqueID];

  v32 = pk_Payment_log();
  LODWORD(paymentPass) = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

  if (paymentPass)
  {
    v33 = pk_Payment_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v47 = 138412290;
      v48 = uniqueID5;
      _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Barcode payment session pass unique ID is %@", &v47, 0xCu);
    }
  }

  if (uniqueID5)
  {
    v34 = [passesCopy passForUniqueID:uniqueID5];
    v35 = pk_Payment_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

    if (v36)
    {
      v37 = pk_Payment_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        secureElementPass = [v34 secureElementPass];
        passActivationState = [secureElementPass passActivationState];
        v47 = 138412546;
        v48 = v34;
        v49 = 2048;
        v50 = passActivationState;
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

      barcodePaymentSession2 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
      [barcodePaymentSession2 invalidateSession];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)observer withRelativePriority:(unint64_t)priority
{
  observersManager = self->_observersManager;
  observerCopy = observer;
  [NPKObserverManager registerObserver:"registerObserver:withRelativePriority:" withRelativePriority:?];
  lastSessionState = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
  v7 = lastSessionState;
  if (lastSessionState)
  {
    _baseSessionStateForUpdate = lastSessionState;
  }

  else
  {
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  }

  v9 = _baseSessionStateForUpdate;

  [(NPKContactlessPaymentSessionManager *)self _prepareSessionStateForSendingToObservers:v9];
  [observerCopy contactlessPaymentSessionManager:self didChangeSessionState:v9];
}

- (void)unregisterObserver:(id)observer
{
  observersManager = self->_observersManager;
  observerCopy = observer;
  [(NPKObserverManager *)observersManager unregisterObserver:observerCopy];
}

- (void)paymentSession:(id)session didMakePassCurrent:(id)current
{
  v16 = *MEMORY[0x277D85DE8];
  currentCopy = current;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [currentCopy uniqueID];
      v14 = 138412290;
      v15 = uniqueID;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] New current pass from payment session: %@", &v14, 0xCu);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCurrentPass:currentCopy];
  v12 = 1;
  if ([currentCopy passType] != 1 || (objc_msgSend(_baseSessionStateForUpdate, "doublePressReceived") & 1) == 0)
  {
    if (![currentCopy npkHasValidNFCPayload] || (-[NPKContactlessPaymentSessionManager quickPaymentSession](self, "quickPaymentSession"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v12 = 0;
    }
  }

  [_baseSessionStateForUpdate setPassActivating:v12];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)paymentSession:(id)session willActivatePass:(id)pass
{
  v68 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  passCopy = pass;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v67 = uniqueID;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session will activate pass: %@", buf, 0xCu);
    }
  }

  kdebug_trace();
  if ([passCopy style] != 8)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:*MEMORY[0x277D38468] forKeyedSubscript:*MEMORY[0x277D383D8]];
    [v12 setObject:*MEMORY[0x277D384C0] forKeyedSubscript:*MEMORY[0x277D384B8]];
    v13 = v12;
    v14 = passCopy;
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

    passType = [v14 passType];
    v17 = MEMORY[0x277D38530];
    if ((passType + 1) >= 3)
    {
      v18 = *MEMORY[0x277D38530];
    }

    else
    {
      v18 = off_2799470B8[passType + 1];
    }

    [v13 setObject:v18 forKeyedSubscript:*MEMORY[0x277D384F0]];

    style = [v15 style];
    secureElementPass = [v15 secureElementPass];
    isIdentityPass = [secureElementPass isIdentityPass];

    if (isIdentityPass)
    {
      v22 = @"identity";
    }

    else if (style < 0xE && ((0x27FFu >> style) & 1) != 0)
    {
      v22 = off_2799470D0[style];
    }

    else
    {
      v22 = *v17;
    }

    [v13 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384E8]];

    nfcPayload = [v15 nfcPayload];
    v24 = PKAnalyticsReportSwitchToggleResultValue();
    [v13 setObject:v24 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v25 = v15;
    if ([v25 passType] == 1)
    {
      secureElementPass2 = [v25 secureElementPass];
      cardType = [secureElementPass2 cardType];
      if (cardType <= 4)
      {
        v24 = **(&unk_279947140 + cardType);
      }
    }

    else
    {
      v24 = @"other";
    }

    [v13 setObject:v24 forKeyedSubscript:*MEMORY[0x277D384E0]];
    secureElementPass3 = [v25 secureElementPass];
    if ([secureElementPass3 isIdentityPass])
    {
      identityType = [secureElementPass3 identityType];
      if (identityType <= 2)
      {
        if (identityType == 1)
        {
          v30 = MEMORY[0x277D383A0];
          goto LABEL_43;
        }

        if (identityType == 2)
        {
          v30 = MEMORY[0x277D38518];
          goto LABEL_43;
        }
      }

      else
      {
        switch(identityType)
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

    if (![secureElementPass3 isAccessPass])
    {
      goto LABEL_36;
    }

    accessType = [secureElementPass3 accessType];
    accessReportingType = [secureElementPass3 accessReportingType];
    v33 = accessReportingType;
    if (accessType <= 2)
    {
      switch(accessType)
      {
        case 0:
          v36 = @"general";
          if (accessReportingType)
          {
            v36 = accessReportingType;
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

          secureElementPass4 = [v25 secureElementPass];
          devicePaymentApplications = [secureElementPass4 devicePaymentApplications];
          [devicePaymentApplications count];

          v39 = PKAnalyticsReportSwitchToggleResultValue();

          [v13 setObject:v39 forKeyedSubscript:*MEMORY[0x277D38398]];
          secureElementPass5 = [v25 secureElementPass];
          v41 = *v17;
          organizationName = [secureElementPass5 organizationName];
          if ([organizationName length])
          {
            cardType2 = [secureElementPass5 cardType];
            if (cardType2 <= 4 && ((1 << cardType2) & 0x16) != 0)
            {
              v44 = organizationName;

              v41 = v44;
            }
          }

          [v13 setObject:v41 forKeyedSubscript:*MEMORY[0x277D38490]];
          secureElementPass6 = [v25 secureElementPass];
          v46 = secureElementPass6;
          if (secureElementPass6)
          {
            v60 = sessionCopy;
            [secureElementPass6 devicePaymentApplications];
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v47 = v64 = 0u;
            v48 = [v47 countByEnumeratingWithState:&v61 objects:buf count:16];
            selfCopy = self;
            if (v48)
            {
              v49 = v48;
              paymentType = 0;
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
                  if (paymentType && paymentType != [*(*(&v61 + 1) + 8 * i) paymentType])
                  {

                    v54 = @"multiple";
                    goto LABEL_74;
                  }

                  paymentType = [v53 paymentType];
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
            issuerCountryCode = [v46 issuerCountryCode];
            [v13 setObject:issuerCountryCode forKeyedSubscript:*MEMORY[0x277D384D0]];

            self = selfCopy;
            sessionCopy = v60;
          }

          goto LABEL_76;
      }
    }

    else
    {
      if (accessType <= 4)
      {
        if (accessType == 3)
        {
          v34 = @"singlefamily";
        }

        else
        {
          v34 = @"cars";
        }

        goto LABEL_56;
      }

      if (accessType == 5)
      {
        v34 = @"multifamily";
        goto LABEL_56;
      }

      if (accessType == 6)
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
  [(NPKContactlessPaymentSessionManager *)self paymentSession:sessionCopy didMakePassCurrent:passCopy, selfCopy];

  v58 = *MEMORY[0x277D85DE8];
}

- (void)paymentSession:(id)session didActivatePass:(id)pass
{
  v14 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v12 = 138412290;
      v13 = uniqueID;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did activate pass: %@", &v12, 0xCu);
    }
  }

  kdebug_trace();
  if (self->_contactlessPaymentInterfaceVisible)
  {
    kdebug_trace();
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCurrentPass:passCopy];
  [_baseSessionStateForUpdate setPassActivating:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)paymentSession:(id)session didFailTransactionForPass:(id)pass withValueAddedServiceTransactions:(id)transactions forValueAddedServicePasses:(id)passes
{
  v39 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  passCopy = pass;
  transactionsCopy = transactions;
  passesCopy = passes;
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      *buf = 138412802;
      *&buf[4] = sessionCopy;
      *&buf[12] = 2112;
      *&buf[14] = quickPaymentSession;
      *&buf[22] = 2112;
      v38 = passCopy;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session %@ (current %@) failed (VAS) transaction for pass %@", buf, 0x20u);
    }
  }

  if (transactionsCopy)
  {
    v32 = 0;
    [(NPKContactlessPaymentSessionManager *)self _handleValueAddedServiceTransactions:transactionsCopy forValueAddedServicePasses:passesCopy paymentTransaction:0 outUserInterventionRequiredPasses:&v32];
    v18 = v32;
  }

  else
  {
    v18 = 0;
  }

  if (![v18 count])
  {
    if (![transactionsCopy count])
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
    [transactionsCopy enumerateObjectsUsingBlock:v31];
    quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
    currentPass = [quickPaymentSession2 currentPass];

    v24 = pk_Payment_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = pk_Payment_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        style = [currentPass style];
        *v33 = 138412546;
        v34 = currentPass;
        v35 = 1024;
        v36 = style;
        _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] current pass unique ID is %@ style %d", v33, 0x12u);
      }
    }

    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [_baseSessionStateForUpdate setCurrentPass:passCopy];
    [_baseSessionStateForUpdate setContactlessInterfaceReady:1];
    if ([currentPass passType] == 1 && (*(*&buf[8] + 24) & 1) != 0)
    {
      v29 = 4;
    }

    else
    {
      if (![currentPass npkHasValidNFCPayload])
      {
LABEL_24:
        [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];

        _Block_object_dispose(buf, 8);
        goto LABEL_25;
      }

      v29 = 2;
    }

    [_baseSessionStateForUpdate setFailureType:v29];
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

- (void)paymentSession:(id)session didCompleteTransactionForReason:(unint64_t)reason withTransactionContext:(id)context shouldCleanupSession:(BOOL)cleanupSession
{
  v33 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  contextCopy = context;
  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      v16 = NSStringFromNPKQuickPaymentSessionCompletionReason(reason);
      v27 = 138412802;
      v28 = sessionCopy;
      v29 = 2112;
      v30 = quickPaymentSession;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session %@ (current %@) completed for reason %@", &v27, 0x20u);
    }
  }

  quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

  if (quickPaymentSession2 == sessionCopy)
  {
    v18 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:contextCopy];
    [v18 setCompletionReason:reason];
    v19 = reason - 4;
    if (reason - 4 <= 7 && ((0xF3u >> v19) & 1) != 0)
    {
      [v18 setFailureType:qword_25B59A968[v19]];
    }

    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v18];
    if ([v18 hasSession])
    {
      transactionContext = [v18 transactionContext];
      v21 = [transactionContext transactionType] == 5;

      if (cleanupSession)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v21 = 0;
      if (cleanupSession)
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
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];

    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
    v18 = _baseSessionStateForUpdate;
    goto LABEL_19;
  }

LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)paymentSessionDidEnterField:(id)field
{
  v68 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
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

  currentPass = [fieldCopy currentPass];
  paymentPass = [currentPass paymentPass];
  effectiveContactlessPaymentApplicationState = [paymentPass effectiveContactlessPaymentApplicationState];
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setInField:1];
  if (!currentPass || paymentPass && effectiveContactlessPaymentApplicationState != 1)
  {
    [_baseSessionStateForUpdate setCurrentPass:currentPass];
    [_baseSessionStateForUpdate setFailureType:5];
  }

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
  currentPass2 = [fieldCopy currentPass];
  if ([currentPass2 style] != 8)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v13 setObject:*MEMORY[0x277D38438] forKeyedSubscript:*MEMORY[0x277D383D8]];
    v14 = v13;
    v15 = currentPass2;
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

    passType = [v15 passType];
    if ((passType + 1) >= 3)
    {
      v18 = *MEMORY[0x277D38530];
    }

    else
    {
      v18 = off_2799470B8[passType + 1];
    }

    [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x277D384F0]];

    style = [v16 style];
    secureElementPass = [v16 secureElementPass];
    isIdentityPass = [secureElementPass isIdentityPass];

    if (isIdentityPass)
    {
      v22 = @"identity";
    }

    else if (style < 0xE && ((0x27FFu >> style) & 1) != 0)
    {
      v22 = off_2799470D0[style];
    }

    else
    {
      v22 = *MEMORY[0x277D38530];
    }

    [v14 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384E8]];

    nfcPayload = [v16 nfcPayload];
    v24 = PKAnalyticsReportSwitchToggleResultValue();
    [v14 setObject:v24 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v60 = v16;
    v25 = v16;
    if ([v25 passType] == 1)
    {
      secureElementPass2 = [v25 secureElementPass];
      cardType = [secureElementPass2 cardType];
      if (cardType <= 4)
      {
        v24 = **(&unk_279947140 + cardType);
      }
    }

    else
    {
      v24 = @"other";
    }

    [v14 setObject:v24 forKeyedSubscript:*MEMORY[0x277D384E0]];
    secureElementPass3 = [v25 secureElementPass];
    v61 = paymentPass;
    if ([secureElementPass3 isIdentityPass])
    {
      identityType = [secureElementPass3 identityType];
      if (identityType <= 2)
      {
        if (identityType == 1)
        {
          v30 = MEMORY[0x277D383A0];
          goto LABEL_47;
        }

        if (identityType == 2)
        {
          v30 = MEMORY[0x277D38518];
          goto LABEL_47;
        }
      }

      else
      {
        switch(identityType)
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

    if (![secureElementPass3 isAccessPass])
    {
      goto LABEL_40;
    }

    accessType = [secureElementPass3 accessType];
    accessReportingType = [secureElementPass3 accessReportingType];
    v33 = accessReportingType;
    if (accessType <= 2)
    {
      switch(accessType)
      {
        case 0:
          v35 = @"general";
          if (accessReportingType)
          {
            v35 = accessReportingType;
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

          secureElementPass4 = [v25 secureElementPass];
          devicePaymentApplications = [secureElementPass4 devicePaymentApplications];
          [devicePaymentApplications count];

          v38 = PKAnalyticsReportSwitchToggleResultValue();

          [v14 setObject:v38 forKeyedSubscript:*MEMORY[0x277D38398]];
          secureElementPass5 = [v25 secureElementPass];
          v40 = *MEMORY[0x277D38530];
          organizationName = [secureElementPass5 organizationName];
          if ([organizationName length])
          {
            cardType2 = [secureElementPass5 cardType];
            if (cardType2 <= 4 && ((1 << cardType2) & 0x16) != 0)
            {
              v43 = organizationName;

              v40 = v43;
            }
          }

          [v14 setObject:v40 forKeyedSubscript:*MEMORY[0x277D38490]];
          secureElementPass6 = [v25 secureElementPass];
          v45 = secureElementPass6;
          if (secureElementPass6)
          {
            v58 = currentPass2;
            [secureElementPass6 devicePaymentApplications];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v46 = v65 = 0u;
            v47 = [v46 countByEnumeratingWithState:&v62 objects:buf count:16];
            v59 = fieldCopy;
            if (v47)
            {
              v48 = v47;
              paymentType = 0;
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
                  if (paymentType && paymentType != [*(*(&v62 + 1) + 8 * i) paymentType])
                  {

                    v53 = @"multiple";
                    goto LABEL_77;
                  }

                  paymentType = [v52 paymentType];
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
            issuerCountryCode = [v45 issuerCountryCode];
            [v14 setObject:issuerCountryCode forKeyedSubscript:*MEMORY[0x277D384D0]];

            currentPass2 = v58;
            fieldCopy = v59;
          }

          v16 = v60;
          paymentPass = v61;
          goto LABEL_79;
      }
    }

    else
    {
      if (accessType <= 4)
      {
        if (accessType == 3)
        {
          v34 = @"singlefamily";
        }

        else
        {
          v34 = @"cars";
        }

        goto LABEL_59;
      }

      if (accessType == 5)
      {
        v34 = @"multifamily";
        goto LABEL_59;
      }

      if (accessType == 6)
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

- (void)paymentSessionDidExitField:(id)field
{
  v71 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
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

  transactionContext = [(NPKContactlessPaymentSessionState *)self->_lastSessionState transactionContext];
  if (!transactionContext || (v9 = transactionContext, -[NPKContactlessPaymentSessionState transactionContext](self->_lastSessionState, "transactionContext"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 transactionType], v10, v9, v11 != 5))
  {
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [_baseSessionStateForUpdate setInField:0];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
    currentPass = [fieldCopy currentPass];
    if ([currentPass style] == 8)
    {
LABEL_82:

LABEL_83:
      goto LABEL_84;
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v16 setObject:*MEMORY[0x277D38440] forKeyedSubscript:*MEMORY[0x277D383D8]];
    v17 = v16;
    v18 = currentPass;
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

    passType = [v18 passType];
    v21 = MEMORY[0x277D38530];
    if ((passType + 1) >= 3)
    {
      v22 = *MEMORY[0x277D38530];
    }

    else
    {
      v22 = off_2799470B8[passType + 1];
    }

    [v17 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384F0]];

    style = [v19 style];
    secureElementPass = [v19 secureElementPass];
    isIdentityPass = [secureElementPass isIdentityPass];

    if (isIdentityPass)
    {
      v26 = @"identity";
    }

    else if (style < 0xE && ((0x27FFu >> style) & 1) != 0)
    {
      v26 = off_2799470D0[style];
    }

    else
    {
      v26 = *v21;
    }

    [v17 setObject:v26 forKeyedSubscript:*MEMORY[0x277D384E8]];

    nfcPayload = [v19 nfcPayload];
    v28 = PKAnalyticsReportSwitchToggleResultValue();
    [v17 setObject:v28 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v29 = v19;
    if ([v29 passType] == 1)
    {
      secureElementPass2 = [v29 secureElementPass];
      cardType = [secureElementPass2 cardType];
      if (cardType <= 4)
      {
        v28 = **(&unk_279947140 + cardType);
      }
    }

    else
    {
      v28 = @"other";
    }

    [v17 setObject:v28 forKeyedSubscript:*MEMORY[0x277D384E0]];
    secureElementPass3 = [v29 secureElementPass];
    if ([secureElementPass3 isIdentityPass])
    {
      identityType = [secureElementPass3 identityType];
      if (identityType <= 2)
      {
        if (identityType == 1)
        {
          v34 = MEMORY[0x277D383A0];
          goto LABEL_48;
        }

        if (identityType == 2)
        {
          v34 = MEMORY[0x277D38518];
          goto LABEL_48;
        }
      }

      else
      {
        switch(identityType)
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

    if (![secureElementPass3 isAccessPass])
    {
      goto LABEL_41;
    }

    accessType = [secureElementPass3 accessType];
    accessReportingType = [secureElementPass3 accessReportingType];
    v37 = accessReportingType;
    if (accessType <= 2)
    {
      switch(accessType)
      {
        case 0:
          v40 = @"general";
          if (accessReportingType)
          {
            v40 = accessReportingType;
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

          secureElementPass4 = [v29 secureElementPass];
          devicePaymentApplications = [secureElementPass4 devicePaymentApplications];
          [devicePaymentApplications count];

          v43 = PKAnalyticsReportSwitchToggleResultValue();

          [v17 setObject:v43 forKeyedSubscript:*MEMORY[0x277D38398]];
          secureElementPass5 = [v29 secureElementPass];
          v45 = *v21;
          organizationName = [secureElementPass5 organizationName];
          if ([organizationName length])
          {
            cardType2 = [secureElementPass5 cardType];
            if (cardType2 <= 4 && ((1 << cardType2) & 0x16) != 0)
            {
              v48 = organizationName;

              v45 = v48;
            }
          }

          [v17 setObject:v45 forKeyedSubscript:*MEMORY[0x277D38490]];
          secureElementPass6 = [v29 secureElementPass];
          v50 = secureElementPass6;
          if (secureElementPass6)
          {
            v64 = fieldCopy;
            [secureElementPass6 devicePaymentApplications];
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v51 = v68 = 0u;
            v52 = [v51 countByEnumeratingWithState:&v65 objects:buf count:16];
            v63 = v19;
            if (v52)
            {
              v53 = v52;
              paymentType = 0;
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
                  if (paymentType && paymentType != [*(*(&v65 + 1) + 8 * i) paymentType])
                  {

                    v58 = @"multiple";
                    goto LABEL_79;
                  }

                  paymentType = [v57 paymentType];
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
            issuerCountryCode = [v50 issuerCountryCode];
            [v17 setObject:issuerCountryCode forKeyedSubscript:*MEMORY[0x277D384D0]];

            v19 = v63;
            fieldCopy = v64;
          }

          goto LABEL_81;
      }
    }

    else
    {
      if (accessType <= 4)
      {
        if (accessType == 3)
        {
          v38 = @"singlefamily";
        }

        else
        {
          v38 = @"cars";
        }

        goto LABEL_61;
      }

      if (accessType == 5)
      {
        v38 = @"multifamily";
        goto LABEL_61;
      }

      if (accessType == 6)
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
    _baseSessionStateForUpdate = pk_Payment_log();
    if (os_log_type_enabled(_baseSessionStateForUpdate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, _baseSessionStateForUpdate, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did ignore exit field notification while on STS_ISO18013 transaction", buf, 2u);
    }

    goto LABEL_83;
  }

LABEL_84:

  v62 = *MEMORY[0x277D85DE8];
}

- (void)paymentSessionDidSelectPayment:(id)payment
{
  v14 = *MEMORY[0x277D85DE8];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];

  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [currentPass uniqueID];
      v12 = 138412290;
      v13 = uniqueID;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did select payment for unique ID: %@", &v12, 0xCu);
    }
  }

  if ([currentPass passType] != 1)
  {
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [_baseSessionStateForUpdate setCurrentPass:currentPass];
    [_baseSessionStateForUpdate setFailureType:3];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)paymentSessionDidSelectValueAddedService:(id)service
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

- (void)paymentSessionDidReceiveStartTransaction:(id)transaction
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

- (void)paymentSessionDidReceiveActivityTimeout:(id)timeout
{
  v45 = *MEMORY[0x277D85DE8];
  timeoutCopy = timeout;
  currentPass = [timeoutCopy currentPass];
  paymentPass = [currentPass paymentPass];
  isTransitPass = [paymentPass isTransitPass];

  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = isTransitPass;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received activity timeout isTransit %i", &buf, 8u);
    }
  }

  if (isTransitPass)
  {
    v9 = NPKIsTruthOnCardTransitPass(currentPass);
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

      quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      currentPass2 = [quickPaymentSession currentPass];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      paymentPass2 = [currentPass2 paymentPass];
      obj = [paymentPass2 npkPreferredContactlessPaymentApplications];

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
            currentPass3 = [timeoutCopy currentPass];
            [(NPKContactlessPaymentSessionManagerTransactionContext *)v19 setTransactionPass:currentPass3];

            if (NPKIsTruthOnCardTransitPass(currentPass2))
            {
              v21 = objc_alloc_init(MEMORY[0x277D380F0]);
              v22 = dispatch_semaphore_create(0);
              *&buf = 0;
              *(&buf + 1) = &buf;
              v40 = 0x3032000000;
              v41 = __Block_byref_object_copy__7;
              v42 = __Block_byref_object_dispose__7;
              v43 = 0;
              uniqueID = [currentPass2 uniqueID];
              v32[0] = MEMORY[0x277D85DD0];
              v32[1] = 3221225472;
              v32[2] = __79__NPKContactlessPaymentSessionManager_paymentSessionDidReceiveActivityTimeout___block_invoke;
              v32[3] = &unk_279946E50;
              p_buf = &buf;
              v24 = v22;
              v33 = v24;
              [v21 transitStateWithPassUniqueIdentifier:uniqueID paymentApplication:v18 completion:v32];

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

            _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
            [_baseSessionStateForUpdate setCurrentPass:currentPass2];
            [_baseSessionStateForUpdate setSessionAuthorized:0];
            [_baseSessionStateForUpdate setDoublePressReceived:0];
            [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
            [_baseSessionStateForUpdate setCanChangePass:1];
            [_baseSessionStateForUpdate setCompletionReason:0];
            [_baseSessionStateForUpdate setTransactionContext:v19];
            [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];

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
      currentPass2 = pk_Payment_log();
      if (os_log_type_enabled(currentPass2, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID2 = [currentPass uniqueID];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = uniqueID2;
        _os_log_impl(&dword_25B300000, currentPass2, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] unexpected activity timeout event for cEMV pass with uniqueID:%@", &buf, 0xCu);
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

- (void)paymentSessionDidReceiveCredential:(id)credential
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

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setSessionAuthorized:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSession:(id)session didReceive18013Request:(id)request readerAuthInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
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

  [(NPKContactlessPaymentSessionManager *)self handleISO18013Request:requestCopy withReaderAuthInfo:infoCopy];
}

- (void)paymentSessionDidReceiveAuthorizationTimeout:(id)timeout
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

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  if ([(NPKContactlessPaymentSessionState *)self->_lastSessionState sessionAuthorized])
  {
    [_baseSessionStateForUpdate setFailureType:6];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
  }
}

- (void)paymentSessionDidReceiveActivationError:(id)error
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

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setFailureType:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSessionDidReceiveTransactionError:(id)error
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

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setFailureType:2];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSessionIsWaitingToStart:(id)start
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

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setSessionWaitingToStart:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSessionDidStart:(id)start
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

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)_cleanupQuickPaymentSession
{
  v13 = *MEMORY[0x277D85DE8];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  if (quickPaymentSession)
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
        v12 = quickPaymentSession;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] %s cleaning payment session:%@", &v9, 0x16u);
      }
    }

    [quickPaymentSession deactivateSessionWithCompletion:0];
    [(NPKContactlessPaymentSessionManager *)self setQuickPaymentSession:0];
    cleanupDelegate = [(NPKContactlessPaymentSessionManager *)self cleanupDelegate];
    [quickPaymentSession setDelegate:cleanupDelegate];

    [(NPKContactlessPaymentSessionManager *)self _stopSessionTimer];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_managerContextForContactlessInterfaceTransactionContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  paymentPass = [contextCopy paymentPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionPass:paymentPass];

  paymentPass2 = [contextCopy paymentPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setValueAddedServicePass:paymentPass2];

  transaction = [contextCopy transaction];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setPaymentTransaction:transaction];

  lastSessionState = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
  transactionContext = [lastSessionState transactionContext];
  transactionType = [transactionContext transactionType];

  if (transactionType == 5)
  {
    if ([contextCopy success])
    {
      v12 = 4;
    }

    else
    {
      v12 = 5;
    }

    [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setReleaseDataStatus:v12];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionType:5];
    lastSessionState2 = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
    transactionContext2 = [lastSessionState2 transactionContext];
    releaseDataRequest = [transactionContext2 releaseDataRequest];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setReleaseDataRequest:releaseDataRequest];
  }

  valueAddedServiceTransactions = [contextCopy valueAddedServiceTransactions];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke;
  v67[3] = &unk_279946EA0;
  v17 = contextCopy;
  v68 = v17;
  v18 = v5;
  v69 = v18;
  [valueAddedServiceTransactions enumerateObjectsUsingBlock:v67];

  valueAddedServicePasses = [v17 valueAddedServicePasses];
  firstObject = [valueAddedServicePasses firstObject];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 setValueAddedServicePass:firstObject];

  transactionPass = [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 transactionPass];

  if (!transactionPass)
  {
    valueAddedServicePass = [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 valueAddedServicePass];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 setTransactionPass:valueAddedServicePass];
  }

  transaction2 = [v17 transaction];
  if (transaction2)
  {
    paymentPass4 = objc_alloc_init(MEMORY[0x277D380F0]);
    paymentPass3 = [v17 paymentPass];
    uniqueID = [paymentPass3 uniqueID];
    paymentApplication = [v17 paymentApplication];
    [paymentPass4 insertOrUpdatePaymentTransaction:transaction2 forPassUniqueIdentifier:uniqueID paymentApplication:paymentApplication completion:0];
LABEL_12:

    goto LABEL_13;
  }

  transitHistory = [v17 transitHistory];

  if (transitHistory)
  {
    selfCopy = self;
    paymentPass4 = [v17 paymentPass];
    uniqueID2 = [paymentPass4 uniqueID];
    v30 = objc_alloc_init(MEMORY[0x277D380F0]);
    v31 = dispatch_semaphore_create(0);
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__7;
    v65 = __Block_byref_object_dispose__7;
    v66 = 0;
    devicePrimaryPaymentApplication = [paymentPass4 devicePrimaryPaymentApplication];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke_3;
    v58[3] = &unk_279946E50;
    v60 = &v61;
    paymentApplication = v31;
    v59 = paymentApplication;
    [v30 transitStateWithPassUniqueIdentifier:uniqueID2 paymentApplication:devicePrimaryPaymentApplication completion:v58];
    v53 = v30;
    v50 = uniqueID2;

    dispatch_semaphore_wait(paymentApplication, 0xFFFFFFFFFFFFFFFFLL);
    v56 = 0;
    v57 = MEMORY[0x277CBEBF8];
    v55 = 0;
    v33 = v62[5];
    transitHistory2 = [v17 transitHistory];
    transactionPass2 = [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 transactionPass];
    paymentPass5 = [transactionPass2 paymentPass];
    v51 = [v33 npk_processUpdateWithAppletHistory:transitHistory2 concreteTransactions:&v57 ephemeralTransaction:&v56 mutatedBalances:&v55 pass:paymentPass5];

    transitHistory3 = [v17 transitHistory];
    date = [v17 date];
    paymentApplication2 = [v17 paymentApplication];
    paymentPass6 = [v17 paymentPass];
    uniqueID3 = [paymentPass6 uniqueID];
    expressState = [v17 expressState];
    [v53 processTransitTransactionEventWithHistory:transitHistory3 transactionDate:date forPaymentApplication:paymentApplication2 withPassUniqueIdentifier:uniqueID3 expressTransactionState:expressState];

    v42 = v55;
    paymentApplication3 = [v17 paymentApplication];
    v44 = [(NPKContactlessPaymentSessionManager *)selfCopy _updatedPassItemFieldWithPaymentPass:paymentPass4 transitAppletBalances:v42 appletState:v51 paymentApplication:paymentApplication3];

    v46 = v56;
    v45 = v57;
    paymentApplication4 = [v17 paymentApplication];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 updateWithConcreteTransactions:v45 ephemeralTransaction:v46 updatedPassTransitItems:v44 paymentApplication:paymentApplication4];

    [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 forceToTransitTypeTransactionWithTransactionStatus:5];
    _Block_object_dispose(&v61, 8);

    paymentPass3 = v50;
    uniqueID = v53;
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

- (void)_handleValueAddedServiceTransactions:(id)transactions forValueAddedServicePasses:(id)passes paymentTransaction:(id)transaction outUserInterventionRequiredPasses:(id *)requiredPasses
{
  v51 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  passesCopy = passes;
  transactionCopy = transaction;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = transactionsCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling VAS transactions: %@", buf, 0xCu);
    }
  }

  if (requiredPasses)
  {
    array = [MEMORY[0x277CBEB18] array];
    *requiredPasses = array;
  }

  else
  {
    array = 0;
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = passesCopy;
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
        passTypeIdentifier = [v20 passTypeIdentifier];
        v22 = [passTypeIdentifier dataUsingEncoding:4];
        sHA256Hash = [v22 SHA256Hash];

        array2 = [v14 objectForKey:sHA256Hash];
        if (!array2)
        {
          array2 = [MEMORY[0x277CBEB18] array];
          [v14 setObject:array2 forKey:sHA256Hash];
        }

        [array2 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v17);
  }

  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v27 = objc_alloc_init(MEMORY[0x277D380F0]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __156__NPKContactlessPaymentSessionManager__handleValueAddedServiceTransactions_forValueAddedServicePasses_paymentTransaction_outUserInterventionRequiredPasses___block_invoke;
  v37[3] = &unk_279946EC8;
  v38 = v14;
  v39 = array3;
  v40 = array4;
  v41 = v27;
  v42 = transactionCopy;
  v43 = array;
  v28 = array;
  v29 = transactionCopy;
  v30 = v27;
  v31 = array4;
  v32 = array3;
  v33 = v14;
  [transactionsCopy enumerateObjectsUsingBlock:v37];

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

  date = [MEMORY[0x277CBEAA8] date];
  [(NPKContactlessPaymentSessionState *)v6 setTimestamp:date];

  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  [(NPKContactlessPaymentSessionState *)v6 setHasSession:quickPaymentSession != 0];

  quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setSessionStarted:](v6, "setSessionStarted:", [quickPaymentSession2 sessionStarted]);

  quickPaymentSession3 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setIsSwitchingSessionType:](v6, "setIsSwitchingSessionType:", [quickPaymentSession3 isSwitchingSessionType]);

  quickPaymentSession4 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setSessionType:](v6, "setSessionType:", [quickPaymentSession4 sessionType]);

  if (![(NPKContactlessPaymentSessionState *)v6 hasSession]|| [(NPKContactlessPaymentSessionState *)v6 sessionStarted])
  {
    [(NPKContactlessPaymentSessionState *)v6 setSessionWaitingToStart:0];
  }

  quickPaymentSession5 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setInServiceMode:](v6, "setInServiceMode:", [quickPaymentSession5 inServiceMode]);

  if ([(NPKContactlessPaymentSessionState *)v6 inServiceMode])
  {
    [(NPKContactlessPaymentSessionState *)v6 setServiceModeRequestedPass:0];
  }

  [(NPKContactlessPaymentSessionState *)v6 setTransactionContext:0];
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession)
  {
    [(NPKContactlessPaymentSessionState *)v6 setHasSession:1];
    barcodePaymentSession2 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
    -[NPKContactlessPaymentSessionState setSessionStarted:](v6, "setSessionStarted:", [barcodePaymentSession2 sessionStarted]);

    [(NPKContactlessPaymentSessionState *)v6 setInServiceMode:0];
  }

  [(NPKContactlessPaymentSessionState *)v6 setExpressTransactionStatus:0];
  [(NPKContactlessPaymentSessionState *)v6 setFailureType:0];
  [(NPKContactlessPaymentSessionState *)v6 setCompletionReason:0];

  return v6;
}

- (void)_prepareSessionStateForSendingToObservers:(id)observers
{
  observersCopy = observers;
  isArmed = [observersCopy isArmed];
  v5 = isArmed & [observersCopy inField];
  if ([observersCopy inServiceMode])
  {
    v6 = [observersCopy doublePressReceived] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  [observersCopy setCanChangePass:(v5 ^ 1) & v6];
  if (([observersCopy hasSession] & 1) == 0)
  {
    [observersCopy setCurrentPass:self->_userSelectedPass];
  }
}

- (void)_sendSessionStateToObservers:(id)observers
{
  v16 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  [(NPKContactlessPaymentSessionManager *)self _prepareSessionStateForSendingToObservers:observersCopy];
  objc_storeStrong(&self->_lastSessionState, observers);
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = observersCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] sending to observer new session State:%@", buf, 0xCu);
    }
  }

  observersManager = self->_observersManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__NPKContactlessPaymentSessionManager__sendSessionStateToObservers___block_invoke;
  v12[3] = &unk_279946EF0;
  v12[4] = self;
  v13 = observersCopy;
  v10 = observersCopy;
  [(NPKObserverManager *)observersManager enumerateObserversUsingBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_sessionStateForTransactionContext:(id)context
{
  contextCopy = context;
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

  valueAddedServicePasses = [contextCopy valueAddedServicePasses];
  valueAddedServiceTransactions = [contextCopy valueAddedServiceTransactions];
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
  [valueAddedServiceTransactions enumerateObjectsUsingBlock:v19];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transaction = [contextCopy transaction];
    if (transaction || ([contextCopy transitHistory], (transaction = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (*(v21 + 5))
    {
      firstObject = [valueAddedServicePasses firstObject];

      firstObject2 = 0;
      currentPass = firstObject;
      if (!contextCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  if (*(v21 + 5))
  {
    firstObject2 = [valueAddedServicePasses firstObject];
    if (!contextCopy)
    {
LABEL_17:
      v14 = 0;
      if (!valueAddedServiceTransactions)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    firstObject2 = 0;
    if (!contextCopy)
    {
      goto LABEL_17;
    }
  }

LABEL_13:
  v14 = [(NPKContactlessPaymentSessionManager *)self _managerContextForContactlessInterfaceTransactionContext:contextCopy];
  [v14 setValueAddedServicePass:firstObject2];
  if (valueAddedServiceTransactions)
  {
LABEL_18:
    transaction2 = [contextCopy transaction];
    [(NPKContactlessPaymentSessionManager *)self _handleValueAddedServiceTransactions:valueAddedServiceTransactions forValueAddedServicePasses:valueAddedServicePasses paymentTransaction:transaction2 outUserInterventionRequiredPasses:0];
  }

LABEL_19:
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCurrentPass:currentPass];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:1];
  [_baseSessionStateForUpdate setTransactionContext:v14];

  _Block_object_dispose(buf, 8);

  return _baseSessionStateForUpdate;
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

- (id)_sessionStateForExpressTransactionStatus:(unint64_t)status pass:(id)pass paymentApplication:(id)application concreteTransactions:(id)transactions ephemeralTransaction:(id)transaction mutatedBalances:(id)balances appletState:(id)state
{
  passCopy = pass;
  applicationCopy = application;
  transactionsCopy = transactions;
  transactionCopy = transaction;
  balancesCopy = balances;
  stateCopy = state;
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCurrentPass:passCopy];
  [_baseSessionStateForUpdate setSessionAuthorized:1];
  [_baseSessionStateForUpdate setDoublePressReceived:1];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:1];
  [_baseSessionStateForUpdate setExpressTransactionStatus:status];
  if (status == 1)
  {
    [_baseSessionStateForUpdate setCanChangePass:0];
  }

  else
  {
    IsComplete = NPKExpressTransactionStatusIsComplete(status);
    if (status == 3 || IsComplete)
    {
      v23 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
      [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 setTransactionPass:passCopy];
      if (NPKIsTruthOnCard(passCopy))
      {
        [passCopy paymentPass];
        v24 = v27 = transactionsCopy;
        v25 = [(NPKContactlessPaymentSessionManager *)self _updatedPassItemFieldWithPaymentPass:v24 transitAppletBalances:balancesCopy appletState:stateCopy paymentApplication:applicationCopy];

        transactionsCopy = v27;
        [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 updateWithConcreteTransactions:v27 ephemeralTransaction:transactionCopy updatedPassTransitItems:v25 paymentApplication:applicationCopy];
        [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 forceToTransitTypeTransactionWithTransactionStatus:status];
      }

      [_baseSessionStateForUpdate setTransactionContext:v23];
      [_baseSessionStateForUpdate setCompletionReason:3];
    }

    else if (status == 2)
    {
      [_baseSessionStateForUpdate setCompletionReason:5];
      [_baseSessionStateForUpdate setFailureType:2];
    }
  }

  return _baseSessionStateForUpdate;
}

- (void)_startSessionTimerWithReason:(unint64_t)reason
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
      if (!reason)
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
  if (reason)
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

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession)
  {
    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleServiceModeRequestEnded
{
  uTF8String = [@"NPKEndedServiceModeRequestDarwinNotification" UTF8String];

  notify_post(uTF8String);
}

- (void)_registerForServiceModeRequestNotification
{
  objc_initWeak(&location, self);
  uTF8String = [@"NPKCancelledServiceModeRequestDarwinNotification" UTF8String];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__NPKContactlessPaymentSessionManager__registerForServiceModeRequestNotification__block_invoke;
  v6[3] = &unk_279944F20;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(uTF8String, &self->_serviceModeRequestNotifyToken, v4, v6);

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

- (BOOL)_canHandleRKEActionForTileItem:(id)item pass:(id)pass outAction:(id *)action outFunction:(id *)function outError:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  passCopy = pass;
  v55 = 0;
  v12 = [PKGetClassNFDigitalCarKeySession() getVehicleReports:&v55];
  v13 = v55;
  secureElementPass = [passCopy secureElementPass];
  devicePrimaryPaymentApplication = [secureElementPass devicePrimaryPaymentApplication];

  v48 = devicePrimaryPaymentApplication;
  subcredentials = [devicePrimaryPaymentApplication subcredentials];
  anyObject = [subcredentials anyObject];
  identifier = [anyObject identifier];

  v19 = [v12 objectForKeyedSubscript:identifier];
  v50 = v12;
  if (v19 && !v13)
  {
    errorCopy = error;
    functionCopy2 = function;
    action = [itemCopy action];
    vehicleFunctionActions = [action vehicleFunctionActions];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    tile = [itemCopy tile];
    metadata = [tile metadata];
    metadataTypeVehicleFunction = [metadata metadataTypeVehicleFunction];
    vehicleFunctions = [metadataTypeVehicleFunction vehicleFunctions];

    v26 = [vehicleFunctions countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v26)
    {
      v44 = passCopy;
      v45 = itemCopy;
      v27 = *v52;
      while (2)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v52 != v27)
          {
            objc_enumerationMutation(vehicleFunctions);
          }

          v29 = *(*(&v51 + 1) + 8 * i);
          if ([v19 isRKEFunctionSupported:v29])
          {
            v30 = [vehicleFunctionActions objectForKeyedSubscript:v29];
            if (v30)
            {
              v31 = v30;
              v26 = v29;
              goto LABEL_18;
            }
          }
        }

        v26 = [vehicleFunctions countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

      v31 = 0;
LABEL_18:
      passCopy = v44;
      itemCopy = v45;
    }

    else
    {
      v31 = 0;
    }

    error = errorCopy;
LABEL_23:
    actionCopy2 = action;

    function = functionCopy2;
    if (!action)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v32 = pk_Payment_log();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

  if (v33)
  {
    functionCopy2 = function;
    vehicleFunctionActions = pk_Payment_log();
    if (os_log_type_enabled(vehicleFunctionActions, OS_LOG_TYPE_ERROR))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138413058;
      v57 = v19;
      v58 = 2112;
      v59 = uniqueID;
      v60 = 2112;
      v61 = identifier;
      v62 = 2112;
      v63 = v13;
      _os_log_impl(&dword_25B300000, vehicleFunctionActions, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Failed to obtain vehicle report (%@) for pass: %@ with subcredential identifier: %@! Error: %@", buf, 0x2Au);
    }

    v26 = 0;
    v31 = 0;
    goto LABEL_23;
  }

  v26 = 0;
  v31 = 0;
  actionCopy2 = action;
  if (action)
  {
LABEL_24:
    v36 = v31;
    *actionCopy2 = v31;
  }

LABEL_25:
  if (function)
  {
    v37 = v26;
    *function = v26;
  }

  if (error)
  {
    v38 = v13;
    *error = v13;
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

- (void)_handleRKEActionRequestedForPass:(id)pass action:(id)action function:(id)function withSession:(id)session completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  actionCopy = action;
  functionCopy = function;
  sessionCopy = session;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke;
  aBlock[3] = &unk_279946F18;
  v17 = passCopy;
  v35 = v17;
  v18 = actionCopy;
  v36 = v18;
  v19 = functionCopy;
  v37 = v19;
  v20 = sessionCopy;
  v38 = v20;
  selfCopy = self;
  v21 = completionCopy;
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
        uniqueID = [v17 uniqueID];
        *buf = 138412802;
        v42 = uniqueID;
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

- (id)_sessionStateForPaymentBarcode:(id)barcode
{
  barcodeCopy = barcode;
  v5 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionPass:userSelectedPass];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionType:4];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionStatus:0];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setPaymentBarcode:barcodeCopy];

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setTransactionContext:v5];

  return _baseSessionStateForUpdate;
}

- (id)_sessionStateForBarcodeTransactionStatus:(unint64_t)status paymentBarcode:(id)barcode transaction:(id)transaction
{
  transactionCopy = transaction;
  barcodeCopy = barcode;
  v10 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setTransactionPass:userSelectedPass];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setTransactionType:4];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setPaymentBarcode:barcodeCopy];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setPaymentTransaction:transactionCopy];
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setTransactionContext:v10];
  if (status <= 2)
  {
    if (status)
    {
      if (status != 1)
      {
        if (status == 2)
        {
          [_baseSessionStateForUpdate setCompletionReason:6];
          v13 = _baseSessionStateForUpdate;
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
      lastSessionState = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
      transactionContext = [lastSessionState transactionContext];
      transactionStatus = [transactionContext transactionStatus];

      if (transactionStatus != 1)
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

  switch(status)
  {
    case 3uLL:
      [_baseSessionStateForUpdate setCompletionReason:5];
      v13 = _baseSessionStateForUpdate;
      v14 = 2;
      goto LABEL_13;
    case 4uLL:
      [_baseSessionStateForUpdate setCompletionReason:3];
      goto LABEL_18;
    case 5uLL:
      [_baseSessionStateForUpdate setCompletionReason:2];
      v13 = _baseSessionStateForUpdate;
      v14 = 6;
      goto LABEL_13;
  }

LABEL_19:
  userSelectedPass2 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass2];

  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:1];
LABEL_20:

  return _baseSessionStateForUpdate;
}

- (id)_sessionStateForUserCanceledBarcodeTransaction
{
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass];

  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:1];
  [_baseSessionStateForUpdate setCompletionReason:6];
  [_baseSessionStateForUpdate setFailureType:7];

  return _baseSessionStateForUpdate;
}

- (id)_paymentBalancesFromTransitAppletBalances:(id)balances
{
  balancesCopy = balances;
  v4 = balancesCopy;
  if (balancesCopy)
  {
    balancesCopy = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(balancesCopy, "count")}];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__NPKContactlessPaymentSessionManager__paymentBalancesFromTransitAppletBalances___block_invoke;
  v7[3] = &unk_279946F90;
  v5 = balancesCopy;
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

- (id)_updatedPassItemFieldWithPaymentPass:(id)pass transitAppletBalances:(id)balances appletState:(id)state paymentApplication:(id)application
{
  applicationCopy = application;
  stateCopy = state;
  passCopy = pass;
  v13 = [(NPKContactlessPaymentSessionManager *)self _paymentBalancesFromTransitAppletBalances:balances];
  v14 = [stateCopy transitPassPropertiesWithPaymentApplication:applicationCopy pass:passCopy];

  v15 = [[NPKPassAssociatedInfoModel alloc] initWithPass:passCopy transitProperties:v14 balances:v13 commutePlanValueRequired:1];
  allPassItemsFields = [(NPKPassAssociatedInfoModel *)v15 allPassItemsFields];

  return allPassItemsFields;
}

@end