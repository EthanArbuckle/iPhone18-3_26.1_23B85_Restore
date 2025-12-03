@interface PKPaymentInformationEventExtensionHostContext
- (id)replyQueue;
- (void)handleConfigurationRequest:(id)request completion:(id)completion;
- (void)handleInformationRequest:(id)request completion:(id)completion;
- (void)handleSignatureRequest:(id)request completion:(id)completion;
@end

@implementation PKPaymentInformationEventExtensionHostContext

- (void)handleInformationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    replyQueue = [(PKPaymentInformationEventExtensionHostContext *)self replyQueue];
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, replyQueue);

    v10 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__31;
    v26[4] = __Block_byref_object_dispose__31;
    v27 = _Block_copy(completionCopy);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__PKPaymentInformationEventExtensionHostContext_handleInformationRequest_completion___block_invoke;
    aBlock[3] = &unk_1E79D4000;
    v11 = v9;
    v24 = v11;
    v25 = v26;
    v12 = _Block_copy(aBlock);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __85__PKPaymentInformationEventExtensionHostContext_handleInformationRequest_completion___block_invoke_2;
    handler[3] = &unk_1E79C4428;
    v13 = v12;
    v22 = v13;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(v11);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__PKPaymentInformationEventExtensionHostContext_handleInformationRequest_completion___block_invoke_3;
    v19[3] = &unk_1E79C4C70;
    v19[4] = self;
    v14 = v13;
    v20 = v14;
    v15 = [(PKPaymentInformationEventExtensionHostContext *)self vendorContextWithErrorHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__PKPaymentInformationEventExtensionHostContext_handleInformationRequest_completion___block_invoke_5;
    v17[3] = &unk_1E79D4028;
    v17[4] = self;
    v16 = v14;
    v18 = v16;
    [v15 handleInformationRequest:requestCopy completion:v17];

    _Block_object_dispose(v26, 8);
  }
}

void __85__PKPaymentInformationEventExtensionHostContext_handleInformationRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v4)
  {
    dispatch_source_cancel(v4);
    v3 = v8;
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v8);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    v3 = v8;
  }
}

void __85__PKPaymentInformationEventExtensionHostContext_handleInformationRequest_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentInformationEventExtensionHostContext_handleInformationRequest_completion___block_invoke_4;
  block[3] = &unk_1E79C4428;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __85__PKPaymentInformationEventExtensionHostContext_handleInformationRequest_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPaymentInformationEventExtensionHostContext_handleInformationRequest_completion___block_invoke_6;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)handleSignatureRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    replyQueue = [(PKPaymentInformationEventExtensionHostContext *)self replyQueue];
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, replyQueue);

    v10 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__31;
    v26[4] = __Block_byref_object_dispose__31;
    v27 = _Block_copy(completionCopy);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PKPaymentInformationEventExtensionHostContext_handleSignatureRequest_completion___block_invoke;
    aBlock[3] = &unk_1E79D4050;
    v11 = v9;
    v24 = v11;
    v25 = v26;
    v12 = _Block_copy(aBlock);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __83__PKPaymentInformationEventExtensionHostContext_handleSignatureRequest_completion___block_invoke_2;
    handler[3] = &unk_1E79C4428;
    v13 = v12;
    v22 = v13;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(v11);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__PKPaymentInformationEventExtensionHostContext_handleSignatureRequest_completion___block_invoke_3;
    v19[3] = &unk_1E79C4C70;
    v19[4] = self;
    v14 = v13;
    v20 = v14;
    v15 = [(PKPaymentInformationEventExtensionHostContext *)self vendorContextWithErrorHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__PKPaymentInformationEventExtensionHostContext_handleSignatureRequest_completion___block_invoke_5;
    v17[3] = &unk_1E79D4078;
    v17[4] = self;
    v16 = v14;
    v18 = v16;
    [v15 handleSignatureRequest:requestCopy completion:v17];

    _Block_object_dispose(v26, 8);
  }
}

void __83__PKPaymentInformationEventExtensionHostContext_handleSignatureRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v4)
  {
    dispatch_source_cancel(v4);
    v3 = v8;
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v8);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    v3 = v8;
  }
}

void __83__PKPaymentInformationEventExtensionHostContext_handleSignatureRequest_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKPaymentInformationEventExtensionHostContext_handleSignatureRequest_completion___block_invoke_4;
  block[3] = &unk_1E79C4428;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __83__PKPaymentInformationEventExtensionHostContext_handleSignatureRequest_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPaymentInformationEventExtensionHostContext_handleSignatureRequest_completion___block_invoke_6;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)handleConfigurationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  replyQueue = [(PKPaymentInformationEventExtensionHostContext *)self replyQueue];
  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, replyQueue);

  v10 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__31;
  v26[4] = __Block_byref_object_dispose__31;
  v27 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentInformationEventExtensionHostContext_handleConfigurationRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8AB0;
  v11 = v9;
  v24 = v11;
  v25 = v26;
  v12 = _Block_copy(aBlock);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __87__PKPaymentInformationEventExtensionHostContext_handleConfigurationRequest_completion___block_invoke_2;
  handler[3] = &unk_1E79C4428;
  v13 = v12;
  v22 = v13;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(v11);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__PKPaymentInformationEventExtensionHostContext_handleConfigurationRequest_completion___block_invoke_3;
  v19[3] = &unk_1E79C4C70;
  v19[4] = self;
  v14 = v13;
  v20 = v14;
  v15 = [(PKPaymentInformationEventExtensionHostContext *)self vendorContextWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__PKPaymentInformationEventExtensionHostContext_handleConfigurationRequest_completion___block_invoke_5;
  v17[3] = &unk_1E79C4A40;
  v17[4] = self;
  v16 = v14;
  v18 = v16;
  [v15 handleConfigurationRequest:requestCopy completion:v17];

  _Block_object_dispose(v26, 8);
}

void __87__PKPaymentInformationEventExtensionHostContext_handleConfigurationRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void __87__PKPaymentInformationEventExtensionHostContext_handleConfigurationRequest_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentInformationEventExtensionHostContext_handleConfigurationRequest_completion___block_invoke_4;
  block[3] = &unk_1E79C4428;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __87__PKPaymentInformationEventExtensionHostContext_handleConfigurationRequest_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentInformationEventExtensionHostContext_handleConfigurationRequest_completion___block_invoke_6;
  block[3] = &unk_1E79C4428;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (id)replyQueue
{
  queue = self->_queue;
  if (!queue)
  {
    v4 = dispatch_queue_create("PKPaymentInformationEventExtensionHostContext.replyQueue", 0);
    v5 = self->_queue;
    self->_queue = v4;

    queue = self->_queue;
  }

  return queue;
}

@end