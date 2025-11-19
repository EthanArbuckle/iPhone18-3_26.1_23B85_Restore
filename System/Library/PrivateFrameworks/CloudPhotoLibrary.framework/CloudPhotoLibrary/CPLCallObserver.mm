@interface CPLCallObserver
+ (void)observeAsyncCallOn:(id)a3 selector:(SEL)a4 block:(id)a5;
+ (void)observeAsyncCallWithFunction:(id)a3 block:(id)a4;
+ (void)observeSyncCallOn:(id)a3 selector:(SEL)a4 block:(id)a5;
+ (void)observeSyncCallWithFunction:(id)a3 block:(id)a4;
- (CPLCallObserver)initWithObject:(id)a3 selector:(SEL)a4 functionName:(id)a5;
- (id)_callDescription;
- (void)callDidFinish;
@end

@implementation CPLCallObserver

- (void)callDidFinish
{
  v16 = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CPLCallObserver_callDidFinish__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_sync(queue, block);
  [(NSDate *)self->_startDate timeIntervalSinceNow];
  v5 = -v4;
  if (v4 >= -2.0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLObserverOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = [(CPLCallObserver *)self _callDescription];
        *buf = 138543618;
        v13 = v7;
        v14 = 2048;
        v15 = v5;
        v8 = v6;
        v9 = OS_LOG_TYPE_DEBUG;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLObserverOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CPLCallObserver *)self _callDescription];
      *buf = 138543618;
      v13 = v7;
      v14 = 2048;
      v15 = v5;
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_1DC05A000, v8, v9, "%{public}@ completed in %.3fs", buf, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __32__CPLCallObserver_callDidFinish__block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (id)_callDescription
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1734;
  v15 = __Block_byref_object_dispose__1735;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __35__CPLCallObserver__callDescription__block_invoke;
  v8 = &unk_1E861F818;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

void __35__CPLCallObserver__callDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (!v3)
  {
    v4 = *(v2 + 64);
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = v5;
    v7 = *(a1 + 32);
    if (v4)
    {
      v8 = [v5 initWithFormat:@"%@()", *(v7 + 64)];
      v9 = *(a1 + 32);
      v10 = *(v9 + 72);
      *(v9 + 72) = v8;
    }

    else
    {
      v13 = *(v7 + 48);
      v12 = v7 + 48;
      v11 = v13;
      if (*(v12 + 8))
      {
        v14 = "+";
      }

      else
      {
        v14 = "-";
      }

      v15 = *(v12 - 8);
      if (v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = 0;
      }

      v10 = NSStringFromSelector(v16);
      v17 = [v6 initWithFormat:@"%s[%@ %@]", v14, v15, v10];
      v18 = *(a1 + 32);
      v19 = *(v18 + 72);
      *(v18 + 72) = v17;
    }

    v3 = *(*(a1 + 32) + 72);
  }

  v20 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v20, v3);
}

- (CPLCallObserver)initWithObject:(id)a3 selector:(SEL)a4 functionName:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v38.receiver = self;
  v38.super_class = CPLCallObserver;
  v11 = [(CPLCallObserver *)&v38 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    if (v10)
    {
      v13 = [v10 copy];
      functionName = v12->_functionName;
      v12->_functionName = v13;

LABEL_9:
      v17 = [MEMORY[0x1E695DF00] date];
      startDate = v12->_startDate;
      v12->_startDate = v17;

      v19 = CPLCopyDefaultSerialQueueAttributes();
      v20 = dispatch_queue_create("com.apple.cpl.callobserver", v19);
      queue = v12->_queue;
      v12->_queue = v20;

      v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v12->_queue);
      timer = v12->_timer;
      v12->_timer = v22;

      v24 = v12->_timer;
      v25 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v24, v25, 0x6FC23AC00uLL, 0x3B9ACA00uLL);
      v26 = v12->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __56__CPLCallObserver_initWithObject_selector_functionName___block_invoke;
      handler[3] = &unk_1E861A940;
      v37 = v12;
      dispatch_source_set_event_handler(v26, handler);
      dispatch_activate(v12->_timer);

      goto LABEL_10;
    }

    if (v9)
    {
      if (a4)
      {
        isClass = object_isClass(v9);
        v12->_objectIsClass = isClass;
        v16 = v9;
        if (!isClass)
        {
          v16 = objc_opt_class();
        }

        v12->_aClass = v16;
        v12->_selector = a4;
        goto LABEL_9;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v34 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = NSStringFromSelector(a2);
          *buf = 138412290;
          v40 = v35;
          _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_ERROR, "Missing selector calling %@", buf, 0xCu);
        }
      }

      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLCallObserver.m"];
      v33 = NSStringFromSelector(a2);
      [v31 handleFailureInMethod:a2 object:v12 file:v32 lineNumber:49 description:{@"Missing selector calling %@", v33}];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v29 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = NSStringFromSelector(a2);
          *buf = 138412290;
          v40 = v30;
          _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_ERROR, "Missing object calling %@", buf, 0xCu);
        }
      }

      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLCallObserver.m"];
      v33 = NSStringFromSelector(a2);
      [v31 handleFailureInMethod:a2 object:v12 file:v32 lineNumber:48 description:{@"Missing object calling %@", v33}];
    }

    abort();
  }

LABEL_10:

  v27 = *MEMORY[0x1E69E9840];
  return v12;
}

void __56__CPLCallObserver_initWithObject_selector_functionName___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16) && (_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLObserverOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 32) _callDescription];
      [*(*(a1 + 32) + 32) timeIntervalSinceNow];
      v6 = 138543618;
      v7 = v3;
      v8 = 2048;
      v9 = -v4;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "%{public}@ has not completed after %.0fs", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)observeAsyncCallWithFunction:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CPLCallObserver alloc] initWithObject:0 selector:0 functionName:v6];

  v5[2](v5, v7);
}

+ (void)observeSyncCallWithFunction:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CPLCallObserver alloc] initWithObject:0 selector:0 functionName:v6];

  v5[2](v5);
  [(CPLCallObserver *)v7 callDidFinish];
}

+ (void)observeAsyncCallOn:(id)a3 selector:(SEL)a4 block:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[CPLCallObserver alloc] initWithObject:v8 selector:a4 functionName:0];

  v7[2](v7, v9);
}

+ (void)observeSyncCallOn:(id)a3 selector:(SEL)a4 block:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[CPLCallObserver alloc] initWithObject:v8 selector:a4 functionName:0];

  v7[2](v7);
  [(CPLCallObserver *)v9 callDidFinish];
}

@end