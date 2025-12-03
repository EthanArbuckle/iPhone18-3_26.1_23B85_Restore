@interface PKShareAuthorizer
+ (id)authorizeForRequest:(id)request presentationSceneIdentifier:(id)identifier authHandler:(id)handler completion:(id)completion;
+ (void)_authorizeDeviceOwnerWithAuthHandler:(id)handler completion:(id)completion context:(id)context invalidateContext:(BOOL)invalidateContext;
+ (void)authorizeDeviceOwnerWithAuthHandler:(id)handler completion:(id)completion;
- (void)_authorizeForRequest:(id)request presentationSceneIdentifier:(id)identifier authHandler:(id)handler completion:(id)completion;
- (void)_handleDidFinishIfNeeded;
- (void)dealloc;
- (void)invalidate;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizeContextWithHandler:(id)handler;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish;
@end

@implementation PKShareAuthorizer

- (void)dealloc
{
  [(PKShareAuthorizer *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKShareAuthorizer;
  [(PKShareAuthorizer *)&v3 dealloc];
}

+ (id)authorizeForRequest:(id)request presentationSceneIdentifier:(id)identifier authHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    handlerCopy = handler;
    identifierCopy = identifier;
    requestCopy = request;
    v13 = objc_alloc_init(PKShareAuthorizer);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__PKShareAuthorizer_authorizeForRequest_presentationSceneIdentifier_authHandler_completion___block_invoke;
    v18[3] = &unk_1E79C4888;
    v20 = completionCopy;
    v14 = v13;
    v19 = v14;
    [(PKShareAuthorizer *)v14 _authorizeForRequest:requestCopy presentationSceneIdentifier:identifierCopy authHandler:handlerCopy completion:v18];

    v15 = v19;
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __92__PKShareAuthorizer_authorizeForRequest_presentationSceneIdentifier_authHandler_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)_authorizeForRequest:(id)request presentationSceneIdentifier:(id)identifier authHandler:(id)handler completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  requestCopy = request;
  v14 = _Block_copy(handler);
  authorizeHandler = self->_authorizeHandler;
  self->_authorizeHandler = v14;

  v16 = _Block_copy(completionCopy);
  completion = self->_completion;
  self->_completion = v16;

  objc_storeStrong(&self->_presentationSceneIdentifier, identifier);
  v18 = objc_alloc_init(MEMORY[0x1E696EE50]);
  context = self->_context;
  self->_context = v18;

  externalizedContext = [(LAContext *)self->_context externalizedContext];
  [requestCopy setExternalizedContext:externalizedContext];

  v21 = [[PKPaymentAuthorizationCoordinator alloc] initWithPaymentRequest:requestCopy];
  authorizationCoordinator = self->_authorizationCoordinator;
  self->_authorizationCoordinator = v21;

  v23 = self->_authorizationCoordinator;
  if (v23)
  {
    [(PKPaymentAuthorizationCoordinator *)v23 setDelegate:self];
    [(PKPaymentAuthorizationCoordinator *)self->_authorizationCoordinator _setPrivateDelegate:self];
    v24 = self->_authorizationCoordinator;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __93__PKShareAuthorizer__authorizeForRequest_presentationSceneIdentifier_authHandler_completion___block_invoke;
    v25[3] = &unk_1E79C9D30;
    v25[4] = self;
    [(PKPaymentAuthorizationCoordinator *)v24 presentWithCompletion:v25];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __93__PKShareAuthorizer__authorizeForRequest_presentationSceneIdentifier_authHandler_completion___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 24);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
      v4 = *(a1 + 32);
      v5 = *(v4 + 24);
      *(v4 + 24) = 0;
    }
  }
}

- (void)invalidate
{
  [(PKPaymentAuthorizationCoordinator *)self->_authorizationCoordinator dismissWithCompletion:0];
  authorizationCoordinator = self->_authorizationCoordinator;
  self->_authorizationCoordinator = 0;

  context = self->_context;

  [(LAContext *)context invalidate];
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish
{
  v10 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  v5 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_resultSuccess)
    {
      v6 = @"Yes";
    }

    else
    {
      v6 = @"No";
    }

    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKShareAuthorizer: Authorization did finish with success: %@", buf, 0xCu);
  }

  [finishCopy dismissWithCompletion:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKShareAuthorizer_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizeContextWithHandler:(id)handler
{
  coordinatorCopy = coordinator;
  handlerCopy = handler;
  v8 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKShareAuthorizer: Got authorization starting to share.", buf, 2u);
  }

  self->_isAuthorizationHandlerRunning = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKShareAuthorizer_paymentAuthorizationCoordinator_didAuthorizeContextWithHandler___block_invoke;
  aBlock[3] = &unk_1E79C4770;
  aBlock[4] = self;
  v9 = handlerCopy;
  v16 = v9;
  v10 = _Block_copy(aBlock);
  if (self->_authorizeHandler)
  {
    externalizedContext = [(LAContext *)self->_context externalizedContext];
    if (externalizedContext)
    {
      authorizeHandler = self->_authorizeHandler;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __84__PKShareAuthorizer_paymentAuthorizationCoordinator_didAuthorizeContextWithHandler___block_invoke_24;
      v13[3] = &unk_1E79C4770;
      v13[4] = self;
      v14 = v10;
      authorizeHandler[2](authorizeHandler, externalizedContext, v13);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKShareAuthorizer: Error! Unable to get externalized auth", buf, 2u);
      }

      (*(v10 + 2))(v10, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKShareAuthorizer: Error! No authorizeHandler completion provided!", buf, 2u);
    }

    (*(v10 + 2))(v10, 0);
  }
}

void __84__PKShareAuthorizer_paymentAuthorizationCoordinator_didAuthorizeContextWithHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = [[PKPaymentAuthorizationResult alloc] initWithStatus:a2 ^ 1u errors:0];
  *(*(a1 + 32) + 48) = v2;
  (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 49) = 0;
  [*(a1 + 32) _handleDidFinishIfNeeded];
}

void __84__PKShareAuthorizer_paymentAuthorizationCoordinator_didAuthorizeContextWithHandler___block_invoke_24(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKShareAuthorizer_paymentAuthorizationCoordinator_didAuthorizeContextWithHandler___block_invoke_2;
  block[3] = &unk_1E79C4DB0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __84__PKShareAuthorizer_paymentAuthorizationCoordinator_didAuthorizeContextWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)_handleDidFinishIfNeeded
{
  completion = self->_completion;
  if (completion && self->_didFinish)
  {
    if (self->_isAuthorizationHandlerRunning)
    {
      v4 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKShareAuthorizer: deferring didFinish while authorization handler runs", v6, 2u);
      }
    }

    else
    {
      completion[2](completion, self->_resultSuccess);
      v5 = self->_completion;
      self->_completion = 0;
    }
  }
}

+ (void)authorizeDeviceOwnerWithAuthHandler:(id)handler completion:(id)completion
{
  v6 = MEMORY[0x1E696EE50];
  completionCopy = completion;
  handlerCopy = handler;
  v9 = objc_alloc_init(v6);
  [self _authorizeDeviceOwnerWithAuthHandler:handlerCopy completion:completionCopy context:v9 invalidateContext:1];
}

+ (void)_authorizeDeviceOwnerWithAuthHandler:(id)handler completion:(id)completion context:(id)context invalidateContext:(BOOL)invalidateContext
{
  v30[3] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  completionCopy = completion;
  contextCopy = context;
  v29[0] = &unk_1F23B5510;
  v12 = PKLocalizedShareableCredentialString(&cfstr_LocalAuthentic.isa, 0);
  v30[0] = v12;
  v29[1] = &unk_1F23B5528;
  v13 = PKLocalizedString(&cfstr_Wallet_1.isa, 0);
  v29[2] = &unk_1F23B5540;
  v30[1] = v13;
  v30[2] = MEMORY[0x1E695E118];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke;
  aBlock[3] = &unk_1E79C4888;
  v28 = completionCopy;
  v15 = contextCopy;
  v27 = v15;
  v16 = completionCopy;
  v17 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke_37;
  v21[3] = &unk_1E79DF588;
  v22 = v15;
  v23 = v17;
  invalidateContextCopy = invalidateContext;
  v24 = handlerCopy;
  v18 = handlerCopy;
  v19 = v17;
  v20 = v15;
  [v20 evaluatePolicy:2 options:v14 reply:v21];
}

uint64_t __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"No";
    if (a2)
    {
      v5 = @"Yes";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKShareAuthorizer: Authorization did finish with success: %@", &v7, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (v5 && !v6)
  {
    v8 = [*(a1 + 32) externalizedContext];
  }

  v9 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Y";
    if (!v8)
    {
      v10 = @"N";
    }

    *buf = 138412290;
    v26 = v10;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKShareAuthorizer: Obtained externalized auth: %@", buf, 0xCu);
  }

  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke_2;
    aBlock[3] = &unk_1E79DF538;
    v22 = *(a1 + 56);
    v11 = &v20;
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v12 = _Block_copy(aBlock);
    v13 = v12;
    v14 = *(a1 + 48);
    if (v14)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke_4;
      block[3] = &unk_1E79DF560;
      v17 = v14;
      v16 = v8;
      v18 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      (*(v12 + 2))(v12, 1);
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke_44;
    v23[3] = &unk_1E79C4428;
    v11 = &v24;
    v24 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v23);
  }
}

void __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke_3;
  block[3] = &unk_1E79DF510;
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __95__PKShareAuthorizer__authorizeDeviceOwnerWithAuthHandler_completion_context_invalidateContext___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) invalidate];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end