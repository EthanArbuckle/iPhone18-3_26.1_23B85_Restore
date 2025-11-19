@interface FCPaymentTransactionManager
- (BOOL)canMakePayments;
- (FCPaymentTransactionManager)init;
- (FCPaymentTransactionManagerDelegate)delegate;
- (id)createPaymentQueueWithProductID:(id)a3 purchaseID:(id)a4 bundleID:(id)a5 webAccessOptIn:(BOOL)a6 appAdamID:(id)a7 storeExternalVersion:(id)a8;
- (void)paymentTransactionObserver:(id)a3 didFailPurchaseTransactionWithTransaction:(id)a4;
- (void)paymentTransactionObserver:(id)a3 didFinishPurchaseTransaction:(id)a4;
- (void)registerOngoingPurchaseTransactionsWithEntry:(id)a3;
- (void)startPurchaseWithTagID:(id)a3 productID:(id)a4 purchaseID:(id)a5 bundleID:(id)a6 appAdamID:(id)a7 storeExternalVersion:(id)a8 price:(id)a9 webAccessOptIn:(BOOL)a10 payment:(id)a11;
@end

@implementation FCPaymentTransactionManager

- (FCPaymentTransactionManager)init
{
  v8.receiver = self;
  v8.super_class = FCPaymentTransactionManager;
  v2 = [(FCPaymentTransactionManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(FCPaymentTransactionObserver);
    paymentTransactionObserver = v2->_paymentTransactionObserver;
    v2->_paymentTransactionObserver = v3;

    [(FCPaymentTransactionObserver *)v2->_paymentTransactionObserver setDelegate:v2];
    v5 = [MEMORY[0x1E695DF90] dictionary];
    paymentQueueByProductID = v2->_paymentQueueByProductID;
    v2->_paymentQueueByProductID = v5;
  }

  return v2;
}

- (BOOL)canMakePayments
{
  SKPaymentQueueClass = getSKPaymentQueueClass();

  return [SKPaymentQueueClass canMakePayments];
}

- (void)registerOngoingPurchaseTransactionsWithEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 productID];
  v6 = [v4 purchaseID];
  v7 = [v4 bundleID];
  v8 = [v4 webAccessOptIn];
  v9 = [v4 appAdamID];
  v10 = [v4 storeExternalVersion];
  v14 = [(FCPaymentTransactionManager *)self createPaymentQueueWithProductID:v5 purchaseID:v6 bundleID:v7 webAccessOptIn:v8 appAdamID:v9 storeExternalVersion:v10];

  v11 = [(FCPaymentTransactionManager *)self paymentTransactionObserver];
  [v14 addTransactionObserver:v11];

  v12 = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  v13 = [v4 productID];

  [v12 setObject:v14 forKey:v13];
}

- (void)startPurchaseWithTagID:(id)a3 productID:(id)a4 purchaseID:(id)a5 bundleID:(id)a6 appAdamID:(id)a7 storeExternalVersion:(id)a8 price:(id)a9 webAccessOptIn:(BOOL)a10 payment:(id)a11
{
  v34[2] = *MEMORY[0x1E69E9840];
  if (a10)
  {
    v16 = @"true";
  }

  else
  {
    v16 = @"false";
  }

  v33[0] = @"hasWebOptIn";
  v33[1] = @"mtApp";
  v34[0] = v16;
  v17 = MEMORY[0x1E696AAE8];
  v18 = v16;
  v19 = a11;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = [v17 mainBundle];
  v26 = [v25 bundleIdentifier];
  v34[1] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  [v19 setRequestParameters:v27];
  v28 = [(FCPaymentTransactionManager *)self createPaymentQueueWithProductID:v24 purchaseID:v23 bundleID:v22 webAccessOptIn:a10 appAdamID:v21 storeExternalVersion:v20];

  v29 = [(FCPaymentTransactionManager *)self paymentTransactionObserver];
  [v28 addTransactionObserver:v29];

  [v28 addPayment:v19];
  v30 = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  [v30 setObject:v28 forKey:v24];

  v31 = *MEMORY[0x1E69E9840];
}

- (id)createPaymentQueueWithProductID:(id)a3 purchaseID:(id)a4 bundleID:(id)a5 webAccessOptIn:(BOOL)a6 appAdamID:(id)a7 storeExternalVersion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  v19 = [v18 objectForKey:v13];

  if (!v19)
  {
    v20 = FCDeviceIdentifierForVendor();
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v21 = getSKPaymentQueueClientClass_softClass;
    v31 = getSKPaymentQueueClientClass_softClass;
    if (!getSKPaymentQueueClientClass_softClass)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __getSKPaymentQueueClientClass_block_invoke;
      v27[3] = &unk_1E7C3C510;
      v27[4] = &v28;
      __getSKPaymentQueueClientClass_block_invoke(v27);
      v21 = v29[3];
    }

    v22 = v21;
    _Block_object_dispose(&v28, 8);
    v23 = objc_alloc_init(v21);
    v24 = [MEMORY[0x1E696AAE8] mainBundle];
    v25 = [v24 bundleIdentifier];
    [v23 setBundleIdentifier:v25];

    [v23 setBundleVersion:@"1.0"];
    [v23 setStoreItemIdentifier:v16];
    [v23 setStoreExternalVersion:v17];
    [v23 setVendorIdentifier:v20];
    v19 = [objc_alloc(getSKPaymentQueueClass()) initWithPaymentQueueClient:v23];
  }

  return v19;
}

- (void)paymentTransactionObserver:(id)a3 didFailPurchaseTransactionWithTransaction:(id)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 payment];
  v7 = [v6 productIdentifier];

  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "transaction.payment.productIdentifier"];
    *buf = 136315906;
    v29 = "[FCPaymentTransactionManager paymentTransactionObserver:didFailPurchaseTransactionWithTransaction:]";
    v30 = 2080;
    v31 = "FCPaymentTransactionManager.m";
    v32 = 1024;
    LODWORD(v33[0]) = 151;
    WORD2(v33[0]) = 2114;
    *(v33 + 6) = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = [v5 error];

  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "transaction.error"];
    *buf = 136315906;
    v29 = "[FCPaymentTransactionManager paymentTransactionObserver:didFailPurchaseTransactionWithTransaction:]";
    v30 = 2080;
    v31 = "FCPaymentTransactionManager.m";
    v32 = 1024;
    LODWORD(v33[0]) = 152;
    WORD2(v33[0]) = 2114;
    *(v33 + 6) = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = [v5 payment];
  v10 = [v9 productIdentifier];

  v11 = [v5 transactionState];
  v12 = [v5 error];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = FCPurchaseTransactionGenericErrorCode;
    v26 = *MEMORY[0x1E696A578];
    v27 = @"The transaction returned with no error";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14 = [v15 errorWithDomain:@"com.apple.news.purchase" code:v16 userInfo:v17];
  }

  v18 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
  {
    v22 = v18;
    v23 = objc_opt_class();
    *buf = 138543874;
    v29 = v23;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33[0] = v14;
    _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "%{public}@ didFailPurchaseTransaction with productID: %{public}@ failed with error: %{public}@", buf, 0x20u);
  }

  if ((v11 - 1) >= 4)
  {
    v11 = 0;
  }

  v19 = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  [v19 removeObjectForKey:v10];

  v20 = [(FCPaymentTransactionManager *)self delegate];
  [v20 transactionFailedWithProductID:v10 transactionState:v11 transactionError:v14];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)paymentTransactionObserver:(id)a3 didFinishPurchaseTransaction:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v6 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "transaction"];
    *buf = 136315906;
    v50 = "[FCPaymentTransactionManager paymentTransactionObserver:didFinishPurchaseTransaction:]";
    v51 = 2080;
    v52 = "FCPaymentTransactionManager.m";
    v53 = 1024;
    v54 = 173;
    v55 = 2114;
    v56 = v42;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [v6 payment];
  v8 = [v7 productIdentifier];

  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "transaction.payment.productIdentifier"];
    *buf = 136315906;
    v50 = "[FCPaymentTransactionManager paymentTransactionObserver:didFinishPurchaseTransaction:]";
    v51 = 2080;
    v52 = "FCPaymentTransactionManager.m";
    v53 = 1024;
    v54 = 174;
    v55 = 2114;
    v56 = v43;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = [v6 payment];
    v13 = [v12 productIdentifier];
    *buf = 138543618;
    v50 = v11;
    v51 = 2114;
    v52 = v13;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ didFinishPurchaseTransaction with productID: %{public}@", buf, 0x16u);
  }

  v14 = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  v15 = [v6 payment];
  v16 = [v15 productIdentifier];
  [v14 removeObjectForKey:v16];

  v17 = [v6 appleIDAccountDetails];

  if (v17)
  {
    v18 = [v6 appleIDAccountDetails];
    v19 = [v18 accountSignupError];

    if (v19)
    {
      v20 = [FCPaymentTransactionAuthorizationResponse alloc];
      v21 = [v6 appleIDAccountDetails];
      v22 = [v21 accountSignupError];
      v23 = [(FCPaymentTransactionAuthorizationResponse *)v20 initWithCredential:0 accountSignupError:v22];
    }

    else
    {
      v24 = [v6 appleIDAccountDetails];
      v21 = [v24 authorizationAppleIDCredential];

      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      v26 = [v21 authorizationCode];
      v22 = [v25 initWithData:v26 encoding:4];

      v27 = objc_alloc(MEMORY[0x1E696AEC0]);
      v28 = [v21 identityToken];
      v47 = [v27 initWithData:v28 encoding:4];

      v45 = [FCAuthKitAuthorizationCredential alloc];
      v44 = [v21 userIdentifier];
      v46 = [v21 userInformation];
      v29 = [v46 selectedEmail];
      v30 = [v21 userInformation];
      v31 = [v30 familyName];
      v32 = [v21 userInformation];
      [v32 givenName];
      v34 = v33 = self;
      v35 = [(FCAuthKitAuthorizationCredential *)v45 initWithAuthorizationCode:v22 identityToken:v47 userIdentifier:v44 email:v29 familyName:v31 givenName:v34];

      self = v33;
      v23 = [[FCPaymentTransactionAuthorizationResponse alloc] initWithCredential:v35 accountSignupError:0];
    }
  }

  else
  {
    v23 = 0;
  }

  v36 = [FCCompletedPaymentTransaction alloc];
  v37 = [v6 payment];
  v38 = [v37 productIdentifier];
  v39 = [(FCCompletedPaymentTransaction *)v36 initWithProductID:v38 receipt:0 appleIDAccountDetails:v23];

  v40 = [(FCPaymentTransactionManager *)self delegate];
  [v40 transactionPurchased:v39];

  v41 = *MEMORY[0x1E69E9840];
}

- (FCPaymentTransactionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end