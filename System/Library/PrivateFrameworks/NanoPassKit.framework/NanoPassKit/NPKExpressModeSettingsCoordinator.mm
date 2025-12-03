@interface NPKExpressModeSettingsCoordinator
- (BOOL)_isExpressMode:(unint64_t)mode supportedForPassWithUniqueID:(id)d;
- (BOOL)_isNFCExpressModeSupportedForPass:(id)pass;
- (BOOL)inSessionExpressEnabledForPass:(id)pass;
- (BOOL)isExpressMode:(unint64_t)mode supportedForPass:(id)pass;
- (BOOL)needUpgradeForPass:(id)pass;
- (NPKExpressModeSettingsCoordinator)initWithExpressPassController:(id)controller workQueue:(id)queue callbackQueue:(id)callbackQueue;
- (NPKExpressModeSettingsCoordinatorDelegate)delegate;
- (id)_expressStateForPassWithUniqueID:(id)d;
- (id)_expressStateForPassWithUniqueID:(id)d fromControllerState:(id)state;
- (id)_newExpressStateForMode:(unint64_t)mode pass:(id)pass enable:(BOOL)enable;
- (id)eligibleExpressUpgradeRequestsForPass:(id)pass;
- (id)expressAppletIdentifiersForPass:(id)pass;
- (id)expressStateForPass:(id)pass;
- (void)_checkForConflictsInEnablingExpressForPass:(id)pass completion:(id)completion;
- (void)_enableExpressForPass:(id)pass mode:(unint64_t)mode withCredential:(id)credential;
- (void)_handleExpressStateChange;
- (void)_handleFailedEnableExpress;
- (void)_handleFailedPassUpgrade;
- (void)_handleFailedUserAuthentication;
- (void)_handleSuccessForPass:(id)pass;
- (void)_handleSuccessfulUserAuthenticationWithCredential:(id)credential forPass:(id)pass withExpressMode:(unint64_t)mode;
- (void)_handleUserCancelled;
- (void)_invokeCompletionHandlerWithSuccess:(BOOL)success;
- (void)_requestUserAuthenticationForPass:(id)pass withExpressMode:(unint64_t)mode;
- (void)_upgradeExpressModeForPass:(id)pass withCredential:(id)credential;
- (void)disableExpressForPass:(id)pass mode:(unint64_t)mode completionHandler:(id)handler;
- (void)enableExpressForPass:(id)pass mode:(unint64_t)mode completionHandler:(id)handler;
@end

@implementation NPKExpressModeSettingsCoordinator

- (NPKExpressModeSettingsCoordinator)initWithExpressPassController:(id)controller workQueue:(id)queue callbackQueue:(id)callbackQueue
{
  v37 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  v35.receiver = self;
  v35.super_class = NPKExpressModeSettingsCoordinator;
  v11 = [(NPKExpressModeSettingsCoordinator *)&v35 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_expressPassController, controller);
    objc_storeStrong(&v12->_workQueue, queue);
    objc_storeStrong(&v12->_callbackQueue, callbackQueue);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    previousPassStates = v12->_previousPassStates;
    v12->_previousPassStates = dictionary;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    enabledExpressPasses = [controllerCopy enabledExpressPasses];
    allValues = [enabledExpressPasses allValues];

    v17 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v17)
    {
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(allValues);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          passUniqueIdentifier = [v20 passUniqueIdentifier];
          v22 = [[NPKExpressState alloc] initWithExpressPassConfiguration:v20];
          [(NSMutableDictionary *)v12->_previousPassStates setObject:v22 forKey:passUniqueIdentifier];
        }

        v17 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v17);
    }

    objc_initWeak(&location, v12);
    uTF8String = [*MEMORY[0x277D385D0] UTF8String];
    workQueue = v12->_workQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __91__NPKExpressModeSettingsCoordinator_initWithExpressPassController_workQueue_callbackQueue___block_invoke;
    handler[3] = &unk_279944F20;
    objc_copyWeak(&v29, &location);
    notify_register_dispatch(uTF8String, &v12->_notifyToken, workQueue, handler);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

void __91__NPKExpressModeSettingsCoordinator_initWithExpressPassController_workQueue_callbackQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[8] = 0;
    v2 = WeakRetained;
    [WeakRetained _handleExpressStateChange];
    WeakRetained = v2;
  }
}

- (BOOL)isExpressMode:(unint64_t)mode supportedForPass:(id)pass
{
  passCopy = pass;
  v7 = [(NPKExpressModeSettingsCoordinator *)self _isNFCExpressModeSupportedForPass:passCopy];
  paymentPass = [passCopy paymentPass];

  npkSupportsBluetooth = [paymentPass npkSupportsBluetooth];
  if (mode == 2)
  {
    v10 = npkSupportsBluetooth;
  }

  else
  {
    v10 = v7;
  }

  if (mode == 3)
  {
    return v7 & npkSupportsBluetooth;
  }

  else
  {
    return v10;
  }
}

- (BOOL)inSessionExpressEnabledForPass:(id)pass
{
  passCopy = pass;
  expressPassController = self->_expressPassController;
  secureElementPass = [passCopy secureElementPass];
  v7 = [(PKExpressPassController *)expressPassController existingExpressPassConfigurationForPass:secureElementPass];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  passInformation = [v7 passInformation];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__NPKExpressModeSettingsCoordinator_inSessionExpressEnabledForPass___block_invoke;
  v10[3] = &unk_279949840;
  v10[4] = &v11;
  [passInformation enumerateCredentialsWithHandler:v10];

  LOBYTE(passInformation) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return passInformation;
}

void __68__NPKExpressModeSettingsCoordinator_inSessionExpressEnabledForPass___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v12 + 1) + 8 * v10) supportsInSessionExpress])
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          *a4 = 1;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)needUpgradeForPass:(id)pass
{
  paymentPass = [pass paymentPass];
  if (paymentPass)
  {
    v5 = [(PKExpressPassController *)self->_expressPassController hasEligibleExpressUpgradeRequestForPass:paymentPass];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)expressStateForPass:(id)pass
{
  passCopy = pass;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__21;
  v18 = __Block_byref_object_dispose__21;
  v19 = 0;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__NPKExpressModeSettingsCoordinator_expressStateForPass___block_invoke;
  v9[3] = &unk_279948C68;
  objc_copyWeak(&v12, &location);
  v10 = passCopy;
  v11 = &v14;
  v6 = passCopy;
  dispatch_sync(workQueue, v9);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __57__NPKExpressModeSettingsCoordinator_expressStateForPass___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) uniqueID];
  v3 = [WeakRetained _expressStateForPassWithUniqueID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)eligibleExpressUpgradeRequestsForPass:(id)pass
{
  paymentPass = [pass paymentPass];
  if (paymentPass)
  {
    v5 = [(PKExpressPassController *)self->_expressPassController eligibleExpressUpgradeRequestsForPass:paymentPass];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)expressAppletIdentifiersForPass:(id)pass
{
  expressPassController = self->_expressPassController;
  secureElementPass = [pass secureElementPass];
  v5 = [(PKExpressPassController *)expressPassController existingExpressPassConfigurationForPass:secureElementPass];

  passInformation = [v5 passInformation];

  if (passInformation)
  {
    passInformation2 = [v5 passInformation];
    passInformation = [passInformation2 npk_expressAppletIdentifiers];
  }

  return passInformation;
}

- (void)enableExpressForPass:(id)pass mode:(unint64_t)mode completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  handlerCopy = handler;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v25 = uniqueID;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Express mode settings coordinator: Received request to enable express for %@", buf, 0xCu);
    }
  }

  v14 = self->_workQueue;
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NPKExpressModeSettingsCoordinator_enableExpressForPass_mode_completionHandler___block_invoke;
  block[3] = &unk_2799498B8;
  objc_copyWeak(v23, buf);
  v21 = v14;
  v22 = handlerCopy;
  v23[1] = mode;
  v20 = passCopy;
  v15 = v14;
  v16 = passCopy;
  v17 = handlerCopy;
  dispatch_async(v15, block);

  objc_destroyWeak(v23);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
}

void __81__NPKExpressModeSettingsCoordinator_enableExpressForPass_mode_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = _Block_copy(*(a1 + 48));
  v4 = *(WeakRetained + 8);
  *(WeakRetained + 8) = v3;

  objc_storeStrong(WeakRetained + 5, *(a1 + 32));
  v5 = [WeakRetained _newExpressStateForMode:*(a1 + 64) pass:*(a1 + 32) enable:1];
  v6 = *(WeakRetained + 6);
  *(WeakRetained + 6) = v5;

  *(WeakRetained + 8) = 1;
  v7 = [*(a1 + 32) paymentPass];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __81__NPKExpressModeSettingsCoordinator_enableExpressForPass_mode_completionHandler___block_invoke_2;
  v13 = &unk_279949890;
  v14 = *(a1 + 40);
  v15 = WeakRetained;
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  v16 = v8;
  v17 = v9;
  [WeakRetained _checkForConflictsInEnablingExpressForPass:v7 completion:&v10];

  [WeakRetained _handleExpressStateChange];
}

void __81__NPKExpressModeSettingsCoordinator_enableExpressForPass_mode_completionHandler___block_invoke_2(void *a1, char a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__NPKExpressModeSettingsCoordinator_enableExpressForPass_mode_completionHandler___block_invoke_3;
  v7[3] = &unk_279949868;
  v10 = a2;
  v3 = a1[4];
  v4 = a1[6];
  v7[4] = a1[5];
  v5 = v4;
  v6 = a1[7];
  v8 = v5;
  v9 = v6;
  dispatch_async(v3, v7);
}

void __81__NPKExpressModeSettingsCoordinator_enableExpressForPass_mode_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 40) paymentPass];
    [v1 _requestUserAuthenticationForPass:v4 withExpressMode:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 _handleUserCancelled];
  }
}

- (void)disableExpressForPass:(id)pass mode:(unint64_t)mode completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  handlerCopy = handler;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v25 = uniqueID;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Express mode settings coordinator: Received request to disable express for %@", buf, 0xCu);
    }
  }

  v14 = self->_workQueue;
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NPKExpressModeSettingsCoordinator_disableExpressForPass_mode_completionHandler___block_invoke;
  block[3] = &unk_2799498B8;
  objc_copyWeak(v23, buf);
  v21 = v14;
  v22 = handlerCopy;
  v23[1] = mode;
  v20 = passCopy;
  v15 = v14;
  v16 = passCopy;
  v17 = handlerCopy;
  dispatch_async(v15, block);

  objc_destroyWeak(v23);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
}

void __82__NPKExpressModeSettingsCoordinator_disableExpressForPass_mode_completionHandler___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = _Block_copy(*(a1 + 48));
  v4 = *(WeakRetained + 8);
  *(WeakRetained + 8) = v3;

  objc_storeStrong(WeakRetained + 5, *(a1 + 32));
  v5 = [WeakRetained _newExpressStateForMode:*(a1 + 64) pass:*(a1 + 32) enable:0];
  objc_storeStrong(WeakRetained + 6, v5);
  *(WeakRetained + 8) = 1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__NPKExpressModeSettingsCoordinator_disableExpressForPass_mode_completionHandler___block_invoke_2;
  aBlock[3] = &unk_2799454E0;
  v23 = *(a1 + 40);
  v24 = WeakRetained;
  v6 = _Block_copy(aBlock);
  v7 = *(WeakRetained + 2);
  v8 = [*(a1 + 32) paymentPass];
  v9 = [v7 expressModeSupportedForPass:v8];

  if (v9 && (v10 = [objc_alloc(MEMORY[0x277D37E88]) initWithPassInformation:v9 isNFCExpressEnabled:objc_msgSend(v5 isUWBExpressEnabled:{"nfcExpressState") < 2, objc_msgSend(v5, "uwbExpressState") < 2}]) != 0)
  {
    v11 = v10;
    v12 = *(WeakRetained + 2);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __82__NPKExpressModeSettingsCoordinator_disableExpressForPass_mode_completionHandler___block_invoke_4;
    v20[3] = &unk_279948FF8;
    v21 = v6;
    v13 = v6;
    [v12 setExpressModeWithPassConfiguration:v11 credential:0 completion:v20];
  }

  else
  {
    v14 = *(WeakRetained + 2);
    v15 = [*(a1 + 32) uniqueID];
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__NPKExpressModeSettingsCoordinator_disableExpressForPass_mode_completionHandler___block_invoke_5;
    v18[3] = &unk_279948FF8;
    v19 = v6;
    v11 = v6;
    [v14 disableExpressModeForPassesWithUniqueIdentifiers:v16 withCompletion:v18];

    v13 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __82__NPKExpressModeSettingsCoordinator_disableExpressForPass_mode_completionHandler___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NPKExpressModeSettingsCoordinator_disableExpressForPass_mode_completionHandler___block_invoke_3;
  block[3] = &unk_279944F98;
  v1 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_async(v1, block);
}

uint64_t __82__NPKExpressModeSettingsCoordinator_disableExpressForPass_mode_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _handleExpressStateChange];
  v2 = *(a1 + 32);

  return [v2 _invokeCompletionHandlerWithSuccess:1];
}

- (BOOL)_isNFCExpressModeSupportedForPass:(id)pass
{
  paymentPass = [pass paymentPass];
  if (paymentPass)
  {
    v5 = [(PKExpressPassController *)self->_expressPassController expressModeSupportedForPass:paymentPass];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(PKExpressPassController *)self->_expressPassController hasEligibleExpressUpgradeRequestForPass:paymentPass];
    }
  }

  else
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    v6 = 0;
    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Cannot check _isNFCExpressModeSupportedForPass for nil pass", v11, 2u);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_isExpressMode:(unint64_t)mode supportedForPassWithUniqueID:(id)d
{
  dCopy = d;
  passDataSource = [(NPKExpressModeSettingsCoordinator *)self passDataSource];
  v8 = [passDataSource passForUniqueID:dCopy];

  LOBYTE(mode) = [(NPKExpressModeSettingsCoordinator *)self isExpressMode:mode supportedForPass:v8];
  return mode;
}

- (id)_newExpressStateForMode:(unint64_t)mode pass:(id)pass enable:(BOOL)enable
{
  enableCopy = enable;
  workQueue = self->_workQueue;
  passCopy = pass;
  dispatch_assert_queue_V2(workQueue);
  v10 = [(NPKExpressModeSettingsCoordinator *)self needUpgradeForPass:passCopy];
  v11 = 2;
  if (enableCopy)
  {
    v12 = v10;
  }

  else
  {
    v12 = 2;
  }

  secureElementPass = [passCopy secureElementPass];
  isCarKeyPass = [secureElementPass isCarKeyPass];

  if (((mode == 2) & isCarKeyPass) != 0)
  {
    modeCopy = 3;
  }

  else
  {
    modeCopy = mode;
  }

  expressPassController = self->_expressPassController;
  secureElementPass2 = [passCopy secureElementPass];

  v18 = [(PKExpressPassController *)expressPassController existingExpressPassConfigurationForPass:secureElementPass2];

  v19 = 2;
  if (v18)
  {
    v19 = 2;
    if ([v18 isNFCExpressEnabled])
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    if ([v18 isUWBExpressEnabled])
    {
      v19 = 0;
    }
  }

  switch(modeCopy)
  {
    case 3uLL:
      v20 = [NPKExpressState alloc];
      v21 = v12;
      goto LABEL_19;
    case 2uLL:
      v20 = [NPKExpressState alloc];
      v21 = v11;
LABEL_19:
      v22 = v12;
      goto LABEL_20;
    case 1uLL:
      v20 = [NPKExpressState alloc];
      v21 = v12;
      v22 = v19;
LABEL_20:
      v11 = [(NPKExpressState *)v20 initWithNFCState:v21 uwbState:v22];
      break;
  }

  return v11;
}

- (void)_checkForConflictsInEnablingExpressForPass:(id)pass completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v26 = uniqueID;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Express mode settings coordinator: Checking for conflicts when enabling express for %@", buf, 0xCu);
    }
  }

  dispatch_assert_queue_V2(self->_workQueue);
  v12 = [(PKExpressPassController *)self->_expressPassController existingExpressPassConfigurationForPass:passCopy];
  if (!v12)
  {
    v13 = [(PKExpressPassController *)self->_expressPassController expressModeSupportedForPass:passCopy];
    if (v13)
    {
      v12 = [objc_alloc(MEMORY[0x277D37E88]) initWithPassInformation:v13 isNFCExpressEnabled:-[NPKExpressState nfcExpressState](self->_currentState isUWBExpressEnabled:{"nfcExpressState") < 2, -[NPKExpressState uwbExpressState](self->_currentState, "uwbExpressState") < 2}];
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = self->_callbackQueue;
  objc_initWeak(buf, self);
  expressPassController = self->_expressPassController;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__NPKExpressModeSettingsCoordinator__checkForConflictsInEnablingExpressForPass_completion___block_invoke;
  v20[3] = &unk_2799498E0;
  v16 = v14;
  v21 = v16;
  objc_copyWeak(&v24, buf);
  v17 = passCopy;
  v22 = v17;
  v18 = completionCopy;
  v23 = v18;
  [(PKExpressPassController *)expressPassController conflictingExpressPassesWithPassConfiguration:v12 completion:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

void __91__NPKExpressModeSettingsCoordinator__checkForConflictsInEnablingExpressForPass_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__NPKExpressModeSettingsCoordinator__checkForConflictsInEnablingExpressForPass_completion___block_invoke_2;
  v6[3] = &unk_279945B60;
  objc_copyWeak(&v10, (a1 + 56));
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
}

void __91__NPKExpressModeSettingsCoordinator__checkForConflictsInEnablingExpressForPass_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([*(a1 + 32) count])
  {
    v3 = [WeakRetained delegate];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__NPKExpressModeSettingsCoordinator__checkForConflictsInEnablingExpressForPass_completion___block_invoke_3;
    v7[3] = &unk_2799467D0;
    v8 = *(a1 + 48);
    [v3 expressModeSettingsCoordinator:WeakRetained didEncounterConflictWhenEnablingExpressForPass:v4 conflictingExpressPasses:v5 completion:v7];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 1);
    }
  }
}

uint64_t __91__NPKExpressModeSettingsCoordinator__checkForConflictsInEnablingExpressForPass_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_requestUserAuthenticationForPass:(id)pass withExpressMode:(unint64_t)mode
{
  v22 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v21 = uniqueID;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Express mode settings coordinator: Requesting user authentication for %@", buf, 0xCu);
    }
  }

  dispatch_assert_queue_V2(self->_workQueue);
  v11 = self->_workQueue;
  objc_initWeak(buf, self);
  delegate = [(NPKExpressModeSettingsCoordinator *)self delegate];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__NPKExpressModeSettingsCoordinator__requestUserAuthenticationForPass_withExpressMode___block_invoke;
  v16[3] = &unk_279949930;
  v13 = v11;
  v17 = v13;
  objc_copyWeak(v19, buf);
  v14 = passCopy;
  v18 = v14;
  v19[1] = mode;
  [delegate expressModeSettingsCoordinator:self requestsAuthorizationToEnableExpressForPass:v14 completion:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __87__NPKExpressModeSettingsCoordinator__requestUserAuthenticationForPass_withExpressMode___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__NPKExpressModeSettingsCoordinator__requestUserAuthenticationForPass_withExpressMode___block_invoke_2;
  block[3] = &unk_279949908;
  objc_copyWeak(v15, (a1 + 48));
  v16 = a2;
  v13 = v7;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v14 = v9;
  v15[1] = v10;
  v17 = a3;
  v11 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(v15);
}

void __87__NPKExpressModeSettingsCoordinator__requestUserAuthenticationForPass_withExpressMode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (*(a1 + 64) == 1)
  {
    objc_storeStrong(WeakRetained + 7, *(a1 + 32));
    v3 = [*(a1 + 32) externalizedContext];
    v4 = [*(a1 + 40) paymentPass];
    [v5 _handleSuccessfulUserAuthenticationWithCredential:v3 forPass:v4 withExpressMode:*(a1 + 56)];
  }

  else if (*(a1 + 65) == 1)
  {
    [WeakRetained _handleUserCancelled];
  }

  else
  {
    [WeakRetained _handleFailedUserAuthentication];
  }
}

- (void)_handleSuccessfulUserAuthenticationWithCredential:(id)credential forPass:(id)pass withExpressMode:(unint64_t)mode
{
  v17 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  passCopy = pass;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v15 = 138412290;
      v16 = uniqueID;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Express mode settings coordinator: Handling successful user authentication for %@", &v15, 0xCu);
    }
  }

  dispatch_assert_queue_V2(self->_workQueue);
  if (passCopy)
  {
    if ([(PKExpressPassController *)self->_expressPassController hasEligibleExpressUpgradeRequestForPass:passCopy])
    {
      [(NPKExpressModeSettingsCoordinator *)self _upgradeExpressModeForPass:passCopy withCredential:credentialCopy];
    }

    else
    {
      [(NPKExpressModeSettingsCoordinator *)self _enableExpressForPass:passCopy mode:mode withCredential:credentialCopy];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_upgradeExpressModeForPass:(id)pass withCredential:(id)credential
{
  v21 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  credentialCopy = credential;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v20 = uniqueID;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Express mode settings coordinator: Upgrading express for %@", buf, 0xCu);
    }
  }

  dispatch_assert_queue_V2(self->_workQueue);
  v12 = self->_workQueue;
  objc_initWeak(buf, self);
  expressPassController = self->_expressPassController;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__NPKExpressModeSettingsCoordinator__upgradeExpressModeForPass_withCredential___block_invoke;
  v16[3] = &unk_279949958;
  v14 = v12;
  v17 = v14;
  objc_copyWeak(&v18, buf);
  [(PKExpressPassController *)expressPassController upgradeExpressModeForPass:passCopy withCredential:credentialCopy resultHandler:v16];
  objc_destroyWeak(&v18);

  objc_destroyWeak(buf);
  v15 = *MEMORY[0x277D85DE8];
}

void __79__NPKExpressModeSettingsCoordinator__upgradeExpressModeForPass_withCredential___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__NPKExpressModeSettingsCoordinator__upgradeExpressModeForPass_withCredential___block_invoke_2;
  block[3] = &unk_279945290;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void __79__NPKExpressModeSettingsCoordinator__upgradeExpressModeForPass_withCredential___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 32) && !*(a1 + 40))
  {
    [WeakRetained _handleSuccessForPass:?];
  }

  else
  {
    [WeakRetained _handleFailedPassUpgrade];
  }
}

- (void)_enableExpressForPass:(id)pass mode:(unint64_t)mode withCredential:(id)credential
{
  v32 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  credentialCopy = credential;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v31 = uniqueID;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Express mode settings coordinator: Enabling express for %@", buf, 0xCu);
    }
  }

  dispatch_assert_queue_V2(self->_workQueue);
  expressPassController = self->_expressPassController;
  paymentPass = [passCopy paymentPass];
  v16 = [(PKExpressPassController *)expressPassController expressModeSupportedForPass:paymentPass];

  if (v16)
  {
    v17 = [(NPKExpressModeSettingsCoordinator *)self _newExpressStateForMode:mode pass:passCopy enable:1];
    v18 = [objc_alloc(MEMORY[0x277D37E88]) initWithPassInformation:v16 isNFCExpressEnabled:objc_msgSend(v17 isUWBExpressEnabled:{"nfcExpressState") < 2, objc_msgSend(v17, "uwbExpressState") < 2}];
  }

  else
  {
    v18 = 0;
  }

  v19 = self->_workQueue;
  objc_initWeak(buf, self);
  v20 = self->_expressPassController;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __79__NPKExpressModeSettingsCoordinator__enableExpressForPass_mode_withCredential___block_invoke;
  v25[3] = &unk_279949980;
  v21 = v19;
  v26 = v21;
  objc_copyWeak(&v29, buf);
  v22 = v18;
  v27 = v22;
  v23 = passCopy;
  v28 = v23;
  [(PKExpressPassController *)v20 setExpressModeWithPassConfiguration:v22 credential:credentialCopy completion:v25];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  v24 = *MEMORY[0x277D85DE8];
}

void __79__NPKExpressModeSettingsCoordinator__enableExpressForPass_mode_withCredential___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__NPKExpressModeSettingsCoordinator__enableExpressForPass_mode_withCredential___block_invoke_2;
  v6[3] = &unk_279945308;
  objc_copyWeak(&v10, (a1 + 56));
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
}

void __79__NPKExpressModeSettingsCoordinator__enableExpressForPass_mode_withCredential___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([*(a1 + 32) containsObject:*(a1 + 40)])
    {
      [v3 _handleSuccessForPass:*(a1 + 48)];
    }

    else
    {
      [v3 _handleFailedEnableExpress];
    }

    WeakRetained = v3;
  }
}

- (void)_handleSuccessForPass:(id)pass
{
  v12 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v10 = 138412290;
      v11 = uniqueID;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Express mode settings coordinator: Operation completed successfully for %@", &v10, 0xCu);
    }
  }

  dispatch_assert_queue_V2(self->_workQueue);
  [(NPKExpressModeSettingsCoordinator *)self _invokeCompletionHandlerWithSuccess:1];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleFailedUserAuthentication
{
  dispatch_assert_queue_V2(self->_workQueue);
  self->_expressStateUpdatePending = 0;

  [(NPKExpressModeSettingsCoordinator *)self _invokeCompletionHandlerWithSuccess:0];
}

- (void)_handleFailedPassUpgrade
{
  dispatch_assert_queue_V2(self->_workQueue);
  self->_expressStateUpdatePending = 0;

  [(NPKExpressModeSettingsCoordinator *)self _invokeCompletionHandlerWithSuccess:0];
}

- (void)_handleFailedEnableExpress
{
  dispatch_assert_queue_V2(self->_workQueue);
  self->_expressStateUpdatePending = 0;

  [(NPKExpressModeSettingsCoordinator *)self _invokeCompletionHandlerWithSuccess:0];
}

- (void)_handleUserCancelled
{
  dispatch_assert_queue_V2(self->_workQueue);
  self->_expressStateUpdatePending = 0;

  [(NPKExpressModeSettingsCoordinator *)self _invokeCompletionHandlerWithSuccess:1];
}

- (void)_invokeCompletionHandlerWithSuccess:(BOOL)success
{
  successCopy = success;
  v23 = *MEMORY[0x277D85DE8];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = successCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Express mode operation completed with success: %d", buf, 8u);
    }
  }

  dispatch_assert_queue_V2(self->_workQueue);
  v8 = _Block_copy(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  currentPass = self->_currentPass;
  self->_currentPass = 0;

  currentState = self->_currentState;
  self->_currentState = 0;

  callbackQueue = self->_callbackQueue;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __73__NPKExpressModeSettingsCoordinator__invokeCompletionHandlerWithSuccess___block_invoke;
  v18 = &unk_279947638;
  v13 = v8;
  v19 = v13;
  v20 = successCopy;
  dispatch_async(callbackQueue, &v15);
  if (!self->_expressStateUpdatePending)
  {
    [(NPKExpressModeSettingsCoordinator *)self _handleExpressStateChange:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __73__NPKExpressModeSettingsCoordinator__invokeCompletionHandlerWithSuccess___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_handleExpressStateChange
{
  v43 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = self->_workQueue;
  v4 = self->_callbackQueue;
  selfCopy = self;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__NPKExpressModeSettingsCoordinator__handleExpressStateChange__block_invoke;
  aBlock[3] = &unk_2799499A8;
  v26 = v3;
  v37 = v26;
  objc_copyWeak(&v39, &location);
  v25 = v4;
  v38 = v25;
  v5 = _Block_copy(aBlock);
  enabledExpressPasses = [(PKExpressPassController *)self->_expressPassController enabledExpressPasses];
  allKeys = [(NSMutableDictionary *)self->_previousPassStates allKeys];
  v8 = [allKeys count];

  v9 = MEMORY[0x277CBEB58];
  if (v8)
  {
    allKeys2 = [(NSMutableDictionary *)self->_previousPassStates allKeys];
    v11 = [v9 setWithArray:allKeys2];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys3 = [enabledExpressPasses allKeys];
  v13 = [allKeys3 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v13)
  {
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(allKeys3);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        [v11 removeObject:v16];
        v17 = [(NPKExpressModeSettingsCoordinator *)selfCopy _expressStateForPassWithUniqueID:v16 fromControllerState:enabledExpressPasses];
        v5[2](v5, v16, v17);
      }

      v13 = [allKeys3 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v13);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v41 count:16];
  if (v19)
  {
    v20 = *v29;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v28 + 1) + 8 * j);
        v23 = [(NPKExpressModeSettingsCoordinator *)selfCopy _expressStateForPassWithUniqueID:v22 fromControllerState:enabledExpressPasses];
        v5[2](v5, v22, v23);
      }

      v19 = [v18 countByEnumeratingWithState:&v28 objects:v41 count:16];
    }

    while (v19);
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);

  v24 = *MEMORY[0x277D85DE8];
}

void __62__NPKExpressModeSettingsCoordinator__handleExpressStateChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5 && v6 && (v9 = WeakRetained[11]) != 0)
    {
      [v9 setObject:v6 forKey:v5];
      v10 = *(a1 + 40);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__NPKExpressModeSettingsCoordinator__handleExpressStateChange__block_invoke_2;
      block[3] = &unk_279945290;
      objc_copyWeak(&v19, (a1 + 48));
      v17 = v6;
      v18 = v5;
      dispatch_async(v10, block);

      objc_destroyWeak(&v19);
    }

    else
    {
      v11 = pk_Payment_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = pk_Payment_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v8[11];
          *buf = 138412802;
          v21 = v14;
          v22 = 2112;
          v23 = v6;
          v24 = 2112;
          v25 = v5;
          _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: Express mode settings coordinator: Unable to update previousPassStates due to nil value; _previousPassStates: %@, newState: %@, uniqueID %@", buf, 0x20u);
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __62__NPKExpressModeSettingsCoordinator__handleExpressStateChange__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 expressModeSettingsCoordinator:v4 didUpdateState:*(a1 + 32) forPassWithUniqueID:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (id)_expressStateForPassWithUniqueID:(id)d
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__21;
  v19 = __Block_byref_object_dispose__21;
  v20 = 0;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NPKExpressModeSettingsCoordinator__expressStateForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948D08;
  objc_copyWeak(&v13, &location);
  selfCopy = self;
  v12 = &v15;
  v10 = dCopy;
  v6 = dCopy;
  dispatch_sync(workQueue, block);
  v7 = v16[5];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __70__NPKExpressModeSettingsCoordinator__expressStateForPassWithUniqueID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 16) enabledExpressPasses];
  v4 = [WeakRetained _expressStateForPassWithUniqueID:v2 fromControllerState:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_expressStateForPassWithUniqueID:(id)d fromControllerState:(id)state
{
  dCopy = d;
  stateCopy = state;
  dispatch_assert_queue_V2(self->_workQueue);
  if (self->_currentState && ([(PKPass *)self->_currentPass uniqueID], v8 = objc_claimAutoreleasedReturnValue(), v9 = PKEqualObjects(), v8, v9))
  {
    v10 = self->_currentState;
  }

  else
  {
    v11 = [stateCopy objectForKey:dCopy];
    v12 = v11;
    if (v11 && ([v11 passUniqueIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = PKEqualObjects(), v13, v14))
    {
      v15 = [[NPKExpressState alloc] initWithExpressPassConfiguration:v12];
    }

    else
    {
      v15 = [[NPKExpressState alloc] initWithNFCState:2 uwbState:2];
    }

    v10 = v15;
  }

  return v10;
}

- (NPKExpressModeSettingsCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end