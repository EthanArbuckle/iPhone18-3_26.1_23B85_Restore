@interface NPKBarcodePaymentSession
- (NPKBarcodePaymentSession)initWithPaymentPass:(id)pass authorizationCredential:(id)credential;
- (NPKBarcodePaymentSessionDelegate)delegate;
- (void)_acquireExpressTransactionSuppressAssertion;
- (void)_acquireNotificationSuppressionAssertion;
- (void)_completedAuthenticationForTransaction:(id)transaction;
- (void)_extendSessionTimeoutTimer;
- (void)_fetchDecryptedBarcodeWithCredential:(id)credential;
- (void)_handleSessionTimeout;
- (void)_handleUpdatedPaymentTransaction:(id)transaction;
- (void)_handleUpdatedTransactionStatus:(unint64_t)status;
- (void)_insertPaymentTransactionForActiveBarcode;
- (void)_invokeExtensionToCollectPaymentInformation;
- (void)_processedAuthenticationMechanismForTransaction:(id)transaction;
- (void)_releaseExpressTransactionSuppressionAssertion;
- (void)_releaseNotificationSuppressionAssertion;
- (void)_startSessionTimeoutTimer;
- (void)_stopSessionTimeoutTimer;
- (void)_updateCurrentPaymentBarcodeWithBarcodeIdentifier:(id)identifier decryptedBarcodeCredential:(id)credential error:(id)error;
- (void)_updateCurrentTransactionStatus:(unint64_t)status transaction:(id)transaction;
- (void)invalidateSession;
- (void)retryFetchingBarcode;
- (void)startSession;
- (void)submitPinCode:(id)code;
- (void)submitUserIntentionConfirmation:(BOOL)confirmation;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
@end

@implementation NPKBarcodePaymentSession

- (NPKBarcodePaymentSession)initWithPaymentPass:(id)pass authorizationCredential:(id)credential
{
  v22 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  credentialCopy = credential;
  v19.receiver = self;
  v19.super_class = NPKBarcodePaymentSession;
  v9 = [(NPKBarcodePaymentSession *)&v19 init];
  if (v9)
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [passCopy uniqueID];
        *buf = 138412290;
        v21 = uniqueID;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] New barcode session created for pass: %@", buf, 0xCu);
      }
    }

    objc_storeStrong(&v9->_paymentPass, pass);
    objc_storeStrong(&v9->_authorizationCredential, credential);
    v9->_currentTransactionStatus = 0;
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.NanoPassKit.BarcodePaymentSession", v14);
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)startSession
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] %@ session started!", &v9, 0xCu);
    }
  }

  [(NPKBarcodePaymentSession *)self setSessionStarted:1];
  v6 = [objc_alloc(MEMORY[0x277D380F0]) initWithDelegate:self];
  [(NPKBarcodePaymentSession *)self setPaymentService:v6];

  [(NPKBarcodePaymentSession *)self _startSessionTimeoutTimer];
  [(NPKBarcodePaymentSession *)self _updateCurrentPaymentBarcodeWithBarcodeIdentifier:0 decryptedBarcodeCredential:0 error:0];
  authorizationCredential = [(NPKBarcodePaymentSession *)self authorizationCredential];
  [(NPKBarcodePaymentSession *)self _fetchDecryptedBarcodeWithCredential:authorizationCredential];

  [(NPKBarcodePaymentSession *)self _acquireNotificationSuppressionAssertion];
  [(NPKBarcodePaymentSession *)self _acquireExpressTransactionSuppressAssertion];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retryFetchingBarcode
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] %@ session retried!", &v8, 0xCu);
    }
  }

  [(NPKBarcodePaymentSession *)self _extendSessionTimeoutTimer];
  [(NPKBarcodePaymentSession *)self _updateCurrentPaymentBarcodeWithBarcodeIdentifier:0 decryptedBarcodeCredential:0 error:0];
  authorizationCredential = [(NPKBarcodePaymentSession *)self authorizationCredential];
  [(NPKBarcodePaymentSession *)self _fetchDecryptedBarcodeWithCredential:authorizationCredential];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidateSession
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] %@ session invalidated!", &v8, 0xCu);
    }
  }

  [(NPKBarcodePaymentSession *)self setSessionStarted:0];
  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  [paymentService setDelegate:0];

  [(NPKBarcodePaymentSession *)self setPaymentService:0];
  [(NPKBarcodePaymentSession *)self _stopSessionTimeoutTimer];
  [(NPKBarcodePaymentSession *)self _releaseNotificationSuppressionAssertion];
  [(NPKBarcodePaymentSession *)self _releaseExpressTransactionSuppressionAssertion];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)submitUserIntentionConfirmation:(BOOL)confirmation
{
  if (confirmation)
  {
    [(NPKBarcodePaymentSession *)self setSubmittingAuthenticationResult:1];
    paymentService = [(NPKBarcodePaymentSession *)self paymentService];
    currentTransaction = [(NPKBarcodePaymentSession *)self currentTransaction];
    identifier = [currentTransaction identifier];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__NPKBarcodePaymentSession_submitUserIntentionConfirmation___block_invoke;
    v8[3] = &unk_27994B268;
    v8[4] = self;
    [paymentService submitUserConfirmation:1 forTransactionIdentifier:identifier completion:v8];

    [(NPKBarcodePaymentSession *)self _extendSessionTimeoutTimer];
  }

  else
  {
    currentTransaction2 = [(NPKBarcodePaymentSession *)self currentTransaction];
    [(NPKBarcodePaymentSession *)self _completedAuthenticationForTransaction:currentTransaction2];

    [(NPKBarcodePaymentSession *)self _handleUpdatedTransactionStatus:2];
  }
}

void __60__NPKBarcodePaymentSession_submitUserIntentionConfirmation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NPKBarcodePaymentSession_submitUserIntentionConfirmation___block_invoke_2;
  block[3] = &unk_279945880;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__NPKBarcodePaymentSession_submitUserIntentionConfirmation___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      [v5 transactionStatus];
      v6 = PKPaymentTransactionStatusToString();
      v7 = *(a1 + 40);
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ user intention confirmation step up result: %@, error: %@", &v10, 0x20u);
    }
  }

  [*(a1 + 48) _handleUpdatedPaymentTransaction:*(a1 + 32)];
  result = [*(a1 + 48) setSubmittingAuthenticationResult:0];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)submitPinCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    [(NPKBarcodePaymentSession *)self setSubmittingAuthenticationResult:1];
    paymentPass = [(NPKBarcodePaymentSession *)self paymentPass];
    uniqueID = [paymentPass uniqueID];

    currentTransaction = [(NPKBarcodePaymentSession *)self currentTransaction];
    paymentService = [(NPKBarcodePaymentSession *)self paymentService];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __42__NPKBarcodePaymentSession_submitPinCode___block_invoke;
    v15 = &unk_27994B290;
    v16 = codeCopy;
    v17 = currentTransaction;
    v18 = uniqueID;
    selfCopy = self;
    v9 = uniqueID;
    v10 = currentTransaction;
    [paymentService retrievePINEncryptionCertificateForPassUniqueIdentifier:v9 withCompletion:&v12];

    [(NPKBarcodePaymentSession *)self _extendSessionTimeoutTimer:v12];
  }

  else
  {
    currentTransaction2 = [(NPKBarcodePaymentSession *)self currentTransaction];
    [(NPKBarcodePaymentSession *)self _completedAuthenticationForTransaction:currentTransaction2];

    [(NPKBarcodePaymentSession *)self _handleUpdatedTransactionStatus:2];
  }
}

void __42__NPKBarcodePaymentSession_submitPinCode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v15 = 0;
  v4 = PKEncryptTransactionAuthenticationPasscode();
  v5 = 0;
  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_2;
    block[3] = &unk_279945880;
    v12 = *(a1 + 48);
    v6 = v5;
    v7 = *(a1 + 56);
    v13 = v6;
    v14 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v8 = [*(a1 + 56) paymentService];
    v9 = [*(a1 + 40) identifier];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_58;
    v10[3] = &unk_27994B268;
    v10[4] = *(a1 + 56);
    [v8 submitEncryptedPIN:v4 forTransactionIdentifier:v9 completion:v10];
  }
}

uint64_t __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Failed to encrypt PIN for pass %@ with error %@", &v11, 0x16u);
    }
  }

  v7 = *(a1 + 48);
  v8 = [v7 currentTransaction];
  [v7 _completedAuthenticationForTransaction:v8];

  [*(a1 + 48) _handleUpdatedTransactionStatus:3];
  result = [*(a1 + 48) setSubmittingAuthenticationResult:0];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_2_59;
  block[3] = &unk_279945880;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __42__NPKBarcodePaymentSession_submitPinCode___block_invoke_2_59(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      [v5 transactionStatus];
      v6 = PKPaymentTransactionStatusToString();
      v7 = *(a1 + 40);
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ pin step up result: %@, error: %@", &v10, 0x20u);
    }
  }

  [*(a1 + 48) _handleUpdatedPaymentTransaction:*(a1 + 32)];
  result = [*(a1 + 48) setSubmittingAuthenticationResult:0];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  transactionCopy = transaction;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__NPKBarcodePaymentSession_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __78__NPKBarcodePaymentSession_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) submittingAuthenticationResult])
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Ignoring transaction update while submitting authentication result. %@", &v14, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v6 = [*(a1 + 40) barcodeIdentifier];
  v7 = [*(a1 + 32) currentPaymentBarcode];
  v8 = [v7 barcodeIdentifier];
  v9 = [v6 isEqualToString:v8];

  if (!v9)
  {
LABEL_10:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *MEMORY[0x277D85DE8];

  [v10 _handleUpdatedPaymentTransaction:v11];
}

- (void)_fetchDecryptedBarcodeWithCredential:(id)credential
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
      *buf = 138412290;
      v15 = credentialCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Start fetching decrypted barcode with credential: %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  paymentPass = [(NPKBarcodePaymentSession *)self paymentPass];
  uniqueID = [paymentPass uniqueID];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__NPKBarcodePaymentSession__fetchDecryptedBarcodeWithCredential___block_invoke;
  v12[3] = &unk_27994B2E0;
  objc_copyWeak(&v13, buf);
  [paymentService retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:uniqueID authorization:credentialCopy withCompletion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __65__NPKBarcodePaymentSession__fetchDecryptedBarcodeWithCredential___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277D37D28];
  v11 = *MEMORY[0x277D38558];
  v28[0] = *MEMORY[0x277D38538];
  v28[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v13 = *MEMORY[0x277D383D8];
  v27[0] = *MEMORY[0x277D38410];
  v14 = *MEMORY[0x277D38380];
  v26[0] = v13;
  v26[1] = v14;
  v15 = PKAnalyticsReportBarcodeCredentialRetrivalStatusFromError();
  v27[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v10 subjects:v12 sendEvent:v16];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NPKBarcodePaymentSession__fetchDecryptedBarcodeWithCredential___block_invoke_2;
  block[3] = &unk_27994B2B8;
  v22 = v9;
  v23 = v7;
  v17 = v7;
  v18 = v9;
  objc_copyWeak(&v25, (a1 + 32));
  v24 = v8;
  v19 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v25);
  v20 = *MEMORY[0x277D85DE8];
}

void __65__NPKBarcodePaymentSession__fetchDecryptedBarcodeWithCredential___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = pk_Payment_log();
  v4 = v3;
  if (v2)
  {
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = pk_Payment_log();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v7 = *(a1 + 32);
    v16 = 138412290;
    v17 = v7;
    v8 = "Error: [BarcodePayment] Failed to fetch barcode due to: %@";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

  v11 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (!v11)
  {
    goto LABEL_10;
  }

  v6 = pk_Payment_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v16 = 138412290;
    v17 = v12;
    v8 = "Notice: [BarcodePayment] Fetched barcode with identifier: %@";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
    _os_log_impl(&dword_25B300000, v9, v10, v8, &v16, 0xCu);
  }

LABEL_9:

LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateCurrentPaymentBarcodeWithBarcodeIdentifier:*(a1 + 40) decryptedBarcodeCredential:*(a1 + 48) error:*(a1 + 32)];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_invokeExtensionToCollectPaymentInformation
{
  v56 = *MEMORY[0x277D85DE8];
  paymentPass = [(NPKBarcodePaymentSession *)self paymentPass];
  uniqueID = [paymentPass uniqueID];

  currentPaymentBarcode = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
  barcodeIdentifier = [currentPaymentBarcode barcodeIdentifier];

  paymentPass2 = [(NPKBarcodePaymentSession *)self paymentPass];
  deviceAccountIdentifier = [paymentPass2 deviceAccountIdentifier];

  paymentPass3 = [(NPKBarcodePaymentSession *)self paymentPass];
  associatedApplicationIdentifiers = [paymentPass3 associatedApplicationIdentifiers];

  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = uniqueID;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Starting to collect payment information for pass %@", &buf, 0xCu);
    }
  }

  v14 = NPKMyPid();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__24;
  v54 = __Block_byref_object_dispose__24;
  v15 = objc_alloc(MEMORY[0x277CEEEA8]);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke;
  v49[3] = &__block_descriptor_36_e8_v12__0B8l;
  v50 = v14;
  v55 = [v15 initWithPID:v14 flags:1 reason:4 name:@"Submit Barcode Payment Event" withHandler:v49];
  [*(*(&buf + 1) + 40) setInvalidationHandler:&__block_literal_global_34];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_71;
  aBlock[3] = &unk_2799457C8;
  aBlock[4] = &buf;
  v16 = _Block_copy(aBlock);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  objc_initWeak(&location, paymentService);

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2;
  v39[3] = &unk_27994B328;
  v43 = v46;
  v18 = deviceAccountIdentifier;
  v40 = v18;
  v19 = barcodeIdentifier;
  v41 = v19;
  v20 = uniqueID;
  v42 = v20;
  objc_copyWeak(&v44, &location);
  v21 = _Block_copy(v39);
  v22 = [MEMORY[0x277D37E98] providerForExtensionPoint:*MEMORY[0x277D38630]];
  allObjects = [associatedApplicationIdentifiers allObjects];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_76;
  v31[3] = &unk_27994B418;
  v24 = v20;
  v32 = v24;
  selfCopy = self;
  v25 = v21;
  v37 = v25;
  v26 = v16;
  v38 = v26;
  v27 = v19;
  v34 = v27;
  v28 = v18;
  v35 = v28;
  v29 = associatedApplicationIdentifiers;
  v36 = v29;
  [v22 extensionsWithContainingApplicationIdentifiers:allObjects completion:v31];

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(&buf, 8);
  v30 = *MEMORY[0x277D85DE8];
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log();
  v5 = v4;
  if (a2)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v15 = 67109120;
        v16 = v8;
        v9 = "Notice: [BarcodePayment] Acquired process assertion for barcode payment event for %d.";
        v10 = v7;
        v11 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
        _os_log_impl(&dword_25B300000, v10, v11, v9, &v15, 8u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v12 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v15 = 67109120;
        v16 = v13;
        v9 = "Error: [BarcodePayment] Failed to acquire process assertion for barcode payment event: %d.";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_70()
{
  v0 = pk_Payment_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);

  if (v1)
  {
    v2 = pk_Payment_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Invalidated process assertion for barcode payment event.", v3, 2u);
    }
  }
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_71(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  v7 = *(*(a1 + 56) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    v12 = [v5 paymentInformation];

    v13 = NPKAnalyticsReportEventTypeBarcodePaymentTransactionLocalExtensionSucceeded;
    if (!a3)
    {
      v13 = NPKAnalyticsReportEventTypeBarcodePaymentTransactionRemoteExtensionSucceeded;
    }

    v14 = NPKAnalyticsReportEventTypeBarcodePaymentTransactionLocalExtensionFailed;
    if (!a3)
    {
      v14 = NPKAnalyticsReportEventTypeBarcodePaymentTransactionRemoteExtensionFailed;
    }

    if (!v12)
    {
      v13 = v14;
    }

    v10 = *v13;
    v15 = MEMORY[0x277D37D28];
    v16 = *MEMORY[0x277D38558];
    v36[0] = *MEMORY[0x277D38538];
    v36[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v34 = *MEMORY[0x277D383D8];
    v35 = v10;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [v15 subjects:v17 sendEvent:v18];

    v19 = objc_alloc_init(MEMORY[0x277D37DF0]);
    [v19 setEventType:1];
    v20 = [MEMORY[0x277CBEAA8] date];
    [v19 setTimestamp:v20];

    v21 = [v6 paymentInformation];
    [v19 setEventMetadata:v21];

    [v19 setDeviceAccountIdentifier:*(a1 + 32)];
    [v19 setBarcodeIdentifier:*(a1 + 40)];
    [v19 setAuthenticationType:1];
    v22 = pk_Payment_log();
    LODWORD(v18) = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v23 = pk_Payment_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 48);
        v30 = 138412546;
        v31 = v19;
        v32 = 2112;
        v33 = v24;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Submitting barcodePaymentEvent %@ for %@", &v30, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v26 = WeakRetained;
    if (WeakRetained)
    {
      v27 = WeakRetained;
    }

    else
    {
      v27 = objc_alloc_init(MEMORY[0x277D380F0]);
    }

    v28 = v27;

    [v28 submitBarcodePaymentEvent:v19 forPassUniqueIdentifier:*(a1 + 48) withCompletion:0];
    goto LABEL_19;
  }

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v30 = 138412290;
      v31 = v11;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] BarcodePaymentEvent already submitted for %@. Skipping.", &v30, 0xCu);
    }

LABEL_19:
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 count];
  }

  v8 = MEMORY[0x277D37D28];
  v9 = *MEMORY[0x277D38558];
  v57[0] = *MEMORY[0x277D38538];
  v57[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v11 = *MEMORY[0x277D38430];
  v12 = *MEMORY[0x277D38480];
  v55[0] = *MEMORY[0x277D383D8];
  v55[1] = v12;
  v13 = *MEMORY[0x277D38630];
  v56[0] = v11;
  v56[1] = v13;
  v55[2] = *MEMORY[0x277D384B0];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v7];
  v56[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
  [v8 subjects:v10 sendEvent:v15];

  if ([v5 count])
  {
    v16 = [v5 firstObject];
    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        *buf = 138412546;
        *&buf[4] = v16;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Local extension %@ is now collecting payment information for pass %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = __Block_byref_object_copy__24;
    v53 = __Block_byref_object_dispose__24;
    v54 = 0;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_81;
    v43[3] = &unk_27994B3A0;
    v43[4] = *(a1 + 40);
    v21 = v16;
    v44 = v21;
    v45 = *(a1 + 32);
    v48 = *(a1 + 72);
    v49 = *(a1 + 80);
    v50 = buf;
    v46 = *(a1 + 48);
    v47 = *(a1 + 56);
    [v21 beginExtensionRequestWithOptions:1 completion:v43];

    _Block_object_dispose(buf, 8);
    goto LABEL_23;
  }

  v22 = [v6 domain];
  if ([v22 isEqualToString:*MEMORY[0x277D386B0]])
  {
    v23 = [v6 code] == -1001;

    if (v23)
    {
      v24 = pk_Payment_log();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v26 = pk_Payment_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Extension doesn't exist locally. Invoking remote extension on paired device.", buf, 2u);
        }
      }

      v27 = [objc_alloc(MEMORY[0x277D37DE8]) initWithBarcodeIdentifier:*(a1 + 48) deviceAccountIdentifier:*(a1 + 56)];
      v28 = objc_alloc_init(NPKNanoPassDaemonConnection);
      v29 = *(a1 + 64);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_94;
      v40[3] = &unk_27994B3F0;
      v40[4] = *(a1 + 40);
      v41 = *(a1 + 72);
      v42 = *(a1 + 80);
      [(NPKNanoPassDaemonConnection *)v28 handleMetadataRequestOnPairedDevice:v27 withAssociatedApplicationIdentifiers:v29 completion:v40];
      v30 = dispatch_time(0, 0x37E11D800);
      v31 = [*(a1 + 40) serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_97;
      block[3] = &unk_2799486C0;
      v38 = *(a1 + 72);
      v39 = *(a1 + 80);
      dispatch_after(v30, v31, block);

      goto LABEL_23;
    }
  }

  else
  {
  }

  v32 = pk_Payment_log();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

  if (v33)
  {
    v34 = pk_Payment_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v35;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Failed to begin payment information event extension for pass %@ with error %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 72) + 16))();
  (*(*(a1 + 80) + 16))();
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isInvalidated] & 1) == 0)
  {
    v5 = [v4 extensionContext];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = MEMORY[0x277CBFBF8];
        v15 = [*(a1 + 40) identifier];
        v16 = [v14 newAssertionForBundleIdentifier:v15 withReason:@"Barcode Event Metadata"];
        v17 = *(*(a1 + 88) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        v13 = [objc_alloc(MEMORY[0x277D37DE8]) initWithBarcodeIdentifier:*(a1 + 56) deviceAccountIdentifier:*(a1 + 64)];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_89;
        v21[3] = &unk_27994B378;
        v21[4] = *(a1 + 32);
        v19 = *(a1 + 72);
        v20 = *(a1 + 88);
        v23 = v19;
        v25 = v20;
        v22 = v4;
        v24 = *(a1 + 80);
        [v5 handleInformationRequest:v13 completion:v21];

        goto LABEL_5;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_83;
  block[3] = &unk_27994A668;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v27 = v12;
  v28 = v11;
  dispatch_async(v6, block);

  v13 = v27;
LABEL_5:
}

uint64_t __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_83(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = a1[5];
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Local extension %@ for pass %@ failed to collect payment information", &v9, 0x16u);
    }
  }

  (*(a1[6] + 16))();
  result = (*(a1[7] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_90;
  block[3] = &unk_27994B350;
  v5 = *(a1 + 48);
  v11 = v3;
  v12 = v5;
  v13 = *(a1 + 64);
  v6 = v3;
  dispatch_async(v4, block);

  [*(a1 + 40) invalidate];
  v7 = [*(a1 + 32) serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_3;
  v8[3] = &unk_279945198;
  v9 = *(a1 + 56);
  dispatch_async(v7, v8);
}

uint64_t __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_90(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  v3 = *(*(a1[6] + 8) + 40);

  return [v3 invalidate];
}

void __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_94(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] serialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_95;
  v11[3] = &unk_27994B3C8;
  v12 = v6;
  v8 = a1[5];
  v13 = v5;
  v14 = v8;
  v15 = a1[6];
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_2_95(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = a1[4];
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Remote extension failed with error: %@", &v11, 0xCu);
      }
    }

    v6 = *(a1[6] + 16);
  }

  else
  {
    v8 = a1[5];
    v7 = a1[6];
    v6 = *(a1[6] + 16);
  }

  v6();
  result = (*(a1[7] + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __71__NPKBarcodePaymentSession__invokeExtensionToCollectPaymentInformation__block_invoke_97(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Remote extension timed out.", v6, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
  return (*(*(a1 + 40) + 16))();
}

- (void)_updateCurrentPaymentBarcodeWithBarcodeIdentifier:(id)identifier decryptedBarcodeCredential:(id)credential error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  credentialCopy = credential;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11 = [[NPKPaymentBarcode alloc] initWithBarcodeIdentifier:identifierCopy decryptedBarcodeCredential:credentialCopy error:errorCopy];

  currentPaymentBarcode = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
  LOBYTE(errorCopy) = [currentPaymentBarcode isEqual:v11];

  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (errorCopy)
  {
    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Barcode state didn't change.", &v23, 2u);
      }
    }
  }

  else
  {
    if (v14)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        currentPaymentBarcode2 = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
        v23 = 138412546;
        v24 = currentPaymentBarcode2;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Updating barcode state from %@ to %@", &v23, 0x16u);
      }
    }

    [(NPKBarcodePaymentSession *)self setCurrentPaymentBarcode:v11];
    delegate = [(NPKBarcodePaymentSession *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate2 = [(NPKBarcodePaymentSession *)self delegate];
      currentPaymentBarcode3 = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
      [delegate2 barcodePaymentSession:self didReceivePaymentBarcode:currentPaymentBarcode3];
    }

    if ([(NPKPaymentBarcode *)v11 state]== 1)
    {
      [(NPKBarcodePaymentSession *)self _insertPaymentTransactionForActiveBarcode];
      [(NPKBarcodePaymentSession *)self _invokeExtensionToCollectPaymentInformation];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdatedPaymentTransaction:(id)transaction
{
  v36 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  transactionStatus = [transactionCopy transactionStatus];
  v6 = 0;
  if (transactionStatus <= 3)
  {
    if (transactionStatus > 0)
    {
      if (transactionStatus == 1)
      {
        v21 = MEMORY[0x277D37D28];
        v22 = *MEMORY[0x277D38558];
        v31[0] = *MEMORY[0x277D38538];
        v31[1] = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
        v29 = *MEMORY[0x277D383D8];
        v30 = *MEMORY[0x277D38418];
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        [v21 subjects:v23 sendEvent:v24];

        v6 = 4;
        goto LABEL_28;
      }

      if (transactionStatus != 2)
      {
        v6 = 4;
        goto LABEL_28;
      }

      goto LABEL_9;
    }

    if (transactionStatus != -1)
    {
      if (transactionStatus)
      {
        goto LABEL_28;
      }

      ShouldAuthenticateForMechanism = PKPaymentTransactionShouldAuthenticateForMechanism();
      v12 = pk_Payment_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (ShouldAuthenticateForMechanism)
      {
        if (v13)
        {
          v14 = pk_Payment_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            authenticationContext = [transactionCopy authenticationContext];
            [authenticationContext requestedAuthenticationMechanisms];
            v16 = PKTransactionAuthenticationMechanismToStrings();
            *buf = 138412546;
            v33 = transactionCopy;
            v34 = 2112;
            v35 = v16;
            _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ status is pending with authentication request %@.", buf, 0x16u);
          }
        }

        [(NPKBarcodePaymentSession *)self _processedAuthenticationMechanismForTransaction:transactionCopy];
        v6 = 1;
        goto LABEL_28;
      }

      if (v13)
      {
        v19 = pk_Payment_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = transactionCopy;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ status is pending without valid authentication context. Skipping.", buf, 0xCu);
        }

LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_25;
    }

LABEL_21:
    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        [transactionCopy transactionStatus];
        v20 = PKPaymentTransactionStatusToString();
        *buf = 138412546;
        v33 = transactionCopy;
        v34 = 2112;
        v35 = v20;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] PKPaymentTransaction %@ status %@ is not relevant. Skipping.", buf, 0x16u);
      }

      goto LABEL_24;
    }

LABEL_25:
    v6 = 0;
    goto LABEL_28;
  }

  if (transactionStatus <= 6)
  {
    if ((transactionStatus - 4) < 2)
    {
LABEL_10:
      v6 = 3;
      goto LABEL_28;
    }

    if (transactionStatus != 6)
    {
      goto LABEL_28;
    }

LABEL_9:
    v7 = MEMORY[0x277D37D28];
    v8 = *MEMORY[0x277D38558];
    v28[0] = *MEMORY[0x277D38538];
    v28[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v26 = *MEMORY[0x277D383D8];
    v27 = *MEMORY[0x277D38420];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v7 subjects:v9 sendEvent:v10];

    goto LABEL_10;
  }

  if (transactionStatus == 7)
  {
    v6 = 5;
    goto LABEL_28;
  }

  if (transactionStatus == 8)
  {
    goto LABEL_21;
  }

LABEL_28:
  [(NPKBarcodePaymentSession *)self _updateCurrentTransactionStatus:v6 transaction:transactionCopy];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdatedTransactionStatus:(unint64_t)status
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentTransaction = [(NPKBarcodePaymentSession *)self currentTransaction];
  [(NPKBarcodePaymentSession *)self _updateCurrentTransactionStatus:status transaction:currentTransaction];
}

- (void)_updateCurrentTransactionStatus:(unint64_t)status transaction:(id)transaction
{
  v23 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(NPKBarcodePaymentSession *)self currentTransactionStatus]!= status || ([(NPKBarcodePaymentSession *)self currentTransaction], v7 = objc_claimAutoreleasedReturnValue(), v8 = PKEqualObjects(), v7, (v8 & 1) == 0))
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134218242;
        statusCopy = status;
        v21 = 2112;
        v22 = transactionCopy;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Session status is updated to %lu with transaction %@.", &v19, 0x16u);
      }
    }

    [(NPKBarcodePaymentSession *)self setCurrentTransactionStatus:status];
    [(NPKBarcodePaymentSession *)self setCurrentTransaction:transactionCopy];
    if (status == 1)
    {
      v12 = pk_Payment_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = pk_Payment_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Session timeout timer is extended because transaction authentication is requested.", &v19, 2u);
        }
      }

      [(NPKBarcodePaymentSession *)self _extendSessionTimeoutTimer];
    }

    delegate = [(NPKBarcodePaymentSession *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(NPKBarcodePaymentSession *)self delegate];
      [delegate2 barcodePaymentSession:self didUpdateTransactionStatus:status withTransaction:transactionCopy];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_insertPaymentTransactionForActiveBarcode
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D38140] paymentTransactionWithSource:1];
  [v3 setOriginatedByDevice:1];
  currentPaymentBarcode = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
  barcodeIdentifier = [currentPaymentBarcode barcodeIdentifier];
  v6 = PKTransactionPaymentHashForBarcodeIdentifier();
  [v3 setPaymentHash:v6];

  [v3 addUpdateReasons:0x20000];
  date = [MEMORY[0x277CBEAA8] date];
  [v3 setTransactionDate:date];

  v8 = pk_Payment_log();
  LODWORD(barcodeIdentifier) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (barcodeIdentifier)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      currentPaymentBarcode2 = [(NPKBarcodePaymentSession *)self currentPaymentBarcode];
      barcodeIdentifier2 = [currentPaymentBarcode2 barcodeIdentifier];
      v18 = 138412546;
      v19 = v3;
      v20 = 2112;
      v21 = barcodeIdentifier2;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Inserting transaction %@ for current barcode: %@", &v18, 0x16u);
    }
  }

  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  paymentPass = [(NPKBarcodePaymentSession *)self paymentPass];
  uniqueID = [paymentPass uniqueID];
  paymentPass2 = [(NPKBarcodePaymentSession *)self paymentPass];
  devicePrimaryBarcodePaymentApplication = [paymentPass2 devicePrimaryBarcodePaymentApplication];
  [paymentService insertOrUpdatePaymentTransaction:v3 forPassUniqueIdentifier:uniqueID paymentApplication:devicePrimaryBarcodePaymentApplication completion:0];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_processedAuthenticationMechanismForTransaction:(id)transaction
{
  transactionCopy = transaction;
  authenticationContext = [transactionCopy authenticationContext];
  requestedAuthenticationMechanisms = [authenticationContext requestedAuthenticationMechanisms];

  if ((requestedAuthenticationMechanisms & 8) != 0)
  {
    [(NPKBarcodePaymentSession *)self _completedAuthenticationForTransaction:transactionCopy];
  }

  else
  {
    if (requestedAuthenticationMechanisms)
    {
      v7 = 1;
      goto LABEL_7;
    }

    if ((requestedAuthenticationMechanisms & 4) != 0)
    {
      v7 = 4;
LABEL_7:
      paymentService = [(NPKBarcodePaymentSession *)self paymentService];
      identifier = [transactionCopy identifier];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__NPKBarcodePaymentSession__processedAuthenticationMechanismForTransaction___block_invoke;
      v10[3] = &unk_279945830;
      v12 = v7;
      v11 = transactionCopy;
      [paymentService processedAuthenticationMechanism:v7 forTransactionIdentifier:identifier completion:v10];
    }
  }
}

void __76__NPKBarcodePaymentSession__processedAuthenticationMechanismForTransaction___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = PKTransactionAuthenticationMechanismToStrings();
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Marking processed %@ for transaction %@.", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_completedAuthenticationForTransaction:(id)transaction
{
  transactionCopy = transaction;
  paymentService = [(NPKBarcodePaymentSession *)self paymentService];
  currentTransaction = [(NPKBarcodePaymentSession *)self currentTransaction];
  identifier = [currentTransaction identifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__NPKBarcodePaymentSession__completedAuthenticationForTransaction___block_invoke;
  v9[3] = &unk_279944F98;
  v10 = transactionCopy;
  v8 = transactionCopy;
  [paymentService markAuthenticationCompleteForTransactionIdentifier:identifier completion:v9];
}

void __67__NPKBarcodePaymentSession__completedAuthenticationForTransaction___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Marking completed authentication for transaction %@.", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_acquireNotificationSuppressionAssertion
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D37DA8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke;
  v3[3] = &unk_27994B440;
  objc_copyWeak(&v4, &location);
  [v2 acquireAssertionOfType:4 withReason:@"Barcode Payment" completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke_2;
  block[3] = &unk_279945290;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138412290;
        v23 = v12;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Session is invalid, releasing assertion %@", buf, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 40) == 0;
  v4 = pk_Payment_log();
  v5 = v4;
  if (!v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Error acquiring notification suppression assertion: %@", buf, 0xCu);
      }
    }

LABEL_7:
    [*(a1 + 32) invalidate];
    goto LABEL_18;
  }

  v13 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Acquired notification suppression assertion: %@", buf, 0xCu);
    }
  }

  v16 = [WeakRetained notificationSuppressionAssertion];
  [v16 setInvalidationHandler:0];

  v17 = [WeakRetained notificationSuppressionAssertion];
  [v17 invalidate];

  [WeakRetained setNotificationSuppressionAssertion:*(a1 + 32)];
  v18 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke_109;
  v20[3] = &unk_279945030;
  objc_copyWeak(&v21, (a1 + 48));
  [v18 setInvalidationHandler:v20];
  objc_destroyWeak(&v21);
LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

void __68__NPKBarcodePaymentSession__acquireNotificationSuppressionAssertion__block_invoke_109(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setNotificationSuppressionAssertion:0];
    WeakRetained = v3;
  }
}

- (void)_releaseNotificationSuppressionAssertion
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      notificationSuppressionAssertion = [(NPKBarcodePaymentSession *)self notificationSuppressionAssertion];
      v9 = 138412290;
      v10 = notificationSuppressionAssertion;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Released notification suppression assertion: %@", &v9, 0xCu);
    }
  }

  notificationSuppressionAssertion2 = [(NPKBarcodePaymentSession *)self notificationSuppressionAssertion];
  [notificationSuppressionAssertion2 invalidate];

  [(NPKBarcodePaymentSession *)self setNotificationSuppressionAssertion:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_acquireExpressTransactionSuppressAssertion
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D37DA8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke;
  v3[3] = &unk_27994B440;
  objc_copyWeak(&v4, &location);
  [v2 acquireAssertionOfType:0 withReason:@"Barcode Payment" completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke_2;
  block[3] = &unk_279945290;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138412290;
        v23 = v12;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Session is invalid, releasing assertion %@", buf, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 40) == 0;
  v4 = pk_Payment_log();
  v5 = v4;
  if (!v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: [BarcodePayment] Error acquiring express transaction suppression assertion: %@", buf, 0xCu);
      }
    }

LABEL_7:
    [*(a1 + 32) invalidate];
    goto LABEL_18;
  }

  v13 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Acquired express transaction suppression assertion: %@", buf, 0xCu);
    }
  }

  v16 = [WeakRetained expressTransactionSuppressionAssertion];
  [v16 setInvalidationHandler:0];

  v17 = [WeakRetained expressTransactionSuppressionAssertion];
  [v17 invalidate];

  [WeakRetained setExpressTransactionSuppressionAssertion:*(a1 + 32)];
  v18 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke_111;
  v20[3] = &unk_279945030;
  objc_copyWeak(&v21, (a1 + 48));
  [v18 setInvalidationHandler:v20];
  objc_destroyWeak(&v21);
LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

void __71__NPKBarcodePaymentSession__acquireExpressTransactionSuppressAssertion__block_invoke_111(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setExpressTransactionSuppressionAssertion:0];
    WeakRetained = v3;
  }
}

- (void)_releaseExpressTransactionSuppressionAssertion
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      expressTransactionSuppressionAssertion = [(NPKBarcodePaymentSession *)self expressTransactionSuppressionAssertion];
      v9 = 138412290;
      v10 = expressTransactionSuppressionAssertion;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodePayment] Released express transaction suppression assertion: %@", &v9, 0xCu);
    }
  }

  expressTransactionSuppressionAssertion2 = [(NPKBarcodePaymentSession *)self expressTransactionSuppressionAssertion];
  [expressTransactionSuppressionAssertion2 invalidate];

  [(NPKBarcodePaymentSession *)self setExpressTransactionSuppressionAssertion:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startSessionTimeoutTimer
{
  sessionTimeoutTimer = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];

  if (!sessionTimeoutTimer)
  {
    objc_initWeak(&location, self);
    v4 = dispatch_get_global_queue(21, 0);
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    [(NPKBarcodePaymentSession *)self setSessionTimeoutTimer:v5];

    sessionTimeoutTimer2 = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];
    v7 = dispatch_time(0, 0xDF8476000);
    dispatch_source_set_timer(sessionTimeoutTimer2, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

    sessionTimeoutTimer3 = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__NPKBarcodePaymentSession__startSessionTimeoutTimer__block_invoke;
    handler[3] = &unk_279945240;
    objc_copyWeak(&v11, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(sessionTimeoutTimer3, handler);

    sessionTimeoutTimer4 = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];
    dispatch_resume(sessionTimeoutTimer4);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __53__NPKBarcodePaymentSession__startSessionTimeoutTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NPKBarcodePaymentSession__startSessionTimeoutTimer__block_invoke_2;
    block[3] = &unk_279944F98;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_stopSessionTimeoutTimer
{
  sessionTimeoutTimer = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];

  if (sessionTimeoutTimer)
  {
    sessionTimeoutTimer2 = [(NPKBarcodePaymentSession *)self sessionTimeoutTimer];
    dispatch_source_cancel(sessionTimeoutTimer2);

    [(NPKBarcodePaymentSession *)self setSessionTimeoutTimer:0];
  }
}

- (void)_extendSessionTimeoutTimer
{
  [(NPKBarcodePaymentSession *)self _stopSessionTimeoutTimer];

  [(NPKBarcodePaymentSession *)self _startSessionTimeoutTimer];
}

- (void)_handleSessionTimeout
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(NPKBarcodePaymentSession *)self _handleUpdatedTransactionStatus:5];

  [(NPKBarcodePaymentSession *)self invalidateSession];
}

- (NPKBarcodePaymentSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end