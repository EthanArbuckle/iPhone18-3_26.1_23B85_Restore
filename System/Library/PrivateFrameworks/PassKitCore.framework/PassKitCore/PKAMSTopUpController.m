@interface PKAMSTopUpController
- (AMSURLProtocolDelegate)taskDelegate;
- (void)_executeAMSURLRequestForBagKey:(id)a3 method:(int64_t)a4 parameters:(id)a5 completion:(id)a6;
- (void)requestDTUAvailable:(id)a3;
- (void)requestDTUConfigurationWithCompletion:(id)a3;
- (void)requestPurchaseWithAmount:(id)a3 promotionConfiguration:(id)a4 completion:(id)a5;
@end

@implementation PKAMSTopUpController

- (void)_executeAMSURLRequestForBagKey:(id)a3 method:(int64_t)a4 parameters:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(PKAMSTopUpController *)self _bag];
  v14 = [v13 URLForKey:v12];

  v15 = [objc_alloc(MEMORY[0x1E698CB88]) initWithBag:v13];
  [v15 setRequestEncoding:3];
  v16 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v17 = [v16 ams_activeiTunesAccount];

  [v15 setAccount:v17];
  v18 = AMSLogKey();
  [v15 setLogUUID:v18];

  v19 = [v15 requestWithMethod:a4 bagURL:v14 parameters:v11];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__PKAMSTopUpController__executeAMSURLRequestForBagKey_method_parameters_completion___block_invoke;
  v22[3] = &unk_1E79D5BE0;
  v22[4] = self;
  v23 = v10;
  v20 = v10;
  v21 = [v19 thenWithBlock:v22];
}

id __84__PKAMSTopUpController__executeAMSURLRequestForBagKey_method_parameters_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698CBA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  v7 = [v5 initWithConfiguration:v6];

  v8 = [*(a1 + 32) taskDelegate];
  [v7 setDelegate:v8];

  v9 = [v7 dataTaskPromiseWithRequest:v4];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PKAMSTopUpController__executeAMSURLRequestForBagKey_method_parameters_completion___block_invoke_2;
  v11[3] = &unk_1E79D5BB8;
  v12 = *(a1 + 40);
  [v9 addFinishBlock:v11];

  return v9;
}

void __84__PKAMSTopUpController__executeAMSURLRequestForBagKey_method_parameters_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = [a2 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestDTUConfigurationWithCompletion:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9[0] = @"useApplePayForWalletTopUp";
  v9[1] = @"isForAppleAccountPassDashboard";
  v10[0] = MEMORY[0x1E695E118];
  v10[1] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKAMSTopUpController_requestDTUConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_1E79C5688;
  v8 = v4;
  v6 = v4;
  [(PKAMSTopUpController *)self _executeAMSURLRequestForBagKey:@"addFundsInfoSrv" method:4 parameters:v5 completion:v7];
}

void __62__PKAMSTopUpController_requestDTUConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = 0;
  v11 = v5;
  v7 = 0;
  if (a2 && !v5)
  {
    v8 = [a2 valueForKeyPath:@"data.attributes.info"];
    v7 = [[PKAppleBalanceDirectTopUpConfiguration alloc] initWithAMSResponseDictionary:v8];
    v9 = [PKAppleBalancePromotionConfiguration alloc];
    v10 = [v8 PKDictionaryForKey:@"offer"];
    v6 = [(PKAppleBalancePromotionConfiguration *)v9 initWithAMSOfferDictionary:v10];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestPurchaseWithAmount:(id)a3 promotionConfiguration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v28 = a5;
  v29 = [(PKAMSTopUpController *)self _bag];
  v10 = [objc_alloc(MEMORY[0x1E696AB90]) initWithInt:1000];
  v27 = v8;
  v11 = [v8 decimalNumberByMultiplyingBy:v10];

  v12 = [v11 stringValue];
  v13 = objc_alloc_init(MEMORY[0x1E698C818]);
  [v13 setParameter:v12 forKey:@"price"];
  [v13 setParameter:v12 forKey:@"amount"];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v13 setParameter:v14 forKey:@"addFunds"];

  v15 = [MEMORY[0x1E696AD98] numberWithInt:4];
  [v13 setParameter:v15 forKey:*MEMORY[0x1E698C528]];

  if (v9)
  {
    v16 = [v9 programIdentifier];
    [v13 setParameter:v16 forKey:@"programId"];

    v17 = [v9 versionIdentifier];
    [v13 setParameter:v17 forKey:@"versionId"];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "stamp")}];
    [v13 setParameter:v18 forKey:@"stamp"];
  }

  v19 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v20 = [v19 ams_activeiTunesAccount];

  v21 = [objc_alloc(MEMORY[0x1E698CAE0]) initWithPurchaseType:0 buyParams:v13];
  [v21 setAccount:v20];
  v22 = AMSLogKey();
  [v21 setLogUUID:v22];

  v23 = [objc_alloc(MEMORY[0x1E698CAF8]) initWithPurchase:v21 bag:v29];
  v24 = [(PKAMSTopUpController *)self taskDelegate];
  [v23 setDelegate:v24];

  v25 = [v23 performPurchase];
  objc_initWeak(&location, self);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __84__PKAMSTopUpController_requestPurchaseWithAmount_promotionConfiguration_completion___block_invoke;
  v30[3] = &unk_1E79D5C08;
  objc_copyWeak(&v32, &location);
  v26 = v28;
  v31 = v26;
  [v25 addFinishBlock:v30];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __84__PKAMSTopUpController_requestPurchaseWithAmount_promotionConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0, v6);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__PKAMSTopUpController_requestPurchaseWithAmount_promotionConfiguration_completion___block_invoke_2;
    v9[3] = &unk_1E79C5688;
    v10 = *(a1 + 32);
    [WeakRetained _executeAMSURLRequestForBagKey:@"addFundsSuccessSrv" method:2 parameters:0 completion:v9];
  }
}

uint64_t __84__PKAMSTopUpController_requestPurchaseWithAmount_promotionConfiguration_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0, a2);
  }

  return result;
}

- (void)requestDTUAvailable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    [(PKAsyncUnaryOperationComposer *)v5 addOperation:&__block_literal_global_116];
    v6 = [(PKAMSTopUpController *)self _bag];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__35;
    v23[4] = __Block_byref_object_dispose__35;
    v24 = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__35;
    v21[4] = __Block_byref_object_dispose__35;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_95;
    v18[3] = &unk_1E79CD7C0;
    v7 = v6;
    v19 = v7;
    v20 = v23;
    [(PKAsyncUnaryOperationComposer *)v5 addOperation:v18];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_3;
    v15[3] = &unk_1E79CD7C0;
    v8 = v7;
    v16 = v8;
    v17 = v21;
    [(PKAsyncUnaryOperationComposer *)v5 addOperation:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_5;
    v14[3] = &unk_1E79D5CA0;
    v14[4] = v23;
    v14[5] = v21;
    [(PKAsyncUnaryOperationComposer *)v5 addOperation:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_102;
    v13[3] = &unk_1E79D5CF0;
    v13[4] = self;
    [(PKAsyncUnaryOperationComposer *)v5 addOperation:v13];
    v9 = [MEMORY[0x1E695DFB0] null];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_113;
    v11[3] = &unk_1E79D04A0;
    v12 = v4;
    v10 = [(PKAsyncUnaryOperationComposer *)v5 evaluateWithInput:v9 completion:v11];

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v23, 8);
  }
}

void __44__PKAMSTopUpController_requestDTUAvailable___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E698C8A8] isWalletBiometricsEnabled];
  if ((v7 & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Biometrics not enabled for Apple Pay, failing PKAMSTopUpController biometric availability check", v9, 2u);
    }
  }

  v6[2](v6, v5, v7 ^ 1u);
}

void __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_95(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) stringForKey:@"countryCode"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_2;
  v12[3] = &unk_1E79D5C50;
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v8 valueWithCompletion:v12];
}

uint64_t __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = [v3 uppercaseString];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) arrayForKey:@"apple-pay-classic-networks"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_4;
  v12[3] = &unk_1E79D5C78;
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v8 valueWithCompletion:v12];
}

uint64_t __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *(*(*(a1 + 32) + 8) + 40);
  if (v11 && (v12 = *(*(*(a1 + 40) + 8) + 40)) != 0)
  {
    v13 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Fetching in-app payment passes for countryCode: %@, paymentNetworks: %@", buf, 0x16u);
    }

    v14 = +[PKPassLibrary sharedInstance];
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:*(*(*(a1 + 40) + 8) + 40)];
    v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{*(*(*(a1 + 32) + 8) + 40), 0}];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_100;
    v17[3] = &unk_1E79C4888;
    v19 = v10;
    v18 = v8;
    [v14 hasInAppPaymentPassesForNetworks:v15 capabilities:13 issuerCountryCodes:v16 withHandler:v17];
  }

  else
  {
    (*(v9 + 2))(v9, v8, 1);
  }
}

uint64_t __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_100(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "No eligible in app payment passes, failing PKAMSTopUpController availability check", v5, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_102(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v11 = [v10 ams_activeiTunesAccount];

  v12 = [objc_alloc(MEMORY[0x1E698C800]) initWithAccount:v11 forSignaturePurpose:0];
  v13 = [v12 perform];
  objc_initWeak(&location, *(a1 + 32));
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_2_104;
  v16[3] = &unk_1E79D5CC8;
  objc_copyWeak(&v19, &location);
  v14 = v9;
  v18 = v14;
  v15 = v8;
  v17 = v15;
  [v13 resultWithCompletion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_2_104(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Fetched AMS biometrics availability with result: %{public}@, error: %@", &v9, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __44__PKAMSTopUpController_requestDTUAvailable___block_invoke_113(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a4 isCanceled];
  v6 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"YES";
    if (v5)
    {
      v7 = @"NO";
    }

    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Apple Balance DTU available: %{public}@", &v9, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (AMSURLProtocolDelegate)taskDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_taskDelegate);

  return WeakRetained;
}

@end