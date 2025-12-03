@interface CBDisplayStateClient
- (BOOL)supported;
- (BOOL)switchToFlipbookState:(int64_t)state error:(id *)error;
- (BOOL)transitionToDisplayMode:(int64_t)mode withDuration:(double)duration error:(id *)error;
- (CBDisplayStateClient)init;
- (int64_t)displayMode;
- (void)_displayModeChangeCompletionHandler:(int64_t)handler;
- (void)_removeCompletionDelegate;
- (void)activate;
- (void)cancel;
- (void)dealloc;
- (void)setCompletionDelegate:(id)delegate;
@end

@implementation CBDisplayStateClient

- (CBDisplayStateClient)init
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = CBDisplayStateClient;
  selfCopy = [(CBDisplayStateClient *)&v6 init];
  if (selfCopy)
  {
    v2 = objc_alloc_init(BrightnessSystemClientInternal);
    selfCopy->_bsci = v2;
    v3 = dispatch_queue_create("CB - DisplayStateClient", 0);
    selfCopy->_queue = v3;
    v4 = os_log_create("com.apple.CoreBrightness.DisplayStateClient", "Default");
    selfCopy->_logHandle = v4;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = MEMORY[0x1E69E5920](self->_bsci).n128_u64[0];
  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
  }

  if (selfCopy->_logHandle)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_logHandle).n128_u64[0];
  }

  v3.receiver = selfCopy;
  v3.super_class = CBDisplayStateClient;
  [(CBDisplayStateClient *)&v3 dealloc];
}

- (void)activate
{
  selfCopy = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __32__CBDisplayStateClient_activate__block_invoke;
  v7 = &unk_1E867B480;
  v8 = selfCopy;
  dispatch_sync(queue, &block);
}

uint64_t __32__CBDisplayStateClient_activate__block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  *(*(a1 + 32) + 32) = 1;
  v2 = *(*(a1 + 32) + 8);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __32__CBDisplayStateClient_activate__block_invoke_2;
  v8 = &unk_1E867B558;
  v9 = *(a1 + 32);
  return [v2 registerNotificationBlock:?];
}

void __32__CBDisplayStateClient_activate__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a1;
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](v14);
  v3 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __32__CBDisplayStateClient_activate__block_invoke_3;
  v9 = &unk_1E867B750;
  v10 = v15;
  v11 = v14;
  v12 = *(a1 + 32);
  dispatch_async(v3, &block);
}

void __32__CBDisplayStateClient_activate__block_invoke_3(id *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a1[4] isEqual:@"DisplayModeChangeComplete"])
  {
    v3 = a1[5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1[6] _displayModeChangeCompletionHandler:{objc_msgSend(a1[5], "integerValue")}];
    }

    else
    {
      v5 = *(a1[6] + 2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v1 = a1[5];
        v2 = objc_opt_class();
        __os_log_helper_16_2_1_8_64(v6, v2);
        _os_log_fault_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_FAULT, "unexpected display mode payload type (%@)", v6, 0xCu);
      }
    }
  }

  MEMORY[0x1E69E5920](a1[4]);
  MEMORY[0x1E69E5920](a1[5]);
  *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  selfCopy = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __30__CBDisplayStateClient_cancel__block_invoke;
  v7 = &unk_1E867B480;
  v8 = selfCopy;
  dispatch_sync(queue, &block);
}

uint64_t __30__CBDisplayStateClient_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) registerNotificationBlock:0];
  [*(a1 + 32) _removeCompletionDelegate];
  result = a1;
  *(*(a1 + 32) + 32) = 0;
  return result;
}

- (void)setCompletionDelegate:(id)delegate
{
  selfCopy = self;
  v12 = a2;
  delegateCopy = delegate;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __46__CBDisplayStateClient_setCompletionDelegate___block_invoke;
  v8 = &unk_1E867BB90;
  v9 = selfCopy;
  delegateCopy2 = delegate;
  dispatch_sync(queue, &block);
}

uint64_t __46__CBDisplayStateClient_setCompletionDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeCompletionDelegate];
  result = a1;
  if (*(a1 + 40))
  {
    *(*(a1 + 32) + 40) = MEMORY[0x1E69E5928](*(a1 + 40));
    return [*(*(a1 + 32) + 8) addPropertyForNotification:@"DisplayModeChangeComplete"];
  }

  return result;
}

- (void)_removeCompletionDelegate
{
  *&v2 = MEMORY[0x1E69E5920](self->_completionDelegate).n128_u64[0];
  self->_completionDelegate = 0;
  [(BrightnessSystemClientInternal *)self->_bsci removePropertyFromNotification:@"DisplayModeChangeComplete", v2];
}

- (void)_displayModeChangeCompletionHandler:(int64_t)handler
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v18 = a2;
  handlerCopy = handler;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v16 = logHandle;
  v15 = OS_SIGNPOST_EVENT;
  v14 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v16))
  {
    __os_log_helper_16_0_1_8_0(v20, handlerCopy);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v16, v15, v14, "DisplayModeClientCompletionHandler", "mode: %ld", v20, 0xCu);
  }

  if ([(CBDisplayStateClientDelegate *)selfCopy->_completionDelegate delegateQueue])
  {
    v13 = MEMORY[0x1E69E5928](selfCopy->_completionDelegate);
    delegateQueue = [(CBDisplayStateClientDelegate *)selfCopy->_completionDelegate delegateQueue];
    block = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __60__CBDisplayStateClient__displayModeChangeCompletionHandler___block_invoke;
    v10 = &unk_1E867B9D8;
    v11 = v13;
    v12 = handlerCopy;
    dispatch_async(delegateQueue, &block);
  }

  *MEMORY[0x1E69E9840];
}

double __60__CBDisplayStateClient__displayModeChangeCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didCompleteTransitionToDisplayMode:*(a1 + 40) withError:0];
  *&result = MEMORY[0x1E69E5920](*(a1 + 32)).n128_u64[0];
  return result;
}

- (BOOL)supported
{
  selfCopy = self;
  v9 = a2;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __33__CBDisplayStateClient_supported__block_invoke;
  v7 = &unk_1E867B480;
  selfCopy2 = self;
  v12 = &supported_onceToken;
  v11 = &v3;
  if (supported_onceToken != -1)
  {
    dispatch_once(v12, v11);
  }

  return selfCopy->_supported;
}

void __33__CBDisplayStateClient_supported__block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __33__CBDisplayStateClient_supported__block_invoke_2;
  v7 = &unk_1E867B480;
  v8 = *(a1 + 32);
  dispatch_sync(v2, &block);
}

double __33__CBDisplayStateClient_supported__block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v3 = [*(*(a1 + 32) + 8) copyPropertyForKey:@"DisplayStateControlSupported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(a1 + 32) + 33) = [v3 BOOLValue];
    }

    *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  }

  return result;
}

- (int64_t)displayMode
{
  selfCopy = self;
  v17 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x20000000;
  v15 = 32;
  v16 = 5;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __35__CBDisplayStateClient_displayMode__block_invoke;
  v9 = &unk_1E867C080;
  v10 = selfCopy;
  v11 = &v12;
  dispatch_sync(queue, &block);
  v4 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v4;
}

double __35__CBDisplayStateClient_displayMode__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v3 = [*(*(a1 + 32) + 8) copyPropertyForKey:@"DisplayMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 40) + 8) + 24) = [v3 intValue];
    }

    *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  }

  return result;
}

- (BOOL)transitionToDisplayMode:(int64_t)mode withDuration:(double)duration error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v45 = a2;
  modeCopy = mode;
  durationCopy = duration;
  errorCopy = error;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v41 = logHandle;
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v49, modeCopy);
    _os_log_impl(&dword_1DE8E5000, v41, v40, "[Display Mode] Client request transition to display mode %ld", v49, 0xCu);
  }

  if (selfCopy->_logHandle)
  {
    v14 = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v13 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v13 = init_default_corebrightness_log();
    }

    v14 = v13;
  }

  v39 = v14;
  v38 = OS_SIGNPOST_INTERVAL_BEGIN;
  v37 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_8_0(v48, modeCopy);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v39, v38, v37, "DisplayModeClientTransitionToDisplayMode", "%ld", v48, 0xCu);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x20000000;
  v35 = 32;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x20000000;
  v30 = 32;
  v31 = 0;
  queue = selfCopy->_queue;
  block = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __67__CBDisplayStateClient_transitionToDisplayMode_withDuration_error___block_invoke;
  v21 = &unk_1E867D188;
  v22 = selfCopy;
  v25 = modeCopy;
  v26 = durationCopy;
  v23 = &v32;
  v24 = &v27;
  dispatch_sync(queue, &block);
  if (errorCopy && v28[3])
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CBClientErrorDomain];
    v6 = [v11 errorWithDomain:v12 code:v28[3] userInfo:0];
    *errorCopy = v6;
  }

  if (selfCopy->_logHandle)
  {
    v10 = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v9 = init_default_corebrightness_log();
    }

    v10 = v9;
  }

  if (os_signpost_enabled(v10))
  {
    __os_log_helper_16_0_1_8_0(v47, modeCopy);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DisplayModeClientTransitionToDisplayMode", "%ld", v47, 0xCu);
  }

  v8 = *(v33 + 24);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v32, 8);
  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void __67__CBDisplayStateClient_transitionToDisplayMode_withDuration_error___block_invoke(uint64_t a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 32))
  {
    v3[0] = @"Value";
    v4[0] = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
    v3[1] = @"TransitionLength";
    v4[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 64)];
    *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 8) setSyncProperty:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v4, v3, 2), @"DisplayMode"}];
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 2;
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

- (BOOL)switchToFlipbookState:(int64_t)state error:(id *)error
{
  selfCopy = self;
  v20 = a2;
  stateCopy = state;
  errorCopy = error;
  v14[0] = 0;
  v14[1] = v14;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __52__CBDisplayStateClient_switchToFlipbookState_error___block_invoke;
  v10 = &unk_1E867BC80;
  v11 = selfCopy;
  stateCopy2 = state;
  v12 = v14;
  dispatch_sync(queue, &block);
  _Block_object_dispose(v14, 8);
  return 1;
}

void __52__CBDisplayStateClient_switchToFlipbookState_error___block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v21 = a1;
  if (*(a1[4] + 16))
  {
    v6 = *(a1[4] + 16);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v6 = inited;
  }

  v20 = v6;
  v19 = OS_SIGNPOST_INTERVAL_BEGIN;
  v18 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v6))
  {
    __os_log_helper_16_0_1_8_0(v24, a1[6]);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v20, v19, v18, "DisplayStateClientSwitchToFlipbookState", "%ld", v24, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  if (*(a1[4] + 32))
  {
    v17 = [*(a1[4] + 8) setSyncProperty:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", a1[6]), @"FlipBookState"}];
    if ((v17 & 1) == 0)
    {
      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 2;
  }

  if ([*(a1[4] + 40) delegateQueue])
  {
    v16 = MEMORY[0x1E69E5928](*(a1[4] + 40));
    v1 = [*(a1[4] + 40) delegateQueue];
    block = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __52__CBDisplayStateClient_switchToFlipbookState_error___block_invoke_27;
    v12 = &unk_1E867BCD0;
    v14 = a1[5];
    v13 = v16;
    v15 = a1[6];
    dispatch_async(v1, &block);
  }

  objc_autoreleasePoolPop(context);
  if (*(a1[4] + 16))
  {
    v3 = *(a1[4] + 16);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v2 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v2 = init_default_corebrightness_log();
    }

    v3 = v2;
  }

  if (os_signpost_enabled(v3))
  {
    __os_log_helper_16_0_1_8_0(v23, a1[6]);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DisplayStateClientSwitchToFlipbookState", "%ld", v23, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

void __52__CBDisplayStateClient_switchToFlipbookState_error___block_invoke_27(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v3 = 0;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:objc_msgSend(MEMORY[0x1E696AEC0] code:"stringWithUTF8String:" userInfo:{CBClientErrorDomain), *(*(*(a1 + 40) + 8) + 24), 0}];
  }

  [*(a1 + 32) didCompleteSwitchToFlipbookState:*(a1 + 48) withError:v3];
  MEMORY[0x1E69E5920](*(a1 + 32));
  objc_autoreleasePoolPop(context);
}

@end