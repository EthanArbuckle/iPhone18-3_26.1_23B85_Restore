@interface SGRemoteObjectProxy
+ (id)_copyInvocationToHeapIfNeeded:(id)a3;
- (SGRemoteObjectProxy)initWithConnection:(id)a3 queuesRequestsIfBusy:(BOOL)a4;
- (SGRemoteObjectProxy)initWithInProcessSuggestManager:(id)a3;
- (void)_forwardStackInvocation:(id)a3;
@end

@implementation SGRemoteObjectProxy

- (void)_forwardStackInvocation:(id)a3
{
  v5 = [SGRemoteObjectProxy _copyInvocationToHeapIfNeeded:a3];
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 target];

  if (v7 != self)
  {
    v62.receiver = self;
    v62.super_class = SGRemoteObjectProxy;
    [(SGRemoteObjectProxy *)&v62 forwardInvocation:v5];
    goto LABEL_29;
  }

  if (!self->_inProcessSuggestManager)
  {
    v12 = self->_connection;
    if (_forwardStackInvocation___pasOnceToken7 != -1)
    {
      dispatch_once(&_forwardStackInvocation___pasOnceToken7, &__block_literal_global_24);
    }

    v13 = _forwardStackInvocation___pasExprOnceResult_22;
    if (_forwardStackInvocation___pasOnceToken8 != -1)
    {
      dispatch_once(&_forwardStackInvocation___pasOnceToken8, &__block_literal_global_27_2165);
    }

    v14 = _forwardStackInvocation___pasExprOnceResult_25;
    if (_forwardStackInvocation___pasOnceToken9 != -1)
    {
      dispatch_once(&_forwardStackInvocation___pasOnceToken9, &__block_literal_global_31);
    }

    v15 = _forwardStackInvocation___pasExprOnceResult_29;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_6;
    v55[3] = &unk_1E7EFB520;
    v16 = v13;
    v56 = v16;
    v17 = v15;
    v57 = v17;
    v18 = v14;
    v58 = v18;
    v19 = MEMORY[0x1BFAF7240](v55);
    if (self->_queuesRequestsIfBusy && [MEMORY[0x1E69C5D10] waitForSemaphore:v16 timeoutSeconds:0.0] == 1)
    {
      [v5 retainArguments];
      [v17 lock];
      [v18 addObject:v5];
      [v17 unlock];
LABEL_28:

      goto LABEL_29;
    }

    v41 = v19;
    v20 = [v5 methodSignature];
    v21 = [v20 numberOfArguments];

    v22 = [v5 methodSignature];
    v23 = v21 - 1;
    v24 = [v22 getArgumentTypeAtIndex:v23];
    if (*v24 == 64 && v24[1] == 63)
    {
      v39 = v24[2];

      if (!v39)
      {
        v52 = 0;
        [v5 getArgument:&v52 atIndex:v23];
        if (v52)
        {
          v25 = [v52 copy];
        }

        else
        {
          v25 = 0;
        }

        v19 = v41;
        if (self->_queuesRequestsIfBusy || [MEMORY[0x1E69C5D10] waitForSemaphore:v16 timeoutSeconds:0.0] != 1)
        {
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_8;
          v46[3] = &unk_1E7EFB548;
          v38 = v41;
          v50 = a2;
          v48 = v38;
          v46[4] = self;
          v31 = v25;
          v49 = v31;
          v32 = v12;
          v47 = v32;
          v51 = [v46 copy];
          [v5 methodSignature];
          v33 = v40 = v25;
          [v5 setArgument:&v51 atIndex:{objc_msgSend(v33, "numberOfArguments") - 1}];

          [v5 retainArguments];
          connection = self->_connection;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_9;
          v42[3] = &unk_1E7EFB570;
          v44 = v38;
          v45 = v31;
          v35 = v32;
          v19 = v41;
          v43 = v35;
          v36 = [(SGDaemonConnection *)connection remoteObjectProxyWithErrorHandler:v42];
          [v5 invokeWithTarget:v36];

          v25 = v40;
          v37 = objc_opt_self();
        }

        else if (v25)
        {
          v28 = v25;
          v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:7 userInfo:0];
          v30 = [SGXPCResponse3 responseWithError:v29];
          v28[2](v28, v30);

          v25 = v28;
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    v19 = v41;
    if (self->_queuesRequestsIfBusy || ![MEMORY[0x1E69C5D10] waitForSemaphore:v16 timeoutSeconds:0.0])
    {
      v41[2](v41);
      v26 = [(SGDaemonConnection *)self->_connection remoteObjectProxy];
      [v5 invokeWithTarget:v26];

      v27 = [(SGDaemonConnection *)self->_connection xpcConnection];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_7;
      v53[3] = &unk_1E7EFD118;
      v54 = v12;
      [v27 addBarrierBlock:v53];
    }

    goto LABEL_28;
  }

  if (_forwardStackInvocation___pasOnceToken6 != -1)
  {
    dispatch_once(&_forwardStackInvocation___pasOnceToken6, &__block_literal_global_2163);
  }

  v8 = _forwardStackInvocation___pasExprOnceResult;
  [v5 retainArguments];
  v9 = self->_inProcessSuggestManager;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_2;
  v59[3] = &unk_1E7EFB4F8;
  v60 = v5;
  v10 = v9;
  v61 = v10;
  v11 = MEMORY[0x1BFAF7240](v59);
  if (+[SGDaemonConnection usingSyncXPC])
  {
    dispatch_sync(v8, v11);
  }

  else
  {
    dispatch_async(v8, v11);
  }

LABEL_29:
  objc_autoreleasePoolPop(v6);
}

void __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_6(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  [*(a1 + 40) lock];
  v3 = [*(a1 + 48) firstObject];
  if (v3)
  {
    [*(a1 + 48) removeObjectAtIndex:0];
  }

  [*(a1 + 40) unlock];
  v2 = [v3 target];
  [v3 invokeWithTarget:v2];
}

void __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_8(void *a1, void *a2)
{
  v7 = a2;
  (*(a1[6] + 16))();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a1[8] object:a1[4] file:@"SGSuggestionsService.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"[response isKindOfClass:[SGXPCResponse class]]"}];
  }

  v3 = a1[7];
  if (v3)
  {
    (*(v3 + 16))(v3, v7);
  }

  v4 = a1[5];
  v5 = objc_opt_self();
}

void __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_9(void *a1, void *a2)
{
  v7 = a2;
  (*(a1[5] + 16))();
  v3 = a1[6];
  if (v3)
  {
    v4 = [SGXPCResponse3 responseWithError:v7];
    (*(v3 + 16))(v3, v4);
  }

  v5 = a1[4];
  v6 = objc_opt_self();
}

void __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_5()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = _forwardStackInvocation___pasExprOnceResult_29;
  _forwardStackInvocation___pasExprOnceResult_29 = v1;

  objc_autoreleasePoolPop(v0);
}

void __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = _forwardStackInvocation___pasExprOnceResult_25;
  _forwardStackInvocation___pasExprOnceResult_25 = v1;

  objc_autoreleasePoolPop(v0);
}

void __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke_3()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_semaphore_create(10);
  v2 = _forwardStackInvocation___pasExprOnceResult_22;
  _forwardStackInvocation___pasExprOnceResult_22 = v1;

  objc_autoreleasePoolPop(v0);
}

void __47__SGRemoteObjectProxy__forwardStackInvocation___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"SGRemoteObjectProxy-inProcessSuggestManager"];
  v2 = _forwardStackInvocation___pasExprOnceResult;
  _forwardStackInvocation___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (SGRemoteObjectProxy)initWithInProcessSuggestManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGRemoteObjectProxy;
  v6 = [(SGRemoteObjectProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inProcessSuggestManager, a3);
  }

  return v7;
}

- (SGRemoteObjectProxy)initWithConnection:(id)a3 queuesRequestsIfBusy:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SGRemoteObjectProxy;
  v8 = [(SGRemoteObjectProxy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a3);
    v9->_queuesRequestsIfBusy = a4;
  }

  return v9;
}

+ (id)_copyInvocationToHeapIfNeeded:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (malloc_size(v5))
  {
    v6 = v5;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v5 methodSignature];
    v9 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v8];
    v10 = [v5 target];
    [v9 setTarget:v10];

    if ([v8 numberOfArguments])
    {
      v11 = 0;
      if ([v8 numberOfArguments])
      {
        v12 = 0;
        v13 = 1;
        do
        {
          sizep[0] = 0;
          NSGetSizeAndAlignment([v8 getArgumentTypeAtIndex:{v12, 0}], sizep, alignp);
          if (v11 <= sizep[0])
          {
            v11 = sizep[0];
          }

          if (v13 <= alignp[0])
          {
            v13 = alignp[0];
          }

          ++v12;
        }

        while (v12 < [v8 numberOfArguments]);
      }

      else
      {
        v13 = 1;
      }

      v14 = v13 - 1 + v11;
      alignp[0] = 0;
      alignp[1] = 0;
      if (v14 >= 0x201)
      {
        if (v13 <= 8)
        {
          v20 = 8;
        }

        else
        {
          v20 = v13;
        }

        v21 = malloc_type_posix_memalign(alignp, v20, v11, 0xE2354123uLL);
        LOBYTE(alignp[1]) = 0;
        if (v21)
        {
          v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
          objc_exception_throw(v22);
        }
      }

      else
      {
        v15 = alignp - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v15, v14);
        alignp[0] = &v15[v13 - 1] / v13 * v13;
        LOBYTE(alignp[1]) = 1;
      }

      *sizep = *alignp;
      if ([v8 numberOfArguments])
      {
        v16 = 0;
        do
        {
          [v5 getArgument:sizep atIndex:v16];
          [v9 setArgument:sizep atIndex:v16++];
        }

        while (v16 < [v8 numberOfArguments]);
      }

      if ((sizep[1] & 1) == 0)
      {
        free(sizep[0]);
      }
    }

    v6 = v9;

    if (!malloc_size(v6))
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:a1 file:@"SGSuggestionsService.m" lineNumber:177 description:{@"expected invocation copy %p (%@) to be heap allocated", v6, v6}];
    }

    objc_autoreleasePoolPop(v7);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

@end