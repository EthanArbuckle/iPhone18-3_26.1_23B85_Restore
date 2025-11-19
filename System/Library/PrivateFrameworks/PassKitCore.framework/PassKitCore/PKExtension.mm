@interface PKExtension
- (NSString)extensionPointIdentifier;
- (PKExtension)initWithIdentifier:(id)a3 extension:(id)a4 provider:(id)a5;
- (PKExtensionProvider)provider;
- (id)description;
- (int64_t)type;
- (void)beginExtensionRequestWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)beginLocalExtensionServiceWithUserInteraction:(BOOL)a3 completion:(id)a4 timeout:(unint64_t)a5 timeoutHandler:(id)a6;
- (void)completeLocalExtensionServiceWithCompletion:(id)a3;
- (void)performTestExtensionServiceRequestWithCompletion:(id)a3;
@end

@implementation PKExtension

- (PKExtension)initWithIdentifier:(id)a3 extension:(id)a4 provider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = PKExtension;
  v11 = [(PKExtension *)&v25 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeWeak(&v11->_provider, v10);
    objc_storeStrong(&v11->_extension, a4);
    v14 = [(PKExtension *)v11 extension];
    v15 = [v14 _plugIn];
    v16 = [v15 containingUrl];

    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E69635F8]) initWithURL:v16 allowPlaceholder:1 error:0];
      v18 = [v17 bundleIdentifier];
      containingAppBundleIdentifier = v11->_containingAppBundleIdentifier;
      v11->_containingAppBundleIdentifier = v18;

      v20 = [v17 applicationIdentifier];
      containingApplicationIdentifier = v11->_containingApplicationIdentifier;
      v11->_containingApplicationIdentifier = v20;
    }

    v22 = dispatch_queue_create("com.apple.passkit.extension.timeout", 0);
    v23 = _serialQueue;
    _serialQueue = v22;
  }

  return v11;
}

- (int64_t)type
{
  v2 = [(PKExtension *)self extensionPointIdentifier];
  v3 = v2;
  if (v2 == @"com.apple.PassKit.in-app-payment-ui")
  {
    goto LABEL_15;
  }

  if (v2 && @"com.apple.PassKit.in-app-payment-ui")
  {
    v4 = [(__CFString *)v2 isEqualToString:@"com.apple.PassKit.in-app-payment-ui"];

    if (v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v2 = v3;
  v5 = v2;
  if (v2 == @"com.apple.PassKit.payment-information-event")
  {

    goto LABEL_14;
  }

  if (!v3 || !@"com.apple.PassKit.payment-information-event")
  {
LABEL_15:

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v6 = [(__CFString *)v2 isEqualToString:@"com.apple.PassKit.payment-information-event"];

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v7 = 1;
LABEL_17:

  return v7;
}

- (NSString)extensionPointIdentifier
{
  v2 = [(PKExtension *)self extension];
  v3 = [v2 extensionPointIdentifier];

  return v3;
}

- (void)performTestExtensionServiceRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "performing test request", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKExtension_performTestExtensionServiceRequestWithCompletion___block_invoke;
  v7[3] = &unk_1E79D19C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PKExtension *)self beginExtensionRequestWithCompletion:v7];
}

void __64__PKExtension_performTestExtensionServiceRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionContext];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retrieved an extension context", buf, 2u);
    }

    v6 = [[PKBarcodeEventMetadataRequest alloc] initWithBarcodeIdentifier:@"test" deviceAccountIdentifier:@"testBundle"];
    v7 = MEMORY[0x1E695FBE0];
    v8 = [*(a1 + 32) extension];
    v9 = [v8 _extensionBundle];
    v10 = [v9 bundleIdentifier];
    v11 = [v7 newAssertionForBundleIdentifier:v10 withReason:@"payment metadata"];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__PKExtension_performTestExtensionServiceRequestWithCompletion___block_invoke_95;
    v15[3] = &unk_1E79D1998;
    v16 = v11;
    v17 = v3;
    v18 = *(a1 + 40);
    v12 = v11;
    [v4 handleInformationRequest:v6 completion:v15];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Failed to retrieve extension context", buf, 2u);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 0);
    }
  }
}

void __64__PKExtension_performTestExtensionServiceRequestWithCompletion___block_invoke_95(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  v5 = [v4 paymentInformation];

  v6 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "response is %@", &v8, 0xCu);
  }

  [*(a1 + 40) invalidate];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

- (void)beginLocalExtensionServiceWithUserInteraction:(BOOL)a3 completion:(id)a4 timeout:(unint64_t)a5 timeoutHandler:(id)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a6;
  v12 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Beginning extension request", buf, 2u);
  }

  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _serialQueue);
  v14 = _timer;
  _timer = v13;

  v15 = _timer;
  v16 = dispatch_time(0, 1000000000 * a5);
  dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v17 = _timer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __95__PKExtension_beginLocalExtensionServiceWithUserInteraction_completion_timeout_timeoutHandler___block_invoke;
  handler[3] = &unk_1E79C4A40;
  handler[4] = self;
  v18 = v11;
  v24 = v18;
  dispatch_source_set_event_handler(v17, handler);
  _extensionRunning = 1;
  dispatch_resume(_timer);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "starting request", buf, 2u);
  }

  v19 = [(PKExtension *)self extension];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__PKExtension_beginLocalExtensionServiceWithUserInteraction_completion_timeout_timeoutHandler___block_invoke_99;
  v21[3] = &unk_1E79D19E8;
  v21[4] = self;
  v22 = v10;
  v20 = v10;
  [v19 beginExtensionRequestWithOptions:v8 inputItems:0 completion:v21];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Successfully started request", buf, 2u);
  }
}

void __95__PKExtension_beginLocalExtensionServiceWithUserInteraction_completion_timeout_timeoutHandler___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(_timer);
  if (_extensionRunning == 1)
  {
    _extensionRunning = 0;
    v2 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Local extension request timed out", v6, 2u);
    }

    v3 = [*(a1 + 32) extension];
    [v3 cancelExtensionRequestWithIdentifier:*(*(a1 + 32) + 8)];

    v4 = [*(a1 + 32) extension];
    [v4 _kill:9];

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void __95__PKExtension_beginLocalExtensionServiceWithUserInteraction_completion_timeout_timeoutHandler___block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Error beginning extension request: %@", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    v9 = _serialQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __95__PKExtension_beginLocalExtensionServiceWithUserInteraction_completion_timeout_timeoutHandler___block_invoke_100;
    v11[3] = &unk_1E79CB4E8;
    v11[4] = *(a1 + 32);
    v12 = v5;
    v10 = *(a1 + 40);
    v13 = 0;
    v14 = v10;
    dispatch_async(v9, v11);
  }
}

void __95__PKExtension_beginLocalExtensionServiceWithUserInteraction_completion_timeout_timeoutHandler___block_invoke_100(uint64_t a1)
{
  if (_extensionRunning == 1)
  {
    v14 = v1;
    v15 = v2;
    v4 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "extension is running", v13, 2u);
    }

    v5 = [*(a1 + 32) extension];
    v6 = [v5 _extensionContextForUUID:*(a1 + 40)];

    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __95__PKExtension_beginLocalExtensionServiceWithUserInteraction_completion_timeout_timeoutHandler___block_invoke_101;
      block[3] = &unk_1E79C44F0;
      v12 = v7;
      v10 = v6;
      v11 = *(a1 + 48);
      dispatch_async(v8, block);
    }
  }
}

- (void)completeLocalExtensionServiceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKExtension_completeLocalExtensionServiceWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __59__PKExtension_completeLocalExtensionServiceWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extension];
  [v2 cancelExtensionRequestWithIdentifier:*(*(a1 + 32) + 8)];

  if (_extensionRunning == 1)
  {
    _extensionRunning = 0;
    dispatch_source_cancel(_timer);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)beginExtensionRequestWithOptions:(unint64_t)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    if (!self->_extension)
    {
      v7 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKExtension can't begin extension request due to nil NSExtension", buf, 2u);
      }

      v6[2](v6, 0);
    }

    *buf = 0;
    v26 = buf;
    v27 = 0x2020000000;
    v28 = 0;
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _serialQueue);
    v9 = dispatch_time(0, 3000000000);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __59__PKExtension_beginExtensionRequestWithOptions_completion___block_invoke;
    v20 = &unk_1E79D1A10;
    v21 = self;
    v10 = v8;
    v22 = v10;
    v24 = buf;
    v11 = v6;
    v23 = v11;
    dispatch_source_set_event_handler(v10, &v17);
    dispatch_resume(v10);
    v12 = [PKExtensionRequestHandler alloc];
    v13 = [(PKExtensionRequestHandler *)v12 _initWithExtension:self->_extension extensionRequestOptions:a3, v17, v18, v19, v20, v21];
    dispatch_source_cancel(v10);
    v14 = 0;
    atomic_compare_exchange_strong(v26 + 24, &v14, 1u);
    if (v14)
    {
      [v13 invalidate];
    }

    else if (v13 && ![v13 isInvalidated])
    {
      v16 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 138412290;
        v30 = self;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "%@ successfully began extension request", v29, 0xCu);
      }

      (v11)[2](v11, v13);
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 138412290;
        v30 = self;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "%@ failed to begin extension request", v29, 0xCu);
      }

      v11[2](v11, 0);
    }

    _Block_object_dispose(buf, 8);
  }
}

void __59__PKExtension_beginExtensionRequestWithOptions_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "%@ begin extension request timed out", &v5, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 40));
  v4 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 56) + 8) + 24), &v4, 1u);
  if (!v4)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_identifier)
  {
    [v3 appendFormat:@"identifier: %@", self->_identifier];
  }

  [v4 appendFormat:@">"];
  v5 = [v4 copy];

  return v5;
}

- (PKExtensionProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end