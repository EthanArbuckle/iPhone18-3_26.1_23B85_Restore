@interface PKPeerPaymentWebService
+ (id)sharedService;
- (BOOL)_isValidResponse:(id)a3 error:(id)a4;
- (BOOL)canBypassTrustValidation;
- (BOOL)needsRegistration;
- (NSString)accountIdentifier;
- (NSURL)peerPaymentServiceURL;
- (PKPeerPaymentWebService)initWithContext:(id)a3 targetDevice:(id)a4 archiver:(id)a5 tapToRadarDelegate:(id)a6;
- (PKPeerPaymentWebService)initWithContext:(id)a3 targetDevice:(id)a4 tapToRadarDelegate:(id)a5;
- (PKPeerPaymentWebService)initWithTapToRadarDelegate:(id)a3;
- (id)_appleAccountInformation;
- (id)_createDeviceScorerForAttributes:(id)a3;
- (id)_deviceIdentifier;
- (id)badRequestErrorWithResponse:(id)a3;
- (id)forbiddenErrorWithResponse:(id)a3;
- (unint64_t)peerPaymentAcceptTermsWithIdentifier:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentAccountWithCompletion:(id)a3;
- (unint64_t)peerPaymentAddAssociatedAccountWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentAssociatedAccountActionWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentAssociatedAccountsWithCompletion:(id)a3;
- (unint64_t)peerPaymentBankLookupWithCountryCode:(id)a3 query:(id)a4 completion:(id)a5;
- (unint64_t)peerPaymentDocumentSubmissionRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentEmailTermsWithCompletion:(id)a3;
- (unint64_t)peerPaymentEncryptionCertificateForDestination:(unint64_t)a3 withCompletion:(id)a4;
- (unint64_t)peerPaymentFailureDiagnosticWithRequest:(id)a3 withCompletion:(id)a4;
- (unint64_t)peerPaymentIdentityVerificationRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentPassDetailsWithCompletion:(id)a3;
- (unint64_t)peerPaymentPendingRequestPerformAction:(id)a3 withRequestToken:(id)a4 completion:(id)a5;
- (unint64_t)peerPaymentPendingRequestsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentPerformAction:(id)a3 withPaymentIdentifier:(id)a4 completion:(id)a5;
- (unint64_t)peerPaymentPerformQuoteWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentPreferencesWithCompletion:(id)a3;
- (unint64_t)peerPaymentQuoteCertificatesForDestination:(unint64_t)a3 completion:(id)a4;
- (unint64_t)peerPaymentQuoteWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentReOpenAccountWithCompletion:(id)a3;
- (unint64_t)peerPaymentRecipientForRecipientAddress:(id)a3 senderAddress:(id)a4 source:(unint64_t)a5 completion:(id)a6;
- (unint64_t)peerPaymentRecipientsForRecipientAddresses:(id)a3 senderAddress:(id)a4 source:(unint64_t)a5 completion:(id)a6;
- (unint64_t)peerPaymentRecurringPaymentPerformAction:(unint64_t)a3 identifier:(id)a4 completion:(id)a5;
- (unint64_t)peerPaymentRecurringPaymentsForAccountIdentifier:(id)a3 withCompletion:(id)a4;
- (unint64_t)peerPaymentRegisterWithURL:(id)a3 pushToken:(id)a4 completion:(id)a5;
- (unint64_t)peerPaymentRemoveAssociatedAccountWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentRequestStatementForAccountIdentifier:(id)a3 emailAddress:(id)a4 completion:(id)a5;
- (unint64_t)peerPaymentRequestTokenWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentStatusWithPaymentIdentifier:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentUnregisterWithCompletion:(id)a3;
- (unint64_t)peerPaymentUpdatePreferencesWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)peerPaymentUpdateUserInfoForRequest:(id)a3 withCompletion:(id)a4;
- (unint64_t)peerPaymentUserInfoForAccountIdentifier:(id)a3 lastUpdated:(id)a4 withCompletion:(id)a5;
- (unint64_t)submitDeviceScoreIdentifiersWithRequest:(id)a3 completion:(id)a4;
- (void)_archiveContext;
- (void)_deviceRegistrationDataWithCompletion:(id)a3;
- (void)_deviceScoreForAttributes:(id)a3 withCompletion:(id)a4;
- (void)_handleRetryAfterRegisterWithRequest:(id)a3 completionHandler:(id)a4;
- (void)_peerPaymentDeviceMetadataWithCompletion:(id)a3;
- (void)_provideDeviceScoreFeedbackIfNeededForAttributes:(id)a3 ingested:(BOOL)a4;
- (void)_renewAppleAccountWithCompletionHandler:(id)a3;
- (void)handleResponse:(id)a3 withError:(id)a4 data:(id)a5 task:(id)a6 completionHandler:(id)a7;
- (void)handleWillPerformHTTPRedirectionWithResponse:(id)a3 originalRequest:(id)a4 redirectHandler:(id)a5;
- (void)performRequest:(id)a3 taskIdentifier:(unint64_t)a4 completionHandler:(id)a5;
- (void)prewarmDeviceScoreForAttributes:(id)a3;
- (void)setSharedService:(BOOL)a3;
- (void)sharedPeerPaymentServiceChanged:(id)a3;
- (void)unloadDeviceScoreForAttributes:(id)a3;
- (void)updateDeviceScorersWithEncryptedPayloadVersion:(unint64_t)a3;
@end

@implementation PKPeerPaymentWebService

- (id)_appleAccountInformation
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(PKPeerPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice appleAccountInformation];
  }

  else
  {
    v4 = +[PKAppleAccountManager sharedInstance];
    v3 = [v4 appleAccountInformation];
  }

  return v3;
}

- (BOOL)needsRegistration
{
  v3 = [(PKPeerPaymentWebService *)self context];
  if (v3)
  {
    v4 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
    if (v4)
    {
      v5 = [(PKPeerPaymentWebService *)self context];
      v6 = [v5 deviceIdentifier];
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (NSURL)peerPaymentServiceURL
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PKPeerPaymentServiceOverrideURL();
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Using overridden Peer Payment service URL: %@ ", &v8, 0xCu);
    }

    v5 = v3;
  }

  else
  {
    v6 = [(PKPeerPaymentWebService *)self context];
    v5 = [v6 serviceURL];
  }

  return v5;
}

- (PKPeerPaymentWebService)initWithTapToRadarDelegate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PKPeerPaymentWebServiceContext);
  v6 = [(PKPeerPaymentWebService *)self initWithContext:v5 targetDevice:0 tapToRadarDelegate:v4];

  return v6;
}

- (PKPeerPaymentWebService)initWithContext:(id)a3 targetDevice:(id)a4 tapToRadarDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = PKPeerPaymentWebService;
  v11 = [(PKWebService *)&v20 initWithTapToRadarDelegate:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_context, a3);
    objc_storeStrong(&v12->_targetDevice, a4);
    v13 = +[PKSecureElement sharedSecureElement];
    secureElement = v12->_secureElement;
    v12->_secureElement = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    prewarmedDeviceScorers = v12->_prewarmedDeviceScorers;
    v12->_prewarmedDeviceScorers = v15;

    v17 = dispatch_queue_create("com.apple.passkit.peerpayment.webservice.devicescorers", 0);
    prewarmedDeviceScorersQueue = v12->_prewarmedDeviceScorersQueue;
    v12->_prewarmedDeviceScorersQueue = v17;
  }

  return v12;
}

- (PKPeerPaymentWebService)initWithContext:(id)a3 targetDevice:(id)a4 archiver:(id)a5 tapToRadarDelegate:(id)a6
{
  v11 = a5;
  v12 = [(PKPeerPaymentWebService *)self initWithContext:a3 targetDevice:a4 tapToRadarDelegate:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_archiver, a5);
  }

  return v13;
}

- (void)performRequest:(id)a3 taskIdentifier:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v13.receiver = self;
    v13.super_class = PKPeerPaymentWebService;
    [(PKWebService *)&v13 performRequest:v8 taskIdentifier:a4 completionHandler:v9];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error: Attempting to perform a nil NSURLRequest. Failing with error PKPeerPaymentWebServiceErrorCodeRequiredParameterMissing.", v12, 2u);
    }

    if (v9)
    {
      v11 = _PKPeerPaymentWebServiceError(4, 0, 0, self->_targetDevice);
      (*(v9 + 2))(v9, 0, 0, v11);
    }
  }
}

- (void)handleResponse:(id)a3 withError:(id)a4 data:(id)a5 task:(id)a6 completionHandler:(id)a7
{
  v35[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  objc_initWeak(&location, a6);
  v15 = a7;
  v16 = objc_loadWeakRetained(&location);
  v17 = [v16 currentRequest];

  v18 = [v12 statusCode];
  if (v18 > 448)
  {
    if (v18 == 449)
    {
      v26 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Received Peer Payment Status Code 449. Identity Verification Required.", buf, 2u);
      }

      v23 = [[PKPeerPaymentIdentityVerificationRequiredResponse alloc] initWithData:v14];
      v24 = [(PKPeerPaymentIdentityVerificationRequiredResponse *)v23 prerequisiteIdentifier];
      v27 = objc_alloc_init(PKPeerPaymentIdentityVerificationRequest);
      [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v27];
      [(PKPeerPaymentIdentityVerificationRequest *)v27 setPrerequisiteIdentifier:v24];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __80__PKPeerPaymentWebService_handleResponse_withError_data_task_completionHandler___block_invoke;
      v29[3] = &unk_1E79D1C28;
      v29[4] = self;
      v31 = v15;
      v30 = v12;
      [(PKPeerPaymentWebService *)self peerPaymentIdentityVerificationRequest:v27 completion:v29];
    }

    else
    {
      if (v18 != 451)
      {
LABEL_15:
        v23 = objc_loadWeakRetained(&location);
        v28.receiver = self;
        v28.super_class = PKPeerPaymentWebService;
        [(PKWebService *)&v28 handleResponse:v12 withError:v13 data:v14 task:v23 completionHandler:v15];
LABEL_26:

        goto LABEL_27;
      }

      v22 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Received Peer Payment Status Code 451. Terms Acceptance Required.", buf, 2u);
      }

      v23 = [[PKPeerPaymentTermsAcceptanceResponse alloc] initWithData:v14];
      if ([(PKPeerPaymentIdentityVerificationRequiredResponse *)v23 hasTermsData])
      {
        v34 = @"PKTermsResponseUserInfoKey";
        v35[0] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      }

      else
      {
        v24 = 0;
      }

      v27 = _PKPeerPaymentWebServiceError(5, 0, v24, self->_targetDevice);
      if (v15)
      {
        (*(v15 + 2))(v15, 0, v12, v27);
      }
    }

    goto LABEL_26;
  }

  if (v18 != 301)
  {
    if (v18 == 400)
    {
      v19 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Received Status Code 400. Bad Request.", buf, 2u);
      }

      v20 = [(PKWebServiceResponse *)PKPeerPaymentWebServiceBadRequestResponse responseWithData:v14];
      v21 = [(PKPeerPaymentWebService *)self badRequestErrorWithResponse:v20];

      if (v15)
      {
        (*(v15 + 2))(v15, v14, v12, v21);
      }

      v13 = v21;
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v25 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Received Peer Payment Status Code 301. Retry after register.", buf, 2u);
  }

  [(PKPeerPaymentWebService *)self _handleRetryAfterRegisterWithRequest:v17 completionHandler:v15];
LABEL_27:

  objc_destroyWeak(&location);
}

void __80__PKPeerPaymentWebService_handleResponse_withError_data_task_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v10 = @"PKIdentityVerificationResponse";
    v11[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = _PKPeerPaymentWebServiceError(1, 0, v7, *(a1[4] + 176));
  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, 0, a1[5], v8);
  }
}

- (id)badRequestErrorWithResponse:(id)a3
{
  v4 = [a3 errorCode];
  v5 = [v4 integerValue];

  v6 = _PKPeerPaymentWebServiceError(v5, 0, 0, self->_targetDevice);
  v7 = [v6 localizedFailureReason];
  v8 = [v6 localizedRecoverySuggestion];
  v9 = [v6 code];
  if (!v9)
  {
    v9 = 40099;
  }

  v10 = _PKPeerPaymentWebServiceErrorCustom(v9, v7, v8, 0, 0);

  return v10;
}

- (id)forbiddenErrorWithResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 errorCode];
  v6 = [v5 integerValue];

  v7 = _PKPeerPaymentWebServiceError(v6, 0, 0, self->_targetDevice);
  v8 = [v7 localizedFailureReason];
  v9 = [v7 localizedRecoverySuggestion];
  v10 = [v7 code];
  v11 = [v4 localizedTitle];
  if (v11)
  {
  }

  else
  {
    v12 = [v4 localizedDescription];

    if (!v12)
    {
      goto LABEL_5;
    }
  }

  v13 = [v4 localizedTitle];

  v14 = [v4 localizedDescription];

  v8 = v13;
  v9 = v14;
LABEL_5:
  if (!v10)
  {
    v10 = 40399;
  }

  v18.receiver = self;
  v18.super_class = PKPeerPaymentWebService;
  v15 = [(PKWebService *)&v18 forbiddenErrorWithResponse:v4];
  v16 = _PKPeerPaymentWebServiceErrorCustom(v10, v8, v9, v15, 0);

  return v16;
}

- (void)handleWillPerformHTTPRedirectionWithResponse:(id)a3 originalRequest:(id)a4 redirectHandler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v22 = a4;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v10 = [v8 pk_valueForHTTPHeaderField:@"PeerPaymentURL"];
  if ([v10 length])
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Redirect specifies new peer payment URL: %@", buf, 0xCu);
    }

    v12 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    v13 = [(PKPeerPaymentWebService *)self context];
    v14 = [v13 pushToken];

    v15 = [MEMORY[0x1E695AC60] propertyForKey:@"PKPeerPaymentEndPointKey" inRequest:v22];
    v16 = v15;
    if (v15 && ([v15 integerValue] - 1) < 2)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Using the webservice to re-register since we are already in passd on target device", buf, 2u);
      }

      v17 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __104__PKPeerPaymentWebService_handleWillPerformHTTPRedirectionWithResponse_originalRequest_redirectHandler___block_invoke;
      v25[3] = &unk_1E79D1C50;
      v25[5] = &v26;
      v25[4] = v9;
      [(PKPeerPaymentWebService *)self peerPaymentRegisterWithURL:v12 pushToken:v14 completion:v25];
    }

    else
    {
      v18 = self;
      v19 = objc_opt_respondsToSelector();
      targetDevice = self->_targetDevice;
      if (v19)
      {
        v17 = v24;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __104__PKPeerPaymentWebService_handleWillPerformHTTPRedirectionWithResponse_originalRequest_redirectHandler___block_invoke_2;
        v24[3] = &unk_1E79D1C78;
        v24[5] = &v26;
        v24[4] = v9;
        [(PKPeerPaymentWebServiceTargetDeviceProtocol *)targetDevice peerPaymentReRegisterWithURL:v12 pushToken:v14 peerPaymentWebService:v18 completion:v24];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "targetDevice cannot peer payment register. Aborting original request", buf, 2u);
          }

          (*(v9 + 2))(v9, 0);
          goto LABEL_15;
        }

        v21 = v18->_targetDevice;
        v17 = v23;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __104__PKPeerPaymentWebService_handleWillPerformHTTPRedirectionWithResponse_originalRequest_redirectHandler___block_invoke_3;
        v23[3] = &unk_1E79D1C78;
        v23[5] = &v26;
        v23[4] = v9;
        [(PKPeerPaymentWebServiceTargetDeviceProtocol *)v21 peerPaymentReRegisterWithURL:v12 pushToken:v14 completion:v23];
      }
    }

LABEL_15:
    goto LABEL_16;
  }

  (*(v9 + 2))(v9, *(v27 + 24));
LABEL_16:

  _Block_object_dispose(&v26, 8);
}

uint64_t __104__PKPeerPaymentWebService_handleWillPerformHTTPRedirectionWithResponse_originalRequest_redirectHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
}

uint64_t __104__PKPeerPaymentWebService_handleWillPerformHTTPRedirectionWithResponse_originalRequest_redirectHandler___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
}

uint64_t __104__PKPeerPaymentWebService_handleWillPerformHTTPRedirectionWithResponse_originalRequest_redirectHandler___block_invoke_3(uint64_t a1, char a2, uint64_t a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
}

+ (id)sharedService
{
  v2 = qword_1EB5B7D30;
  if (!qword_1EB5B7D30)
  {
    os_unfair_lock_lock(&_MergedGlobals_9);
    if (!qword_1EB5B7D30)
    {
      v3 = +[PKPeerPaymentService sharedInstance];
      v4 = [v3 sharedPeerPaymentWebServiceContext];
      if (v4)
      {
        v5 = [[PKSharedPeerPaymentWebServiceArchiver alloc] initWithPeerPaymentService:v3];
        v6 = [PKPeerPaymentWebService alloc];
        v7 = [[PKPeerPaymentWebServiceTargetDevice alloc] initWithTargetDeviceDelegate:v3];
        v8 = [(PKPeerPaymentWebService *)v6 initWithContext:v4 targetDevice:v7 archiver:v5];
        v9 = qword_1EB5B7D30;
        qword_1EB5B7D30 = v8;

        [qword_1EB5B7D30 setSharedService:1];
        objc_storeStrong((qword_1EB5B7D30 + 184), v3);
      }
    }

    os_unfair_lock_unlock(&_MergedGlobals_9);
    v2 = qword_1EB5B7D30;
    if (!qword_1EB5B7D30)
    {
      v10 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&dword_1AD337000, v10, OS_LOG_TYPE_ERROR, "Failed to get the shared peer payment web service, therefore +[PKPeerPaymentWebService sharedService] is not available. This is likely an entitlements issue or passd hasn't initialized yet.", v12, 2u);
      }

      v2 = qword_1EB5B7D30;
    }
  }

  return v2;
}

- (void)setSharedService:(BOOL)a3
{
  self->_sharedService = a3;
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 addObserver:self selector:sel_sharedPeerPaymentServiceChanged_ name:@"PDSharedPeerPaymentWebServiceDidChangeNotification" object:0 suspensionBehavior:2];
}

- (void)sharedPeerPaymentServiceChanged:(id)a3
{
  if ([(PKPeerPaymentWebService *)self isSharedService])
  {
    peerPaymentService = self->_peerPaymentService;
    if (!peerPaymentService)
    {
      v5 = objc_alloc_init(PKPeerPaymentService);
      v6 = self->_peerPaymentService;
      self->_peerPaymentService = v5;

      peerPaymentService = self->_peerPaymentService;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PKPeerPaymentWebService_sharedPeerPaymentServiceChanged___block_invoke;
    v7[3] = &unk_1E79D1CA0;
    v7[4] = self;
    [(PKPeerPaymentService *)peerPaymentService sharedPeerPaymentWebServiceContextWithCompletion:v7];
  }
}

void __59__PKPeerPaymentWebService_sharedPeerPaymentServiceChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setContext:v3];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"PKSharedPeerPaymentWebServiceDidChangeNotification" object:0];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Received PDSharedPeerPaymentWebServiceDidChangeNotification, however [PKPaymentService sharedPeerPaymentWebServiceContextWithCompletion:] returned nil. Ignoring.", v5, 2u);
    }
  }
}

- (NSString)accountIdentifier
{
  v2 = [(PKPeerPaymentService *)self->_peerPaymentService account];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)canBypassTrustValidation
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentWebService;
  if ([(PKWebService *)&v8 canBypassTrustValidation])
  {
    return 1;
  }

  v3 = [(PKPeerPaymentWebService *)self context];
  v4 = [v3 devSigned];

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Allowing bypass of extended trust validation by dev-signed SE", v7, 2u);
    }

    return 1;
  }

  return 0;
}

- (unint64_t)peerPaymentRegisterWithURL:(id)a3 pushToken:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKWebService *)self nextTaskID];
  if (v8)
  {
    v12 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [(PKPeerPaymentDeviceScoreAttributes *)v12 setEndpoint:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__PKPeerPaymentWebService_peerPaymentRegisterWithURL_pushToken_completion___block_invoke;
    v16[3] = &unk_1E79D1D68;
    v16[4] = self;
    v19 = v10;
    v17 = v9;
    v18 = v8;
    v20 = v11;
    [(PKPeerPaymentWebService *)self _deviceScoreForAttributes:v12 withCompletion:v16];

LABEL_7:
    goto LABEL_8;
  }

  v13 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Error: Asked to register with a nil service url.", v15, 2u);
  }

  if (v10)
  {
    v12 = _PKPeerPaymentWebServiceError(4, 0, 0, self->_targetDevice);
    (*(v10 + 2))(v10, 0, v12);
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

void __75__PKPeerPaymentWebService_peerPaymentRegisterWithURL_pushToken_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!(v10 | v11))
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Note: No device score was provided for the registration endpoint. %@", buf, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__PKPeerPaymentWebService_peerPaymentRegisterWithURL_pushToken_completion___block_invoke_154;
  v21[3] = &unk_1E79D1D18;
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v26 = v15;
  v21[4] = v16;
  v22 = v17;
  v23 = *(a1 + 48);
  v24 = v10;
  v18 = *(a1 + 64);
  v25 = v11;
  v27 = v18;
  v19 = v11;
  v20 = v10;
  [v14 _deviceRegistrationDataWithCompletion:v21];
}

void __75__PKPeerPaymentWebService_peerPaymentRegisterWithURL_pushToken_completion___block_invoke_154(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v18 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Error: Failed to get device data for registration with error: %@.", buf, 0xCu);
    }

    v19 = *(a1 + 72);
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = *(v19 + 16);
    goto LABEL_14;
  }

  v7 = [v5 devSigned];
  if (os_variant_has_internal_ui())
  {
    if (v7)
    {
      v8 = PKStockholmEnvironmentName();
      v9 = [v8 containsString:@"QA"];

      if ((v9 & 1) == 0)
      {
        v21 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AD337000, v21, OS_LOG_TYPE_ERROR, "******** ERROR: Using DevSE with non QA Enviroment - refusing to register **********", buf, 2u);
        }

        v22 = *(a1 + 72);
        if (!v22)
        {
          goto LABEL_15;
        }

        v20 = *(v22 + 16);
LABEL_14:
        v20();
LABEL_15:
        v17 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
        [(PKPeerPaymentDeviceScoreAttributes *)v17 setEndpoint:1];
        [*(a1 + 32) _provideDeviceScoreFeedbackIfNeededForAttributes:v17 ingested:0];
        goto LABEL_16;
      }
    }
  }

  v10 = [*(a1 + 32) context];
  [v10 setDevSigned:v7];

  v11 = objc_alloc_init(PKPeerPaymentServiceRegistrationRequest);
  [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v11];
  [(PKPeerPaymentServiceRegistrationRequest *)v11 setDeviceData:v5];
  [(PKPeerPaymentServiceRegistrationRequest *)v11 setPushToken:*(a1 + 40)];
  v12 = *(a1 + 32);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__PKPeerPaymentWebService_peerPaymentRegisterWithURL_pushToken_completion___block_invoke_159;
  v23[3] = &unk_1E79D1CF0;
  v24 = v11;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v25 = v13;
  v26 = v14;
  v27 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v28 = v15;
  v31 = v16;
  v29 = v5;
  v30 = *(a1 + 72);
  v17 = v11;
  [v12 _peerPaymentDeviceMetadataWithCompletion:v23];

LABEL_16:
}

void __75__PKPeerPaymentWebService_peerPaymentRegisterWithURL_pushToken_completion___block_invoke_159(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v5 _appleAccountInformation];
  v8 = [*(a1 + 48) _deviceIdentifier];
  v9 = [v3 _urlRequestWithServiceURL:v4 appleAccountInformation:v7 deviceIdentifier:v8 deviceScore:*(a1 + 56) odiAssessment:*(a1 + 64) deviceMetadata:v6];

  v10 = *(a1 + 48);
  v11 = *(a1 + 88);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKPeerPaymentWebService_peerPaymentRegisterWithURL_pushToken_completion___block_invoke_2;
  v12[3] = &unk_1E79D1CC8;
  v12[4] = v10;
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  [v10 performRequest:v9 taskIdentifier:v11 completionHandler:v12];
}

void __75__PKPeerPaymentWebService_peerPaymentRegisterWithURL_pushToken_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (![*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    goto LABEL_11;
  }

  if (!v7 || v8)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Peer Payment registration request failed with error %@", &v15, 0xCu);
    }

LABEL_11:
    v9 = 0;
    goto LABEL_15;
  }

  v9 = [[PKPeerPaymentServiceRegistrationResponse alloc] initWithData:v7];
  v10 = [(PKPeerPaymentServiceRegistrationResponse *)v9 deviceIdentifier];

  if (v10)
  {
    v11 = [*(a1 + 32) context];
    [v11 updateContextWithDeviceRegistrationData:*(a1 + 40) registrationResponse:v9];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Peer Payment registration response does not have a device identifier", &v15, 2u);
    }
  }

  [*(a1 + 32) _archiveContext];
  v8 = 0;
LABEL_15:
  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v9, v8);
  }

  v14 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v14 setEndpoint:1];
  [*(a1 + 32) _provideDeviceScoreFeedbackIfNeededForAttributes:v14 ingested:1];
}

- (unint64_t)peerPaymentUnregisterWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  if ([(PKPeerPaymentWebService *)self needsRegistration])
  {
    if (v4)
    {
      v4[2](v4, 1, 0);
    }
  }

  else
  {
    v7 = objc_alloc_init(PKPeerPaymentServiceUnregisterRequest);
    [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
    v8 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
    v9 = [(PKPeerPaymentWebService *)self _deviceIdentifier];
    v10 = [(PKPeerPaymentServiceUnregisterRequest *)v7 _urlRequestWithServiceURL:v6 appleAccountInformation:v8 deviceIdentifier:v9];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKPeerPaymentWebService_peerPaymentUnregisterWithCompletion___block_invoke;
    v12[3] = &unk_1E79CD770;
    v12[4] = self;
    v13 = v4;
    [(PKPeerPaymentWebService *)self performRequest:v10 taskIdentifier:v5 completionHandler:v12];
  }

  return v5;
}

void __63__PKPeerPaymentWebService_peerPaymentUnregisterWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) _isValidResponse:v6 error:v7] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v6, "statusCode") == 404)
  {
    v8 = objc_alloc_init(PKPeerPaymentWebServiceContext);
    [*(a1 + 32) setContext:v8];
    [*(a1 + 32) _archiveContext];

    v9 = 1;
  }

  else
  {
    if (!v7)
    {
      v7 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment unregister request failed with error %@", &v12, 0xCu);
    }

    v9 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v7);
  }
}

- (unint64_t)peerPaymentAcceptTermsWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = objc_alloc_init(PKPeerPaymentAcceptTermsRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
  [(PKPeerPaymentAcceptTermsRequest *)v10 setTermsIdentifier:v7];

  v11 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v12 = [(PKPeerPaymentWebService *)self _deviceIdentifier];
  v13 = [(PKPeerPaymentAcceptTermsRequest *)v10 _urlRequestWithServiceURL:v9 appleAccountInformation:v11 deviceIdentifier:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__PKPeerPaymentWebService_peerPaymentAcceptTermsWithIdentifier_completion___block_invoke;
  v16[3] = &unk_1E79CD770;
  v16[4] = self;
  v17 = v6;
  v14 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];

  return v8;
}

void __75__PKPeerPaymentWebService_peerPaymentAcceptTermsWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [*(a1 + 32) _isValidResponse:a3 error:v6];
  if ((v7 & 1) == 0)
  {
    if (!v6)
    {
      v6 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment accept terms request failed with error %@", &v10, 0xCu);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v6);
  }
}

- (unint64_t)peerPaymentPassDetailsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v7 = objc_alloc_init(PKPeerPaymentPassDetailsRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v9 = [(PKPeerPaymentWebService *)self _deviceIdentifier];
  v10 = [(PKPeerPaymentPassDetailsRequest *)v7 _urlRequestWithServiceURL:v6 appleAccountInformation:v8 deviceIdentifier:v9];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPeerPaymentWebService_peerPaymentPassDetailsWithCompletion___block_invoke;
  v13[3] = &unk_1E79CD770;
  v13[4] = self;
  v14 = v4;
  v11 = v4;
  [(PKPeerPaymentWebService *)self performRequest:v10 taskIdentifier:v5 completionHandler:v13];

  return v5;
}

void __64__PKPeerPaymentWebService_peerPaymentPassDetailsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentPassDetailsResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment pass details request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v7 = objc_alloc_init(PKPeerPaymentAccountRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v9 = [(PKPeerPaymentAccountRequest *)v7 _urlRequestWithServiceURL:v6 appleAccountInformation:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKPeerPaymentWebService_peerPaymentAccountWithCompletion___block_invoke;
  v12[3] = &unk_1E79CD770;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [(PKPeerPaymentWebService *)self performRequest:v9 taskIdentifier:v5 completionHandler:v12];

  return v5;
}

void __60__PKPeerPaymentWebService_peerPaymentAccountWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentAccountResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment account request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentAssociatedAccountsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v7 = objc_alloc_init(PKPeerPaymentAssociatedAccountsRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v9 = [(PKPeerPaymentAssociatedAccountsRequest *)v7 _urlRequestWithServiceURL:v6 appleAccountInformation:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PKPeerPaymentWebService_peerPaymentAssociatedAccountsWithCompletion___block_invoke;
  v12[3] = &unk_1E79CD770;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [(PKPeerPaymentWebService *)self performRequest:v9 taskIdentifier:v5 completionHandler:v12];

  return v5;
}

void __71__PKPeerPaymentWebService_peerPaymentAssociatedAccountsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentAssociatedAccountsResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment asscoaited accounts request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentRecipientForRecipientAddress:(id)a3 senderAddress:(id)a4 source:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [(PKWebService *)self nextTaskID];
  v14 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v15 = objc_alloc_init(PKPeerPaymentRecipientRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v15];
  [(PKPeerPaymentRecipientRequest *)v15 setRecipientAddress:v10];
  [(PKPeerPaymentRecipientRequest *)v15 setRecipientAddressSource:a5];
  [(PKPeerPaymentRecipientRequest *)v15 setSenderAddress:v12];

  v16 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v17 = [(PKPeerPaymentWebService *)self _deviceIdentifier];
  v18 = [(PKPeerPaymentRecipientRequest *)v15 _urlRequestWithServiceURL:v14 appleAccountInformation:v16 deviceIdentifier:v17];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __99__PKPeerPaymentWebService_peerPaymentRecipientForRecipientAddress_senderAddress_source_completion___block_invoke;
  v22[3] = &unk_1E79D1CC8;
  v22[4] = self;
  v23 = v10;
  v24 = v11;
  v19 = v11;
  v20 = v10;
  [(PKPeerPaymentWebService *)self performRequest:v18 taskIdentifier:v13 completionHandler:v22];

  return v13;
}

void __99__PKPeerPaymentWebService_peerPaymentRecipientForRecipientAddress_senderAddress_source_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (![*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    goto LABEL_12;
  }

  if (!v7 || v8)
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Peer Payment recipient lookup request failed with error %@", &v15, 0xCu);
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v9 = [[PKPeerPaymentRecipientResponse alloc] initWithData:v7];
  v10 = [(PKPeerPaymentRecipientResponse *)v9 recipient];
  v11 = [v10 conversationAddress];

  if (!v11)
  {
    v12 = [(PKPeerPaymentRecipientResponse *)v9 recipient];
    [v12 setConversationAddress:*(a1 + 40)];
  }

  v8 = 0;
LABEL_13:
  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, v9, v8);
  }
}

- (unint64_t)peerPaymentRecipientsForRecipientAddresses:(id)a3 senderAddress:(id)a4 source:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(PKWebService *)self nextTaskID];
  v14 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v15 = objc_alloc_init(PKPeerPaymentRecipientsRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v15];
  [(PKPeerPaymentRecipientsRequest *)v15 setRecipientAddresses:v12];

  [(PKPeerPaymentRecipientsRequest *)v15 setRecipientAddressSource:a5];
  [(PKPeerPaymentRecipientsRequest *)v15 setSenderAddress:v11];

  v16 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v17 = [(PKPeerPaymentWebService *)self _deviceIdentifier];
  v18 = [(PKPeerPaymentRecipientsRequest *)v15 _urlRequestWithServiceURL:v14 appleAccountInformation:v16 deviceIdentifier:v17];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __102__PKPeerPaymentWebService_peerPaymentRecipientsForRecipientAddresses_senderAddress_source_completion___block_invoke;
  v21[3] = &unk_1E79CD770;
  v21[4] = self;
  v22 = v10;
  v19 = v10;
  [(PKPeerPaymentWebService *)self performRequest:v18 taskIdentifier:v13 completionHandler:v21];

  return v13;
}

void __102__PKPeerPaymentWebService_peerPaymentRecipientsForRecipientAddresses_senderAddress_source_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentRecipientsResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment recipients lookup request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentRequestTokenWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = [v6 recipientAddresses];
  v11 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v11 setEndpoint:5];
  [(PKPeerPaymentDeviceScoreAttributes *)v11 setRecipientAddresses:v10];
  [(PKPeerPaymentDeviceScoreAttributes *)v11 setQuoteRequestDestination:1];
  -[PKPeerPaymentDeviceScoreAttributes setMessagesContext:](v11, "setMessagesContext:", [v6 messagesContext]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PKPeerPaymentWebService_peerPaymentRequestTokenWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79D1D68;
  v16[4] = self;
  v17 = v6;
  v19 = v7;
  v20 = v8;
  v18 = v9;
  v12 = v7;
  v13 = v9;
  v14 = v6;
  [(PKPeerPaymentWebService *)self _deviceScoreForAttributes:v11 withCompletion:v16];

  return v8;
}

void __73__PKPeerPaymentWebService_peerPaymentRequestTokenWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!(v10 | v11))
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Note: No device score was provided for the request token endpoint. %@", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73__PKPeerPaymentWebService_peerPaymentRequestTokenWithRequest_completion___block_invoke_178;
  v21[3] = &unk_1E79D1CF0;
  v14 = *(a1 + 32);
  v22 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  v23 = v15;
  v24 = v16;
  v25 = v10;
  v26 = v11;
  v17 = *(a1 + 56);
  v29 = *(a1 + 64);
  v27 = v9;
  v28 = v17;
  v18 = v9;
  v19 = v11;
  v20 = v10;
  [v14 _peerPaymentDeviceMetadataWithCompletion:v21];
}

void __73__PKPeerPaymentWebService_peerPaymentRequestTokenWithRequest_completion___block_invoke_178(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v5 _appleAccountInformation];
  v8 = [*(a1 + 48) _deviceIdentifier];
  v9 = [v3 _urlRequestWithServiceURL:v4 appleAccountInformation:v7 deviceIdentifier:v8 deviceScore:*(a1 + 56) odiAssessment:*(a1 + 64) deviceMetadata:v6];

  v10 = *(a1 + 48);
  v11 = *(a1 + 88);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PKPeerPaymentWebService_peerPaymentRequestTokenWithRequest_completion___block_invoke_2;
  v12[3] = &unk_1E79D1D40;
  v12[4] = v10;
  v13 = *(a1 + 72);
  v14 = *(a1 + 56);
  v15 = *(a1 + 32);
  v16 = *(a1 + 80);
  [v10 performRequest:v9 taskIdentifier:v11 completionHandler:v12];
}

void __73__PKPeerPaymentWebService_peerPaymentRequestTokenWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (![*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (!v7 || v8)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Peer Payment request token request failed with error %@", buf, 0xCu);
    }

    v13 = [v8 domain];
    if ([v13 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"])
    {
      v14 = [v8 code];

      if (v14 == 40312)
      {
        v15 = _PKPeerPaymentWebServiceError(40001, v8, 0, *(*(a1 + 32) + 176));

        v9 = 0;
        v8 = v15;
        goto LABEL_16;
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  v9 = [[PKPeerPaymentRequestTokenResponse alloc] initWithData:v7 deviceScoreIdentifier:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v10 = +[PKPeerPaymentRecipientCache sharedCache];
    v11 = [*(a1 + 56) recipientPhoneOrEmail];
    [v10 noteSubmittedLowFrequencyDeviceScoreForRecipientAddress:v11];
  }

  v8 = 0;
LABEL_16:
  v16 = *(a1 + 64);
  if (v16)
  {
    (*(v16 + 16))(v16, v9, v8);
  }

  v17 = [*(a1 + 56) recipientPhoneOrEmail];
  v18 = *(a1 + 56);
  if (v17)
  {
    v19 = [v18 recipientPhoneOrEmail];
    v22 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  }

  else
  {
    v20 = [v18 recipientAddresses];
  }

  v21 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v21 setEndpoint:5];
  [(PKPeerPaymentDeviceScoreAttributes *)v21 setRecipientAddresses:v20];
  [(PKPeerPaymentDeviceScoreAttributes *)v21 setQuoteRequestDestination:1];
  -[PKPeerPaymentDeviceScoreAttributes setMessagesContext:](v21, "setMessagesContext:", [*(a1 + 56) messagesContext]);
  [*(a1 + 32) _provideDeviceScoreFeedbackIfNeededForAttributes:v21 ingested:1];
}

- (unint64_t)peerPaymentPendingRequestsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [v7 _urlRequestWithServiceURL:v9 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PKPeerPaymentWebService_peerPaymentPendingRequestsWithRequest_completion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v8 completionHandler:v14];

  return v8;
}

void __76__PKPeerPaymentWebService_peerPaymentPendingRequestsWithRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentPendingRequestsResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment pending requests request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentPendingRequestPerformAction:(id)a3 withRequestToken:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v13 = objc_alloc_init(PKPeerPaymentPendingRequestPerformActionRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v13];
  [(PKPeerPaymentPendingRequestPerformActionRequest *)v13 setAction:v10];

  [(PKPeerPaymentPendingRequestPerformActionRequest *)v13 setRequestToken:v9];
  v14 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v15 = [(PKPeerPaymentPendingRequestPerformActionRequest *)v13 _urlRequestWithServiceURL:v12 appleAccountInformation:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PKPeerPaymentWebService_peerPaymentPendingRequestPerformAction_withRequestToken_completion___block_invoke;
  v18[3] = &unk_1E79CD770;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [(PKPeerPaymentWebService *)self performRequest:v15 taskIdentifier:v11 completionHandler:v18];

  return v11;
}

void __94__PKPeerPaymentWebService_peerPaymentPendingRequestPerformAction_withRequestToken_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentPendingRequestPerformActionResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment pending request action request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentQuoteWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v10 setEndpoint:3];
  v11 = [v6 recipientAddress];
  [(PKPeerPaymentDeviceScoreAttributes *)v10 setRecipientAddress:v11];

  -[PKPeerPaymentDeviceScoreAttributes setQuoteRequestDestination:](v10, "setQuoteRequestDestination:", [v6 destination]);
  -[PKPeerPaymentDeviceScoreAttributes setMessagesContext:](v10, "setMessagesContext:", [v6 messagesContext]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__PKPeerPaymentWebService_peerPaymentQuoteWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79D1D68;
  v16[4] = self;
  v17 = v6;
  v19 = v7;
  v20 = v8;
  v18 = v9;
  v12 = v7;
  v13 = v9;
  v14 = v6;
  [(PKPeerPaymentWebService *)self _deviceScoreForAttributes:v10 withCompletion:v16];

  return v8;
}

void __66__PKPeerPaymentWebService_peerPaymentQuoteWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PKPeerPaymentWebService_peerPaymentQuoteWithRequest_completion___block_invoke_2;
  v14[3] = &unk_1E79D1DB8;
  v8 = *(a1 + 32);
  v15 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v16 = v9;
  v17 = v10;
  v18 = v6;
  v19 = v7;
  v11 = *(a1 + 56);
  v21 = *(a1 + 64);
  v20 = v11;
  v12 = v7;
  v13 = v6;
  [v8 _peerPaymentDeviceMetadataWithCompletion:v14];
}

void __66__PKPeerPaymentWebService_peerPaymentQuoteWithRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v5 _appleAccountInformation];
  v8 = [*(a1 + 48) _deviceIdentifier];
  v9 = [v3 _urlRequestWithServiceURL:v4 appleAccountInformation:v7 deviceIdentifier:v8 deviceScore:*(a1 + 56) odiAssessment:*(a1 + 64) deviceMetadata:v6];

  v10 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKPeerPaymentWebService_peerPaymentQuoteWithRequest_completion___block_invoke_3;
  v12[3] = &unk_1E79D1D90;
  v12[4] = v10;
  v11 = *(a1 + 80);
  v14 = *(a1 + 72);
  v13 = *(a1 + 32);
  [v10 performRequest:v9 taskIdentifier:v11 completionHandler:v12];
}

void __66__PKPeerPaymentWebService_peerPaymentQuoteWithRequest_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = +[PKPeerPaymentService sharedInstance];
      v10 = [v9 account];

      v11 = [v10 recurringPaymentsFeatureDescriptor];
      v12 = [v11 productTimeZone];

      v13 = [[PKPeerPaymentQuoteResponse alloc] initWithData:v7 productTimeZone:v12];
      v8 = 0;
      goto LABEL_14;
    }

    v14 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Peer Payment Quote request failed with error %@", &v21, 0xCu);
    }

    v15 = [v8 domain];
    if ([v15 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"])
    {
      v16 = [v8 code];

      if (v16 == 40312)
      {
        v17 = _PKPeerPaymentWebServiceError(40001, v8, 0, *(*(a1 + 32) + 176));

        v13 = 0;
        v8 = v17;
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v13 = 0;
LABEL_14:
  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, v13, v8);
  }

  v19 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v19 setEndpoint:3];
  v20 = [*(a1 + 40) recipientAddress];
  [(PKPeerPaymentDeviceScoreAttributes *)v19 setRecipientAddress:v20];

  -[PKPeerPaymentDeviceScoreAttributes setQuoteRequestDestination:](v19, "setQuoteRequestDestination:", [*(a1 + 40) destination]);
  -[PKPeerPaymentDeviceScoreAttributes setMessagesContext:](v19, "setMessagesContext:", [*(a1 + 40) messagesContext]);
  [*(a1 + 32) _provideDeviceScoreFeedbackIfNeededForAttributes:v19 ingested:1];
}

- (unint64_t)peerPaymentQuoteCertificatesForDestination:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PKWebService *)self nextTaskID];
  v8 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v9 = objc_alloc_init(PKPeerPaymentQuoteCertificatesRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  [(PKPeerPaymentQuoteCertificatesRequest *)v9 setDestination:a3];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [(PKPeerPaymentQuoteCertificatesRequest *)v9 _urlRequestWithServiceURL:v8 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PKPeerPaymentWebService_peerPaymentQuoteCertificatesForDestination_completion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v7 completionHandler:v14];

  return v7;
}

void __81__PKPeerPaymentWebService_peerPaymentQuoteCertificatesForDestination_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentQuoteCertificatesResponse alloc] initWithData:v7];
      v10 = [*(a1 + 32) context];
      -[PKPeerPaymentQuoteCertificatesResponse setDevSigned:](v9, "setDevSigned:", [v10 devSigned]);

      v8 = 0;
      goto LABEL_11;
    }

    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Peer Payment Quote Certificates request failed with error %@", &v13, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v9, v8);
  }
}

- (unint64_t)peerPaymentIdentityVerificationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = [(PKPeerPaymentWebService *)self context];
  [v6 setDevSigned:{objc_msgSend(v10, "devSigned")}];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPeerPaymentWebService_peerPaymentIdentityVerificationRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79D1DE0;
  v23 = v7;
  v24 = v8;
  aBlock[4] = self;
  v11 = v7;
  v12 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__PKPeerPaymentWebService_peerPaymentIdentityVerificationRequest_completion___block_invoke_190;
  v17[3] = &unk_1E79D1E30;
  v18 = v6;
  v19 = self;
  v20 = v9;
  v21 = v12;
  v13 = v12;
  v14 = v9;
  v15 = v6;
  [(PKPeerPaymentWebService *)self _peerPaymentDeviceMetadataWithCompletion:v17];

  return v8;
}

void __77__PKPeerPaymentWebService_peerPaymentIdentityVerificationRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKPeerPaymentWebService_peerPaymentIdentityVerificationRequest_completion___block_invoke_2;
  v5[3] = &unk_1E79CD770;
  v5[4] = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 performRequest:a2 taskIdentifier:v4 completionHandler:v5];
}

void __77__PKPeerPaymentWebService_peerPaymentIdentityVerificationRequest_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [(PKWebServiceResponse *)PKPeerPaymentIdentityVerificationResponse responseWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment identity verification response failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

void __77__PKPeerPaymentWebService_peerPaymentIdentityVerificationRequest_completion___block_invoke_190(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] hasOverlayParameters])
  {
    v4 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [(PKPeerPaymentDeviceScoreAttributes *)v4 setEndpoint:2];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__PKPeerPaymentWebService_peerPaymentIdentityVerificationRequest_completion___block_invoke_2_191;
    v12[3] = &unk_1E79D1E08;
    v5 = a1[5];
    v13 = a1[4];
    v6 = a1[6];
    v7 = a1[5];
    v14 = v6;
    v15 = v7;
    v16 = v3;
    v17 = a1[7];
    [v5 _deviceScoreForAttributes:v4 withCompletion:v12];
  }

  else
  {
    v8 = a1[6];
    v9 = a1[4];
    v10 = [a1[5] _appleAccountInformation];
    v11 = [a1[5] _deviceIdentifier];
    v4 = [v9 _urlRequestWithServiceURL:v8 appleAccountInformation:v10 deviceIdentifier:v11 deviceScore:0 odiAssessment:0 deviceMetadata:v3];

    (*(a1[7] + 2))();
  }
}

void __77__PKPeerPaymentWebService_peerPaymentIdentityVerificationRequest_completion___block_invoke_2_191(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!(v10 | v11))
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Note: No device score was provided for the identity verification endpoint. %@", &v20, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = [*(a1 + 48) _appleAccountInformation];
  v17 = [*(a1 + 48) _deviceIdentifier];
  v18 = [v14 _urlRequestWithServiceURL:v15 appleAccountInformation:v16 deviceIdentifier:v17 deviceScore:v10 odiAssessment:v11 deviceMetadata:*(a1 + 56)];

  (*(*(a1 + 64) + 16))();
  v19 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v19 setEndpoint:2];
  [*(a1 + 48) _provideDeviceScoreFeedbackIfNeededForAttributes:v19 ingested:1];
}

- (unint64_t)peerPaymentDocumentSubmissionRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [v6 _urlRequestWithServiceURL:v9 appleAccountInformation:v10];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPeerPaymentWebService_peerPaymentDocumentSubmissionRequest_completion___block_invoke;
  v15[3] = &unk_1E79D1CC8;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v8 completionHandler:v15];

  return v8;
}

void __75__PKPeerPaymentWebService_peerPaymentDocumentSubmissionRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (![*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    goto LABEL_13;
  }

  if (!v7 || v8)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(block) = 138412290;
      *(&block + 4) = v8;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Peer Payment Submit Document request failed with error %@", &block, 0xCu);
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = [[PKPeerPaymentDocumentSubmissionResponse alloc] initWithData:v7];
  if (os_variant_has_internal_ui() && PKCIPSaveImages())
  {
    v10 = dispatch_get_global_queue(0, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__PKPeerPaymentWebService_peerPaymentDocumentSubmissionRequest_completion___block_invoke_2;
    v14[3] = &unk_1E79C4E28;
    v15 = *(a1 + 40);
    v11 = v14;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v17 = __dispatch_async_ar_block_invoke_9;
    v18 = &unk_1E79C4428;
    v19 = v11;
    dispatch_async(v10, &block);
  }

  v8 = 0;
LABEL_14:
  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v9, v8);
  }
}

void __75__PKPeerPaymentWebService_peerPaymentDocumentSubmissionRequest_completion___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyyMMddHHmmss"];
  v29 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 stringFromDate:?];
  v4 = PKCIPDirectoryPath();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-front.jpg", v3];
  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-back.jpg", v3];
  v8 = [v4 stringByAppendingPathComponent:v7];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = PKCIPDirectoryPath();
  v11 = [v9 fileExistsAtPath:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = PKCIPDirectoryPath();
    [v12 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v14 = [*(a1 + 32) frontImageData];
  v15 = v14;
  if (v14)
  {
    v31 = 0;
    v16 = [v14 writeToFile:v6 options:1 error:&v31];
    v17 = v31;
    if (v16)
    {
      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 138412290;
      v33 = v6;
      v19 = "Saved frontImageData to: '%@'";
      v20 = v18;
      v21 = 12;
      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = PKLogFacilityTypeGetObject(7uLL);
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  *buf = 138412546;
  v33 = v6;
  v34 = 2112;
  v35 = v17;
  v19 = "Failed to save frontImageData to: '%@'; error: %@";
  v20 = v18;
  v21 = 22;
LABEL_10:
  _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_11:

  v22 = [*(a1 + 32) backImageData];

  if (v22)
  {
    v30 = v17;
    v23 = [v22 writeToFile:v8 options:1 error:&v30];
    v24 = v30;

    if (v23)
    {
      v25 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v8;
        v26 = "Saved backImageData to: '%@'";
        v27 = v25;
        v28 = 12;
LABEL_18:
        _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v24 = v17;
  }

  v25 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v8;
    v34 = 2112;
    v35 = v24;
    v26 = "Failed to save backImageData to: '%@'; error: %@";
    v27 = v25;
    v28 = 22;
    goto LABEL_18;
  }

LABEL_19:
}

- (unint64_t)peerPaymentPerformQuoteWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = [(PKPeerPaymentWebService *)self context];
  v11 = [v10 pushToken];
  [v6 setPushToken:v11];

  v12 = [(PKPeerPaymentWebService *)self context];
  v13 = [v12 signedEnrollmentDataSignature];
  [v6 setSignedEnrollmentDataSignature:v13];

  v14 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v14 setEndpoint:4];
  v15 = [v6 recipientPhoneOrEmail];
  [(PKPeerPaymentDeviceScoreAttributes *)v14 setRecipientAddress:v15];

  -[PKPeerPaymentDeviceScoreAttributes setQuoteRequestDestination:](v14, "setQuoteRequestDestination:", [v6 destination]);
  -[PKPeerPaymentDeviceScoreAttributes setMessagesContext:](v14, "setMessagesContext:", [v6 messagesContext]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__PKPeerPaymentWebService_peerPaymentPerformQuoteWithRequest_completion___block_invoke;
  v20[3] = &unk_1E79D1D68;
  v20[4] = self;
  v21 = v6;
  v23 = v7;
  v24 = v8;
  v22 = v9;
  v16 = v7;
  v17 = v9;
  v18 = v6;
  [(PKPeerPaymentWebService *)self _deviceScoreForAttributes:v14 withCompletion:v20];

  return v8;
}

void __73__PKPeerPaymentWebService_peerPaymentPerformQuoteWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!(v10 | v11))
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Note: No device score was provided for the perform quote endpoint. %@", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73__PKPeerPaymentWebService_peerPaymentPerformQuoteWithRequest_completion___block_invoke_207;
  v21[3] = &unk_1E79D1CF0;
  v14 = *(a1 + 32);
  v22 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  v23 = v15;
  v24 = v16;
  v25 = v10;
  v26 = v11;
  v17 = *(a1 + 56);
  v29 = *(a1 + 64);
  v27 = v9;
  v28 = v17;
  v18 = v9;
  v19 = v11;
  v20 = v10;
  [v14 _peerPaymentDeviceMetadataWithCompletion:v21];
}

void __73__PKPeerPaymentWebService_peerPaymentPerformQuoteWithRequest_completion___block_invoke_207(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v5 _appleAccountInformation];
  v8 = [*(a1 + 48) _deviceIdentifier];
  v9 = [v3 _urlRequestWithServiceURL:v4 appleAccountInformation:v7 deviceIdentifier:v8 deviceScore:*(a1 + 56) odiAssessment:*(a1 + 64) deviceMetadata:v6];

  v10 = *(a1 + 48);
  v11 = *(a1 + 88);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PKPeerPaymentWebService_peerPaymentPerformQuoteWithRequest_completion___block_invoke_2;
  v12[3] = &unk_1E79D1D40;
  v12[4] = v10;
  v13 = *(a1 + 72);
  v14 = *(a1 + 56);
  v15 = *(a1 + 32);
  v16 = *(a1 + 80);
  [v10 performRequest:v9 taskIdentifier:v11 completionHandler:v12];
}

void __73__PKPeerPaymentWebService_peerPaymentPerformQuoteWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (![*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    goto LABEL_12;
  }

  if (!v7 || v8)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Peer Payment perform request failed with error %@", &v16, 0xCu);
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v9 = [[PKPeerPaymentPerformResponse alloc] initWithData:v7 deviceScoreIdentifier:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v10 = +[PKPeerPaymentRecipientCache sharedCache];
    v11 = [*(a1 + 56) recipientPhoneOrEmail];
    [v10 noteSubmittedLowFrequencyDeviceScoreForRecipientAddress:v11];
  }

  v8 = 0;
LABEL_13:
  v13 = *(a1 + 64);
  if (v13)
  {
    (*(v13 + 16))(v13, v9, v8);
  }

  v14 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v14 setEndpoint:4];
  v15 = [*(a1 + 56) recipientPhoneOrEmail];
  [(PKPeerPaymentDeviceScoreAttributes *)v14 setRecipientAddress:v15];

  -[PKPeerPaymentDeviceScoreAttributes setQuoteRequestDestination:](v14, "setQuoteRequestDestination:", [*(a1 + 56) destination]);
  -[PKPeerPaymentDeviceScoreAttributes setMessagesContext:](v14, "setMessagesContext:", [*(a1 + 56) messagesContext]);
  [*(a1 + 32) _provideDeviceScoreFeedbackIfNeededForAttributes:v14 ingested:1];
}

- (unint64_t)peerPaymentStatusWithPaymentIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = objc_alloc_init(PKPeerPaymentStatusRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
  [(PKPeerPaymentStatusRequest *)v10 setPaymentIdentifier:v7];

  v11 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v12 = [(PKPeerPaymentStatusRequest *)v10 _urlRequestWithServiceURL:v9 appleAccountInformation:v11];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PKPeerPaymentWebService_peerPaymentStatusWithPaymentIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79CD770;
  v15[4] = self;
  v16 = v6;
  v13 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v12 taskIdentifier:v8 completionHandler:v15];

  return v8;
}

void __77__PKPeerPaymentWebService_peerPaymentStatusWithPaymentIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentStatusResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment status request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentPerformAction:(id)a3 withPaymentIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v13 = objc_alloc_init(PKPeerPaymentPerformActionRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v13];
  [(PKPeerPaymentPerformActionRequest *)v13 setAction:v10];

  [(PKPeerPaymentPerformActionRequest *)v13 setPaymentIdentifier:v9];
  v14 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v15 = [(PKPeerPaymentPerformActionRequest *)v13 _urlRequestWithServiceURL:v12 appleAccountInformation:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PKPeerPaymentWebService_peerPaymentPerformAction_withPaymentIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79CD770;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [(PKPeerPaymentWebService *)self performRequest:v15 taskIdentifier:v11 completionHandler:v18];

  return v11;
}

void __85__PKPeerPaymentWebService_peerPaymentPerformAction_withPaymentIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentPerformActionResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment action request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentPreferencesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v7 = objc_alloc_init(PKPeerPaymentPreferencesRequest);
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v9 = [(PKPeerPaymentPreferencesRequest *)v7 _urlRequestWithServiceURL:v6 appleAccountInformation:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKPeerPaymentWebService_peerPaymentPreferencesWithCompletion___block_invoke;
  v12[3] = &unk_1E79CD770;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [(PKPeerPaymentWebService *)self performRequest:v9 taskIdentifier:v5 completionHandler:v12];

  return v5;
}

void __64__PKPeerPaymentWebService_peerPaymentPreferencesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentPreferencesResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment preferences request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentUpdatePreferencesWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [v7 _urlRequestWithServiceURL:v9 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PKPeerPaymentWebService_peerPaymentUpdatePreferencesWithRequest_completion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v8 completionHandler:v14];

  return v8;
}

void __78__PKPeerPaymentWebService_peerPaymentUpdatePreferencesWithRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentUpdatePreferencesResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment update preferences request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentBankLookupWithCountryCode:(id)a3 query:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v13 = [[PKPeerPaymentBankLookupRequest alloc] initWithCountryCode:v10 query:v9];

  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v13];
  v14 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v15 = [(PKPeerPaymentBankLookupRequest *)v13 _urlRequestWithServiceURL:v12 appleAccountInformation:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__PKPeerPaymentWebService_peerPaymentBankLookupWithCountryCode_query_completion___block_invoke;
  v18[3] = &unk_1E79CD770;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [(PKPeerPaymentWebService *)self performRequest:v15 taskIdentifier:v11 completionHandler:v18];

  return v11;
}

void __81__PKPeerPaymentWebService_peerPaymentBankLookupWithCountryCode_query_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentBankLookupResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment bank lookup request failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentRequestStatementForAccountIdentifier:(id)a3 emailAddress:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v13 = objc_alloc_init(PKPeerPaymentStatementRequest);
  [(PKPeerPaymentStatementRequest *)v13 setAccountIdentifier:v10];

  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v13];
  [(PKPeerPaymentStatementRequest *)v13 setEmailAddress:v9];

  v14 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v15 = [(PKPeerPaymentStatementRequest *)v13 _urlRequestWithServiceURL:v12 appleAccountInformation:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__PKPeerPaymentWebService_peerPaymentRequestStatementForAccountIdentifier_emailAddress_completion___block_invoke;
  v18[3] = &unk_1E79CD770;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [(PKPeerPaymentWebService *)self performRequest:v15 taskIdentifier:v11 completionHandler:v18];

  return v11;
}

void __99__PKPeerPaymentWebService_peerPaymentRequestStatementForAccountIdentifier_emailAddress_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    v9 = [[PKPeerPaymentStatementResponse alloc] initWithData:v7];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment statement request failed with error %@", &v12, 0xCu);
    }

    v9 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentReOpenAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v7 = objc_alloc_init(PKPeerPaymentReOpenAccountRequest);
  v8 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v9 = [(PKPeerPaymentReOpenAccountRequest *)v7 _urlRequestWithServiceURL:v6 appleAccountInformation:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKPeerPaymentWebService_peerPaymentReOpenAccountWithCompletion___block_invoke;
  v12[3] = &unk_1E79CD770;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [(PKPeerPaymentWebService *)self performRequest:v9 taskIdentifier:v5 completionHandler:v12];

  return v5;
}

void __66__PKPeerPaymentWebService_peerPaymentReOpenAccountWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [*(a1 + 32) _isValidResponse:a3 error:v6];
  if ((v7 & 1) == 0)
  {
    if (!v6)
    {
      v6 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment account reopen request failed with error %@", &v10, 0xCu);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v6);
  }
}

- (unint64_t)peerPaymentEmailTermsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v7 = objc_alloc_init(PKPeerPaymentEmailTermsAccountRequest);
  v8 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v9 = [(PKPeerPaymentEmailTermsAccountRequest *)v7 _urlRequestWithServiceURL:v6 appleAccountInformation:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKPeerPaymentWebService_peerPaymentEmailTermsWithCompletion___block_invoke;
  v12[3] = &unk_1E79CD770;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [(PKPeerPaymentWebService *)self performRequest:v9 taskIdentifier:v5 completionHandler:v12];

  return v5;
}

void __63__PKPeerPaymentWebService_peerPaymentEmailTermsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [*(a1 + 32) _isValidResponse:a3 error:v6];
  if ((v7 & 1) == 0)
  {
    if (!v6)
    {
      v6 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment email terms request failed with error %@", &v10, 0xCu);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v6);
  }
}

- (unint64_t)submitDeviceScoreIdentifiersWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [v7 _urlRequestWithServiceURL:v9 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PKPeerPaymentWebService_submitDeviceScoreIdentifiersWithRequest_completion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v8 completionHandler:v14];

  return v8;
}

void __78__PKPeerPaymentWebService_submitDeviceScoreIdentifiersWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [*(a1 + 32) _isValidResponse:a3 error:v6];
  if ((v7 & 1) == 0)
  {
    if (!v6)
    {
      v6 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment submission of device scores failed with error %@", &v10, 0xCu);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v6);
  }
}

- (unint64_t)peerPaymentAddAssociatedAccountWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [v7 _urlRequestWithServiceURL:v9 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PKPeerPaymentWebService_peerPaymentAddAssociatedAccountWithRequest_completion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v8 completionHandler:v14];

  return v8;
}

void __81__PKPeerPaymentWebService_peerPaymentAddAssociatedAccountWithRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    v9 = [[PKPeerPaymentAddAssociatedAccountResponse alloc] initWithData:v7];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment invite associated account request failed with error %@", &v12, 0xCu);
    }

    v9 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentRemoveAssociatedAccountWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [v7 _urlRequestWithServiceURL:v9 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__PKPeerPaymentWebService_peerPaymentRemoveAssociatedAccountWithRequest_completion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v8 completionHandler:v14];

  return v8;
}

void __84__PKPeerPaymentWebService_peerPaymentRemoveAssociatedAccountWithRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    v9 = [[PKPeerPaymentRemoveAssociatedAccountResponse alloc] initWithData:v7];
  }

  else
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment remove associated account request failed with error %@", &v12, 0xCu);
    }

    v9 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentAssociatedAccountActionWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [v7 _urlRequestWithServiceURL:v9 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__PKPeerPaymentWebService_peerPaymentAssociatedAccountActionWithRequest_completion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v8 completionHandler:v14];

  return v8;
}

void __84__PKPeerPaymentWebService_peerPaymentAssociatedAccountActionWithRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    v9 = [[PKPeerPaymentAssociatedAccountActionResponse alloc] initWithData:v7];
  }

  else
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment associated account action request failed with error %@", &v12, 0xCu);
    }

    v9 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentRecurringPaymentsForAccountIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = [[PKPeerPaymentRecurringPaymentsRequest alloc] initWithAccountIdentifier:v7];

  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
  v11 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v12 = [(PKPeerPaymentRecurringPaymentsRequest *)v10 _urlRequestWithServiceURL:v9 appleAccountInformation:v11];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__PKPeerPaymentWebService_peerPaymentRecurringPaymentsForAccountIdentifier_withCompletion___block_invoke;
  v15[3] = &unk_1E79CD770;
  v15[4] = self;
  v16 = v6;
  v13 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v12 taskIdentifier:v8 completionHandler:v15];

  return v8;
}

void __91__PKPeerPaymentWebService_peerPaymentRecurringPaymentsForAccountIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    v9 = +[PKPeerPaymentService sharedInstance];
    v10 = [v9 account];

    v11 = [v10 recurringPaymentsFeatureDescriptor];
    v12 = [v11 productTimeZone];

    v13 = [[PKPeerPaymentRecurringPaymentsResponse alloc] initWithData:v7 productTimeZone:v12];
  }

  else
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v14 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Peer Payment recurring payments request failed with error %@", &v16, 0xCu);
    }

    v13 = 0;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v13, v8);
  }
}

- (unint64_t)peerPaymentRecurringPaymentPerformAction:(unint64_t)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PKWebService *)self nextTaskID];
  v11 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v12 = [[PKPeerPaymentRecurringPaymentActionRequest alloc] initWithRecurringPaymentIdentifier:v9];

  v13 = PKPeerPaymentRecurringPaymentActionToString(a3);
  [(PKPeerPaymentRecurringPaymentActionRequest *)v12 setAction:v13];

  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v12];
  v14 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v15 = [(PKPeerPaymentRecurringPaymentActionRequest *)v12 _urlRequestWithServiceURL:v11 appleAccountInformation:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__PKPeerPaymentWebService_peerPaymentRecurringPaymentPerformAction_identifier_completion___block_invoke;
  v18[3] = &unk_1E79CD770;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [(PKPeerPaymentWebService *)self performRequest:v15 taskIdentifier:v10 completionHandler:v18];

  return v10;
}

void __90__PKPeerPaymentWebService_peerPaymentRecurringPaymentPerformAction_identifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    v9 = +[PKPeerPaymentService sharedInstance];
    v10 = [v9 account];

    v11 = [v10 recurringPaymentsFeatureDescriptor];
    v12 = [v11 productTimeZone];

    v13 = [[PKPeerPaymentRecurringPaymentActionResponse alloc] initWithData:v7 productTimeZone:v12];
  }

  else
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v14 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Peer Payment recurring payment action request failed with error %@", &v16, 0xCu);
    }

    v13 = 0;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v13, v8);
  }
}

- (unint64_t)peerPaymentEncryptionCertificateForDestination:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(PKWebService *)self nextTaskID];
  v8 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v9 = [[PKPeerPaymentEncryptionCertificatesRequest alloc] initWithEncryptionCertificateDestination:a3];
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [(PKPeerPaymentEncryptionCertificatesRequest *)v9 _urlRequestWithServiceURL:v8 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__PKPeerPaymentWebService_peerPaymentEncryptionCertificateForDestination_withCompletion___block_invoke;
  v14[3] = &unk_1E79D1E58;
  v15 = v6;
  v16 = a3;
  v14[4] = self;
  v12 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v7 completionHandler:v14];

  return v7;
}

void __89__PKPeerPaymentWebService_peerPaymentEncryptionCertificateForDestination_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    v9 = [[PKPeerPaymentEncryptionCertificatesResponse alloc] initWithData:v7];
  }

  else
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PKPeerPaymentEncryptionCertificateDestinationToString(*(a1 + 48));
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment encryption certificate request for destination %@ failed with error %@", &v13, 0x16u);
    }

    v9 = 0;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v9, v8);
  }
}

- (unint64_t)peerPaymentFailureDiagnosticWithRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v10 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v11 = [v7 _urlRequestWithServiceURL:v9 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__PKPeerPaymentWebService_peerPaymentFailureDiagnosticWithRequest_withCompletion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(PKPeerPaymentWebService *)self performRequest:v11 taskIdentifier:v8 completionHandler:v14];

  return v8;
}

void __82__PKPeerPaymentWebService_peerPaymentFailureDiagnosticWithRequest_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [*(a1 + 32) _isValidResponse:a3 error:v6];
  if ((v7 & 1) == 0)
  {
    if (!v6)
    {
      v6 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment failure diagnostic request failed with error %@", &v10, 0xCu);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v6);
  }
}

- (unint64_t)peerPaymentUserInfoForAccountIdentifier:(id)a3 lastUpdated:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v13 = [[PKPeerPaymentUserInfoRequest alloc] initWithAccountIdentifier:v10 lastUpdated:v9];

  [(PKPeerPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v13];
  v14 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
  v15 = [(PKPeerPaymentUserInfoRequest *)v13 _urlRequestWithServiceURL:v12 appleAccountInformation:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PKPeerPaymentWebService_peerPaymentUserInfoForAccountIdentifier_lastUpdated_withCompletion___block_invoke;
  v18[3] = &unk_1E79CD770;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [(PKPeerPaymentWebService *)self performRequest:v15 taskIdentifier:v11 completionHandler:v18];

  return v11;
}

void __94__PKPeerPaymentWebService_peerPaymentUserInfoForAccountIdentifier_lastUpdated_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    v9 = [[PKPeerPaymentUserInfoResponse alloc] initWithData:v7];
  }

  else
  {
    if (!v8)
    {
      v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment user info request failed with error %@", &v12, 0xCu);
    }

    v9 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

- (unint64_t)peerPaymentUpdateUserInfoForRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKPeerPaymentWebService_peerPaymentUpdateUserInfoForRequest_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79D1DE0;
  v22 = v7;
  v23 = v8;
  aBlock[4] = self;
  v10 = v7;
  v11 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__PKPeerPaymentWebService_peerPaymentUpdateUserInfoForRequest_withCompletion___block_invoke_234;
  v16[3] = &unk_1E79D1E30;
  v17 = v6;
  v18 = self;
  v19 = v9;
  v20 = v11;
  v12 = v11;
  v13 = v9;
  v14 = v6;
  [(PKPeerPaymentWebService *)self _peerPaymentDeviceMetadataWithCompletion:v16];

  return v8;
}

void __78__PKPeerPaymentWebService_peerPaymentUpdateUserInfoForRequest_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__PKPeerPaymentWebService_peerPaymentUpdateUserInfoForRequest_withCompletion___block_invoke_2;
  v5[3] = &unk_1E79CD770;
  v5[4] = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 performRequest:a2 taskIdentifier:v4 completionHandler:v5];
}

void __78__PKPeerPaymentWebService_peerPaymentUpdateUserInfoForRequest_withCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _isValidResponse:a3 error:v8])
  {
    if (v7 && !v8)
    {
      v9 = [[PKPeerPaymentUpdateUserInfoResponse alloc] initWithData:v7];
      goto LABEL_11;
    }

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Peer Payment update user info response failed with error %@", &v12, 0xCu);
    }
  }

  else if (!v8)
  {
    v8 = _PKPeerPaymentWebServiceError(0, 0, 0, *(*(a1 + 32) + 176));
  }

  v9 = 0;
LABEL_11:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v8);
  }
}

void __78__PKPeerPaymentWebService_peerPaymentUpdateUserInfoForRequest_withCompletion___block_invoke_234(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] hasOverlayParameters])
  {
    v4 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [(PKPeerPaymentDeviceScoreAttributes *)v4 setEndpoint:2];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__PKPeerPaymentWebService_peerPaymentUpdateUserInfoForRequest_withCompletion___block_invoke_2_235;
    v12[3] = &unk_1E79D1E08;
    v5 = a1[5];
    v13 = a1[4];
    v6 = a1[6];
    v7 = a1[5];
    v14 = v6;
    v15 = v7;
    v16 = v3;
    v17 = a1[7];
    [v5 _deviceScoreForAttributes:v4 withCompletion:v12];
  }

  else
  {
    v8 = a1[6];
    v9 = a1[4];
    v10 = [a1[5] _appleAccountInformation];
    v11 = [a1[5] _deviceIdentifier];
    v4 = [v9 _urlRequestWithServiceURL:v8 appleAccountInformation:v10 deviceIdentifier:v11 deviceScore:0 odiAssessment:0 deviceMetadata:v3];

    (*(a1[7] + 2))();
  }
}

void __78__PKPeerPaymentWebService_peerPaymentUpdateUserInfoForRequest_withCompletion___block_invoke_2_235(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!(v10 | v11))
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Note: No device score was provided for the update user info endpoint. %@", &v20, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = [*(a1 + 48) _appleAccountInformation];
  v17 = [*(a1 + 48) _deviceIdentifier];
  v18 = [v14 _urlRequestWithServiceURL:v15 appleAccountInformation:v16 deviceIdentifier:v17 deviceScore:v10 odiAssessment:v11 deviceMetadata:*(a1 + 56)];

  (*(*(a1 + 64) + 16))();
  v19 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v19 setEndpoint:2];
  [*(a1 + 48) _provideDeviceScoreFeedbackIfNeededForAttributes:v19 ingested:1];
}

- (id)_deviceIdentifier
{
  v2 = [(PKPeerPaymentWebService *)self context];
  v3 = [v2 deviceIdentifier];

  return v3;
}

- (void)_deviceRegistrationDataWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPeerPaymentWebService *)self _appleAccountInformation];
    v6 = [v5 authorizationHeader];
    v7 = dispatch_group_create();
    v8 = objc_alloc_init(PKPeerPaymentDeviceRegistrationData);
    [(PKPeerPaymentDeviceRegistrationData *)v8 setDevSigned:[(PKSecureElement *)self->_secureElement isProductionSigned]^ 1];
    [(PKPeerPaymentDeviceRegistrationData *)v8 setAuthorizationHeader:v6];
    dispatch_group_enter(v7);
    v9 = [v5 aidaAlternateDSID];
    secureElement = self->_secureElement;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __65__PKPeerPaymentWebService__deviceRegistrationDataWithCompletion___block_invoke;
    v25[3] = &unk_1E79D1E80;
    v11 = v8;
    v26 = v11;
    v27 = self;
    v12 = v7;
    v28 = v12;
    [(PKSecureElement *)secureElement peerPaymentEnrollmentDataWithAlternateDSID:v9 completion:v25];
    dispatch_group_enter(v12);
    v13 = self->_secureElement;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__PKPeerPaymentWebService__deviceRegistrationDataWithCompletion___block_invoke_2;
    v22[3] = &unk_1E79C5040;
    v14 = v11;
    v23 = v14;
    v24 = v12;
    v15 = v12;
    [(PKSecureElement *)v13 signatureForAuthToken:v6 completion:v22];
    v16 = dispatch_get_global_queue(21, 0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__PKPeerPaymentWebService__deviceRegistrationDataWithCompletion___block_invoke_3;
    v18[3] = &unk_1E79CB3F8;
    v19 = v14;
    v20 = self;
    v21 = v4;
    v17 = v14;
    dispatch_group_notify(v15, v16, v18);
  }
}

void __65__PKPeerPaymentWebService__deviceRegistrationDataWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setEnrollmentData:a2];
  [*(a1 + 32) setSignedEnrollmentDataSignature:v6];
  [*(*(a1 + 40) + 160) setSignedEnrollmentDataSignature:v6];

  [*(a1 + 40) _archiveContext];
  v7 = *(a1 + 48);

  dispatch_group_leave(v7);
}

void __65__PKPeerPaymentWebService__deviceRegistrationDataWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSignedAuthToken:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __65__PKPeerPaymentWebService__deviceRegistrationDataWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) enrollmentData];
  if (v3 && (v4 = v3, [*(a1 + 32) signedAuthToken], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = _PKPeerPaymentWebServiceError(2, 0, 0, *(*(a1 + 40) + 176));
    (*(v6 + 16))(v6, 0, v7);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_peerPaymentDeviceMetadataWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    paymentDevice = self->_paymentDevice;
    v8 = v4;
    if (!paymentDevice)
    {
      v6 = objc_alloc_init(PKPaymentDevice);
      v7 = self->_paymentDevice;
      self->_paymentDevice = v6;

      paymentDevice = self->_paymentDevice;
    }

    [(PKPaymentDevice *)paymentDevice paymentDeviceMetadataFields:43 completion:v8];
    v4 = v8;
  }
}

- (void)_renewAppleAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __67__PKPeerPaymentWebService__renewAppleAccountWithCompletionHandler___block_invoke;
  v11 = &unk_1E79C4680;
  v12 = self;
  v5 = v4;
  v13 = v5;
  v6 = _Block_copy(&v8);
  if (objc_opt_respondsToSelector())
  {
    [(PKPeerPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice renewAppleAccountWithCompletionHandler:v6, v8, v9, v10, v11, v12];
  }

  else
  {
    v7 = [PKAppleAccountManager sharedInstance:v8];
    [v7 renewAppleAccountWithCompletionHandler:v6];
  }
}

void __67__PKPeerPaymentWebService__renewAppleAccountWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = PKWebServiceAccountCredentialRenewalSucceededNotification;
  if (a2)
  {
    v5 = &PKWebServiceAccountCredentialRenewalFailedNotification;
  }

  v6 = MEMORY[0x1E696AD88];
  v7 = *v5;
  v8 = [v6 defaultCenter];
  [v8 postNotificationName:v7 object:*(a1 + 32)];

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v10);
  }
}

- (void)prewarmDeviceScoreForAttributes:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPeerPaymentService *)self->_peerPaymentService account];
  v6 = [v5 deviceScoreEncryptedPayloadVersion];

  [v4 setPayloadVersion:v6];
  v7 = [v4 endpoint];
  v8 = [v4 recipientAddresses];
  v9 = [v4 messagesContext];
  v10 = [v4 key];
  if ([v10 length])
  {
    prewarmedDeviceScorersQueue = self->_prewarmedDeviceScorersQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__PKPeerPaymentWebService_prewarmDeviceScoreForAttributes___block_invoke;
    v14[3] = &unk_1E79D1EA8;
    v14[4] = self;
    v15 = v10;
    v18 = v9;
    v16 = v8;
    v19 = v7;
    v17 = v4;
    dispatch_async(prewarmedDeviceScorersQueue, v14);
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PKPeerPaymentDeviceScoreEndpointIdentifierForEndpoint(v7);
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Invalid key for endpoint %@.", buf, 0xCu);
    }
  }
}

void __59__PKPeerPaymentWebService_prewarmDeviceScoreForAttributes___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 128) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    v3 = *(a1 + 64);
    v4 = [*(a1 + 48) count];
    v5 = v4;
    v6 = *(a1 + 72);
    if (v3 == 2)
    {
      if (v6 == 3)
      {
        if (v4 >= 2)
        {
          [*(a1 + 56) setRecipientAddresses:0];
          v7 = [*(a1 + 56) key];
          v14 = [*(*(a1 + 32) + 128) objectForKey:v7];
          if (v14)
          {
            v9 = v14;
            v10 = PKLogFacilityTypeGetObject(0xCuLL);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v22 = 138412290;
              v23 = v7;
              goto LABEL_21;
            }

LABEL_22:

            [*(*(a1 + 32) + 128) removeObjectForKey:v7];
            [*(*(a1 + 32) + 128) setObject:v9 forKey:*(a1 + 40)];

            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a1 + 40);
              v22 = 134218242;
              v23 = v9;
              v24 = 2112;
              v25 = v15;
              _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Pre-warmed device scorer already exists %p for key: %@.", &v22, 0x16u);
            }

            [v9 updateWithNewAttributes:*(a1 + 56)];
LABEL_42:

            return;
          }

          goto LABEL_38;
        }
      }

      else if (v6 == 5)
      {
        if (v4 < 2)
        {
          v7 = 0;
        }

        else
        {
          v7 = [*(a1 + 56) key];
          v8 = [*(*(a1 + 32) + 128) objectForKey:v7];
          if (v8)
          {
            v9 = v8;
            v10 = PKLogFacilityTypeGetObject(0xCuLL);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v22 = 138412290;
              v23 = v7;
LABEL_21:
              _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Recovered device scorer from key: %@.", &v22, 0xCu);
              goto LABEL_22;
            }

            goto LABEL_22;
          }
        }

        goto LABEL_38;
      }

LABEL_39:
      v9 = [*(a1 + 32) _createDeviceScorerForAttributes:*(a1 + 56)];
      [*(*(a1 + 32) + 128) setObject:v9 forKey:*(a1 + 40)];
      v20 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 40);
        v22 = 134218242;
        v23 = v9;
        v24 = 2112;
        v25 = v21;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Inserted pre-warming device scorer %p for key: %@.", &v22, 0x16u);
      }

      goto LABEL_42;
    }

    if (v6 == 3)
    {
      if (v4 != 1)
      {
        goto LABEL_39;
      }

      v16 = [*(a1 + 56) copy];
      [v16 setRecipientAddresses:0];
      v17 = [v16 key];
      v7 = [*(*(a1 + 32) + 128) objectForKey:v17];
      if (!v7)
      {
        goto LABEL_36;
      }

      v18 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v17;
        _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Recovered device scorer from key: %@.", &v22, 0xCu);
      }

      v19 = v17;
    }

    else
    {
      if (v6 != 5)
      {
        goto LABEL_39;
      }

      v11 = [*(a1 + 56) key];
      v12 = [*(*(a1 + 32) + 128) objectForKey:v11];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v5 == 1;
      }

      if (!v13)
      {

        if (v12)
        {
          return;
        }

        goto LABEL_39;
      }

      v17 = [*(a1 + 56) copy];
      [v17 setRecipientAddresses:0];
      v19 = [v17 key];

      v7 = [*(*(a1 + 32) + 128) objectForKey:v19];
      if (!v7)
      {
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      v18 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v19;
        _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Recovered device scorer from key: %@.", &v22, 0xCu);
      }

      v16 = v19;
    }

    [*(*(a1 + 32) + 128) removeObjectForKey:v19];
    [*(*(a1 + 32) + 128) setObject:v7 forKey:*(a1 + 40)];
LABEL_36:
    v19 = v16;
    goto LABEL_37;
  }
}

- (void)unloadDeviceScoreForAttributes:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 endpoint];
  v6 = [v4 key];

  if ([v6 length])
  {
    prewarmedDeviceScorersQueue = self->_prewarmedDeviceScorersQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PKPeerPaymentWebService_unloadDeviceScoreForAttributes___block_invoke;
    v10[3] = &unk_1E79C4DD8;
    v10[4] = self;
    v11 = v6;
    dispatch_async(prewarmedDeviceScorersQueue, v10);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PKPeerPaymentDeviceScoreEndpointIdentifierForEndpoint(v5);
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Invalid key for endpoint %@.", buf, 0xCu);
    }
  }
}

void __58__PKPeerPaymentWebService_unloadDeviceScoreForAttributes___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 128) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Removing unused pre-warmed device score for key: %@.", &v5, 0xCu);
    }

    [v2 provideSessionFeedbackWithIngested:0];
    [*(*(a1 + 32) + 128) removeObjectForKey:*(a1 + 40)];
  }
}

- (void)updateDeviceScorersWithEncryptedPayloadVersion:(unint64_t)a3
{
  prewarmedDeviceScorers = self->_prewarmedDeviceScorers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__PKPeerPaymentWebService_updateDeviceScorersWithEncryptedPayloadVersion___block_invoke;
  v4[3] = &__block_descriptor_40_e74_v32__0__NSString_8__PKPeerPaymentDeviceScoreEncryptedPayloadManager_16_B24l;
  v4[4] = a3;
  [(NSMutableDictionary *)prewarmedDeviceScorers enumerateKeysAndObjectsUsingBlock:v4];
}

void __74__PKPeerPaymentWebService_updateDeviceScorersWithEncryptedPayloadVersion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 currentAttributes];
  [v4 setPayloadVersion:*(a1 + 32)];
}

- (id)_createDeviceScorerForAttributes:(id)a3
{
  peerPaymentService = self->_peerPaymentService;
  v4 = a3;
  v5 = [(PKPeerPaymentService *)peerPaymentService account];
  v6 = [v5 deviceScoreEncryptedPayloadVersion];

  [v4 setPayloadVersion:v6];
  v7 = [[PKPeerPaymentDeviceScoreEncryptedPayloadManager alloc] initWithDeviceScoreAttributes:v4];

  return v7;
}

- (void)_deviceScoreForAttributes:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(PKPeerPaymentService *)self->_peerPaymentService account];
    v9 = [v8 deviceScoreEncryptedPayloadVersion];

    [v6 setPayloadVersion:v9];
    v10 = [v6 key];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PKPeerPaymentWebService__deviceScoreForAttributes_withCompletion___block_invoke;
    aBlock[3] = &unk_1E79D1F18;
    v11 = v10;
    v21 = v11;
    v22 = self;
    v23 = v7;
    v12 = _Block_copy(aBlock);
    prewarmedDeviceScorersQueue = self->_prewarmedDeviceScorersQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKPeerPaymentWebService__deviceScoreForAttributes_withCompletion___block_invoke_251;
    block[3] = &unk_1E79CB4E8;
    block[4] = self;
    v17 = v11;
    v19 = v12;
    v18 = v6;
    v14 = v12;
    v15 = v11;
    dispatch_async(prewarmedDeviceScorersQueue, block);
  }
}

void __68__PKPeerPaymentWebService__deviceScoreForAttributes_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(2, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKPeerPaymentWebService__deviceScoreForAttributes_withCompletion___block_invoke_2;
  v7[3] = &unk_1E79CB4E8;
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __68__PKPeerPaymentWebService__deviceScoreForAttributes_withCompletion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PKLogFacilityTypeGetObject(0xCuLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: calculateWithDeviceScoreEncryptedPayloadManager called with deviceScoreEncryptedPayloadManager for key: %@.", buf, 0xCu);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__PKPeerPaymentWebService__deviceScoreForAttributes_withCompletion___block_invoke_249;
    v14[3] = &unk_1E79D1EF0;
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v7;
    *&v10 = v6;
    *(&v10 + 1) = v8;
    v15 = v10;
    v16 = v9;
    [v6 deviceScoreWithCompletion:v14];

    v11 = v15;
  }

  else
  {
    if (v4)
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: calculateWithDeviceScoreEncryptedPayloadManager called with a nil deviceScoreEncryptedPayloadManager for key: %@. Calling completion with error.", buf, 0xCu);
    }

    v13 = *(a1 + 56);
    v11 = _PKPeerPaymentWebServiceError(3, 0, 0, *(*(a1 + 48) + 176));
    (*(v13 + 16))(v13, 0, 0, 0, v11);
  }
}

void __68__PKPeerPaymentWebService__deviceScoreForAttributes_withCompletion___block_invoke_249(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 | v11)
  {
    (*(a1[7] + 16))();
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[5];
      v20 = 138412290;
      v21 = v14;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: peerPaymentDeviceScoreWithCompletion: failed to return a deviceScore for key: %@. Calling completion with error.", &v20, 0xCu);
    }

    v15 = PKIsPad();
    v16 = PKAggDKeyPeerPaymentDeviceScoreErrorPad;
    if (!v15)
    {
      v16 = PKAggDKeyPeerPaymentDeviceScoreErrorPhone;
    }

    v17 = *v16;
    if (v17)
    {
      AnalyticsSendEvent();
    }

    v18 = a1[7];
    v19 = _PKPeerPaymentWebServiceError(3, v12, 0, *(a1[6] + 176));
    (*(v18 + 16))(v18, 0, 0, 0, v19);
  }
}

void __68__PKPeerPaymentWebService__deviceScoreForAttributes_withCompletion___block_invoke_251(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 128) objectForKey:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(0xCuLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Found an existing, pre-warmed device scorer for key: %@.", &v7, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: No pre-warmed device scorer available for key: %@. Creating a new scorer.", &v7, 0xCu);
    }

    v2 = [*(a1 + 32) _createDeviceScorerForAttributes:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_provideDeviceScoreFeedbackIfNeededForAttributes:(id)a3 ingested:(BOOL)a4
{
  v6 = a3;
  v7 = [(PKPeerPaymentService *)self->_peerPaymentService account];
  v8 = [v7 deviceScoreEncryptedPayloadVersion];

  [v6 setPayloadVersion:v8];
  v9 = [v6 key];
  prewarmedDeviceScorersQueue = self->_prewarmedDeviceScorersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPeerPaymentWebService__provideDeviceScoreFeedbackIfNeededForAttributes_ingested___block_invoke;
  block[3] = &unk_1E79D0340;
  v14 = v9;
  v15 = self;
  v18 = a4;
  v16 = v6;
  v17 = v8;
  v11 = v6;
  v12 = v9;
  dispatch_async(prewarmedDeviceScorersQueue, block);
}

void __85__PKPeerPaymentWebService__provideDeviceScoreFeedbackIfNeededForAttributes_ingested___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 128) objectForKey:?];
    if (v2)
    {
      v3 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        if (*(a1 + 64))
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        v21 = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = v4;
        _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Providing feedback ingested %@ for key %@", &v21, 0x16u);
      }

      [v2 provideSessionFeedbackWithIngested:*(a1 + 64)];
      if ([*(a1 + 48) endpoint] != 3)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v21 = 138412290;
          v22 = v6;
          _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Releasing session for key %@", &v21, 0xCu);
        }

        [*(*(a1 + 40) + 128) removeObjectForKey:*(a1 + 32)];
      }
    }
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 64) == 1)
  {
    v7 = [*(a1 + 48) quoteRequestDestination];
    v8 = [*(a1 + 48) endpoint];
    v9 = 3;
    v10 = 2;
    v11 = 3;
    v12 = 4;
    v13 = 5;
    if (v7 != 1)
    {
      v13 = 0;
    }

    if (v7 != 2)
    {
      v12 = v7;
      v11 = v13;
    }

    if (v7 != 4)
    {
      v10 = v12;
      v9 = v11;
    }

    if (v8 != 3)
    {
      v10 = v7;
      v9 = 0;
    }

    if (v8 == 5)
    {
      v14 = v7;
    }

    else
    {
      v14 = v10;
    }

    if (v8 == 5)
    {
      v15 = 3;
    }

    else
    {
      v15 = v9;
    }

    v16 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [(PKPeerPaymentDeviceScoreAttributes *)v16 setPayloadVersion:*(a1 + 56)];
    [(PKPeerPaymentDeviceScoreAttributes *)v16 setEndpoint:v15];
    v17 = [*(a1 + 48) recipientAddresses];
    [(PKPeerPaymentDeviceScoreAttributes *)v16 setRecipientAddresses:v17];

    [(PKPeerPaymentDeviceScoreAttributes *)v16 setQuoteRequestDestination:v14];
    -[PKPeerPaymentDeviceScoreAttributes setMessagesContext:](v16, "setMessagesContext:", [*(a1 + 48) messagesContext]);
    v18 = [(PKPeerPaymentDeviceScoreAttributes *)v16 key];
    v19 = [*(*(a1 + 40) + 128) objectForKey:v18];
    if (v19)
    {
      v20 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v18;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentWebService: Score: Providing feedback not ingested for key %@ and releasing session", &v21, 0xCu);
      }

      [v19 provideSessionFeedbackWithIngested:0];
      [*(*(a1 + 40) + 128) removeObjectForKey:v18];
    }
  }
}

- (void)_handleRetryAfterRegisterWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Registering device", buf, 2u);
  }

  v9 = [(PKPeerPaymentWebService *)self peerPaymentServiceURL];
  v10 = [(PKPeerPaymentWebService *)self context];
  v11 = [v10 pushToken];

  if (objc_opt_respondsToSelector())
  {
    targetDevice = self->_targetDevice;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__PKPeerPaymentWebService__handleRetryAfterRegisterWithRequest_completionHandler___block_invoke;
    v14[3] = &unk_1E79D1F40;
    v14[4] = self;
    v15 = v6;
    v16 = v7;
    [(PKPeerPaymentWebServiceTargetDeviceProtocol *)targetDevice peerPaymentReRegisterWithURL:v9 pushToken:v11 peerPaymentWebService:self completion:v14];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "targetDevice cannot peer payment register. Aborting original request", buf, 2u);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPeerPaymentWebServiceErrorDomain" code:0 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v13);
  }
}

void __82__PKPeerPaymentWebService__handleRetryAfterRegisterWithRequest_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(0xCuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 || !a2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Registration failed. Aborting original request", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Registration succeeded, retrying original request", buf, 2u);
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __82__PKPeerPaymentWebService__handleRetryAfterRegisterWithRequest_completionHandler___block_invoke_258;
    v14 = &unk_1E79CD770;
    v15 = v8;
    v16 = *(a1 + 48);
    v10 = [v8 dataTaskWithRequest:v9 completionHandler:&v11];
    [v10 resume];
  }
}

void __82__PKPeerPaymentWebService__handleRetryAfterRegisterWithRequest_completionHandler___block_invoke_258(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) logResponse:v7 withData:v9];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_archiveContext
{
  v3 = [(PKPeerPaymentWebService *)self context];

  if (v3)
  {
    v5 = [(PKPeerPaymentWebService *)self archiver];
    v4 = [(PKPeerPaymentWebService *)self context];
    [v5 archiveContext:v4];
  }
}

- (BOOL)_isValidResponse:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v5;
    v8 = [v7 statusCode];
    v9 = 1;
    if (v8 != 200 && v8 != 304)
    {
      if (v6)
      {
        v10 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v7 URL];
          v12 = [v11 absoluteString];
          v14 = 138412546;
          v15 = v12;
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error executing request: %@ error: %@", &v14, 0x16u);
        }
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end