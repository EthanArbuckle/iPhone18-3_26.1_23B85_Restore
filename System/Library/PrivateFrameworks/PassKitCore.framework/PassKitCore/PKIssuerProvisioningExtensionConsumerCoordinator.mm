@interface PKIssuerProvisioningExtensionConsumerCoordinator
+ (id)beginWithExtension:(id)a3 completion:(id)a4;
- (BOOL)isInvalidated;
- (id)_initWithExtension:(id)a3;
- (void)_performWhenConnected:(id)a3;
- (void)dealloc;
- (void)generateRequestWithEntryIdentifier:(id)a3 configuration:(id)a4 certificateChain:(id)a5 nonce:(id)a6 nonceSignature:(id)a7 completionHandler:(id)a8;
- (void)invalidate;
- (void)passEntriesWithCompletion:(id)a3;
- (void)remotePassEntriesWithCompletion:(id)a3;
- (void)statusWithCompletion:(id)a3;
@end

@implementation PKIssuerProvisioningExtensionConsumerCoordinator

+ (id)beginWithExtension:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__13;
    v21[4] = __Block_byref_object_dispose__13;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke;
    v18[3] = &unk_1E79CB750;
    v20 = v21;
    v8 = v5;
    v19 = v8;
    [(PKAsyncUnaryOperationComposer *)v7 addOperation:v18];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_2;
    v15[3] = &unk_1E79CB750;
    v17 = v21;
    v16 = v8;
    [(PKAsyncUnaryOperationComposer *)v7 addOperation:v15];
    v9 = [MEMORY[0x1E695DFB0] null];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_3_22;
    v12[3] = &unk_1E79CB818;
    v13 = v6;
    v14 = v21;
    v10 = [(PKAsyncUnaryOperationComposer *)v7 evaluateWithInput:v9 completion:v12];

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [[PKIssuerProvisioningExtensionConsumerCoordinator alloc] _initWithExtension:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
  if (v9)
  {
  }

  v8[2](v8, v7, *(*(*(a1 + 40) + 8) + 40) == 0);
}

void __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_3;
  v37[3] = &unk_1E79CB778;
  v37[4] = *(a1 + 40);
  [v7 addCancelAction:v37];
  v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v11 = dispatch_time(0, 3000000000);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_4;
  handler[3] = &unk_1E79CB7C8;
  v12 = v7;
  v29 = v12;
  v33 = v35;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v30 = v13;
  v34 = v14;
  v15 = v9;
  v32 = v15;
  v16 = v8;
  v31 = v16;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_resume(v10);
  v17 = *(*(*(a1 + 40) + 8) + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_19;
  v22[3] = &unk_1E79CB7F0;
  v18 = v10;
  v23 = v18;
  v19 = v12;
  v24 = v19;
  v27 = v35;
  v20 = v15;
  v26 = v20;
  v21 = v16;
  v25 = v21;
  [v17 _performWhenConnected:v22];

  _Block_object_dispose(v35, 8);
}

void __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_5;
  v5[3] = &unk_1E79CB7A0;
  v5[4] = *(a1 + 64);
  v5[5] = &v6;
  [v2 performAction:v5];
  if (*(v7 + 24) == 1)
  {
    v3 = PKLogFacilityTypeGetObject(0x2CuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) identifier];
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Ex<%@>: extension did not connect in time...timing out.", buf, 0xCu);
    }

    [*(*(*(a1 + 72) + 8) + 40) invalidate];
    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_5(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_19(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_2_20;
  v3[3] = &unk_1E79CB7A0;
  v3[4] = *(a1 + 64);
  v3[5] = &v4;
  [v2 performAction:v3];
  if (*(v5 + 24) == 1)
  {
    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v4, 8);
}

uint64_t __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_2_20(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void __82__PKIssuerProvisioningExtensionConsumerCoordinator_beginWithExtension_completion___block_invoke_3_22(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v9 = a4;
  if ([v7 isInvalidated])
  {
    v8 = 0;
  }

  else
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
  }

  (*(v6 + 16))(v6, a2, v8, v9);
}

- (id)_initWithExtension:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v23.receiver = self;
    v23.super_class = PKIssuerProvisioningExtensionConsumerCoordinator;
    v6 = [(PKIssuerProvisioningExtensionConsumerCoordinator *)&v23 init];
    v7 = v6;
    if (v6)
    {
      v6->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v6->_extension, a3);
      extension = v7->_extension;
      v22 = 0;
      v9 = [(NSExtension *)extension beginExtensionRequestWithOptions:1 inputItems:0 error:&v22];
      v10 = v22;
      requestIdentifier = v7->_requestIdentifier;
      v7->_requestIdentifier = v9;

      v12 = v10 != 0;
      v13 = v7->_requestIdentifier;
      if (v13)
      {
        v14 = v10 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v15 = [(NSExtension *)v7->_extension _extensionContextForUUID:?];
        if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          objc_storeStrong(&v7->_context, v15);
          v12 = 0;
        }

        else
        {
          v12 = 1;
        }

        v13 = v7->_requestIdentifier;
      }

      if (v13)
      {
        v17 = !v12;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        [(NSExtension *)v7->_extension cancelExtensionRequestWithIdentifier:?];
        v18 = v7->_requestIdentifier;
        v7->_requestIdentifier = 0;

        v13 = v7->_requestIdentifier;
      }

      if (!v13)
      {
        v7->_invalidated = 1;
        v19 = PKLogFacilityTypeGetObject(0x2CuLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v5 identifier];
          *buf = 138412546;
          v25 = v20;
          v26 = 2112;
          v27 = v10;
          _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Ex<%@>: PKIssuerProvisioningExtensionConsumerCoordinator: failed to begin extension request with error %@.", buf, 0x16u);
        }
      }
    }

    self = v7;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)dealloc
{
  [(PKIssuerProvisioningExtensionConsumerCoordinator *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKIssuerProvisioningExtensionConsumerCoordinator;
  [(PKIssuerProvisioningExtensionConsumerCoordinator *)&v3 dealloc];
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (self->_requestIdentifier)
    {
      [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?];
      requestIdentifier = self->_requestIdentifier;
      self->_requestIdentifier = 0;
    }

    context = self->_context;
    self->_context = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_performWhenConnected:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_context;
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      [(PKIssuerProvisioningExtensionConsumerContext *)v5 performWhenConnected:v6];
    }

    else
    {
      v6[2]();
    }

    v4 = v6;
  }
}

- (void)statusWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_context;
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      [(PKIssuerProvisioningExtensionConsumerContext *)v5 statusWithCompletion:v6];
    }

    else
    {
      v6[2](v6, 0);
    }

    v4 = v6;
  }
}

- (void)passEntriesWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_context;
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      [(PKIssuerProvisioningExtensionConsumerContext *)v5 passEntriesWithCompletion:v6];
    }

    else
    {
      v6[2](v6, 0);
    }

    v4 = v6;
  }
}

- (void)remotePassEntriesWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_context;
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      [(PKIssuerProvisioningExtensionConsumerContext *)v5 remotePassEntriesWithCompletion:v6];
    }

    else
    {
      v6[2](v6, 0);
    }

    v4 = v6;
  }
}

- (void)generateRequestWithEntryIdentifier:(id)a3 configuration:(id)a4 certificateChain:(id)a5 nonce:(id)a6 nonceSignature:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    os_unfair_lock_lock(&self->_lock);
    v20 = self->_context;
    os_unfair_lock_unlock(&self->_lock);
    if (v20)
    {
      v21 = self->_extension;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __157__PKIssuerProvisioningExtensionConsumerCoordinator_generateRequestWithEntryIdentifier_configuration_certificateChain_nonce_nonceSignature_completionHandler___block_invoke;
      v23[3] = &unk_1E79CB840;
      v24 = v21;
      v25 = v19;
      v22 = v21;
      [(PKIssuerProvisioningExtensionConsumerContext *)v20 generateRequestWithEntryIdentifier:v14 configuration:v15 certificateChain:v16 nonce:v17 nonceSignature:v18 completionHandler:v23];
    }

    else
    {
      (*(v19 + 2))(v19, 0);
    }
  }
}

void __157__PKIssuerProvisioningExtensionConsumerCoordinator_generateRequestWithEntryIdentifier_configuration_certificateChain_nonce_nonceSignature_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _plugIn];
  v8 = [v5 bundleInfoDictionary];

  v6 = [*(a1 + 32) identifier];
  v7 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695E148]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  [v4 setHostApplicationIdentifier:v6];
  [v4 setHostApplicationVersion:v7];
  (*(*(a1 + 40) + 16))();
}

@end