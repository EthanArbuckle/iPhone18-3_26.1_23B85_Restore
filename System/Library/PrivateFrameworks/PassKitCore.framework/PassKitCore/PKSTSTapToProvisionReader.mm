@interface PKSTSTapToProvisionReader
- (BOOL)cancelProvisionAndReturnError:(id *)error;
- (PKSTSTapToProvisionDelegate)delegate;
- (PKSTSTapToProvisionReader)initWithReplyQueue:(id)queue;
- (void)onUpdateWithEvent:(int64_t)event;
- (void)provisionCardWithParameters:(id)parameters completion:(id)completion;
- (void)tapToProvisionAvailableWithTimeout:(double)timeout completion:(id)completion;
@end

@implementation PKSTSTapToProvisionReader

- (PKSTSTapToProvisionReader)initWithReplyQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = PKSTSTapToProvisionReader;
  v6 = [(PKSTSTapToProvisionReader *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.taptoprovision.reader.queue", 0);
    workQueue = v6->_workQueue;
    v6->_workQueue = v7;

    objc_storeStrong(&v6->_replyQueue, queue);
    v9 = v6->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PKSTSTapToProvisionReader_initWithReplyQueue___block_invoke;
    block[3] = &unk_1E79C4E28;
    v12 = v6;
    dispatch_async(v9, block);
  }

  return v6;
}

uint64_t __48__PKSTSTapToProvisionReader_initWithReplyQueue___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(getSTSTapToProvisionReaderClass[0]());
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(*(a1 + 32) + 8);

  return [v5 setDelegate:?];
}

- (void)provisionCardWithParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKSTSTapToProvisionReader_provisionCardWithParameters_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = parametersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = parametersCopy;
  dispatch_async(workQueue, block);
}

void __68__PKSTSTapToProvisionReader_provisionCardWithParameters_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = [*(a1 + 40) stsParameters];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PKSTSTapToProvisionReader_provisionCardWithParameters_completion___block_invoke_79;
    v8[3] = &unk_1E79D9D18;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    [v2 provisionCardWithParameters:v3 completion:v8];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) sid];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "[%@] PKSTSTapToProvisionReader: Failed to get reader instance", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentErrorDomain" code:0 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void __68__PKSTSTapToProvisionReader_provisionCardWithParameters_completion___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKSTSTapToProvisionReader_provisionCardWithParameters_completion___block_invoke_2;
  block[3] = &unk_1E79C4D60;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __68__PKSTSTapToProvisionReader_provisionCardWithParameters_completion___block_invoke_2(void *a1)
{
  v1 = a1[6];
  if (a1[4])
  {
    v2 = a1[5] == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v5 = [[PKSTSTapToProvisionResult alloc] initWithSTSResult:a1[4]];
    (*(v1 + 16))(v1, v5, 0);
  }

  else
  {
    v3 = *(v1 + 16);
    v4 = a1[6];

    v3(v4, 0);
  }
}

- (BOOL)cancelProvisionAndReturnError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__46;
  v12 = __Block_byref_object_dispose__46;
  v13 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKSTSTapToProvisionReader_cancelProvisionAndReturnError___block_invoke;
  block[3] = &unk_1E79D4838;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(workQueue, block);
  if (error)
  {
    *error = v9[5];
  }

  v5 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

void __59__PKSTSTapToProvisionReader_cancelProvisionAndReturnError___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 cancelProvisionAndReturnError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (void)tapToProvisionAvailableWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  if (self->_timer)
  {
    v7 = PKLogFacilityTypeGetObject(0x25uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSTSTapToProvisionReader: Clearing existing timer to start new preflight", buf, 2u);
    }

    dispatch_source_cancel(self->_timer);
    timer = self->_timer;
    self->_timer = 0;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_replyQueue);
  v10 = self->_timer;
  self->_timer = v9;

  v11 = self->_timer;
  v12 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v13 = self->_timer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __75__PKSTSTapToProvisionReader_tapToProvisionAvailableWithTimeout_completion___block_invoke;
  handler[3] = &unk_1E79C4A40;
  handler[4] = self;
  v14 = completionCopy;
  v20 = v14;
  dispatch_source_set_event_handler(v13, handler);
  workQueue = self->_workQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PKSTSTapToProvisionReader_tapToProvisionAvailableWithTimeout_completion___block_invoke_2;
  v17[3] = &unk_1E79C4A40;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  dispatch_async(workQueue, v17);
  dispatch_resume(self->_timer);
}

uint64_t __75__PKSTSTapToProvisionReader_tapToProvisionAvailableWithTimeout_completion___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = result;
    *(v1 + 32) = 0;

    v4 = *(*(v3 + 40) + 16);

    return v4();
  }

  return result;
}

void __75__PKSTSTapToProvisionReader_tapToProvisionAvailableWithTimeout_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PKSTSTapToProvisionReader_tapToProvisionAvailableWithTimeout_completion___block_invoke_3;
  v4[3] = &unk_1E79D9D40;
  v4[4] = v2;
  v5 = v1;
  [v3 checkStatusWithCompletion:v4];
}

void __75__PKSTSTapToProvisionReader_tapToProvisionAvailableWithTimeout_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKSTSTapToProvisionReader_tapToProvisionAvailableWithTimeout_completion___block_invoke_4;
  v12[3] = &unk_1E79C4EF0;
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void __75__PKSTSTapToProvisionReader_tapToProvisionAvailableWithTimeout_completion___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 40) != 0;
  }

  v3 = *(*(a1 + 48) + 32);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 48);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    if (v2)
    {
      goto LABEL_23;
    }

    v8 = PKLogFacilityTypeGetObject(0x25uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSTSTapToProvisionReader: Check status returned not available with error: %@", &v15, 0xCu);
    }

    v10 = [*(a1 + 32) domain];
    v11 = *MEMORY[0x1E69D3858];
    v12 = v10;
    v13 = v12;
    if (v12 == v11)
    {
    }

    else
    {
      if (!v12 || !v11)
      {

        goto LABEL_22;
      }

      v14 = [v12 isEqualToString:v11];

      if (!v14)
      {
        goto LABEL_22;
      }
    }

    [*(a1 + 32) code];
LABEL_22:

LABEL_23:
    (*(*(a1 + 56) + 16))();
    return;
  }

  v6 = PKLogFacilityTypeGetObject(0x25uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"No";
    if (v2)
    {
      v7 = @"Yes";
    }

    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKSTSTapToProvisionReader: finished checking status, but timed out. Available: %@", &v15, 0xCu);
  }
}

- (void)onUpdateWithEvent:(int64_t)event
{
  replyQueue = self->_replyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PKSTSTapToProvisionReader_onUpdateWithEvent___block_invoke;
  v4[3] = &unk_1E79CAED8;
  v4[4] = self;
  v4[5] = event;
  dispatch_async(replyQueue, v4);
}

void __47__PKSTSTapToProvisionReader_onUpdateWithEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained tapToProvisionReader:*(a1 + 32) didUpdateWithEvent:*(a1 + 40)];
}

- (PKSTSTapToProvisionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end