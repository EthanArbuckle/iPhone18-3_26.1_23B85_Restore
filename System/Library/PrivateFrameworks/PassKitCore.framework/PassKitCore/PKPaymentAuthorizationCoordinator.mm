@interface PKPaymentAuthorizationCoordinator
+ (BOOL)_canMakePaymentsUsingNetworks:(id)a3 capabilities:(unint64_t)a4 webDomain:(id)a5 paymentRequestType:(id)a6;
+ (BOOL)canMakePayments;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PKInAppPaymentService)inAppPaymentService;
- (PKPaymentAuthorizationCoordinator)initWithDisbursementRequest:(id)a3;
- (PKPaymentAuthorizationCoordinator)initWithPaymentRequest:(id)a3 remotePaymentRequestPromised:(BOOL)a4;
- (PKPaymentAuthorizationCoordinator)initWithRemotePaymentRequestPromised;
- (PKPaymentAuthorizationServiceProtocol)serviceProxy;
- (id)_remoteObjectProxyWithFailureHandler:(id)a3;
- (void)_invokeCallbackWithSuccess:(BOOL)a3;
- (void)dealloc;
- (void)dismissWithCompletion:(id)a3;
- (void)fulfillRemotePaymentRequestPromise:(id)a3 completion:(id)a4;
- (void)presentWithOrientation:(id)a3 completion:(id)a4;
- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)a3;
- (void)setServiceProxy:(id)a3;
@end

@implementation PKPaymentAuthorizationCoordinator

+ (BOOL)canMakePayments
{
  v11[1] = *MEMORY[0x1E69E9840];
  Payments = PKCanMakePayments();
  v3 = MEMORY[0x1E695DF90];
  v10 = @"result";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:Payments];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v3 dictionaryWithDictionary:v5];

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 PKSanitizedBundleIdentifier];

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"bundle"];
  }

  AnalyticsSendEvent();

  return Payments;
}

+ (BOOL)_canMakePaymentsUsingNetworks:(id)a3 capabilities:(unint64_t)a4 webDomain:(id)a5 paymentRequestType:(id)a6
{
  v27[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  PKCanMakePayments();
  PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType(v9, 0, a4, v10, v11);
  v13 = PKMerchantCapabilityToStrings(a4);
  v14 = v9;
  v15 = v13;
  v16 = v10;
  v17 = MEMORY[0x1E695DF90];
  v26 = @"result";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType];
  v27[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v20 = [v17 dictionaryWithDictionary:v19];

  v21 = [MEMORY[0x1E696AAE8] mainBundle];
  v22 = [v21 PKSanitizedBundleIdentifier];

  if (v22)
  {
    [v20 setObject:v22 forKeyedSubscript:@"bundle"];
  }

  if (v14 && [v14 count])
  {
    v23 = [v14 componentsJoinedByString:{@", "}];
    [v20 setObject:v23 forKeyedSubscript:@"networks"];
  }

  if (v15 && [v15 count])
  {
    v24 = [v15 componentsJoinedByString:{@", "}];
    [v20 setObject:v24 forKeyedSubscript:@"capabilities"];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:@"domain"];
  }

  AnalyticsSendEvent();

  return PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType;
}

- (PKPaymentAuthorizationCoordinator)initWithDisbursementRequest:(id)a3
{
  v4 = a3;
  v5 = [[PKDisbursementPaymentRequest alloc] initWithDisbursementRequest:v4];

  v6 = [(PKPaymentAuthorizationCoordinator *)self initWithPaymentRequest:v5];
  return v6;
}

- (PKPaymentAuthorizationCoordinator)initWithRemotePaymentRequestPromised
{
  v3 = objc_alloc_init(PKPaymentRequest);
  v4 = [(PKPaymentAuthorizationCoordinator *)self initWithPaymentRequest:v3 remotePaymentRequestPromised:1];

  return v4;
}

- (PKPaymentAuthorizationCoordinator)initWithPaymentRequest:(id)a3 remotePaymentRequestPromised:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v4)
  {
    v9 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Remote Payment Request has been promised, will check validity on fulfillment", buf, 2u);
    }

    v10 = 0;
    goto LABEL_18;
  }

  if ([v7 requestType] == 10 && objc_msgSend(v8, "APIType") == 2)
  {
    v11 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Skipping initial validation for a PKDisbursementRequest originating from the Web", buf, 2u);
    }

    v12 = [PKDisbursementPaymentRequestValidator validatorWithObject:v8 shouldSkipValidation:1];
    v40 = 0;
    v13 = [v12 isValidWithError:&v40];
    v10 = v40;

    if ((v13 & 1) == 0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v42 = v10;
        _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "Payment request is invalid: %{public}@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v14 = [PKPaymentRequestValidator validatorWithObject:v8];
    v39 = 0;
    v15 = [v14 isValidWithError:&v39];
    v10 = v39;

    if ((v15 & 1) == 0)
    {
      v33 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v42 = v10;
        v35 = "Payment request is invalid: %{public}@";
        v36 = v33;
        v37 = 12;
        goto LABEL_28;
      }

LABEL_22:

LABEL_23:
      v32 = 0;
      goto LABEL_24;
    }
  }

  if (![v8 requestType] && (objc_msgSend(v8, "isPeerPaymentRequest") & 1) == 0)
  {
    v16 = [v8 supportedNetworks];
    v17 = [v8 merchantCapabilities];
    v18 = [v8 originatingURL];
    v19 = [v18 host];
    v20 = [PKPaymentAuthorizationCoordinator canMakePaymentsUsingNetworks:v16 capabilities:v17 webDomain:v19];

    if (!v20 && !+[PKPaymentAuthorizationCoordinator canMakePayments])
    {
      v33 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v35 = "This device cannot make payments.";
        v36 = v33;
        v37 = 2;
LABEL_28:
        _os_log_error_impl(&dword_1AD337000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
        goto LABEL_22;
      }

      goto LABEL_22;
    }
  }

LABEL_18:
  v38.receiver = self;
  v38.super_class = PKPaymentAuthorizationCoordinator;
  v21 = [(PKPaymentAuthorizationCoordinator *)&v38 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_paymentRequest, a3);
    v22->_remotePaymentRequestPromised = v4;
    v23 = dispatch_queue_create("com.apple.passkit.PaymentAuthorization", 0);
    queue = v22->_queue;
    v22->_queue = v23;

    v25 = [MEMORY[0x1E696AFB0] UUID];
    v26 = [v25 UUIDString];
    hostIdentifier = v22->_hostIdentifier;
    v22->_hostIdentifier = v26;

    v28 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v22->_listener;
    v22->_listener = v28;

    [(NSXPCListener *)v22->_listener setDelegate:v22];
    v30 = [[PKPaymentAuthorizationCoordinatorExportedObject alloc] initWithController:v22];
    exportedObject = v22->_exportedObject;
    v22->_exportedObject = v30;

    v22->_connectionTimeout = 10.0;
  }

  self = v22;
  v32 = self;
LABEL_24:

  return v32;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationCoordinator;
  [(PKPaymentAuthorizationCoordinator *)&v3 dealloc];
}

- (PKInAppPaymentService)inAppPaymentService
{
  inAppPaymentService = self->_inAppPaymentService;
  if (!inAppPaymentService)
  {
    v4 = objc_alloc_init(PKInAppPaymentService);
    v5 = self->_inAppPaymentService;
    self->_inAppPaymentService = v4;

    inAppPaymentService = self->_inAppPaymentService;
  }

  return inAppPaymentService;
}

- (void)setServiceProxy:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_serviceProxy, v4);
  [(PKPaymentAuthorizationCoordinatorExportedObject *)self->_exportedObject setServiceProxy:v4];
}

- (void)presentWithOrientation:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v6 = a4;
  if (self->_didPresent)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 raise:v8 format:{@"%@ can only present one payment request.", v10}];
  }

  self->_didPresent = 1;
  v11 = [v6 copy];
  presentationCompletionBlock = self->_presentationCompletionBlock;
  self->_presentationCompletionBlock = v11;

  v13 = [(PKPaymentAuthorizationCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 presentationSceneIdentifierForPaymentAuthorizationCoordinator:self];
  }

  else
  {
    v14 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v13 presentationSceneBundleIdentifierForPaymentAuthorizationCoordinator:self];
  }

  else
  {
    v15 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [v13 analyticsSessionSubjectForPaymentAuthorizationCoordinator:self];
  }

  else
  {
    v16 = 0;
  }

  v39 = v16;
  if (objc_opt_respondsToSelector())
  {
    v17 = [v13 analyticsSessionTokenForPaymentAuthorizationCoordinator:self];
  }

  else
  {
    v17 = 0;
  }

  v18 = [getLNClientConnectionClass[0]() currentAuditToken];
  v19 = v18 != 0;
  v20 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v37 = @"not present";
    if (v18)
    {
      v37 = @"present";
    }

    *buf = 138412290;
    v49 = v37;
    _os_log_debug_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEBUG, "Presentation: Intent audit token: %@", buf, 0xCu);
  }

  if (self->_remoteNetworkPaymentInvokingProcess)
  {
    if (PKRemoteNetworkPaymentDisableEntitlementCheck())
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEBUG, "Presentation: Remote network payment universal link entitlement check disabled", buf, 2u);
      }

      v19 = 1;
    }

    else
    {
      v21 = v15;
      v22 = v6;
      v23 = v14;
      v24 = [(BSProcessHandle *)self->_remoteNetworkPaymentInvokingProcess hasEntitlement:@"com.apple.private.payment.remote-network-payment-initiate"];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v38 = @"not entitled";
        if (v24)
        {
          v38 = @"entitled";
        }

        *buf = 138412290;
        v49 = v38;
        _os_log_debug_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEBUG, "Presentation: Remote network payment universal link: %@", buf, 0xCu);
      }

      v19 = (v18 != 0) | v24;
      v14 = v23;
      v6 = v22;
      v15 = v21;
    }
  }

  [(NSXPCListener *)self->_listener resume];
  v25 = MKBGetDeviceLockState();
  if (v25 && v25 != 3)
  {
    [(PKPaymentAuthorizationCoordinator *)self _invokeCallbackWithSuccess:0];
    v35 = v39;
    v34 = v40;
  }

  else
  {
    v26 = [(NSXPCListener *)self->_listener endpoint];
    if (v26)
    {
      v27 = v6;
      v28 = v14;
      v29 = MEMORY[0x1E695DFF0];
      [(PKPaymentAuthorizationCoordinator *)self connectionTimeout];
      v30 = [v29 scheduledTimerWithTimeInterval:self target:sel__viewServiceTimerFired_ selector:0 userInfo:0 repeats:?];
      timer = self->_timer;
      self->_timer = v30;

      v32 = [(PKPaymentAuthorizationCoordinator *)self inAppPaymentService];
      hostIdentifier = self->_hostIdentifier;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __71__PKPaymentAuthorizationCoordinator_presentWithOrientation_completion___block_invoke;
      v41[3] = &unk_1E79CEAA0;
      v41[4] = self;
      v42 = v28;
      v43 = v15;
      v34 = v40;
      v44 = v40;
      v47 = v19 & 1;
      v35 = v39;
      v45 = v39;
      v46 = v17;
      v36 = hostIdentifier;
      v14 = v28;
      v6 = v27;
      [v32 registerPaymentListenerEndpoint:v26 forHostIdentifier:v36 completion:v41];
    }

    else
    {
      [(PKPaymentAuthorizationCoordinator *)self _invokeCallbackWithSuccess:0];
      v35 = v39;
      v34 = v40;
    }
  }
}

void __71__PKPaymentAuthorizationCoordinator_presentWithOrientation_completion___block_invoke(uint64_t a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject(8uLL);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationCoordinator - Presenting payment authorization sheet", buf, 2u);
    }

    v6 = objc_alloc_init(PKInAppPaymentPresentationHostContext);
    [(PKInAppPaymentPresentationHostContext *)v6 setRequest:*(*(a1 + 32) + 56)];
    [(PKInAppPaymentPresentationHostContext *)v6 setAwaitingRemoteNetworkPaymentRequest:*(*(a1 + 32) + 9)];
    [(PKInAppPaymentPresentationHostContext *)v6 setIdentifier:*(*(a1 + 32) + 64)];
    [(PKInAppPaymentPresentationHostContext *)v6 setSceneIdentifier:*(a1 + 40)];
    [(PKInAppPaymentPresentationHostContext *)v6 setSceneBundleIdentifier:*(a1 + 48)];
    [(PKInAppPaymentPresentationHostContext *)v6 setOrientation:*(a1 + 56)];
    [(PKInAppPaymentPresentationHostContext *)v6 setOmitPresentationTarget:*(a1 + 80)];
    [(PKInAppPaymentPresentationHostContext *)v6 setAnalyticsSubject:*(a1 + 64)];
    [(PKInAppPaymentPresentationHostContext *)v6 setAnalyticsArchivedSessionToken:*(a1 + 72)];
    v7 = [*(a1 + 32) inAppPaymentService];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__PKPaymentAuthorizationCoordinator_presentWithOrientation_completion___block_invoke_71;
    v8[3] = &unk_1E79C9640;
    v8[4] = *(a1 + 32);
    [v7 presentInAppPaymentInterfaceWithContext:v6 completion:v8];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "PKPaymentAuthorizationCoordinator - failed to register payment listener endpoint", buf, 2u);
    }

    [*(a1 + 32) _invokeCallbackWithSuccess:0];
  }
}

void __71__PKPaymentAuthorizationCoordinator_presentWithOrientation_completion___block_invoke_71(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PKLogFacilityTypeGetObject(8uLL);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        *buf = 138543362;
        v16 = v5;
        v8 = "PKPaymentAuthorizationCoordinator - Failed to present in-app payment interface: %{public}@";
        v9 = v6;
        v10 = 12;
LABEL_9:
        _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      }
    }

    else if (v7)
    {
      *buf = 0;
      v8 = "PKPaymentAuthorizationCoordinator - Failed to present in-app payment interface";
      v9 = v6;
      v10 = 2;
      goto LABEL_9;
    }

    v11 = [*(a1 + 32) inAppPaymentService];
    v12 = *(a1 + 32);
    v13 = *(v12 + 64);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__PKPaymentAuthorizationCoordinator_presentWithOrientation_completion___block_invoke_72;
    v14[3] = &unk_1E79C9D30;
    v14[4] = v12;
    [v11 registerPaymentListenerEndpoint:0 forHostIdentifier:v13 completion:v14];
  }
}

- (void)dismissWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationCoordinator - dismissWithCompletion", buf, 2u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKPaymentAuthorizationCoordinator_dismissWithCompletion___block_invoke;
  v9[3] = &unk_1E79C4A40;
  v9[4] = self;
  v10 = v4;
  v7 = v9;
  *buf = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __dispatch_async_ar_block_invoke_7;
  v14 = &unk_1E79C4428;
  v15 = v7;
  v8 = v4;
  dispatch_async(queue, buf);
}

void __59__PKPaymentAuthorizationCoordinator_dismissWithCompletion___block_invoke(uint64_t a1)
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __59__PKPaymentAuthorizationCoordinator_dismissWithCompletion___block_invoke_2;
  v9 = &unk_1E79C4A40;
  v2 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v2;
  v3 = _Block_copy(&v6);
  v4 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:{v3, v6, v7, v8, v9, v10}];
  v5 = v4;
  if (v4)
  {
    [v4 handleDismissWithCompletion:v3];
  }

  else
  {
    v3[2](v3);
  }
}

void __59__PKPaymentAuthorizationCoordinator_dismissWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationCoordinator - invalidate connection", v9, 2u);
  }

  [*(*(a1 + 32) + 40) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __dispatch_async_ar_block_invoke_7;
    v9[3] = &unk_1E79C4428;
    v10 = v7;
    v8 = v7;
    dispatch_async(v6, v9);
  }
}

- (void)fulfillRemotePaymentRequestPromise:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0x31uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "AuthorizationCoordinator: fulfillRemotePaymentRequestPromise", buf, 2u);
  }

  v9 = [v7 copy];
  remoteRequestPromisePresentationCompletionBlock = self->_remoteRequestPromisePresentationCompletionBlock;
  self->_remoteRequestPromisePresentationCompletionBlock = v9;

  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PKPaymentAuthorizationCoordinator_fulfillRemotePaymentRequestPromise_completion___block_invoke;
  v15[3] = &unk_1E79C4D60;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v15;
  *buf = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __dispatch_async_ar_block_invoke_7;
  v21 = &unk_1E79C4428;
  v22 = v12;
  v13 = v7;
  v14 = v6;
  dispatch_async(queue, buf);
}

void __83__PKPaymentAuthorizationCoordinator_fulfillRemotePaymentRequestPromise_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentAuthorizationCoordinator_fulfillRemotePaymentRequestPromise_completion___block_invoke_2;
  aBlock[3] = &unk_1E79C4E28;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v2];
  v4 = v3;
  if (v3)
  {
    [v3 fulfillRemotePaymentRequestPromise:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v2[2](v2);
  }
}

void __83__PKPaymentAuthorizationCoordinator_fulfillRemotePaymentRequestPromise_completion___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0x31uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "AuthorizationCoordinator: fulfill: invalidate connection", v5, 2u);
  }

  [*(*(a1 + 32) + 40) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject(0x31uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "AuthorizationCoordinator: rejectRemotePaymentRequestPromiseWithFailure: %@", &buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PKPaymentAuthorizationCoordinator_rejectRemotePaymentRequestPromiseWithFailure___block_invoke;
  v9[3] = &unk_1E79CAED8;
  v9[4] = self;
  v9[5] = a3;
  v8 = v9;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v11 = __dispatch_async_ar_block_invoke_7;
  v12 = &unk_1E79C4428;
  v13 = v8;
  dispatch_async(queue, &buf);
}

void __82__PKPaymentAuthorizationCoordinator_rejectRemotePaymentRequestPromiseWithFailure___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKPaymentAuthorizationCoordinator_rejectRemotePaymentRequestPromiseWithFailure___block_invoke_2;
  aBlock[3] = &unk_1E79C4E28;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 32) _remoteObjectProxyWithFailureHandler:v2];
  v4 = v3;
  if (v3)
  {
    [v3 rejectRemotePaymentRequestPromiseWithFailure:*(a1 + 40)];
  }

  else
  {
    v2[2](v2);
  }
}

void __82__PKPaymentAuthorizationCoordinator_rejectRemotePaymentRequestPromiseWithFailure___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0x31uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "AuthorizationCoordinator: reject: invalidate connection", v5, 2u);
  }

  [*(*(a1 + 32) + 40) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = v5;
  connection = self->_connection;
  if (!connection)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PKPaymentAuthorizationCoordinator_listener_shouldAcceptNewConnection___block_invoke;
    v11[3] = &unk_1E79C4DD8;
    v11[4] = self;
    v12 = v5;
    v9 = v11;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_7;
    block[3] = &unk_1E79C4428;
    v14 = v9;
    dispatch_async(queue, block);
  }

  return connection == 0;
}

void __72__PKPaymentAuthorizationCoordinator_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPaymentAuthorizationCoordinator_listener_shouldAcceptNewConnection___block_invoke_2;
  aBlock[3] = &unk_1E79C4E28;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = *(a1 + 40);
  v6 = PKPaymentAuthorizationServiceInterface();
  [v5 setRemoteObjectInterface:v6];

  v7 = *(a1 + 40);
  v8 = PKPaymentAuthorizationHostInterface();
  [v7 setExportedInterface:v8];

  [*(a1 + 40) setExportedObject:*(*(a1 + 32) + 72)];
  v9 = *(a1 + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PKPaymentAuthorizationCoordinator_listener_shouldAcceptNewConnection___block_invoke_3;
  v17[3] = &unk_1E79C4428;
  v10 = v4;
  v18 = v10;
  [v9 setInvalidationHandler:v17];
  v11 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PKPaymentAuthorizationCoordinator_listener_shouldAcceptNewConnection___block_invoke_4;
  v15[3] = &unk_1E79C4428;
  v16 = v10;
  v12 = v10;
  [v11 setInterruptionHandler:v15];
  v13 = *(*(a1 + 32) + 72);
  v14 = [*(a1 + 40) remoteObjectProxy];
  [v13 setServiceProxy:v14];

  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  [*(*(a1 + 32) + 40) resume];
  [*(a1 + 32) _invokeCallbackWithSuccess:1];
}

void __72__PKPaymentAuthorizationCoordinator_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 40) invalidate];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  [*(*(a1 + 32) + 72) authorizationDidFinishWithError:v2];
}

- (id)_remoteObjectProxyWithFailureHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    connection = self->_connection;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__PKPaymentAuthorizationCoordinator__remoteObjectProxyWithFailureHandler___block_invoke;
    v9[3] = &unk_1E79C4450;
    v10 = v4;
    v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  }

  else
  {
    v7 = [(PKPaymentAuthorizationCoordinator *)self _remoteObjectProxy];
  }

  return v7;
}

- (void)_invokeCallbackWithSuccess:(BOOL)a3
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKPaymentAuthorizationCoordinator__invokeCallbackWithSuccess___block_invoke;
  v5[3] = &unk_1E79C4EC8;
  v6 = a3;
  v5[4] = self;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_7;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(queue, block);
}

void __64__PKPaymentAuthorizationCoordinator__invokeCallbackWithSuccess___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    [*(*(a1 + 32) + 104) invalidate];
    [*(*(a1 + 32) + 48) invalidate];
  }

  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = 0;
  }
}

- (PKPaymentAuthorizationServiceProtocol)serviceProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceProxy);

  return WeakRetained;
}

@end