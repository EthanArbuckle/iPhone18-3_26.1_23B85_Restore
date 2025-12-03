@interface CUMobileDeviceSession
- (CUMobileDeviceSession)init;
- (void)_invalidated;
- (void)_pairSetupWithFlags:(unsigned int)flags completion:(id)completion;
- (void)_pairVerifyWithFlags:(unsigned int)flags completion:(id)completion;
- (void)_unpairWithCompletion:(id)completion;
- (void)activate;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n;
- (void)pairSetupWithFlags:(unsigned int)flags completion:(id)completion;
- (void)pairVerifyWithFlags:(unsigned int)flags completion:(id)completion;
- (void)unpairWithCompletion:(id)completion;
@end

@implementation CUMobileDeviceSession

- (void)_unpairWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CUMobileDeviceSession__unpairWithCompletion___block_invoke;
  block[3] = &unk_1E73A4FD0;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __47__CUMobileDeviceSession__unpairWithCompletion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E696A768];
    v9 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, -6735, 0, 0)}];
    v5 = v4;
    v6 = @"?";
    if (v4)
    {
      v6 = v4;
    }

    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = [v2 errorWithDomain:v3 code:-6735 userInfo:v7];
    (*(v1 + 16))(v1, v8);
  }
}

- (void)unpairWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CUMobileDeviceSession_unpairWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __46__CUMobileDeviceSession_unpairWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CUMobileDeviceSession_unpairWithCompletion___block_invoke_2;
  v4[3] = &unk_1E73A49A0;
  v4[4] = v2;
  v5 = v1;
  [v3 performBlock:v4];
}

- (void)_pairVerifyWithFlags:(unsigned int)flags completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CUMobileDeviceSession__pairVerifyWithFlags_completion___block_invoke;
  block[3] = &unk_1E73A4FD0;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __57__CUMobileDeviceSession__pairVerifyWithFlags_completion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A768];
  v9 = *MEMORY[0x1E696A578];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, -6735, 0, 0)}];
  v5 = v4;
  v6 = @"?";
  if (v4)
  {
    v6 = v4;
  }

  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v2 errorWithDomain:v3 code:-6735 userInfo:v7];
  (*(v1 + 16))(v1, v8);
}

- (void)pairVerifyWithFlags:(unsigned int)flags completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CUMobileDeviceSession_pairVerifyWithFlags_completion___block_invoke;
  block[3] = &unk_1E73A3658;
  flagsCopy = flags;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __56__CUMobileDeviceSession_pairVerifyWithFlags_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CUMobileDeviceSession_pairVerifyWithFlags_completion___block_invoke_2;
  v3[3] = &unk_1E73A3658;
  v3[4] = v1;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 performBlock:v3];
}

- (void)pairSetupTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CUMobileDeviceSession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_pairSetupWithFlags:(unsigned int)flags completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CUMobileDeviceSession__pairSetupWithFlags_completion___block_invoke;
  block[3] = &unk_1E73A4FD0;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __56__CUMobileDeviceSession__pairSetupWithFlags_completion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A768];
  v9 = *MEMORY[0x1E696A578];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, -6735, 0, 0)}];
  v5 = v4;
  v6 = @"?";
  if (v4)
  {
    v6 = v4;
  }

  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v2 errorWithDomain:v3 code:-6735 userInfo:v7];
  (*(v1 + 16))(v1, v8);
}

- (void)pairSetupWithFlags:(unsigned int)flags completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CUMobileDeviceSession_pairSetupWithFlags_completion___block_invoke;
  block[3] = &unk_1E73A3658;
  flagsCopy = flags;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __55__CUMobileDeviceSession_pairSetupWithFlags_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__CUMobileDeviceSession_pairSetupWithFlags_completion___block_invoke_2;
  v3[3] = &unk_1E73A3658;
  v3[4] = v1;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 performBlock:v3];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && gLogCategory_CUMobileDeviceSession <= 50 && (gLogCategory_CUMobileDeviceSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMobileDeviceSession, 0x32u)))
  {
    LogPrintF(&gLogCategory_CUMobileDeviceSession, "[CUMobileDeviceSession _invalidated]", 0x32u, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v14);
  }

  if (!self->_mdRunLoopThread)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
      v8 = self->_invalidationHandler;
    }

    else
    {
      v8 = 0;
    }

    self->_invalidationHandler = 0;

    promptForPINHandler = self->_promptForPINHandler;
    self->_promptForPINHandler = 0;

    if (gLogCategory_CUMobileDeviceSession <= 30 && (gLogCategory_CUMobileDeviceSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMobileDeviceSession, 0x1Eu)))
    {

      LogPrintF(&gLogCategory_CUMobileDeviceSession, "[CUMobileDeviceSession _invalidated]", 0x1Eu, "Invalidated\n", v10, v11, v12, v13, v16);
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CUMobileDeviceSession_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__CUMobileDeviceSession_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result + 32) + 9) & 1) == 0)
  {
    v10 = result;
    if (gLogCategory_CUMobileDeviceSession <= 30 && (gLogCategory_CUMobileDeviceSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMobileDeviceSession, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUMobileDeviceSession, "[CUMobileDeviceSession invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v8);
    }

    *(*(v10 + 32) + 9) = 1;
    v11 = *(v10 + 32);
    if (v11[2])
    {
      v12 = v11[2];

      return [v12 invalidate];
    }

    else
    {

      return [v11 _invalidated];
    }
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CUMobileDeviceSession_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __33__CUMobileDeviceSession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUMobileDeviceSession <= 30 && (gLogCategory_CUMobileDeviceSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMobileDeviceSession, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUMobileDeviceSession, "[CUMobileDeviceSession activate]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v14);
  }

  *(*(a1 + 32) + 8) = 1;
  v9 = objc_alloc_init(CURunLoopThread);
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;

  [*(*(a1 + 32) + 16) setDispatchQueue:*(*(a1 + 32) + 24)];
  v12 = [objc_opt_class() description];
  [*(*(a1 + 32) + 16) setLabel:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__CUMobileDeviceSession_activate__block_invoke_2;
  v15[3] = &unk_1E73A4F68;
  v16 = *(a1 + 32);
  [*(v16 + 16) setInvalidationHandler:v15];
  return [*(*(a1 + 32) + 16) activate];
}

uint64_t __33__CUMobileDeviceSession_activate__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (CUMobileDeviceSession)init
{
  v4.receiver = self;
  v4.super_class = CUMobileDeviceSession;
  v2 = [(CUMobileDeviceSession *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
  }

  return v2;
}

@end