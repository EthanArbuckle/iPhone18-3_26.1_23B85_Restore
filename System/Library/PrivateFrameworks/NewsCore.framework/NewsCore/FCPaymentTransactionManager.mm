@interface FCPaymentTransactionManager
- (BOOL)canMakePayments;
- (FCPaymentTransactionManager)init;
- (FCPaymentTransactionManagerDelegate)delegate;
- (id)createPaymentQueueWithProductID:(id)d purchaseID:(id)iD bundleID:(id)bundleID webAccessOptIn:(BOOL)in appAdamID:(id)adamID storeExternalVersion:(id)version;
- (void)paymentTransactionObserver:(id)observer didFailPurchaseTransactionWithTransaction:(id)transaction;
- (void)paymentTransactionObserver:(id)observer didFinishPurchaseTransaction:(id)transaction;
- (void)registerOngoingPurchaseTransactionsWithEntry:(id)entry;
- (void)startPurchaseWithTagID:(id)d productID:(id)iD purchaseID:(id)purchaseID bundleID:(id)bundleID appAdamID:(id)adamID storeExternalVersion:(id)version price:(id)price webAccessOptIn:(BOOL)self0 payment:(id)self1;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    paymentQueueByProductID = v2->_paymentQueueByProductID;
    v2->_paymentQueueByProductID = dictionary;
  }

  return v2;
}

- (BOOL)canMakePayments
{
  SKPaymentQueueClass = getSKPaymentQueueClass();

  return [SKPaymentQueueClass canMakePayments];
}

- (void)registerOngoingPurchaseTransactionsWithEntry:(id)entry
{
  entryCopy = entry;
  productID = [entryCopy productID];
  purchaseID = [entryCopy purchaseID];
  bundleID = [entryCopy bundleID];
  webAccessOptIn = [entryCopy webAccessOptIn];
  appAdamID = [entryCopy appAdamID];
  storeExternalVersion = [entryCopy storeExternalVersion];
  v14 = [(FCPaymentTransactionManager *)self createPaymentQueueWithProductID:productID purchaseID:purchaseID bundleID:bundleID webAccessOptIn:webAccessOptIn appAdamID:appAdamID storeExternalVersion:storeExternalVersion];

  paymentTransactionObserver = [(FCPaymentTransactionManager *)self paymentTransactionObserver];
  [v14 addTransactionObserver:paymentTransactionObserver];

  paymentQueueByProductID = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  productID2 = [entryCopy productID];

  [paymentQueueByProductID setObject:v14 forKey:productID2];
}

- (void)startPurchaseWithTagID:(id)d productID:(id)iD purchaseID:(id)purchaseID bundleID:(id)bundleID appAdamID:(id)adamID storeExternalVersion:(id)version price:(id)price webAccessOptIn:(BOOL)self0 payment:(id)self1
{
  v34[2] = *MEMORY[0x1E69E9840];
  if (in)
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
  paymentCopy = payment;
  versionCopy = version;
  adamIDCopy = adamID;
  bundleIDCopy = bundleID;
  purchaseIDCopy = purchaseID;
  iDCopy = iD;
  mainBundle = [v17 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v34[1] = bundleIdentifier;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  [paymentCopy setRequestParameters:v27];
  v28 = [(FCPaymentTransactionManager *)self createPaymentQueueWithProductID:iDCopy purchaseID:purchaseIDCopy bundleID:bundleIDCopy webAccessOptIn:in appAdamID:adamIDCopy storeExternalVersion:versionCopy];

  paymentTransactionObserver = [(FCPaymentTransactionManager *)self paymentTransactionObserver];
  [v28 addTransactionObserver:paymentTransactionObserver];

  [v28 addPayment:paymentCopy];
  paymentQueueByProductID = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  [paymentQueueByProductID setObject:v28 forKey:iDCopy];

  v31 = *MEMORY[0x1E69E9840];
}

- (id)createPaymentQueueWithProductID:(id)d purchaseID:(id)iD bundleID:(id)bundleID webAccessOptIn:(BOOL)in appAdamID:(id)adamID storeExternalVersion:(id)version
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  adamIDCopy = adamID;
  versionCopy = version;
  paymentQueueByProductID = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  v19 = [paymentQueueByProductID objectForKey:dCopy];

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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v23 setBundleIdentifier:bundleIdentifier];

    [v23 setBundleVersion:@"1.0"];
    [v23 setStoreItemIdentifier:adamIDCopy];
    [v23 setStoreExternalVersion:versionCopy];
    [v23 setVendorIdentifier:v20];
    v19 = [objc_alloc(getSKPaymentQueueClass()) initWithPaymentQueueClient:v23];
  }

  return v19;
}

- (void)paymentTransactionObserver:(id)observer didFailPurchaseTransactionWithTransaction:(id)transaction
{
  v33[2] = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  payment = [transactionCopy payment];
  productIdentifier = [payment productIdentifier];

  if (!productIdentifier && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  error = [transactionCopy error];

  if (!error && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  payment2 = [transactionCopy payment];
  productIdentifier2 = [payment2 productIdentifier];

  transactionState = [transactionCopy transactionState];
  error2 = [transactionCopy error];
  v13 = error2;
  if (error2)
  {
    v14 = error2;
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
    v31 = productIdentifier2;
    v32 = 2114;
    v33[0] = v14;
    _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "%{public}@ didFailPurchaseTransaction with productID: %{public}@ failed with error: %{public}@", buf, 0x20u);
  }

  if ((transactionState - 1) >= 4)
  {
    transactionState = 0;
  }

  paymentQueueByProductID = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  [paymentQueueByProductID removeObjectForKey:productIdentifier2];

  delegate = [(FCPaymentTransactionManager *)self delegate];
  [delegate transactionFailedWithProductID:productIdentifier2 transactionState:transactionState transactionError:v14];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)paymentTransactionObserver:(id)observer didFinishPurchaseTransaction:(id)transaction
{
  v57 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  transactionCopy = transaction;
  if (!transactionCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  payment = [transactionCopy payment];
  productIdentifier = [payment productIdentifier];

  if (!productIdentifier && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    payment2 = [transactionCopy payment];
    productIdentifier2 = [payment2 productIdentifier];
    *buf = 138543618;
    v50 = v11;
    v51 = 2114;
    v52 = productIdentifier2;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ didFinishPurchaseTransaction with productID: %{public}@", buf, 0x16u);
  }

  paymentQueueByProductID = [(FCPaymentTransactionManager *)self paymentQueueByProductID];
  payment3 = [transactionCopy payment];
  productIdentifier3 = [payment3 productIdentifier];
  [paymentQueueByProductID removeObjectForKey:productIdentifier3];

  appleIDAccountDetails = [transactionCopy appleIDAccountDetails];

  if (appleIDAccountDetails)
  {
    appleIDAccountDetails2 = [transactionCopy appleIDAccountDetails];
    accountSignupError = [appleIDAccountDetails2 accountSignupError];

    if (accountSignupError)
    {
      v20 = [FCPaymentTransactionAuthorizationResponse alloc];
      appleIDAccountDetails3 = [transactionCopy appleIDAccountDetails];
      accountSignupError2 = [appleIDAccountDetails3 accountSignupError];
      v23 = [(FCPaymentTransactionAuthorizationResponse *)v20 initWithCredential:0 accountSignupError:accountSignupError2];
    }

    else
    {
      appleIDAccountDetails4 = [transactionCopy appleIDAccountDetails];
      appleIDAccountDetails3 = [appleIDAccountDetails4 authorizationAppleIDCredential];

      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      authorizationCode = [appleIDAccountDetails3 authorizationCode];
      accountSignupError2 = [v25 initWithData:authorizationCode encoding:4];

      v27 = objc_alloc(MEMORY[0x1E696AEC0]);
      identityToken = [appleIDAccountDetails3 identityToken];
      v47 = [v27 initWithData:identityToken encoding:4];

      v45 = [FCAuthKitAuthorizationCredential alloc];
      userIdentifier = [appleIDAccountDetails3 userIdentifier];
      userInformation = [appleIDAccountDetails3 userInformation];
      selectedEmail = [userInformation selectedEmail];
      userInformation2 = [appleIDAccountDetails3 userInformation];
      familyName = [userInformation2 familyName];
      userInformation3 = [appleIDAccountDetails3 userInformation];
      [userInformation3 givenName];
      v34 = v33 = self;
      v35 = [(FCAuthKitAuthorizationCredential *)v45 initWithAuthorizationCode:accountSignupError2 identityToken:v47 userIdentifier:userIdentifier email:selectedEmail familyName:familyName givenName:v34];

      self = v33;
      v23 = [[FCPaymentTransactionAuthorizationResponse alloc] initWithCredential:v35 accountSignupError:0];
    }
  }

  else
  {
    v23 = 0;
  }

  v36 = [FCCompletedPaymentTransaction alloc];
  payment4 = [transactionCopy payment];
  productIdentifier4 = [payment4 productIdentifier];
  v39 = [(FCCompletedPaymentTransaction *)v36 initWithProductID:productIdentifier4 receipt:0 appleIDAccountDetails:v23];

  delegate = [(FCPaymentTransactionManager *)self delegate];
  [delegate transactionPurchased:v39];

  v41 = *MEMORY[0x1E69E9840];
}

- (FCPaymentTransactionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end