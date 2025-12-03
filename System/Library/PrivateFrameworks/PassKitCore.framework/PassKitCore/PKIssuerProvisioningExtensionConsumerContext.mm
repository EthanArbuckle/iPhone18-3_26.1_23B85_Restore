@interface PKIssuerProvisioningExtensionConsumerContext
- (PKIssuerProvisioningExtensionConsumerContext)init;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)connectWithCompletion:(id)completion;
- (void)dealloc;
- (void)generateRequestWithEntryIdentifier:(id)identifier configuration:(id)configuration certificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler;
- (void)passEntriesWithCompletion:(id)completion;
- (void)performWhenConnected:(id)connected;
- (void)remotePassEntriesWithCompletion:(id)completion;
- (void)statusWithCompletion:(id)completion;
@end

@implementation PKIssuerProvisioningExtensionConsumerContext

- (PKIssuerProvisioningExtensionConsumerContext)init
{
  v3.receiver = self;
  v3.super_class = PKIssuerProvisioningExtensionConsumerContext;
  result = [(PKIssuerProvisioningExtensionConsumerContext *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = self->_blocksQueuedForConnected;
  blocksQueuedForConnected = self->_blocksQueuedForConnected;
  self->_blocksQueuedForConnected = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = PKIssuerProvisioningExtensionConsumerContext;
  [(PKIssuerProvisioningExtensionConsumerContext *)&v10 dealloc];
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(PKIssuerProvisioningExtensionConsumerContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _auxiliaryConnection = [(PKIssuerProvisioningExtensionConsumerContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)connectWithCompletion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_connected)
  {
    self->_connected = 1;
    _auxiliaryConnection = [(PKIssuerProvisioningExtensionConsumerContext *)self _auxiliaryConnection];
    v7 = _auxiliaryConnection;
    if (_auxiliaryConnection)
    {
      [_auxiliaryConnection auditToken];
      v8 = SecTaskCreateWithAuditToken(0, &token);
      if (v8)
      {
        v9 = v8;
        v10 = SecTaskCopyValueForEntitlement(v8, @"com.apple.developer.team-identifier", 0);
        teamID = self->_teamID;
        self->_teamID = v10;

        v12 = SecTaskCopySigningIdentifier(v9, 0);
        extensionIdentifier = self->_extensionIdentifier;
        self->_extensionIdentifier = &v12->isa;

        if ([(NSString *)self->_teamID length]!= 10)
        {
          v14 = PKLogFacilityTypeGetObject(0x2CuLL);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = self->_extensionIdentifier;
            token.val[0] = 138412290;
            *&token.val[1] = v15;
            _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Ex<%@>: ConsumerContext: teamID is invalid", &token, 0xCu);
          }

          v16 = self->_teamID;
          self->_teamID = 0;
        }

        v17 = SecTaskCopyValueForEntitlement(v9, @"com.apple.developer.payment-pass-provisioning", 0);
        self->_entitled = [v17 BOOLValue];
        CFRelease(v9);
      }
    }
  }

  if ([(NSMutableArray *)self->_blocksQueuedForConnected count])
  {
    v18 = self->_blocksQueuedForConnected;
  }

  else
  {
    v18 = 0;
  }

  blocksQueuedForConnected = self->_blocksQueuedForConnected;
  self->_blocksQueuedForConnected = 0;

  os_unfair_lock_unlock(&self->_lock);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = v18;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        (*(*(*(&v25 + 1) + 8 * i) + 16))(*(*(&v25 + 1) + 8 * i));
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v22);
  }
}

- (void)performWhenConnected:(id)connected
{
  connectedCopy = connected;
  if (connectedCopy)
  {
    aBlock = connectedCopy;
    os_unfair_lock_lock(&self->_lock);
    if (self->_connected)
    {
      os_unfair_lock_unlock(&self->_lock);
      aBlock[2]();
    }

    else
    {
      blocksQueuedForConnected = self->_blocksQueuedForConnected;
      if (!blocksQueuedForConnected)
      {
        v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        v7 = self->_blocksQueuedForConnected;
        self->_blocksQueuedForConnected = v6;

        blocksQueuedForConnected = self->_blocksQueuedForConnected;
      }

      v8 = _Block_copy(aBlock);
      [(NSMutableArray *)blocksQueuedForConnected addObject:v8];

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)statusWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__47;
    v22[4] = __Block_byref_object_dispose__47;
    v23 = _Block_copy(completionCopy);
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v7 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__PKIssuerProvisioningExtensionConsumerContext_statusWithCompletion___block_invoke;
    handler[3] = &unk_1E79D4838;
    handler[4] = self;
    handler[5] = v20;
    handler[6] = v22;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__PKIssuerProvisioningExtensionConsumerContext_statusWithCompletion___block_invoke_19;
    v15[3] = &unk_1E79DA1A0;
    v8 = v6;
    v16 = v8;
    v17 = v20;
    v18 = v22;
    v9 = [(PKIssuerProvisioningExtensionConsumerContext *)self remoteObjectProxyWithErrorHandler:v15];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__PKIssuerProvisioningExtensionConsumerContext_statusWithCompletion___block_invoke_2;
    v11[3] = &unk_1E79DA1C8;
    v10 = v8;
    v12 = v10;
    v13 = v20;
    v14 = v22;
    [v9 statusWithCompletion:v11];

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v22, 8);
  }
}

void __69__PKIssuerProvisioningExtensionConsumerContext_statusWithCompletion___block_invoke(void *a1)
{
  v1 = 0;
  v13 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong((*(a1[5] + 8) + 24), &v1, 1u);
  if (!v1)
  {
    v3 = PKLogFacilityTypeGetObject(0x2CuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = *(v4 + 40);
      v6 = *(v4 + 48);
      v9 = 138412546;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Ex<%@>: ConsumerContext: timeout trying to get status with extension for teamID: %{public}@", &v9, 0x16u);
    }

    (*(*(*(a1[6] + 8) + 40) + 16))();
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __69__PKIssuerProvisioningExtensionConsumerContext_statusWithCompletion___block_invoke_19(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v2, 1u);
  if (!v2)
  {
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __69__PKIssuerProvisioningExtensionConsumerContext_statusWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  dispatch_source_cancel(*(a1 + 32));
  v3 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v3, 1u);
  if (!v3)
  {
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

- (void)passEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__47;
    v22[4] = __Block_byref_object_dispose__47;
    v23 = _Block_copy(completionCopy);
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v7 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __74__PKIssuerProvisioningExtensionConsumerContext_passEntriesWithCompletion___block_invoke;
    handler[3] = &unk_1E79D4838;
    handler[4] = self;
    handler[5] = v20;
    handler[6] = v22;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__PKIssuerProvisioningExtensionConsumerContext_passEntriesWithCompletion___block_invoke_22;
    v15[3] = &unk_1E79DA1A0;
    v8 = v6;
    v16 = v8;
    v17 = v20;
    v18 = v22;
    v9 = [(PKIssuerProvisioningExtensionConsumerContext *)self remoteObjectProxyWithErrorHandler:v15];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__PKIssuerProvisioningExtensionConsumerContext_passEntriesWithCompletion___block_invoke_2;
    v11[3] = &unk_1E79DA1F0;
    v10 = v8;
    v12 = v10;
    v13 = v20;
    v14 = v22;
    [v9 passEntriesWithCompletion:v11];

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v22, 8);
  }
}

void __74__PKIssuerProvisioningExtensionConsumerContext_passEntriesWithCompletion___block_invoke(void *a1)
{
  v1 = 0;
  v13 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong((*(a1[5] + 8) + 24), &v1, 1u);
  if (!v1)
  {
    v3 = PKLogFacilityTypeGetObject(0x2CuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = *(v4 + 48);
      v6 = *(v4 + 40);
      v9 = 138412546;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Ex<%@>: ConsumerContext: timeout trying to get pass entries with extension for teamID: %{public}@", &v9, 0x16u);
    }

    (*(*(*(a1[6] + 8) + 40) + 16))();
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __74__PKIssuerProvisioningExtensionConsumerContext_passEntriesWithCompletion___block_invoke_22(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v2, 1u);
  if (!v2)
  {
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __74__PKIssuerProvisioningExtensionConsumerContext_passEntriesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  dispatch_source_cancel(*(a1 + 32));
  if (PassEntriesValidateStructure(v7))
  {
    v3 = v7;
  }

  else
  {

    v3 = 0;
  }

  v4 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v4, 1u);
  if (!v4)
  {
    v8 = v3;
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    v3 = v8;
  }
}

- (void)remotePassEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__47;
    v22[4] = __Block_byref_object_dispose__47;
    v23 = _Block_copy(completionCopy);
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v7 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __80__PKIssuerProvisioningExtensionConsumerContext_remotePassEntriesWithCompletion___block_invoke;
    handler[3] = &unk_1E79D4838;
    handler[4] = self;
    handler[5] = v20;
    handler[6] = v22;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__PKIssuerProvisioningExtensionConsumerContext_remotePassEntriesWithCompletion___block_invoke_24;
    v15[3] = &unk_1E79DA1A0;
    v8 = v6;
    v16 = v8;
    v17 = v20;
    v18 = v22;
    v9 = [(PKIssuerProvisioningExtensionConsumerContext *)self remoteObjectProxyWithErrorHandler:v15];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__PKIssuerProvisioningExtensionConsumerContext_remotePassEntriesWithCompletion___block_invoke_2;
    v11[3] = &unk_1E79DA1F0;
    v10 = v8;
    v12 = v10;
    v13 = v20;
    v14 = v22;
    [v9 remotePassEntriesWithCompletion:v11];

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v22, 8);
  }
}

void __80__PKIssuerProvisioningExtensionConsumerContext_remotePassEntriesWithCompletion___block_invoke(void *a1)
{
  v1 = 0;
  v13 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong((*(a1[5] + 8) + 24), &v1, 1u);
  if (!v1)
  {
    v3 = PKLogFacilityTypeGetObject(0x2CuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = *(v4 + 40);
      v6 = *(v4 + 48);
      v9 = 138412546;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Ex<%@>: ConsumerContext: timeout trying to get remote pass entries with extension for teamID: %{public}@", &v9, 0x16u);
    }

    (*(*(*(a1[6] + 8) + 40) + 16))();
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __80__PKIssuerProvisioningExtensionConsumerContext_remotePassEntriesWithCompletion___block_invoke_24(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v2, 1u);
  if (!v2)
  {
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __80__PKIssuerProvisioningExtensionConsumerContext_remotePassEntriesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  dispatch_source_cancel(*(a1 + 32));
  if (PassEntriesValidateStructure(v7))
  {
    v3 = v7;
  }

  else
  {

    v3 = 0;
  }

  v4 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v4, 1u);
  if (!v4)
  {
    v8 = v3;
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    v3 = v8;
  }
}

- (void)generateRequestWithEntryIdentifier:(id)identifier configuration:(id)configuration certificateChain:(id)chain nonce:(id)nonce nonceSignature:(id)signature completionHandler:(id)handler
{
  v64 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  configurationCopy = configuration;
  chainCopy = chain;
  nonceCopy = nonce;
  signatureCopy = signature;
  handlerCopy = handler;
  if (handlerCopy)
  {
    encryptionScheme = [configurationCopy encryptionScheme];
    v18 = self->_teamID;
    if (self->_entitled)
    {
      v60 = 0u;
      v61 = 0u;
      _auxiliaryConnection = [(PKIssuerProvisioningExtensionConsumerContext *)self _auxiliaryConnection];
      v20 = _auxiliaryConnection;
      if (_auxiliaryConnection)
      {
        [_auxiliaryConnection auditToken];
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
      }

      v59 = 0;
      v58 = 0;
      v22 = nonceCopy;
      V0YaM92nP0Xx19HNvczPJ(&v60, 32, [nonceCopy bytes], objc_msgSend(nonceCopy, "length"), &v59, &v58);
      v24 = v23;
      if (!v23 && v59 && v58)
      {
        v25 = objc_alloc(MEMORY[0x1E695DEF0]);
        v21 = [v25 initWithBytes:v59 length:v58];
      }

      else
      {
        v26 = PKLogFacilityTypeGetObject(0x2CuLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          extensionIdentifier = self->_extensionIdentifier;
          *buf = 138413058;
          *&buf[4] = extensionIdentifier;
          *&buf[12] = 1024;
          *&buf[14] = v24;
          *&buf[18] = 2112;
          *&buf[20] = identifierCopy;
          *&buf[28] = 2114;
          *&buf[30] = v18;
          _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Ex<%@>: ConsumerContext: Proceeding with provisioning without fairplay data: %d for identifier: %@ and teamID: %{public}@", buf, 0x26u);
        }

        v21 = 0;
      }

      if (v59)
      {
        jEHf8Xzsv8K(v59);
      }
    }

    else
    {
      v21 = 0;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__47;
    *&buf[32] = __Block_byref_object_dispose__47;
    v28 = _Block_copy(handlerCopy);
    v39 = handlerCopy;
    v29 = v21;
    v63 = v28;
    *&v60 = 0;
    *(&v60 + 1) = &v60;
    *&v61 = 0x2020000000;
    BYTE8(v61) = 0;
    v30 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v31 = dispatch_time(0, 20000000000);
    dispatch_source_set_timer(v30, v31, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __153__PKIssuerProvisioningExtensionConsumerContext_generateRequestWithEntryIdentifier_configuration_certificateChain_nonce_nonceSignature_completionHandler___block_invoke;
    handler[3] = &unk_1E79DA218;
    v56 = &v60;
    handler[4] = self;
    v32 = identifierCopy;
    v55 = v32;
    v57 = buf;
    dispatch_source_set_event_handler(v30, handler);
    dispatch_resume(v30);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __153__PKIssuerProvisioningExtensionConsumerContext_generateRequestWithEntryIdentifier_configuration_certificateChain_nonce_nonceSignature_completionHandler___block_invoke_33;
    v50[3] = &unk_1E79DA1A0;
    v33 = v30;
    v51 = v33;
    v52 = &v60;
    v53 = buf;
    v34 = [(PKIssuerProvisioningExtensionConsumerContext *)self remoteObjectProxyWithErrorHandler:v50];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __153__PKIssuerProvisioningExtensionConsumerContext_generateRequestWithEntryIdentifier_configuration_certificateChain_nonce_nonceSignature_completionHandler___block_invoke_2;
    v43[3] = &unk_1E79DA240;
    v35 = v33;
    v44 = v35;
    v48 = &v60;
    v36 = encryptionScheme;
    v45 = v36;
    v37 = v18;
    v46 = v37;
    v38 = v29;
    v47 = v38;
    v49 = buf;
    [v34 generateRequestWithEntryIdentifier:v32 configuration:configurationCopy certificateChain:chainCopy nonce:nonceCopy nonceSignature:signatureCopy completionHandler:v43];

    handlerCopy = v39;
    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __153__PKIssuerProvisioningExtensionConsumerContext_generateRequestWithEntryIdentifier_configuration_certificateChain_nonce_nonceSignature_completionHandler___block_invoke(void *a1)
{
  v1 = 0;
  v16 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong((*(a1[6] + 8) + 24), &v1, 1u);
  if (!v1)
  {
    v3 = PKLogFacilityTypeGetObject(0x2CuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = a1[5];
      v6 = *(v4 + 40);
      v7 = *(v4 + 48);
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Ex<%@>: ConsumerContext: timeout trying to generate request with entry identifier: %@ for teamID: %{public}@", &v10, 0x20u);
    }

    AnalyticsSendEvent();
    (*(*(*(a1[7] + 8) + 40) + 16))();
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void __153__PKIssuerProvisioningExtensionConsumerContext_generateRequestWithEntryIdentifier_configuration_certificateChain_nonce_nonceSignature_completionHandler___block_invoke_33(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v2, 1u);
  if (!v2)
  {
    dispatch_source_cancel(*(a1 + 32));
    (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __153__PKIssuerProvisioningExtensionConsumerContext_generateRequestWithEntryIdentifier_configuration_certificateChain_nonce_nonceSignature_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  dispatch_source_cancel(*(a1 + 32));
  v3 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 64) + 8) + 24), &v3, 1u);
  if (!v3)
  {
    dispatch_source_cancel(*(a1 + 32));
    [v6 setEncryptionVersion:*(a1 + 40)];
    [v6 setIssuerIdentifier:*(a1 + 48)];
    [v6 setFPInfo:*(a1 + 56)];
    (*(*(*(*(a1 + 72) + 8) + 40) + 16))();
    v4 = *(*(a1 + 72) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

@end