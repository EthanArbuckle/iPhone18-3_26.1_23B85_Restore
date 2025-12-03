@interface CURunLoopThread
- (BOOL)_scheduleStopThread;
- (CURunLoopThread)init;
- (void)_invalidated;
- (void)_threadMain;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)performBlock:(id)block;
- (void)setLabel:(id)label;
@end

@implementation CURunLoopThread

- (void)_threadMain
{
  v47 = *MEMORY[0x1E69E9840];
  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_5;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize(ucat, 0x1Eu))
    {
      goto LABEL_5;
    }

    ucat = self->_ucat;
  }

  LogPrintF(ucat, "[CURunLoopThread _threadMain]", 0x1Eu, "RunLoop thread starting\n", v2, v3, v4, v5, v37);
LABEL_5:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_runLoop = CFRunLoopGetCurrent();
  selfCopy->_runLoopValid = 1;
  objc_sync_exit(selfCopy);

  memset(&context, 0, sizeof(context));
  v9 = CFRunLoopSourceCreate(0, 0, &context);
  if (v9)
  {
    CFRunLoopAddSource(selfCopy->_runLoop, v9, *MEMORY[0x1E695E8D0]);
  }

  v38 = objc_autoreleasePoolPush();
  threadInitializeHandler = selfCopy->_threadInitializeHandler;
  if (threadInitializeHandler)
  {
    threadInitializeHandler[2]();
  }

  v11 = selfCopy;
  objc_sync_enter(v11);
  v12 = [(NSMutableArray *)v11->_startBlocks copy];
  [(NSMutableArray *)v11->_startBlocks removeAllObjects];
  startBlocks = v11->_startBlocks;
  v11->_startBlocks = 0;

  objc_sync_exit(v11);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v15)
  {
    v16 = *v42;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        (*(v18 + 16))(v18);
        objc_autoreleasePoolPop(v19);
      }

      v15 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(v38);
  dispatchQueue = v11->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CURunLoopThread__threadMain__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = v11;
  dispatch_async(dispatchQueue, block);
  v21 = *MEMORY[0x1E695E8E0];
  while (1)
  {
    v22 = objc_autoreleasePoolPush();
    v27 = CFRunLoopRunInMode(v21, 1.79769313e308, 0);
    if (v27 == 2)
    {
      break;
    }

    v28 = self->_ucat;
    if (v28->var0 > 10)
    {
      goto LABEL_22;
    }

    if (v28->var0 != -1)
    {
      goto LABEL_20;
    }

    if (_LogCategory_Initialize(v28, 0xAu))
    {
      v28 = self->_ucat;
LABEL_20:
      LogPrintF(v28, "[CURunLoopThread _threadMain]", 0xAu, "Waiting for runloop to start (%d)\n", v23, v24, v25, v26, v27);
    }

LABEL_22:
    usleep(0x4E20u);
    objc_autoreleasePoolPop(v22);
  }

  objc_autoreleasePoolPop(v22);
  v33 = self->_ucat;
  if (v33->var0 <= 30)
  {
    if (v33->var0 != -1)
    {
      goto LABEL_26;
    }

    if (_LogCategory_Initialize(v33, 0x1Eu))
    {
      v33 = self->_ucat;
LABEL_26:
      LogPrintF(v33, "[CURunLoopThread _threadMain]", 0x1Eu, "RunLoop thread stopping\n", v29, v30, v31, v32, v37);
    }
  }

  threadFinalizeHandler = v11->_threadFinalizeHandler;
  if (threadFinalizeHandler)
  {
    threadFinalizeHandler[2]();
  }

  if (v9)
  {
    CFRunLoopRemoveSource(selfCopy->_runLoop, v9, *MEMORY[0x1E695E8D0]);
    CFRelease(v9);
  }

  v35 = v11;
  objc_sync_enter(v35);
  selfCopy->_runLoop = 0;
  objc_sync_exit(v35);

  v36 = v11->_dispatchQueue;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __30__CURunLoopThread__threadMain__block_invoke_2;
  v39[3] = &unk_1E73A4F68;
  v39[4] = v35;
  dispatch_async(v36, v39);
}

uint64_t __30__CURunLoopThread__threadMain__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 32);
  v10 = *(result + 48);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CURunLoopThread _threadMain]_block_invoke", 0x1Eu, "Started RunLoop thread\n", a5, a6, a7, a8, v12);
      result = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(*(result + 48), 0x1Eu);
    result = *(a1 + 32);
    if (v11)
    {
      v10 = *(result + 48);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (*(result + 9) == 1)
  {

    return [result _scheduleStopThread];
  }

  return result;
}

uint64_t __30__CURunLoopThread__threadMain__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CURunLoopThread _threadMain]_block_invoke_2", 0x1Eu, "Stopped RunLoop thread\n", a5, a6, a7, a8, v14);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 48);
      goto LABEL_3;
    }
  }

LABEL_5:
  *(v9 + 40) = 0;
  v12 = *(a1 + 32);

  return [v12 _invalidated];
}

- (BOOL)_scheduleStopThread
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  runLoopValid = selfCopy->_runLoopValid;
  selfCopy->_runLoopValid = 0;
  if (selfCopy->_runLoop && runLoopValid)
  {
    ucat = selfCopy->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_8;
        }

        ucat = selfCopy->_ucat;
      }

      LogPrintF(ucat, "[CURunLoopThread _scheduleStopThread]", 0x1Eu, "Scheduling stop of RunLoop thread\n", v3, v4, v5, v6, v13);
    }

LABEL_8:
    runLoop = selfCopy->_runLoop;
    v11 = *MEMORY[0x1E695E8E0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__CURunLoopThread__scheduleStopThread__block_invoke;
    block[3] = &unk_1E73A4F68;
    block[4] = selfCopy;
    CFRunLoopPerformBlock(runLoop, v11, block);
    CFRunLoopWakeUp(selfCopy->_runLoop);
    v9 = 1;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:
  objc_sync_exit(selfCopy);

  return v9;
}

void __38__CURunLoopThread__scheduleStopThread__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = v9[6];
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CURunLoopThread _scheduleStopThread]_block_invoke", 0x1Eu, "Stopping RunLoop thread\n", a5, a6, a7, a8, v13);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = v9[6];
      goto LABEL_3;
    }
  }

LABEL_5:
  obj = v9;
  objc_sync_enter(obj);
  v12 = *(*(a1 + 32) + 16);
  if (v12)
  {
    CFRunLoopStop(v12);
  }

  objc_sync_exit(obj);
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CURunLoopThread_performBlock___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

void __32__CURunLoopThread_performBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if ((v8[8] & 1) == 0)
  {
    FatalErrorF("PerformBlock before activate", a2, a3, a4, a5, a6, a7, a8, v17);
  }

  if (v8[9] == 1)
  {
    FatalErrorF("PerformBlock after invalidate", a2, a3, a4, a5, a6, a7, a8, v17);
  }

  obj = v8;
  objc_sync_enter(obj);
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  if (v11 && *(v10 + 24) == 1)
  {
    CFRunLoopPerformBlock(v11, *MEMORY[0x1E695E8E0], *(a1 + 40));
    CFRunLoopWakeUp(*(*(a1 + 32) + 16));
  }

  else
  {
    v12 = *(v10 + 32);
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = *(a1 + 32);
      v15 = *(v14 + 32);
      *(v14 + 32) = v13;

      v12 = *(*(a1 + 32) + 32);
    }

    v16 = _Block_copy(*(a1 + 40));
    [v12 addObject:v16];
  }

  objc_sync_exit(obj);
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[CURunLoopThread _invalidated]", 0x32u, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v13);
        goto LABEL_6;
      }

      if (_LogCategory_Initialize(ucat, 0x32u))
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  if (self->_threadRunning)
  {
    return;
  }

  v8 = self->_ucat;
  if (v8->var0 <= 30)
  {
    if (v8->var0 == -1)
    {
      if (!_LogCategory_Initialize(v8, 0x1Eu))
      {
        goto LABEL_11;
      }

      v8 = self->_ucat;
    }

    LogPrintF(v8, "[CURunLoopThread _invalidated]", 0x1Eu, "Invalidated\n", v3, v4, v5, v6, v13);
  }

LABEL_11:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    v10 = self->_invalidationHandler;
  }

  else
  {
    v10 = 0;
  }

  self->_invalidationHandler = 0;

  threadInitializeHandler = self->_threadInitializeHandler;
  self->_threadInitializeHandler = 0;

  threadFinalizeHandler = self->_threadFinalizeHandler;
  self->_threadFinalizeHandler = 0;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CURunLoopThread_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __29__CURunLoopThread_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(result + 32);
  if (*(v9 + 9))
  {
    return result;
  }

  v10 = result;
  v11 = *(v9 + 48);
  if (*v11 <= 30)
  {
    if (*v11 != -1)
    {
LABEL_4:
      LogPrintF(v11, "[CURunLoopThread invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v18);
      v9 = *(v10 + 32);
      goto LABEL_6;
    }

    v12 = _LogCategory_Initialize(v11, 0x1Eu);
    v9 = *(v10 + 32);
    if (v12)
    {
      v11 = *(v9 + 48);
      goto LABEL_4;
    }
  }

LABEL_6:
  *(v9 + 9) = 1;
  result = [*(v10 + 32) _scheduleStopThread];
  if (result)
  {
    return result;
  }

  v17 = *(v10 + 32);
  if (*(v17 + 8) == 1)
  {
    result = *(v17 + 48);
    if (*result > 30)
    {
      return result;
    }

    if (*result == -1)
    {
      result = _LogCategory_Initialize(result, 0x1Eu);
      if (!result)
      {
        return result;
      }

      result = *(*(v10 + 32) + 48);
    }

    return LogPrintF(result, "[CURunLoopThread invalidate]_block_invoke", 0x1Eu, "Deferring stop of RunLoop thread until it finishes starting\n", v13, v14, v15, v16, a9);
  }

  else
  {

    return [v17 _invalidated];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CURunLoopThread_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __27__CURunLoopThread_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(v10, 0x1Eu);
      v9 = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_5;
      }

      v10 = *(v9 + 48);
    }

    LogPrintF(v10, "[CURunLoopThread activate]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v13);
    v9 = *(a1 + 32);
  }

LABEL_5:
  *(v9 + 8) = 1;
  *(*(a1 + 32) + 40) = 1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __27__CURunLoopThread_activate__block_invoke_2;
  v14[3] = &unk_1E73A4F68;
  v14[4] = *(a1 + 32);
  return [MEMORY[0x1E696AF00] detachNewThreadWithBlock:v14];
}

void __27__CURunLoopThread_activate__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _threadMain];

  objc_autoreleasePoolPop(v2);
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADEA328;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CURunLoopThread;
  [(CURunLoopThread *)&v4 dealloc];
}

- (CURunLoopThread)init
{
  v4.receiver = self;
  v4.super_class = CURunLoopThread;
  v2 = [(CURunLoopThread *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CURunLoopThread;
  }

  return v2;
}

@end