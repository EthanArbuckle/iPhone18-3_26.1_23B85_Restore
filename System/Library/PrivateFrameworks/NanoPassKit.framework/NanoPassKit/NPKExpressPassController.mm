@interface NPKExpressPassController
- (BOOL)_canProceedWithTransactionForPass:(id)a3 selector:(SEL)a4;
- (NPKExpressPassController)initWithPaymentService:(id)a3 passLibrary:(id)a4 distributedNotificationCenter:(id)a5 delegate:(id)a6;
- (NPKExpressPassControllerDelegate)delegate;
- (NSDistributedNotificationCenter)distributedNotificationCenter;
- (PKPassLibrary)passLibrary;
- (id)_expressPassInformationWithTechnologyType:(int64_t)a3;
- (id)_expressPassesInformationWithAutomaticSelectionTechnologyType:(int64_t)a3;
- (id)_expressPassesInformationWithTCIs:(id)a3;
- (id)_queue_expressPassForTransactionApplicationIdentifier:(id)a3 transactionApplicationKeyIdentifier:(id)a4;
- (id)_queue_siblingExpressPassesForExpressPass:(id)a3 applicationIdentifier:(id)a4;
- (id)paymentService;
- (unint64_t)_operationSourceFromRawValue:(id)a3;
- (unint64_t)_transactionEventFromLockStatus:(id)a3;
- (void)_handleCarKeyExpressEnteredNotification:(id)a3;
- (void)_handleCarKeyExpressExitedNotification:(id)a3;
- (void)_handleCarKeyRKEActionCompletedNotification:(id)a3;
- (void)_handleCarKeyRangingEndedNotification:(id)a3;
- (void)_handleCarKeyRangingStartedNotification:(id)a3;
- (void)_handleCarKeySessionEndedNotification:(id)a3;
- (void)_handleCarKeySessionEndedWithErrorNotification:(id)a3;
- (void)_handleCarKeyVehicleConnectedNotification:(id)a3;
- (void)_handleCarKeyVehicleDisconnectedNotification:(id)a3;
- (void)_handleCarKeyVehicleLockedNotification:(id)a3;
- (void)_handleCarKeyVehicleUnlockedNotification:(id)a3;
- (void)_handleEnterNearFieldNotification:(id)a3;
- (void)_handleExitNearFieldNotification:(id)a3;
- (void)_handleExpressTransactionEndNotification:(id)a3;
- (void)_handleExpressTransactionFailedNotification:(id)a3;
- (void)_handleExpressTransactionStartNotification:(id)a3;
- (void)_handleExpressTransactionTimeOutNotification:(id)a3;
- (void)_handleHomeKeyLockConnectedNotification:(id)a3;
- (void)_handleHomeKeyLockDisconnectedNotification:(id)a3;
- (void)_handleHomeKeyLockStatusChangedNotification:(id)a3;
- (void)_handlePassesLibraryChangedNotification:(id)a3;
- (void)_handleStandaloneTransactionDoneNotification:(id)a3;
- (void)_internalQueue_startFieldDetector;
- (void)_internalQueue_stopFieldDetector;
- (void)_internalQueue_updateExpressPasses;
- (void)_onqueue_transactionCompletedForRKEAction:(id)a3 function:(id)a4 withApplicationIdentifier:(id)a5 applicationKeyIdentifier:(id)a6;
- (void)_onqueue_transactionCompletedForStandaloneTransactionEvent:(unint64_t)a3 withApplicationIdentifier:(id)a4 applicationKeyIdentifier:(id)a5;
- (void)_onqueue_transactionEndedWithApplicationIdentifier:(id)a3 applicationKeyIdentifier:(id)a4;
- (void)_onqueue_transactionFailedWithApplicationIdentifier:(id)a3 applicationKeyIdentifier:(id)a4;
- (void)_onqueue_transactionStartedWithApplicationIdentifier:(id)a3 applicationKeyIdentifier:(id)a4;
- (void)_parseExpressNotificationObject:(id)a3 outApplicationIdentifier:(id *)a4 outApplicationKeyIdentifier:(id *)a5;
- (void)_parseHomeKeyUWBExpressNotificationObject:(id)a3 outApplicationIdentifier:(id *)a4 outApplicationKeyIdentifier:(id *)a5 outReaderIdentifier:(id *)a6 outTimestamp:(id *)a7 outTransactionLockStatus:(id *)a8 outLockOperationSource:(id *)a9;
- (void)_parseRKEActionNotificationObject:(id)a3 outApplicationIdentifier:(id *)a4 outApplicationKeyIdentifier:(id *)a5 outFunctionNumber:(id *)a6 outActionNumber:(id *)a7 outExecutionStatusNumber:(id *)a8 outErrorMessage:(id *)a9;
- (void)_startListeningForCarKeyNotifications;
- (void)_startListeningForExpressNotifications;
- (void)_startListeningForGenericNotifications;
- (void)_startListeningForHomeKeyNotifications;
- (void)_stopListeningForExpressNotifications;
- (void)_transitionToCompletedRKEAction:(id)a3 function:(id)a4 forExpressPass:(id)a5;
- (void)_transitionToStandaloneTransactionEvent:(unint64_t)a3 forExpressPass:(id)a4;
- (void)_transitionToStandaloneTransactionEvent:(unint64_t)a3 forExpressPass:(id)a4 withExpressUWBInfo:(id)a5;
- (void)_transitionToStatus:(unint64_t)a3 forExpressPass:(id)a4 paymentApplicationIdentifier:(id)a5;
- (void)dealloc;
- (void)fieldDetectorDidEnterField:(id)a3 withProperties:(id)a4;
- (void)reset;
- (void)updateExpressPasses;
- (void)updateExpressPassesSynchronous;
@end

@implementation NPKExpressPassController

- (NPKExpressPassController)initWithPaymentService:(id)a3 passLibrary:(id)a4 distributedNotificationCenter:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = NPKExpressPassController;
  v14 = [(NPKExpressPassController *)&v27 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v16 = dispatch_queue_create("com.apple.expressPassController.internalQueue", v15);
    internalQueue = v14->_internalQueue;
    v14->_internalQueue = v16;

    v14->_transactionStatus = 0;
    objc_storeWeak(&v14->_delegate, v13);
    objc_storeWeak(&v14->_distributedNotificationCenter, v12);
    objc_storeWeak(&v14->_passLibrary, v11);
    objc_storeWeak(&v14->_paymentService, v10);
    v14->_expressPassChangedNotifyToken = -1;
    objc_initWeak(&location, v14);
    v18 = [*MEMORY[0x277D385D0] UTF8String];
    v19 = v14->_internalQueue;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __102__NPKExpressPassController_initWithPaymentService_passLibrary_distributedNotificationCenter_delegate___block_invoke;
    v24 = &unk_279944F20;
    objc_copyWeak(&v25, &location);
    notify_register_dispatch(v18, &v14->_expressPassChangedNotifyToken, v19, &v21);
    [(NPKExpressPassController *)v14 updateExpressPasses:v21];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __102__NPKExpressPassController_initWithPaymentService_passLibrary_distributedNotificationCenter_delegate___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Got express passes changed notification in express pass controller", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _internalQueue_updateExpressPasses];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_expressPassChangedNotifyToken))
  {
    notify_cancel(self->_expressPassChangedNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = NPKExpressPassController;
  [(NPKExpressPassController *)&v3 dealloc];
}

- (void)reset
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__NPKExpressPassController_reset__block_invoke;
  v2[3] = &unk_279944F98;
  v2[4] = self;
  NPKGuaranteeMainThread(v2);
}

- (id)paymentService
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentService);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(MEMORY[0x277D380F0]);
  }

  return WeakRetained;
}

- (PKPassLibrary)passLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_passLibrary);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x277D37FC0] sharedInstance];
  }

  return WeakRetained;
}

- (NSDistributedNotificationCenter)distributedNotificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_distributedNotificationCenter);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x277CCA9A0] defaultCenter];
    objc_storeWeak(&self->_distributedNotificationCenter, WeakRetained);
  }

  return WeakRetained;
}

- (void)_transitionToStatus:(unint64_t)a3 forExpressPass:(id)a4 paymentApplicationIdentifier:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  transactionStatus = self->_transactionStatus;
  if (transactionStatus == a3)
  {
    goto LABEL_33;
  }

  if (v9 && self->_currentTransactionPass)
  {
    v12 = [v9 uniqueID];
    v13 = [(PKPass *)self->_currentTransactionPass uniqueID];
    v14 = [v12 isEqualToString:v13];

    if (!v14)
    {
      v21 = pk_Payment_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v17 = pk_Payment_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(PKPass *)self->_currentTransactionPass uniqueID];
          v24 = [v9 uniqueID];
          v34 = 138412546;
          v35 = v23;
          v36 = 2112;
          v37 = v24;
          _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Warning: Accepting new express status because express transit pass changed from %@ to %@.", &v34, 0x16u);
        }

        goto LABEL_18;
      }

      goto LABEL_19;
    }

    transactionStatus = self->_transactionStatus;
  }

  if (transactionStatus >= a3)
  {
    if (a3)
    {
      goto LABEL_33;
    }

    v19 = pk_Payment_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (!v20)
    {
      goto LABEL_19;
    }

    v17 = pk_Payment_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v34) = 0;
    v18 = "Notice: Accepting reset of express status.";
    goto LABEL_14;
  }

  v15 = pk_Payment_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = pk_Payment_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:

      goto LABEL_19;
    }

    LOWORD(v34) = 0;
    v18 = "Notice: Accepting new express status because it is greater than the previous express status.";
LABEL_14:
    _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, v18, &v34, 2u);
    goto LABEL_18;
  }

LABEL_19:
  v25 = pk_General_log();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (v26)
  {
    v27 = pk_General_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = NSStringFromNPKExpressPassControllerStatus(self->_transactionStatus);
      v29 = NSStringFromNPKExpressPassControllerStatus(a3);
      v34 = 138412802;
      v35 = self;
      v36 = 2112;
      v37 = v28;
      v38 = 2112;
      v39 = v29;
      _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: %@ transition from status %@ to %@", &v34, 0x20u);
    }
  }

  self->_transactionStatus = a3;
  objc_storeStrong(&self->_currentTransactionPass, a4);
  v30 = [(NPKExpressPassController *)self delegate];
  v31 = v30;
  if (v9 && v30)
  {
    v32 = [(NPKExpressPassController *)self _queue_siblingExpressPassesForExpressPass:v9 applicationIdentifier:v10];
    switch(a3)
    {
      case 4uLL:
        [v31 expressPassController:self didCompleteTransactionForPass:v9];
        break;
      case 3uLL:
        [v31 expressPassController:self didFailTransactionForPass:v9];
        break;
      case 2uLL:
        [v31 expressPassController:self didStartTransactionForPass:v9 paymentApplicationIdentifier:v10 siblingExpressPasses:v32];
        break;
    }
  }

LABEL_33:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToStandaloneTransactionEvent:(unint64_t)a3 forExpressPass:(id)a4
{
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(NPKExpressPassController *)self _canProceedWithTransactionForPass:v7 selector:sel__transitionToStandaloneTransactionEvent_forExpressPass_])
  {
    v6 = [(NPKExpressPassController *)self delegate];
    if (v7 && v6)
    {
      [v6 expressPassController:self didCompleteStandaloneTransactionEvent:a3 forPass:v7];
    }
  }
}

- (void)_transitionToCompletedRKEAction:(id)a3 function:(id)a4 forExpressPass:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(NPKExpressPassController *)self _canProceedWithTransactionForPass:v9 selector:sel__transitionToCompletedRKEAction_function_forExpressPass_])
  {
    v10 = [(NPKExpressPassController *)self delegate];
    v11 = v10;
    if (v9 && v10)
    {
      [v10 expressPassController:self didCompleteRKEAction:v12 function:v8 forPass:v9];
    }
  }
}

- (void)_transitionToStandaloneTransactionEvent:(unint64_t)a3 forExpressPass:(id)a4 withExpressUWBInfo:(id)a5
{
  v11 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(NPKExpressPassController *)self _canProceedWithTransactionForPass:v11 selector:sel__transitionToStandaloneTransactionEvent_forExpressPass_withExpressUWBInfo_])
  {
    v9 = [(NPKExpressPassController *)self delegate];
    if (v11 && v9)
    {
      v10 = [(NPKExpressPassController *)self delegate];
      [v10 expressPassController:self didCompleteStandaloneTransactionEvent:a3 forPass:v11 withUWBTransactionInfo:v8];
    }
  }
}

- (BOOL)_canProceedWithTransactionForPass:(id)a3 selector:(SEL)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  transactionStatus = self->_transactionStatus;
  if (transactionStatus)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromSelector(a4);
        v12 = NSStringFromNPKExpressPassControllerStatus(self->_transactionStatus);
        v13 = [v6 uniqueID];
        v16 = 138412802;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: %@: We're in the middle of some other transaction (transactionStatus: %@). Suppressing event for pass %@.", &v16, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return transactionStatus == 0;
}

- (void)_startListeningForExpressNotifications
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __66__NPKExpressPassController__startListeningForExpressNotifications__block_invoke;
  v2[3] = &unk_279944F98;
  v2[4] = self;
  NPKGuaranteeMainThread(v2);
}

void __66__NPKExpressPassController__startListeningForExpressNotifications__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) distributedNotificationCenter];
  [v2 removeObserver:*(a1 + 32)];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %@ Start listening for express notifications", &v8, 0xCu);
    }
  }

  [*(a1 + 32) _startListeningForGenericNotifications];
  [*(a1 + 32) _startListeningForCarKeyNotifications];
  [*(a1 + 32) _startListeningForHomeKeyNotifications];
  [v2 addObserver:*(a1 + 32) selector:sel__handlePassesLibraryChangedNotification_ name:*MEMORY[0x277D386D0] object:0];
  [v2 addObserver:*(a1 + 32) selector:sel__handlePassesLibraryChangedNotification_ name:*MEMORY[0x277D386F0] object:0];
  [v2 addObserver:*(a1 + 32) selector:sel__handlePassesLibraryChangedNotification_ name:*MEMORY[0x277D386E8] object:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startListeningForGenericNotifications
{
  v3 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v3 addObserver:self selector:sel__handleEnterNearFieldNotification_ name:*MEMORY[0x277D385E8] object:0];

  v4 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v4 addObserver:self selector:sel__handleExpressTransactionStartNotification_ name:*MEMORY[0x277D38610] object:0];

  v5 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v5 addObserver:self selector:sel__handleExpressTransactionTimeOutNotification_ name:*MEMORY[0x277D38618] object:0];

  v6 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v6 addObserver:self selector:sel__handleExpressTransactionEndNotification_ name:*MEMORY[0x277D385F8] object:0];

  v7 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v7 addObserver:self selector:sel__handleExpressTransactionFailedNotification_ name:*MEMORY[0x277D38608] object:0];

  v8 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v8 addObserver:self selector:sel__handleExpressTransactionFailedNotification_ name:*MEMORY[0x277D38600] object:0];

  v9 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v9 addObserver:self selector:sel__handleExitNearFieldNotification_ name:*MEMORY[0x277D385F0] object:0];

  v10 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v10 addObserver:self selector:sel__handleStandaloneTransactionDoneNotification_ name:@"NPKDistributedNotificationStandaloneTransactionDone" object:0];
}

- (void)_startListeningForCarKeyNotifications
{
  v3 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v3 addObserver:self selector:sel__handleCarKeyExpressEnteredNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.express.enter" object:0];

  v4 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v4 addObserver:self selector:sel__handleCarKeyExpressExitedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.express.exit" object:0];

  v5 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v5 addObserver:self selector:sel__handleCarKeySessionEndedNotification_ name:@"com.apple.secureelementservice.dck.event.session.did.end" object:0];

  v6 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v6 addObserver:self selector:sel__handleCarKeySessionEndedWithErrorNotification_ name:@"com.apple.secureelementservice.dck.event.session.did.end.with.error" object:0];

  v7 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v7 addObserver:self selector:sel__handleCarKeyVehicleConnectedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.connect" object:0];

  v8 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v8 addObserver:self selector:sel__handleCarKeyVehicleDisconnectedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.disconnect" object:0];

  v9 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v9 addObserver:self selector:sel__handleCarKeyVehicleLockedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.lock" object:0];

  v10 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v10 addObserver:self selector:sel__handleCarKeyVehicleUnlockedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.unlock" object:0];

  v11 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v11 addObserver:self selector:sel__handleCarKeyRKEActionCompletedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.rke.action.complete" object:0];

  v12 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v12 addObserver:self selector:sel__handleCarKeyRangingStartedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.ranging.start" object:0];

  v13 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v13 addObserver:self selector:sel__handleCarKeyRangingEndedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.ranging.end" object:0];
}

- (void)_startListeningForHomeKeyNotifications
{
  v3 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v3 addObserver:self selector:sel__handleHomeKeyLockConnectedNotification_ name:@"com.apple.secureelementservice.acwg.event.did.connect" object:0];

  v4 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v4 addObserver:self selector:sel__handleHomeKeyLockDisconnectedNotification_ name:@"com.apple.secureelementservice.acwg.event.did.disconnect" object:0];

  v5 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [v5 addObserver:self selector:sel__handleHomeKeyLockStatusChangedNotification_ name:@"com.apple.secureelementservice.acwg.event.did.status.update" object:0];
}

- (void)_stopListeningForExpressNotifications
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __65__NPKExpressPassController__stopListeningForExpressNotifications__block_invoke;
  v2[3] = &unk_279944F98;
  v2[4] = self;
  NPKGuaranteeMainThread(v2);
}

void __65__NPKExpressPassController__stopListeningForExpressNotifications__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %@ Stop listening for express notifications", &v8, 0xCu);
    }
  }

  v6 = [*(a1 + 32) distributedNotificationCenter];
  [v6 removeObserver:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleEnterNearFieldNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  v5 = [v4 object];

  v6 = PKPassAutomaticSelectionTechnologyTypeForExpressEnteredObject();
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Received Enter Near Field Notification for automatic selection technology type %d", buf, 8u);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__NPKExpressPassController__handleEnterNearFieldNotification___block_invoke;
  v11[3] = &unk_279945830;
  v11[4] = self;
  v11[5] = v6;
  NPKGuaranteeMainThread(v11);
  v10 = *MEMORY[0x277D85DE8];
}

void __62__NPKExpressPassController__handleEnterNearFieldNotification___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _expressPassesInformationWithAutomaticSelectionTechnologyType:*(a1 + 40)];
  if ([v2 count] == 1)
  {
    v3 = [v2 anyObject];
    [*(a1 + 32) setCurrentTransactionExpressPassInformation:v3];
    goto LABEL_3;
  }

  v20 = [v2 count];
  v21 = pk_General_log();
  v22 = v21;
  if (v20 < 2)
  {
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (!v27)
    {
      goto LABEL_4;
    }

    v3 = pk_General_log();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *v29 = 138412290;
    *&v29[4] = v2;
    v24 = "Error: Received Enter Near Field Notification, but no express pass information: %@";
    v25 = v3;
    v26 = OS_LOG_TYPE_ERROR;
    goto LABEL_25;
  }

  v23 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (!v23)
  {
    goto LABEL_4;
  }

  v3 = pk_General_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 138412290;
    *&v29[4] = v2;
    v24 = "Notice: More than one express pass for this technology type: %@";
    v25 = v3;
    v26 = OS_LOG_TYPE_DEFAULT;
LABEL_25:
    _os_log_impl(&dword_25B300000, v25, v26, v24, v29, 0xCu);
  }

LABEL_3:

LABEL_4:
  if (![*(a1 + 32) _hasNoTransactionStartOrEndNotificationForTechnologyType:{*(a1 + 40), *v29}])
  {
    goto LABEL_27;
  }

  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) currentTransactionExpressPassInformation];
      *v29 = 134218242;
      *&v29[4] = v7;
      *&v29[12] = 2112;
      *&v29[14] = v8;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Technology type: %ld detected. Express passes information: %@", v29, 0x16u);
    }
  }

  v9 = [*(a1 + 32) currentTransactionExpressPassInformation];

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = [*(a1 + 32) currentTransactionExpressPassInformation];
  v11 = [v10 passUniqueIdentifier];

  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = [*(a1 + 32) expressPasses];
  v13 = [v12 objectForKey:v11];

  if (!v13)
  {

LABEL_27:
    [*(a1 + 32) _transitionToStatus:1 forExpressPass:0 paymentApplicationIdentifier:0];
    goto LABEL_28;
  }

  v14 = [*(a1 + 32) currentTransactionExpressPassInformation];
  v15 = [v14 paymentApplicationIdentifiers];

  if ([v15 count] >= 2)
  {
    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Warning: More than one express payment application identifier for a transit pass! This isn't supported.", v29, 2u);
      }
    }
  }

  v19 = [v15 firstObject];
  [*(a1 + 32) setCurrentApplicationIdentifier:v19];
  [*(a1 + 32) setCurrentSubCredentialIdentifier:0];
  [*(a1 + 32) _transitionToStatus:2 forExpressPass:v13 paymentApplicationIdentifier:v19];

LABEL_28:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleExpressTransactionStartNotification:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__NPKExpressPassController__handleExpressTransactionStartNotification___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  NPKGuaranteeMainThread(v6);
}

void __71__NPKExpressPassController__handleExpressTransactionStartNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) object];
  v10 = 0;
  v11 = 0;
  [v2 _parseExpressNotificationObject:v3 outApplicationIdentifier:&v11 outApplicationKeyIdentifier:&v10];
  v4 = v11;
  v5 = v10;

  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Received Express Transaction Start Notification for application identifier: %@, application key identifier: %@", buf, 0x16u);
    }
  }

  [*(a1 + 32) _onqueue_transactionStartedWithApplicationIdentifier:v4 applicationKeyIdentifier:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleExpressTransactionTimeOutNotification:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__NPKExpressPassController__handleExpressTransactionTimeOutNotification___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  NPKGuaranteeMainThread(v6);
}

void __73__NPKExpressPassController__handleExpressTransactionTimeOutNotification___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) object];
  v5 = (v19 + 5);
  v4 = v19[5];
  v16 = 0;
  obj = v4;
  [v2 _parseExpressNotificationObject:v3 outApplicationIdentifier:&obj outApplicationKeyIdentifier:&v16];
  objc_storeStrong(v5, obj);
  v6 = v16;

  if (!v19[5])
  {
    v7 = [*(a1 + 32) currentTransactionExpressPassInformation];
    v8 = v7 == 0;

    if (!v8)
    {
      v9 = [*(a1 + 32) currentTransactionExpressPassInformation];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __73__NPKExpressPassController__handleExpressTransactionTimeOutNotification___block_invoke_112;
      v15[3] = &unk_279948760;
      v15[4] = *(a1 + 32);
      v15[5] = &v18;
      [v9 enumerateCriteriaWithHandler:v15];
    }
  }

  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v19[5];
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received Express Transaction Time Out Notification for application identifier %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _onqueue_transactionEndedWithApplicationIdentifier:v19[5] applicationKeyIdentifier:v6];

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __73__NPKExpressPassController__handleExpressTransactionTimeOutNotification___block_invoke_112(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = a3;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(a1 + 32) _hasNoTransactionStartOrEndNotificationForTechnologyType:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "technologyType", v15)}])
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleExpressTransactionEndNotification:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__NPKExpressPassController__handleExpressTransactionEndNotification___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  NPKGuaranteeMainThread(v6);
}

void __69__NPKExpressPassController__handleExpressTransactionEndNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) object];
  v10 = 0;
  v11 = 0;
  [v2 _parseExpressNotificationObject:v3 outApplicationIdentifier:&v11 outApplicationKeyIdentifier:&v10];
  v4 = v11;
  v5 = v10;

  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Received Express Transaction End Notification for application identifier %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _onqueue_transactionEndedWithApplicationIdentifier:v4 applicationKeyIdentifier:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleExpressTransactionFailedNotification:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__NPKExpressPassController__handleExpressTransactionFailedNotification___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  NPKGuaranteeMainThread(v6);
}

void __72__NPKExpressPassController__handleExpressTransactionFailedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) object];
  v10 = 0;
  v11 = 0;
  [v2 _parseExpressNotificationObject:v3 outApplicationIdentifier:&v11 outApplicationKeyIdentifier:&v10];
  v4 = v11;
  v5 = v10;

  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Received Express Transaction Failed Notification for application identifier %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _onqueue_transactionFailedWithApplicationIdentifier:v4 applicationKeyIdentifier:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleExitNearFieldNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  v5 = [v4 object];

  v6 = PKPassAutomaticSelectionTechnologyTypeForExpressEnteredObject();
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Received Exit Near Field Notification for automatic selection technology type %d", buf, 8u);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__NPKExpressPassController__handleExitNearFieldNotification___block_invoke;
  v11[3] = &unk_279944F98;
  v11[4] = self;
  NPKGuaranteeMainThread(v11);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __61__NPKExpressPassController__handleExitNearFieldNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[3] == 2)
  {
    v3 = [v2 currentApplicationIdentifier];

    if (v3)
    {
      v4 = pk_General_log();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

      if (v5)
      {
        v6 = pk_General_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*(a1 + 32) currentTransactionPass];
          v13 = 138412290;
          v14 = v7;
          _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Received Exit Near Field Notification, but didn't finish transaction with applicationIdentifier:%@ assume it fails.", &v13, 0xCu);
        }
      }

      v8 = *(a1 + 32);
      v9 = [v8 currentApplicationIdentifier];
      v10 = [*(a1 + 32) currentSubCredentialIdentifier];
      [v8 _onqueue_transactionFailedWithApplicationIdentifier:v9 applicationKeyIdentifier:v10];
    }
  }

  [*(a1 + 32) _transitionToStatus:0 forExpressPass:0 paymentApplicationIdentifier:0];
  [*(a1 + 32) setCurrentTransactionExpressPassInformation:0];
  [*(a1 + 32) setCurrentApplicationIdentifier:0];
  result = [*(a1 + 32) setCurrentSubCredentialIdentifier:0];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_onqueue_transactionStartedWithApplicationIdentifier:(id)a3 applicationKeyIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(NPKExpressPassController *)self setCurrentApplicationIdentifier:v6];
  [(NPKExpressPassController *)self setCurrentSubCredentialIdentifier:v7];
  v8 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:v6 transactionApplicationKeyIdentifier:v7];

  [(NPKExpressPassController *)self _transitionToStatus:2 forExpressPass:v8 paymentApplicationIdentifier:v6];
  if (!v8)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: Received Express Transaction Started Notification for application identifier %@, but no pass.", &v13, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_transactionEndedWithApplicationIdentifier:(id)a3 applicationKeyIdentifier:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [(NPKExpressPassController *)self currentApplicationIdentifier];
  v9 = v6;
  v10 = v8;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    if (!v9 || !v10)
    {

      goto LABEL_15;
    }

    v12 = [v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  if ([v7 length])
  {
LABEL_15:

    goto LABEL_16;
  }

  v13 = [(NPKExpressPassController *)self currentSubCredentialIdentifier];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(NPKExpressPassController *)self currentSubCredentialIdentifier];

    v16 = pk_General_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = pk_General_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(NPKExpressPassController *)self currentSubCredentialIdentifier];
        v25 = 138412802;
        v26 = v19;
        v27 = 2112;
        v28 = v9;
        v29 = 2112;
        v30 = v15;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Using the subcredential identifier (%@) from the start transaction event for %@ since the transaction end event didn't include it (%@)", &v25, 0x20u);
      }
    }

    v7 = v15;
  }

LABEL_16:
  v20 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:v9 transactionApplicationKeyIdentifier:v7];
  [(NPKExpressPassController *)self _transitionToStatus:4 forExpressPass:v20 paymentApplicationIdentifier:v9];
  if (!v20)
  {
    v21 = pk_General_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      v23 = pk_General_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412290;
        v26 = v9;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_ERROR, "Error: Received Express Transaction Ended Notification for application identifier %@, but no pass.", &v25, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_transactionFailedWithApplicationIdentifier:(id)a3 applicationKeyIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:v6 transactionApplicationKeyIdentifier:v7];

  [(NPKExpressPassController *)self _transitionToStatus:3 forExpressPass:v8 paymentApplicationIdentifier:v6];
  if (!v8)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: Received Express Transaction Failed Notification for application identifier %@, but no pass.", &v13, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeyExpressEnteredNotification:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  kdebug_trace();
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Express Entered Notification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeyExpressExitedNotification:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  kdebug_trace();
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Express Exited Notification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeySessionEndedNotification:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Session Ended Notification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeySessionEndedWithErrorNotification:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Session Ended with Error Notification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeyVehicleConnectedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v12 = 0;
  v13 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:v5 outApplicationIdentifier:&v13 outApplicationKeyIdentifier:&v12];
  v6 = v13;
  v7 = v12;

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Vehicle Connected Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeyVehicleDisconnectedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v12 = 0;
  v13 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:v5 outApplicationIdentifier:&v13 outApplicationKeyIdentifier:&v12];
  v6 = v13;
  v7 = v12;

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Vehicle Disconnected Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeyVehicleLockedNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  v5 = [v4 object];
  v17 = 0;
  v18 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:v5 outApplicationIdentifier:&v18 outApplicationKeyIdentifier:&v17];
  v6 = v18;
  v7 = v17;

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = v4;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Vehicle Locked Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__NPKExpressPassController__handleCarKeyVehicleLockedNotification___block_invoke;
  v14[3] = &unk_279945880;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  NPKGuaranteeMainThread(v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeyVehicleUnlockedNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  v5 = [v4 object];
  v17 = 0;
  v18 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:v5 outApplicationIdentifier:&v18 outApplicationKeyIdentifier:&v17];
  v6 = v18;
  v7 = v17;

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = v4;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Vehicle Unlocked Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__NPKExpressPassController__handleCarKeyVehicleUnlockedNotification___block_invoke;
  v14[3] = &unk_279945880;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  NPKGuaranteeMainThread(v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleStandaloneTransactionDoneNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  v5 = [v4 object];
  v17 = 0;
  v18 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:v5 outApplicationIdentifier:&v18 outApplicationKeyIdentifier:&v17];
  v6 = v18;
  v7 = v17;

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = v4;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Generic Transaction Done Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__NPKExpressPassController__handleStandaloneTransactionDoneNotification___block_invoke;
  v14[3] = &unk_279945880;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  NPKGuaranteeMainThread(v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeyRKEActionCompletedNotification:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  v5 = [v4 object];

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  [(NPKExpressPassController *)self _parseRKEActionNotificationObject:v5 outApplicationIdentifier:&v35 outApplicationKeyIdentifier:&v34 outFunctionNumber:&v33 outActionNumber:&v32 outExecutionStatusNumber:&v31 outErrorMessage:&v30];
  v6 = v35;
  v7 = v34;
  v8 = v33;
  v9 = v32;
  v10 = v31;
  v11 = v30;

  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      v37 = v6;
      v38 = 2112;
      v39 = v7;
      v40 = 2112;
      v41 = v8;
      v42 = 2112;
      v43 = v9;
      v44 = 2112;
      v45 = v10;
      v46 = 2112;
      v47 = v11;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key RKE Action Completed Notification for...\nAID: %@\nkey ID: %@\nfunctionNumber: %@\nactionNumber: %@\nexecutionStatusNumber: %@\nerrorMessage: %@", buf, 0x3Eu);
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__NPKExpressPassController__handleCarKeyRKEActionCompletedNotification___block_invoke;
  v22[3] = &unk_279948788;
  v23 = v11;
  v24 = v10;
  v25 = self;
  v26 = v9;
  v27 = v8;
  v28 = v6;
  v29 = v7;
  v15 = v7;
  v16 = v6;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  NPKGuaranteeMainThread(v22);

  v21 = *MEMORY[0x277D85DE8];
}

void __72__NPKExpressPassController__handleCarKeyRKEActionCompletedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) length])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v19 = 138412290;
        v20 = v5;
        v6 = "Error: RKE action failed with error: %@";
LABEL_12:
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, v6, &v19, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  LOBYTE(v7) = [v7 isEqualToNumber:v8];

  if ((v7 & 1) == 0)
  {
    v15 = pk_General_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 40);
        v19 = 138412290;
        v20 = v17;
        v6 = "Error: RKE action completed with unexpected execution status number! Received: %@; expected: 0";
        goto LABEL_12;
      }

LABEL_13:
    }

LABEL_14:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *MEMORY[0x277D85DE8];

  [v9 _onqueue_transactionCompletedForRKEAction:v10 function:v11 withApplicationIdentifier:v12 applicationKeyIdentifier:v13];
}

- (void)_handleCarKeyRangingStartedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v12 = 0;
  v13 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:v5 outApplicationIdentifier:&v13 outApplicationKeyIdentifier:&v12];
  v6 = v13;
  v7 = v12;

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Started Ranging Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleCarKeyRangingEndedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v12 = 0;
  v13 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:v5 outApplicationIdentifier:&v13 outApplicationKeyIdentifier:&v12];
  v6 = v13;
  v7 = v12;

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Ended Ranging Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleHomeKeyLockConnectedNotification:(id)a3
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Received lock connected notification.", v6, 2u);
    }
  }
}

- (void)_handleHomeKeyLockDisconnectedNotification:(id)a3
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Received lock disconnected notification.", v6, 2u);
    }
  }
}

- (void)_handleHomeKeyLockStatusChangedNotification:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  [(NPKExpressPassController *)self _parseHomeKeyUWBExpressNotificationObject:v5 outApplicationIdentifier:&v34 outApplicationKeyIdentifier:&v33 outReaderIdentifier:&v32 outTimestamp:&v31 outTransactionLockStatus:&v30 outLockOperationSource:&v29];
  v6 = v34;
  v7 = v33;
  v8 = v32;
  v9 = v31;
  v10 = v30;
  v11 = v29;

  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v36 = v4;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v7;
      v41 = 2112;
      v42 = v10;
      v43 = 2112;
      v44 = v8;
      v45 = 2112;
      v46 = v9;
      v47 = 2112;
      v48 = v11;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Received home key status changed notification: %@ for AID: %@ key ID: %@ lock status: %@ reader ID: %@ timestamp %@ operation source: %@", buf, 0x48u);
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__NPKExpressPassController__handleHomeKeyLockStatusChangedNotification___block_invoke;
  v22[3] = &unk_279948788;
  v22[4] = self;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v10;
  v27 = v9;
  v28 = v11;
  v15 = v11;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v19 = v7;
  v20 = v6;
  NPKGuaranteeMainThread(v22);

  v21 = *MEMORY[0x277D85DE8];
}

void __72__NPKExpressPassController__handleHomeKeyLockStatusChangedNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _queue_expressPassForTransactionApplicationIdentifier:*(a1 + 40) transactionApplicationKeyIdentifier:*(a1 + 48)];
  v3 = [[NPKExpressUWBTransactionInfo alloc] initWithReaderID:*(a1 + 56) lockStatus:*(a1 + 64) timestamp:*(a1 + 72)];
  v4 = [*(a1 + 32) _transactionEventFromLockStatus:*(a1 + 64)];
  v5 = [*(a1 + 32) _operationSourceFromRawValue:*(a1 + 80)];
  if (v4 == 1 && v5 == 4)
  {
    [*(a1 + 32) _transitionToStandaloneTransactionEvent:1 forExpressPass:v2 withExpressUWBInfo:v3];
  }

  else
  {
    v7 = v5;
    v8 = @"Locked";
    if (v4 == 2)
    {
      v8 = @"Generic";
    }

    if (v4 == 1)
    {
      v8 = @"Unlocked";
    }

    v9 = v8;
    if (v7 > 7)
    {
      v10 = @"SourceUnknown";
    }

    else
    {
      v10 = off_2799488E8[v7];
    }

    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Ignoring UWB event %@ with operation source %@", &v15, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_transactionCompletedForStandaloneTransactionEvent:(unint64_t)a3 withApplicationIdentifier:(id)a4 applicationKeyIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:v9 transactionApplicationKeyIdentifier:v8];

  [(NPKExpressPassController *)self _transitionToStandaloneTransactionEvent:a3 forExpressPass:v10];
}

- (void)_onqueue_transactionCompletedForRKEAction:(id)a3 function:(id)a4 withApplicationIdentifier:(id)a5 applicationKeyIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v14 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:v11 transactionApplicationKeyIdentifier:v10];

  [(NPKExpressPassController *)self _transitionToCompletedRKEAction:v13 function:v12 forExpressPass:v14];
}

- (void)_handlePassesLibraryChangedNotification:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Received Library Passes Changed Notification %@", &v8, 0xCu);
    }
  }

  [(NPKExpressPassController *)self updateExpressPasses];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_queue_expressPassForTransactionApplicationIdentifier:(id)a3 transactionApplicationKeyIdentifier:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v23 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__14;
  v38 = __Block_byref_object_dispose__14;
  v39 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = self;
  v6 = [(NPKExpressPassController *)self expressPassConfigurations];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v7)
  {
    v8 = *v31;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = [*(*(&v30 + 1) + 8 * v9) passInformation];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __118__NPKExpressPassController__queue_expressPassForTransactionApplicationIdentifier_transactionApplicationKeyIdentifier___block_invoke;
      v25[3] = &unk_2799487B0;
      v11 = v10;
      v26 = v11;
      v27 = v24;
      v28 = v23;
      v29 = &v34;
      [v11 enumerateCriteriaWithHandler:v25];
      v12 = v35[5] == 0;

      if (!v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v30 objects:v44 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v35[5])
  {
    v13 = [(NPKExpressPassController *)v22 expressPasses];
    v14 = [v35[5] passUniqueIdentifier];
    v15 = [v13 objectForKey:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v15 uniqueID];
      *buf = 138412546;
      v41 = v24;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Transaction application identifier: %@ express pass unique ID %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v34, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

void __118__NPKExpressPassController__queue_expressPassForTransactionApplicationIdentifier_transactionApplicationKeyIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) paymentApplicationIdentifiers];
  v7 = [v6 containsObject:*(a1 + 40)];

  if (v7)
  {
    v8 = [*(a1 + 32) subcredentialCredentialIdentifiers];
    v9 = [v8 objectForKey:*(a1 + 40)];

    if (!*(a1 + 48) || PKEqualObjects())
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
      *a4 = 1;
    }
  }
}

- (void)updateExpressPasses
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__NPKExpressPassController_updateExpressPasses__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)updateExpressPassesSynchronous
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKExpressPassController_updateExpressPassesSynchronous__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_updateExpressPasses
{
  v2 = self;
  v56 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [(NPKExpressPassController *)v2 paymentService];
  v4 = [v3 expressPassConfigurations];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NPKExpressPassController *)v2 expressPassConfigurations];
      *buf = 138412546;
      v50 = v4;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Updating current express passes with new configurations: %@ (previous: %@)", buf, 0x16u);
    }
  }

  v38 = [MEMORY[0x277CBEB38] dictionary];
  if (![v4 count])
  {
    [(NPKExpressPassController *)v2 _stopListeningForExpressNotifications];
LABEL_29:
    [(NPKExpressPassController *)v2 _internalQueue_stopFieldDetector];
    goto LABEL_30;
  }

  [(NPKExpressPassController *)v2 _startListeningForExpressNotifications];
  v9 = [(NPKExpressPassController *)v2 passLibrary];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (!v11)
  {

    goto LABEL_29;
  }

  v12 = v11;
  v35 = v4;
  v36 = v2;
  v37 = v3;
  v13 = 0;
  v40 = *v46;
  obj = v10;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v46 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v45 + 1) + 8 * i);
      v16 = [v15 passUniqueIdentifier];
      if (v16)
      {
        v17 = v9;
        v18 = [v9 passWithUniqueID:v16];
        v19 = pk_Payment_log();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

        if (v20)
        {
          v21 = pk_Payment_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v18 uniqueID];
            *buf = 138412802;
            v50 = v18;
            v51 = 2112;
            v52 = v22;
            v53 = 2112;
            v54 = v15;
            _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Fetched pass %@ with Unique Identifier %@ for express pass configuration %@", buf, 0x20u);
          }
        }

        v23 = [v18 paymentPass];
        v24 = [v23 cardType] == 3;

        if (v18)
        {
          [v38 setObject:v18 forKey:v16];
          v9 = v17;
        }

        else
        {
          v25 = pk_Payment_log();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

          v9 = v17;
          if (v26)
          {
            v27 = pk_Payment_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v15;
              _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_ERROR, "Error: Express pass controller could not find pass for express pass configuration: %@", buf, 0xCu);
            }
          }
        }

        v13 |= v24;
      }
    }

    v12 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  }

  while (v12);

  v2 = v36;
  v3 = v37;
  v4 = v35;
  if ((v13 & 1) == 0)
  {
    goto LABEL_29;
  }

  [(NPKExpressPassController *)v36 _internalQueue_startFieldDetector];
LABEL_30:
  v28 = MEMORY[0x277CBEB98];
  v29 = [v38 allValues];
  v30 = [v28 setWithArray:v29];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __62__NPKExpressPassController__internalQueue_updateExpressPasses__block_invoke;
  v41[3] = &unk_279946260;
  v41[4] = v2;
  v42 = v4;
  v43 = v30;
  v44 = v38;
  v31 = v38;
  v32 = v30;
  v33 = v4;
  NPKGuaranteeMainThread(v41);

  v34 = *MEMORY[0x277D85DE8];
}

void __62__NPKExpressPassController__internalQueue_updateExpressPasses__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) expressPassConfigurations];
  v3 = *(a1 + 40);
  if (PKEqualObjects())
  {
    v4 = [*(a1 + 32) expressPasses];
    v5 = *(a1 + 48);
    v6 = PKEqualObjects();

    if (v6)
    {
      return;
    }
  }

  else
  {
  }

  [*(a1 + 32) setExpressPassConfigurations:*(a1 + 40)];
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);

  [v8 setExpressPasses:v7];
}

- (id)_expressPassesInformationWithAutomaticSelectionTechnologyType:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = [MEMORY[0x277CBEB58] set];
  v5 = [(NPKExpressPassController *)self expressPassConfigurations];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__NPKExpressPassController__expressPassesInformationWithAutomaticSelectionTechnologyType___block_invoke;
  v8[3] = &unk_279948800;
  v8[4] = &v9;
  v8[5] = a3;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __90__NPKExpressPassController__expressPassesInformationWithAutomaticSelectionTechnologyType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 passInformation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__NPKExpressPassController__expressPassesInformationWithAutomaticSelectionTechnologyType___block_invoke_2;
  v7[3] = &unk_2799487D8;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v8 = v3;
  v6 = v3;
  [v4 enumerateCriteriaWithHandler:v7];
}

void __90__NPKExpressPassController__expressPassesInformationWithAutomaticSelectionTechnologyType___block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 supportsExpress] && objc_msgSend(v11, "technologyType") == a1[6])
        {
          v12 = a1[4];
          v13 = *(*(a1[5] + 8) + 40);
          v14 = [v12 passInformation];
          [v13 addObject:v14];

          *a4 = 1;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_queue_siblingExpressPassesForExpressPass:(id)a3 applicationIdentifier:(id)a4
{
  v94 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v53 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__14;
  v83 = __Block_byref_object_dispose__14;
  v84 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v54 = self;
  v7 = [(NPKExpressPassController *)self expressPassConfigurations];
  v8 = [v7 countByEnumeratingWithState:&v75 objects:v93 count:16];
  if (v8)
  {
    v9 = *v76;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v76 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v75 + 1) + 8 * i) passInformation];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __92__NPKExpressPassController__queue_siblingExpressPassesForExpressPass_applicationIdentifier___block_invoke;
        v71[3] = &unk_279948828;
        v12 = v11;
        v72 = v12;
        v73 = v53;
        v74 = &v79;
        [v12 enumerateCriteriaWithHandler:v71];
      }

      v8 = [v7 countByEnumeratingWithState:&v75 objects:v93 count:16];
    }

    while (v8);
  }

  v48 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v14 = v80[5];
  v15 = [v14 countByEnumeratingWithState:&v67 objects:v92 count:16];
  if (v15)
  {
    v16 = *v68;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v68 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v67 + 1) + 8 * j);
        if ([v18 supportsExpress] && objc_msgSend(v18, "supportsInSessionExpress"))
        {
          if ([v18 technologyType] != 4)
          {
            v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "technologyType")}];
            [v13 addObject:v22];
            goto LABEL_21;
          }

          v19 = [v18 TCIs];

          if (v19)
          {
            v20 = [v18 TCIs];
            [v48 unionSet:v20];
          }

          v21 = [v18 primaryTCIs];

          if (v21)
          {
            v22 = [v18 primaryTCIs];
            [v48 unionSet:v22];
LABEL_21:

            continue;
          }
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v67 objects:v92 count:16];
    }

    while (v15);
  }

  v23 = [(NPKExpressPassController *)v54 _expressPassesInformationWithTCIs:v48];
  v24 = [MEMORY[0x277CBEB58] set];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v23;
  v25 = [obj countByEnumeratingWithState:&v63 objects:v91 count:16];
  if (v25)
  {
    v26 = *v64;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v64 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = [*(*(&v63 + 1) + 8 * k) passUniqueIdentifier];
        if (v28)
        {
          v29 = [v6 uniqueID];
          v30 = [v28 isEqualToString:v29];

          if ((v30 & 1) == 0)
          {
            v31 = [(NSDictionary *)v54->_expressPasses objectForKey:v28];
            if (v31)
            {
              [v24 addObject:v31];
            }
          }
        }
      }

      v25 = [obj countByEnumeratingWithState:&v63 objects:v91 count:16];
    }

    while (v25);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v47 = v13;
  v50 = [v47 countByEnumeratingWithState:&v59 objects:v90 count:16];
  if (v50)
  {
    v49 = *v60;
    do
    {
      for (m = 0; m != v50; ++m)
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v32 = *(*(&v59 + 1) + 8 * m);
        v33 = -[NPKExpressPassController _expressPassInformationWithTechnologyType:](v54, "_expressPassInformationWithTechnologyType:", [v32 integerValue]);
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v34 = v33;
        v35 = [v34 countByEnumeratingWithState:&v55 objects:v89 count:16];
        if (v35)
        {
          v36 = *v56;
          do
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v56 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = [*(*(&v55 + 1) + 8 * n) passUniqueIdentifier];
              if (v38)
              {
                v39 = [v6 uniqueID];
                v40 = [v38 isEqualToString:v39];

                if ((v40 & 1) == 0)
                {
                  v41 = pk_General_log();
                  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

                  if (v42)
                  {
                    v43 = pk_General_log();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v86 = v32;
                      v87 = 2112;
                      v88 = v38;
                      _os_log_impl(&dword_25B300000, v43, OS_LOG_TYPE_DEFAULT, "Notice: Found technology type %@ sibling express pass %@", buf, 0x16u);
                    }
                  }

                  v44 = [(NSDictionary *)v54->_expressPasses objectForKey:v38];
                  if (v44)
                  {
                    [v24 addObject:v44];
                  }
                }
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v55 objects:v89 count:16];
          }

          while (v35);
        }
      }

      v50 = [v47 countByEnumeratingWithState:&v59 objects:v90 count:16];
    }

    while (v50);
  }

  _Block_object_dispose(&v79, 8);
  v45 = *MEMORY[0x277D85DE8];

  return v24;
}

void __92__NPKExpressPassController__queue_siblingExpressPassesForExpressPass_applicationIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(a1 + 32) paymentApplicationIdentifiers];
  v8 = [v7 containsObject:*(a1 + 40)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)_expressPassesInformationWithTCIs:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = [MEMORY[0x277CBEB58] set];
  v5 = [(NPKExpressPassController *)self expressPassConfigurations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__NPKExpressPassController__expressPassesInformationWithTCIs___block_invoke;
  v9[3] = &unk_279948878;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__NPKExpressPassController__expressPassesInformationWithTCIs___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 passInformation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NPKExpressPassController__expressPassesInformationWithTCIs___block_invoke_2;
  v7[3] = &unk_279948850;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v8 = v4;
  v6 = v3;
  [v6 enumerateCriteriaWithHandler:v7];
}

void __62__NPKExpressPassController__expressPassesInformationWithTCIs___block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 supportsExpress] && objc_msgSend(v11, "technologyType") == 4)
        {
          v12 = [v11 TCIs];
          if ([v12 intersectsSet:a1[4]])
          {

LABEL_14:
            [*(*(a1[6] + 8) + 40) addObject:a1[5]];
            *a4 = 1;
            goto LABEL_15;
          }

          v13 = [v11 primaryTCIs];
          v14 = [v13 intersectsSet:a1[4]];

          if (v14)
          {
            goto LABEL_14;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_expressPassInformationWithTechnologyType:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = [MEMORY[0x277CBEB58] set];
  v5 = [(NPKExpressPassController *)self expressPassConfigurations];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__NPKExpressPassController__expressPassInformationWithTechnologyType___block_invoke;
  v8[3] = &unk_279948800;
  v8[4] = &v9;
  v8[5] = a3;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __70__NPKExpressPassController__expressPassInformationWithTechnologyType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 passInformation];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__NPKExpressPassController__expressPassInformationWithTechnologyType___block_invoke_2;
  v6[3] = &unk_2799487D8;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v7 = v3;
  v5 = v3;
  [v5 enumerateCriteriaWithHandler:v6];
}

void __70__NPKExpressPassController__expressPassInformationWithTechnologyType___block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 supportsExpress] && objc_msgSend(v11, "technologyType") == a1[6])
        {
          [*(*(a1[5] + 8) + 40) addObject:a1[4]];
          *a4 = 1;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_transactionEventFromLockStatus:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:0];
  if ([v3 isEqualToNumber:v4])
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:80];
  v6 = [v3 isEqualToNumber:v5];

  if (v6)
  {
    goto LABEL_4;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:1];
  if ([v3 isEqualToNumber:v10])
  {

LABEL_9:
    v7 = 1;
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:81];
  v12 = [v3 isEqualToNumber:v11];

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = pk_General_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_General_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: Got lock status changed for unexpected lock status: %@", &v16, 0xCu);
    }
  }

  v7 = 2;
LABEL_5:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)_operationSourceFromRawValue:(id)a3
{
  result = [a3 integerValue];
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

- (void)_parseExpressNotificationObject:(id)a3 outApplicationIdentifier:(id *)a4 outApplicationKeyIdentifier:(id *)a5
{
  v7 = a3;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 componentsSeparatedByString:@":"];
    *a4 = [v8 firstObject];
    if ([v8 count] == 2)
    {
      v9 = [v8 lastObject];
      *a5 = v9;
    }

    else
    {
      *a5 = 0;
    }
  }

  else
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Expected to be provided a notification object, but instead found nil!", v13, 2u);
      }
    }
  }
}

- (void)_parseHomeKeyUWBExpressNotificationObject:(id)a3 outApplicationIdentifier:(id *)a4 outApplicationKeyIdentifier:(id *)a5 outReaderIdentifier:(id *)a6 outTimestamp:(id *)a7 outTransactionLockStatus:(id *)a8 outLockOperationSource:(id *)a9
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 componentsSeparatedByString:@":"];
      v16 = pk_General_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = pk_General_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138412290;
          v27 = v15;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Will parse notification %@", &v26, 0xCu);
        }
      }

      if ([v15 count] <= 5)
      {
        v23 = pk_General_log();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

        if (!v24)
        {
          goto LABEL_13;
        }

        v19 = pk_General_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138412290;
          v27 = v15;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: Got malformed event from sesd. %@", &v26, 0xCu);
        }
      }

      else
      {
        *a4 = [v15 objectAtIndex:0];
        *a5 = [v15 objectAtIndex:1];
        v19 = [v15 objectAtIndex:2];
        *a6 = [MEMORY[0x277CBEA90] dataWithHexEncodedString:v19];
        v20 = [v15 objectAtIndex:3];
        *a7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "integerValue")}];
        v21 = [v15 objectAtIndex:4];
        *a8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v21, "integerValue")}];
        v22 = [v15 objectAtIndex:5];
        *a9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "integerValue")}];
      }

LABEL_13:
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_parseRKEActionNotificationObject:(id)a3 outApplicationIdentifier:(id *)a4 outApplicationKeyIdentifier:(id *)a5 outFunctionNumber:(id *)a6 outActionNumber:(id *)a7 outExecutionStatusNumber:(id *)a8 outErrorMessage:(id *)a9
{
  v14 = a3;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 componentsSeparatedByString:@":"];
      *a4 = [v15 firstObject];
      if ([v15 count]<= 1)
      {
        *a5 = 0;
      }

      else
      {
        v16 = [v15 objectAtIndex:1];
        *a5 = v16;
      }

      if ([v15 count]>= 3)
      {
        v19 = [v15 objectAtIndex:2];
        if (v19)
        {
          v20 = v19;
          *a6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "integerValue")}];
        }
      }

      if ([v15 count]>= 4)
      {
        v21 = [v15 objectAtIndex:3];
        if (v21)
        {
          v22 = v21;
          *a7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v21, "integerValue")}];
        }
      }

      if ([v15 count]>= 5)
      {
        v23 = [v15 objectAtIndex:4];
        if (v23)
        {
          v24 = v23;
          *a8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "integerValue")}];
        }
      }

      if ([v15 count]< 6)
      {
        v25 = 0;
      }

      else
      {
        v25 = [v15 objectAtIndex:5];
      }

      v26 = v25;
      *a9 = v26;

LABEL_22:
      goto LABEL_23;
    }
  }

  v17 = pk_Payment_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: Expected to be provided a notification object, but instead found nil!", v27, 2u);
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)_internalQueue_startFieldDetector
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
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Starting field detector for terminal-requested auth", v8, 2u);
    }
  }

  if (!self->_fieldDetector)
  {
    v6 = objc_alloc_init(MEMORY[0x277D37EE0]);
    fieldDetector = self->_fieldDetector;
    self->_fieldDetector = v6;

    [(PKFieldDetector *)self->_fieldDetector registerObserver:self];
  }
}

- (void)_internalQueue_stopFieldDetector
{
  dispatch_assert_queue_V2(self->_internalQueue);
  [(PKFieldDetector *)self->_fieldDetector unregisterObserver:self];
  fieldDetector = self->_fieldDetector;
  self->_fieldDetector = 0;
}

- (void)fieldDetectorDidEnterField:(id)a3 withProperties:(id)a4
{
  v5 = a4;
  v6 = [(NPKExpressPassController *)self passLibrary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__NPKExpressPassController_fieldDetectorDidEnterField_withProperties___block_invoke;
  v8[3] = &unk_2799488A0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 getMetadataForFieldWithProperties:v7 withHandler:v8];
}

void __70__NPKExpressPassController_fieldDetectorDidEnterField_withProperties___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 shouldIgnoreField] & 1) == 0 && objc_msgSend(*(a1 + 32), "authenticationRequired") && objc_msgSend(*(a1 + 32), "terminalType") == 3)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) TCIs];
    v8 = [v5 setWithArray:v7];
    v9 = [v6 _expressPassesInformationWithTCIs:v8];

    if ([v9 count])
    {
      if ([v9 count] >= 2)
      {
        v10 = pk_Payment_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

        if (v11)
        {
          v12 = pk_Payment_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Multiple express passes match TCIs for transient authentication required field detect event", buf, 2u);
          }
        }
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __70__NPKExpressPassController_fieldDetectorDidEnterField_withProperties___block_invoke_126;
      v18[3] = &unk_2799454E0;
      v13 = v9;
      v14 = *(a1 + 40);
      v19 = v13;
      v20 = v14;
      NPKGuaranteeMainThread(v18);
      v15 = v19;
    }

    else
    {
      v16 = pk_Payment_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (!v17)
      {
        goto LABEL_13;
      }

      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: No express passes match TCIs for transient authentication required field detect event", buf, 2u);
      }
    }

LABEL_13:
  }
}

void __70__NPKExpressPassController_fieldDetectorDidEnterField_withProperties___block_invoke_126(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) anyObject];
  v3 = [*(a1 + 40) expressPasses];
  v4 = [v2 passUniqueIdentifier];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 expressPassController:*(a1 + 40) didReceiveAuthenticationRequestForPass:v5];
    }
  }

  else
  {
    v7 = pk_Payment_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v2 passUniqueIdentifier];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Got on-device authentication required for unique ID %@, but no express pass!", &v12, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NPKExpressPassControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end