@interface PKAccountBillPaymentController
- (PKAccountBillPaymentController)initWithAccount:(id)a3 paymentPass:(id)a4;
- (PKAccountBillPaymentControllerDelegate)delegate;
- (id)_achPaymentWithAmount:(id)a3 bankInformation:(id)a4;
- (id)_apcPaymentWithAmount:(id)a3;
- (id)_bankAccountsForFundingSources:(id)a3;
- (id)_buildTransferRequestForDate:(id)a3;
- (id)_createSchedulePaymentRequestWithSelectedMethods:(unint64_t)a3 bankInformation:(id)a4;
- (id)_paymentSummaryItemsForPaymentAmountACH:(id)a3 apc:(id)a4 bankInformation:(id)a5;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (void)_accountDidChange:(id)a3;
- (void)_addNewBankAccountIfNecessary:(id)a3;
- (void)_billPaymentHasCompletedWithState:(unint64_t)a3 error:(id)a4;
- (void)_completeFetchingFundingSources;
- (void)_fetchFundingSources;
- (void)_performApplePayTrustSignatureRequestWithSignature:(id)a3 completion:(id)a4;
- (void)_presentPaymentAuthorizationWithPaymentRequest:(id)a3 completion:(id)a4;
- (void)_updateUseApplePayCashSetting:(BOOL)a3;
- (void)canPerformBillPaymentWithAmount:(id)a3 scheduledDate:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didUpdateAccountServicePaymentMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)performBillPaymentActionWithAmount:(id)a3 scheduledDate:(id)a4 billPaymentSuggestedAmountDataEvent:(id)a5;
@end

@implementation PKAccountBillPaymentController

- (PKAccountBillPaymentController)initWithAccount:(id)a3 paymentPass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = PKAccountBillPaymentController;
  v9 = [(PKAccountBillPaymentController *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_pass, a4);
    v11 = [MEMORY[0x1E695DFA8] set];
    dataFetchingCompletionHandlers = v10->_dataFetchingCompletionHandlers;
    v10->_dataFetchingCompletionHandlers = v11;

    v13 = +[PKAccountService sharedInstance];
    accountService = v10->_accountService;
    v10->_accountService = v13;

    v15 = +[PKPaymentService paymentService];
    paymentService = v10->_paymentService;
    v10->_paymentService = v15;

    v17 = +[PKPaymentWebService sharedService];
    webService = v10->_webService;
    v10->_webService = v17;

    v19 = [MEMORY[0x1E696AB90] zero];
    totalPaymentAmount = v10->_totalPaymentAmount;
    v10->_totalPaymentAmount = v19;

    [(PKAccountBillPaymentController *)v10 _fetchFundingSources];
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v10 selector:sel__accountDidChange_ name:@"PKAccountServiceAccountsChangedNotification" object:0];
  }

  return v10;
}

- (void)_fetchFundingSources
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!self->_fetchingData)
  {
    v3 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Fetching funding sources in PKAccountBillPaymentController", buf, 2u);
    }

    self->_fetchingData = 1;
    if (PKUIOnlyDemoModeEnabled())
    {
      v4 = [[PKAccountPaymentFundingSource alloc] initWithType:1];
      v5 = [MEMORY[0x1E696AFB0] UUID];
      v6 = [v5 UUIDString];
      [(PKAccountPaymentFundingSource *)v4 setIdentifier:v6];

      [(PKAccountPaymentFundingSource *)v4 setAccountSuffix:@"12345"];
      v13[0] = v4;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [(PKAccountBillPaymentController *)self setFundingSources:v7];

      [(PKAccountBillPaymentController *)self _completeFetchingFundingSources];
    }

    else
    {
      objc_initWeak(buf, self);
      v8 = +[PKAccountService sharedInstance];
      v9 = [(PKAccount *)self->_account accountIdentifier];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__PKAccountBillPaymentController__fetchFundingSources__block_invoke;
      v10[3] = &unk_1E79C9550;
      objc_copyWeak(&v11, buf);
      [v8 updatePaymentFundingSourcesForAccountIdentifier:v9 force:1 completion:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }
}

void __54__PKAccountBillPaymentController__fetchFundingSources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKAccountBillPaymentController__fetchFundingSources__block_invoke_2;
  block[3] = &unk_1E79C9528;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __54__PKAccountBillPaymentController__fetchFundingSources__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Completed fetching funding sources in PKAccountBillPaymentController with error %@", &v6, 0xCu);
    }

    objc_storeStrong(WeakRetained + 13, *(a1 + 32));
    v5 = *(a1 + 32);
    if (v5)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = "[PKAccountBillPaymentController _fetchFundingSources]_block_invoke";
        v8 = 2048;
        v9 = WeakRetained;
        v10 = 2112;
        v11 = v5;
        _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "%s %p: Error: Get funding sources failed with error: %@.", &v6, 0x20u);
      }
    }

    else
    {
      [WeakRetained setFundingSources:*(a1 + 40)];
    }

    [WeakRetained _completeFetchingFundingSources];
  }
}

- (void)_completeFetchingFundingSources
{
  v15 = *MEMORY[0x1E69E9840];
  self->_fetchingData = 0;
  v3 = [(NSMutableSet *)self->_dataFetchingCompletionHandlers allObjects];
  v4 = [v3 copy];

  [(NSMutableSet *)self->_dataFetchingCompletionHandlers removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_updateUseApplePayCashSetting:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKObject *)self->_pass settings];
  if (((v5 >> 9) & 1) != v3)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFDFFLL;
    v7 = 512;
    if (!v3)
    {
      v7 = 0;
    }

    pass = self->_pass;

    [(PKObject *)pass setSettings:v6 | v7];
  }
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_schedulePaymentAuthorizationCoordinator == v4)
  {
    v5 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[PKAccountBillPaymentController paymentAuthorizationCoordinatorDidFinish:]";
      v10 = 2048;
      v11 = self;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%s %p: paymentAuthorizationCoordinatorDidFinish: callback called.", buf, 0x16u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__PKAccountBillPaymentController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
    v6[3] = &unk_1E79C4DD8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

uint64_t __75__PKAccountBillPaymentController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PKAccountBillPaymentController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  v8[3] = &unk_1E79C4E28;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  return [v6 dismissWithCompletion:v8];
}

void __75__PKAccountBillPaymentController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120))
  {
    if ((*(v1 + 97) & 1) == 0)
    {
      *(v1 + 97) = 1;
      dispatch_group_leave(*(*(a1 + 32) + 120));
    }
  }
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained presentationSceneIdentifierForAccountBillPaymentController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didUpdateAccountServicePaymentMethod:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__PKAccountBillPaymentController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke;
  aBlock[3] = &unk_1E79C95A0;
  v9 = v7;
  v17 = v9;
  v18 = self;
  v10 = v8;
  v19 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    webService = self->_webService;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __111__PKAccountBillPaymentController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_4;
    v14[3] = &unk_1E79C5180;
    v15 = v11;
    [v12 paymentWebService:webService deviceMetadataWithFields:251 completion:v14];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

void __111__PKAccountBillPaymentController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 bankAccountInformation];
  [*(a1 + 40) _addNewBankAccountIfNecessary:v5];
  v6 = [*(a1 + 32) peerPaymentBalance];
  v7 = [v6 amount];
  v8 = *(a1 + 40);
  v9 = *(v8 + 72);
  *(v8 + 72) = v7;

  v10 = [*(a1 + 32) selectedMethods];
  [*(a1 + 40) _updateUseApplePayCashSetting:(v10 >> 1) & 1];
  v11 = [*(*(a1 + 40) + 80) paymentSummaryItemsWithFundingSources:v10 bankAccount:v5];
  v12 = [*(a1 + 40) _createSchedulePaymentRequestWithSelectedMethods:v10 bankInformation:v5];
  v13 = *(a1 + 40);
  v14 = *(v13 + 24);
  *(v13 + 24) = v12;

  [*(*(a1 + 40) + 24) setDeviceMetadata:v4];
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  v17 = *(v16 + 8);
  v18 = *(v16 + 24);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __111__PKAccountBillPaymentController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_2;
  v20[3] = &unk_1E79C9578;
  v20[4] = v16;
  v21 = v11;
  v22 = v15;
  v19 = v11;
  [v17 schedulePaymentWithRequest:v18 completion:v20];
}

void __111__PKAccountBillPaymentController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__PKAccountBillPaymentController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_3;
  block[3] = &unk_1E79C4F68;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __111__PKAccountBillPaymentController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && !*(a1 + 40))
  {
    v3 = *(*(a1 + 48) + 24);
    v4 = [v2 referenceIdentifier];
    v5 = [v3 manifestHashWithReferenceIdentifier:v4];

    v6 = [PKApplePayTrustSignatureRequest alloc];
    v7 = [*(a1 + 32) nonce];
    v9 = [(PKApplePayTrustSignatureRequest *)v6 initWithKeyIdentifier:@"com.apple.wallet.applepaytrust" manifestHash:v5 nonce:v7];
  }

  else
  {
    v9 = 0;
  }

  v8 = [[PKPaymentRequestPaymentMethodUpdate alloc] initWithPaymentSummaryItems:*(a1 + 56)];
  (*(*(a1 + 64) + 16))();
}

void __111__PKAccountBillPaymentController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111__PKAccountBillPaymentController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_5;
  v6[3] = &unk_1E79C44A0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)canPerformBillPaymentWithAmount:(id)a3 scheduledDate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKAccountBillPaymentController_canPerformBillPaymentWithAmount_scheduledDate_completion___block_invoke;
  aBlock[3] = &unk_1E79C95C8;
  objc_copyWeak(&v26, &location);
  v11 = v8;
  v24 = v11;
  v12 = v9;
  v25 = v12;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (self->_fetchingData || !self->_fundingSources)
  {
    dataFetchingCompletionHandlers = self->_dataFetchingCompletionHandlers;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __91__PKAccountBillPaymentController_canPerformBillPaymentWithAmount_scheduledDate_completion___block_invoke_2;
    v20 = &unk_1E79C95F0;
    v21 = v13;
    v22 = v10;
    v16 = _Block_copy(&v17);
    [(NSMutableSet *)dataFetchingCompletionHandlers addObject:v16, v17, v18, v19, v20];

    if (!self->_fetchingData)
    {
      [(PKAccountBillPaymentController *)self _fetchFundingSources];
    }
  }

  else
  {
    (*(v13 + 2))(v13, v10);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __91__PKAccountBillPaymentController_canPerformBillPaymentWithAmount_scheduledDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5)
    {
      objc_storeStrong(WeakRetained + 8, *(a1 + 32));
      v4 = [WeakRetained _buildTransferRequestForDate:*(a1 + 40)];
      (v5)[2](v5, v4 != 0, WeakRetained[13]);
    }
  }

  else if (v5)
  {
    v5[2](v5, 0, 0);
  }
}

- (void)performBillPaymentActionWithAmount:(id)a3 scheduledDate:(id)a4 billPaymentSuggestedAmountDataEvent:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __119__PKAccountBillPaymentController_performBillPaymentActionWithAmount_scheduledDate_billPaymentSuggestedAmountDataEvent___block_invoke;
  v22 = &unk_1E79C9668;
  v23 = self;
  v11 = v8;
  v24 = v11;
  v12 = v9;
  v25 = v12;
  v13 = v10;
  v26 = v13;
  v14 = _Block_copy(&v19);
  v15 = v14;
  if (self->_performingAction)
  {
    v16 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[PKAccountBillPaymentController performBillPaymentActionWithAmount:scheduledDate:billPaymentSuggestedAmountDataEvent:]";
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "%s: Cannot Present - already performing action", buf, 0xCu);
    }

    [(PKAccountBillPaymentController *)self _billPaymentHasCompletedWithState:2 error:0, v19, v20, v21, v22, v23, v24, v25];
  }

  else if (self->_fetchingData)
  {
    dataFetchingCompletionHandlers = self->_dataFetchingCompletionHandlers;
    v18 = _Block_copy(v14);
    [(NSMutableSet *)dataFetchingCompletionHandlers addObject:v18, v19, v20, v21, v22, v23, v24, v25];
  }

  else
  {
    v14[2](v14);
  }
}

uint64_t __119__PKAccountBillPaymentController_performBillPaymentActionWithAmount_scheduledDate_billPaymentSuggestedAmountDataEvent___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 96) = 1;
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = [*(a1 + 32) _buildTransferRequestForDate:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 56));
  v5 = *(a1 + 32);
  v6 = v5[10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __119__PKAccountBillPaymentController_performBillPaymentActionWithAmount_scheduledDate_billPaymentSuggestedAmountDataEvent___block_invoke_2;
  v8[3] = &unk_1E79C9640;
  v8[4] = v5;
  return [v5 _presentPaymentAuthorizationWithPaymentRequest:v6 completion:v8];
}

void __119__PKAccountBillPaymentController_performBillPaymentActionWithAmount_scheduledDate_billPaymentSuggestedAmountDataEvent___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__PKAccountBillPaymentController_performBillPaymentActionWithAmount_scheduledDate_billPaymentSuggestedAmountDataEvent___block_invoke_3;
  block[3] = &unk_1E79C9618;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __119__PKAccountBillPaymentController_performBillPaymentActionWithAmount_scheduledDate_billPaymentSuggestedAmountDataEvent___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    if (!*(*(a1 + 32) + 120))
    {
      v2 = dispatch_group_create();
      v3 = *(a1 + 32);
      v4 = *(v3 + 120);
      *(v3 + 120) = v2;

      dispatch_group_enter(*(*(a1 + 32) + 120));
      v5 = *(a1 + 32);
      v6 = *(v5 + 120);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __119__PKAccountBillPaymentController_performBillPaymentActionWithAmount_scheduledDate_billPaymentSuggestedAmountDataEvent___block_invoke_4;
      block[3] = &unk_1E79C4E28;
      block[4] = v5;
      dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);
    }

    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 136315394;
      v13 = "[PKAccountBillPaymentController performBillPaymentActionWithAmount:scheduledDate:billPaymentSuggestedAmountDataEvent:]_block_invoke_3";
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "%s %p: Succeeded presenting PKPaymentAuthorizationCoordinator.", buf, 0x16u);
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 136315394;
      v13 = "[PKAccountBillPaymentController performBillPaymentActionWithAmount:scheduledDate:billPaymentSuggestedAmountDataEvent:]_block_invoke";
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%s %p: Failed to present PKPaymentAuthorizationCoordinator.", buf, 0x16u);
    }

    [*(a1 + 32) _billPaymentHasCompletedWithState:0 error:*(a1 + 40)];
  }
}

void __119__PKAccountBillPaymentController_performBillPaymentActionWithAmount_scheduledDate_billPaymentSuggestedAmountDataEvent___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 98))
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v5 = *(v2 + 40);
    if (v5)
    {
      v3 = v5;
      v4 = 0;
      v2 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
      v4 = 2;
    }
  }

  v6 = v3;
  [v2 _billPaymentHasCompletedWithState:v4 error:v3];
}

- (id)_createSchedulePaymentRequestWithSelectedMethods:(unint64_t)a3 bankInformation:(id)a4
{
  v6 = MEMORY[0x1E696AB90];
  v7 = a4;
  v8 = [v6 zero];
  v9 = [MEMORY[0x1E696AB90] zero];
  paymentRequest = self->_paymentRequest;
  v26 = v9;
  v27 = v8;
  [(PKAccountServiceTransferRequest *)paymentRequest paymentAmountsWithFundingSources:a3 apc:&v27 ach:&v26];
  v11 = v27;

  v12 = v26;
  v13 = objc_alloc_init(PKAccountScheduledPaymentList);
  v14 = [(PKAccountBillPaymentController *)self _achPaymentWithAmount:v12 bankInformation:v7];

  [(PKAccountScheduledPaymentList *)v13 addScheduledPayment:v14];
  v15 = [(PKAccountBillPaymentController *)self _apcPaymentWithAmount:v11];
  [(PKAccountScheduledPaymentList *)v13 addScheduledPayment:v15];

  v16 = objc_alloc_init(PKAccountPaymentScheduleDetails);
  [(PKAccountPaymentScheduleDetails *)v16 setFrequency:[(PKPaymentRequest *)self->_paymentRequest paymentFrequency]];
  [(PKAccountPaymentScheduleDetails *)v16 setPreset:1];
  v17 = [(PKAccount *)self->_account creditDetails];
  v18 = [v17 productTimeZone];
  [(PKAccountPaymentScheduleDetails *)v16 setScheduleTimeZone:v18];

  if ([(PKPaymentRequest *)self->_paymentRequest paymentFrequency]!= 1)
  {
    v19 = [(PKPaymentRequest *)self->_paymentRequest paymentDate];
    [(PKAccountPaymentScheduleDetails *)v16 setScheduledDate:v19];
  }

  if (v14)
  {
    v20 = [(PKAccount *)self->_account schedulePaymentFeatureDescriptor];
    v21 = [v20 paymentTermsIdentifier];

    [(PKAccountPaymentScheduleDetails *)v16 setPaymentTermsIdentifier:v21];
  }

  v22 = objc_alloc_init(PKAccountWebServiceSchedulePaymentRequest);
  [(PKAccountWebServiceSchedulePaymentRequest *)v22 setScheduledPayments:v13];
  [(PKAccountWebServiceSchedulePaymentRequest *)v22 setScheduleDetails:v16];
  v23 = [(PKAccount *)self->_account accountIdentifier];
  [(PKAccountWebServiceSchedulePaymentRequest *)v22 setAccountIdentifier:v23];

  v24 = [(PKAccount *)self->_account accountBaseURL];
  [(PKAccountWebServiceSchedulePaymentRequest *)v22 setBaseURL:v24];

  [(PKAccountWebServiceSchedulePaymentRequest *)v22 setCertificatesResponse:0];

  return v22;
}

- (id)_achPaymentWithAmount:(id)a3 bankInformation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AB90] zero];
  v9 = [v8 compare:v6];

  if (v9 == -1)
  {
    v11 = [[PKAccountPaymentFundingSource alloc] initWithType:1];
    v12 = [(PKAccountPaymentFundingSource *)v11 fundingDetails];
    v13 = [v7 identifier];
    if (v13)
    {
      [(PKAccountPaymentFundingSource *)v11 setIdentifier:v13];
    }

    else
    {
      v14 = [(PKAccount *)self->_account accountIdentifier];
      [v12 setAccountIdentifier:v14];

      v15 = [v7 accountNumber];
      [v12 setAccountNumber:v15];

      v16 = [v7 routingNumber];
      [v12 setRoutingNumber:v16];

      v17 = [v7 bankName];
      [v12 setName:v17];
    }

    v18 = [(PKAccount *)self->_account creditDetails];
    v19 = [v18 currencyCode];
    v20 = PKCurrencyAmountCreate(v6, v19, 0);

    v10 = [[PKAccountScheduledPayment alloc] initWithCurrencyAmount:v20 fundingSource:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_apcPaymentWithAmount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AB90] zero];
  v6 = [v5 compare:v4];

  if (v6 == -1)
  {
    v8 = [[PKAccountPaymentFundingSource alloc] initWithType:2];
    v9 = [(PKAccount *)self->_account creditDetails];
    v10 = [v9 currencyCode];
    v11 = PKCurrencyAmountCreate(v4, v10, 0);

    v7 = [[PKAccountScheduledPayment alloc] initWithCurrencyAmount:v11 fundingSource:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_buildTransferRequestForDate:(id)a3
{
  v4 = a3;
  v5 = +[PKPeerPaymentService sharedInstance];
  v6 = [v5 account];

  v7 = +[PKPassLibrary sharedInstance];
  v8 = [v6 associatedPassUniqueID];
  v9 = [v7 passWithUniqueID:v8];
  v10 = [v9 paymentPass];

  totalPaymentAmount = self->_totalPaymentAmount;
  v12 = [(PKAccount *)self->_account creditDetails];
  v13 = [v12 currencyCode];
  v14 = PKCurrencyAmountCreate(totalPaymentAmount, v13, 0);

  v15 = [[PKAccountServiceTransferRequest alloc] initWithAccount:self->_account peerPaymentAccount:v6 peerPaymentPass:v10 transferType:1 fundingSources:self->_fundingSources currencyAmount:v14 paymentDate:v4 objectSettings:self->_pass];
  [(PKPaymentRequest *)v15 setConfirmationStyle:0];
  [(PKPaymentRequest *)v15 setApplePayTrustSignatureRequest:0];

  return v15;
}

- (id)_bankAccountsForFundingSources:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) bankAccountRepresentation];
          [v4 safelyAddObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = [v4 copy];

  return v11;
}

- (void)_addNewBankAccountIfNecessary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = self->_fundingSources;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v24 + 1) + 8 * i) identifier];
          v11 = [v4 identifier];
          v12 = v10;
          v13 = v11;
          fundingSources = v13;
          if (v12 == v13)
          {

            goto LABEL_19;
          }

          if (v12)
          {
            v15 = v13 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
          }

          else
          {
            v16 = [(PKAccountPaymentFundingSource *)v12 isEqualToString:v13];

            if (v16)
            {
              goto LABEL_20;
            }
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v5 = objc_alloc_init(PKAccountPaymentFundingDetailsBankAccount);
    v17 = [(PKAccount *)self->_account accountIdentifier];
    [(NSArray *)v5 setAccountIdentifier:v17];

    v18 = [v4 bankName];
    [(NSArray *)v5 setName:v18];

    -[NSArray setStatus:](v5, "setStatus:", [v4 status]);
    v19 = [v4 routingNumber];
    [(NSArray *)v5 setRoutingNumber:v19];

    v20 = [v4 accountNumber];
    [(NSArray *)v5 setAccountNumber:v20];

    v12 = [[PKAccountPaymentFundingSource alloc] initWithType:1];
    v21 = [v4 identifier];
    [(PKAccountPaymentFundingSource *)v12 setIdentifier:v21];

    v22 = [v4 accountSuffix];
    [(PKAccountPaymentFundingSource *)v12 setAccountSuffix:v22];

    [(PKAccountPaymentFundingSource *)v12 setFundingDetails:v5];
    v23 = [(NSArray *)self->_fundingSources mutableCopy];
    [(NSArray *)v23 addObject:v12];
    fundingSources = self->_fundingSources;
    self->_fundingSources = v23;
LABEL_19:

LABEL_20:
  }
}

- (id)_paymentSummaryItemsForPaymentAmountACH:(id)a3 apc:(id)a4 bankInformation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v17 = [(PKAccount *)self->_account feature];
  if (v9)
  {
    v18 = [MEMORY[0x1E696AB90] zero];
    v19 = [v18 compare:v9];
    if (!v8 || v19 != -1)
    {
      goto LABEL_7;
    }

    v20 = [MEMORY[0x1E696AB90] zero];
    v21 = [v20 compare:v8];

    if (v10 && v21 == -1)
    {
      v18 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_APC_ITEM", v17, 0, v12, v13, v14, v15, v16, v35);
      v22 = [v10 bankName];
      v28 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_ACH_ITEM_FORMAT", v17, @"%@", v23, v24, v25, v26, v27, v22);

      v29 = [PKPaymentSummaryItem summaryItemWithLabel:v28 amount:v8];
      v30 = [PKPaymentSummaryItem summaryItemWithLabel:v18 amount:v9];
      [v11 safelyAddObject:v30];
      [v11 safelyAddObject:v29];

LABEL_7:
    }
  }

  v31 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_ITEM_TOTAL", v17, 0, v12, v13, v14, v15, v16, v35);
  v32 = [PKPaymentSummaryItem summaryItemWithLabel:v31 amount:self->_totalPaymentAmount];
  [v11 addObject:v32];

  v33 = [v11 copy];

  return v33;
}

- (void)_presentPaymentAuthorizationWithPaymentRequest:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [[PKPaymentAuthorizationCoordinator alloc] initWithPaymentRequest:v6];
  schedulePaymentAuthorizationCoordinator = self->_schedulePaymentAuthorizationCoordinator;
  self->_schedulePaymentAuthorizationCoordinator = v8;

  [(PKPaymentAuthorizationCoordinator *)self->_schedulePaymentAuthorizationCoordinator setDelegate:self];
  [(PKPaymentAuthorizationCoordinator *)self->_schedulePaymentAuthorizationCoordinator _setPrivateDelegate:self];
  v10 = self->_schedulePaymentAuthorizationCoordinator;
  if (v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__PKAccountBillPaymentController__presentPaymentAuthorizationWithPaymentRequest_completion___block_invoke;
    v16[3] = &unk_1E79C4770;
    v17 = v6;
    v18 = v7;
    [(PKPaymentAuthorizationCoordinator *)v10 presentWithCompletion:v16];

    v11 = v17;
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "[PKAccountBillPaymentController _presentPaymentAuthorizationWithPaymentRequest:completion:]";
      v23 = 2048;
      v24 = self;
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "%s %p: PKPaymentAuthorizationCoordinator could not be instantiated with paymentRequest: %p.", buf, 0x20u);
    }

    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKPaymentAuthorizationCoordinator could not be instantiated with paymentRequest: %@.", v6];
    v20 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:0 userInfo:v15];

    if (v7)
    {
      (*(v7 + 2))(v7, 0, v11);
    }
  }
}

void __92__PKAccountBillPaymentController__presentPaymentAuthorizationWithPaymentRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKPaymentAuthorizationCoordinator could not be presented with paymentRequest: %@.", *(a1 + 32), *MEMORY[0x1E696A578]];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v4 = [v5 errorWithDomain:@"PKPassKitErrorDomain" code:0 userInfo:v7];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v4);
  }
}

- (void)_performApplePayTrustSignatureRequestWithSignature:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke;
  aBlock[3] = &unk_1E79C4E28;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  if (PKUIOnlyDemoModeEnabled())
  {
    v9 = [[PKPaymentAuthorizationResult alloc] initWithStatus:0 errors:0];
    self->_completedBillPayment = 1;
    v10 = [(PKAccount *)self->_account copy];
    v11 = [(PKAccountWebServiceApplePayTrustRequest *)v10 creditDetails];
    v24 = [v11 accountSummary];

    v12 = [v24 adjustedBalance];
    v13 = [v12 decimalNumberBySubtracting:self->_totalPaymentAmount];
    [(PKAccountWebServiceApplePayTrustRequest *)v10 creditDetails];
    v15 = v14 = v7;
    [v15 accountSummary];
    v17 = v16 = v6;
    [v17 setCurrentBalance:v13];

    v7 = v14;
    v8[2](v8);
    accountService = self->_accountService;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_3_100;
    v25[3] = &unk_1E79C9728;
    v26 = v9;
    v27 = v14;
    v19 = v9;
    v20 = accountService;
    v6 = v16;
    [(PKAccountService *)v20 updateMockAccountWithAccount:v10 completion:v25];

    v21 = v24;
  }

  else
  {
    dispatch_group_enter(self->_performBillPaymentGroup);
    v10 = [[PKAccountWebServiceApplePayTrustRequest alloc] initWithApplePayTrustProtocol:self->_schedulePaymentRequest];
    [(PKAccountWebServiceApplePayTrustRequest *)v10 setSignature:v6];
    webService = self->_webService;
    account = self->_account;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_2;
    v28[3] = &unk_1E79C9700;
    v28[4] = self;
    v29 = v8;
    v30 = v7;
    [(PKPaymentWebService *)webService applePayTrustSignatureRequestWithRequest:v10 account:account completion:v28];

    v21 = v29;
  }
}

void __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(v3 + 48) uniqueID];
    [WeakRetained recomputeCategoryVisualizationMangitudesForPassUniqueID:v4 style:2 paymentService:*(*(a1 + 32) + 16)];
  }

  else
  {
    v5 = *(v3 + 16);
    v4 = [*(v3 + 48) uniqueID];
    [v5 recomputeCategoryVisualizationMangitudesForPassUniqueID:v4 style:2];
  }
}

void __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_3;
  block[3] = &unk_1E79C96D8;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40) == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = !v2;
  v4 = [[PKPaymentAuthorizationResult alloc] initWithStatus:!v2 errors:0];
  if (v3)
  {
    objc_storeStrong((*(a1 + 48) + 40), *(a1 + 40));
    v20 = *(a1 + 64);
    if (v20)
    {
      (*(v20 + 16))(v20, v4);
    }

    v21 = *(*(a1 + 48) + 120);
    if (v21)
    {
      dispatch_group_leave(v21);
    }
  }

  else
  {
    v5 = [*(a1 + 32) payments];
    v6 = *(a1 + 48);
    v7 = *(v6 + 152);
    *(v6 + 152) = v5;

    *(*(a1 + 48) + 98) = 1;
    v8 = *(a1 + 48);
    v9 = *(v8 + 88);
    if (v9)
    {
      v10 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v9;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Inserting bill payment selected suggested amount data for successful payment: %@", buf, 0xCu);
      }

      v11 = [MEMORY[0x1E695DFD8] setWithObject:*(*(a1 + 48) + 88)];
      v12 = [*(*(a1 + 48) + 128) accountIdentifier];
      [*(*(a1 + 48) + 56) insertEvents:v11 withAccountidentifier:v12 completion:&__block_literal_global_21];

      v8 = *(a1 + 48);
    }

    v13 = [*(v8 + 24) scheduleDetails];
    v14 = [v13 frequency];

    if (v14 == 1)
    {
      (*(*(a1 + 56) + 16))();
    }

    v15 = *(a1 + 48);
    v16 = *(v15 + 56);
    v17 = *(v15 + 128);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_97;
    v22[3] = &unk_1E79C96B0;
    v25 = *(a1 + 64);
    v18 = v4;
    v19 = *(a1 + 48);
    v23 = v18;
    v24 = v19;
    [v16 updateScheduledPaymentsWithAccount:v17 completion:v22];
  }
}

void __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_95(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Error inserting bill payment selected suggested amount data: %@", &v4, 0xCu);
    }
  }
}

void __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_97(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_2_98;
  block[3] = &unk_1E79C44F0;
  v7 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_2_98(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = *(a1[5] + 120);
  if (v3)
  {

    dispatch_group_leave(v3);
  }
}

uint64_t __96__PKAccountBillPaymentController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_3_100(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_billPaymentHasCompletedWithState:(unint64_t)a3 error:(id)a4
{
  v13 = a4;
  applePayTrustResponseError = self->_applePayTrustResponseError;
  self->_applePayTrustResponseError = 0;

  schedulePaymentRequest = self->_schedulePaymentRequest;
  self->_schedulePaymentRequest = 0;

  billPaymentSuggestedAmountDataEvent = self->_billPaymentSuggestedAmountDataEvent;
  self->_billPaymentSuggestedAmountDataEvent = 0;

  self->_performingAction = 0;
  self->_completedBillPayment = 0;
  performBillPaymentGroup = self->_performBillPaymentGroup;
  self->_performBillPaymentGroup = 0;

  self->_dismissedBillPayment = 0;
  v10 = [(PKAccountBillPaymentController *)self delegate];
  v11 = v10;
  if (a3 == 1)
  {
    [v10 accountBillPaymentController:self hasChangedState:1 error:0 updatedAccount:0];

    accountService = self->_accountService;
    v11 = [(PKAccount *)self->_account accountIdentifier];
    [(PKAccountService *)accountService updateAccountWithIdentifier:v11 extended:0 completion:0];
  }

  else
  {
    [v10 accountBillPaymentController:self hasChangedState:a3 error:v13 updatedAccount:0];
  }
}

- (void)_accountDidChange:(id)a3
{
  account = self->_account;
  if (account)
  {
    accountService = self->_accountService;
    v6 = [(PKAccount *)account accountIdentifier];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__PKAccountBillPaymentController__accountDidChange___block_invoke;
    v7[3] = &unk_1E79C9750;
    v7[4] = self;
    [(PKAccountService *)accountService accountWithIdentifier:v6 completion:v7];
  }
}

void __52__PKAccountBillPaymentController__accountDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKAccountBillPaymentController__accountDidChange___block_invoke_2;
  v5[3] = &unk_1E79C4DD8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (PKAccountBillPaymentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end