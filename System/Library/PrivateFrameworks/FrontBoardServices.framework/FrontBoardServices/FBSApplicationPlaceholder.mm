@interface FBSApplicationPlaceholder
+ (id)_callOutQueue;
+ (id)_sharedQueue;
- (BOOL)_canPerformAction:(unint64_t)action;
- (BOOL)_performAction:(unint64_t)action withResult:(id)result;
- (FBSApplicationLibrary)appLibrary;
- (FBSApplicationPlaceholderProgress)progress;
- (LSApplicationProxy)_proxy;
- (double)percentComplete;
- (id)_initWithApplicationProxy:(id)proxy identity:(id)identity;
- (id)_initWithBundleIdentifier:(id)identifier url:(id)url;
- (id)_initWithBundleProxy:(id)proxy url:(id)url;
- (id)succinctDescriptionBuilder;
- (unint64_t)expectedFinalInstallPhase;
- (unint64_t)installPhase;
- (unint64_t)installState;
- (unint64_t)installType;
- (void)_cancelWithResult:(id)result;
- (void)_dispatchToObserversWithBlock:(id)block;
- (void)_noteChangedSignificantly;
- (void)_pauseWithResult:(id)result;
- (void)_prioritizeWithResult:(id)result;
- (void)_queue_setProxy:(id)proxy force:(BOOL)force;
- (void)_reloadProgress;
- (void)_resumeWithResult:(id)result;
- (void)_sendToObserversPlaceholderDidChangeSignificantly;
- (void)_sendToObserversPlaceholderProgressDidUpdate;
- (void)_setProxy:(id)proxy force:(BOOL)force;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation FBSApplicationPlaceholder

- (id)_initWithBundleIdentifier:(id)identifier url:(id)url
{
  identifierCopy = identifier;
  urlCopy = url;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this initializer is unavailable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"FBSApplicationPlaceholder.m";
    v21 = 1024;
    v22 = 46;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithBundleProxy:(id)proxy url:(id)url
{
  proxyCopy = proxy;
  urlCopy = url;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this initializer is unavailable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544642;
    v14 = v10;
    v15 = 2114;
    v16 = v12;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"FBSApplicationPlaceholder.m";
    v21 = 1024;
    v22 = 51;
    v23 = 2114;
    v24 = v9;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithApplicationProxy:(id)proxy identity:(id)identity
{
  proxyCopy = proxy;
  identityCopy = identity;
  if (!proxyCopy)
  {
    [FBSApplicationPlaceholder _initWithApplicationProxy:a2 identity:?];
  }

  v10 = identityCopy;
  if (!identityCopy)
  {
    [FBSApplicationPlaceholder _initWithApplicationProxy:a2 identity:?];
  }

  v22.receiver = self;
  v22.super_class = FBSApplicationPlaceholder;
  v11 = [(FBSBundleInfo *)&v22 _initWithBundleProxy:proxyCopy overrideURL:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 8, proxy);
    objc_storeStrong(v12 + 14, identity);
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = v12[12];
    v12[12] = v13;

    v15 = +[FBSApplicationPlaceholder _sharedQueue];
    v16 = v12[9];
    v12[9] = v15;

    v17 = +[FBSApplicationPlaceholder _callOutQueue];
    v18 = v12[10];
    v12[10] = v17;

    v19 = [[FBSApplicationPlaceholderProgress alloc] initWithPlaceholder:v12 queue:v12[9]];
    v20 = v12[11];
    v12[11] = v19;

    v12[13] = [proxyCopy installType];
    [v12 _setProxy:proxyCopy force:1];
  }

  return v12;
}

- (void)dealloc
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = self->_queue;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__2;
  v16[4] = __Block_byref_object_dispose__2;
  v17 = self->_callOutQueue;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__2;
  v14[4] = __Block_byref_object_dispose__2;
  v15 = self->_proxy;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = self->_queue_progress;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__2;
  v6[4] = __Block_byref_object_dispose__2;
  v7 = self->_queue_observers;
  [v9[5] invalidate];
  v3 = v19[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FBSApplicationPlaceholder_dealloc__block_invoke;
  block[3] = &unk_1E76BDA40;
  block[4] = &v8;
  block[5] = v14;
  block[6] = v6;
  block[7] = v16;
  block[8] = &v18;
  dispatch_async(v3, block);
  _Block_object_dispose(v6, 8);

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(v14, 8);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);

  v4.receiver = self;
  v4.super_class = FBSApplicationPlaceholder;
  [(FBSApplicationPlaceholder *)&v4 dealloc];
}

void __36__FBSApplicationPlaceholder_dealloc__block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(a1[8] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

- (FBSApplicationPlaceholderProgress)progress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__FBSApplicationPlaceholder_progress__block_invoke;
  v5[3] = &unk_1E76BD530;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__FBSApplicationPlaceholder_progress__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 88) queue_isValid])
  {
    v2 = *(*(a1 + 32) + 88);
    v3 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v3, v2);
  }
}

- (double)percentComplete
{
  progress = [(FBSApplicationPlaceholder *)self progress];
  [progress percentComplete];
  v4 = v3;

  return v4;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__FBSApplicationPlaceholder_addObserver___block_invoke;
    v7[3] = &unk_1E76BCD60;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __41__FBSApplicationPlaceholder_addObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 96);

    return [v4 addObject:v3];
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__FBSApplicationPlaceholder_removeObserver___block_invoke;
    v7[3] = &unk_1E76BCD60;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __44__FBSApplicationPlaceholder_removeObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 96);

    return [v4 removeObject:v3];
  }

  return result;
}

- (void)_dispatchToObserversWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    callOutQueue = self->_callOutQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__FBSApplicationPlaceholder__dispatchToObserversWithBlock___block_invoke;
    v7[3] = &unk_1E76BDA90;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_async(callOutQueue, v7);
  }
}

void __59__FBSApplicationPlaceholder__dispatchToObserversWithBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__FBSApplicationPlaceholder__dispatchToObserversWithBlock___block_invoke_2;
  block[3] = &unk_1E76BDA68;
  block[4] = v2;
  block[5] = &v13;
  dispatch_sync(v3, block);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v14[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __59__FBSApplicationPlaceholder__dispatchToObserversWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_sendToObserversPlaceholderProgressDidUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __73__FBSApplicationPlaceholder__sendToObserversPlaceholderProgressDidUpdate__block_invoke;
  v2[3] = &unk_1E76BDAB8;
  v2[4] = self;
  [(FBSApplicationPlaceholder *)self _dispatchToObserversWithBlock:v2];
}

void __73__FBSApplicationPlaceholder__sendToObserversPlaceholderProgressDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 placeholderProgressDidUpdate:*(a1 + 32)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 placeholderPercentCompleteDidChange:*(a1 + 32)];
  }
}

- (void)_sendToObserversPlaceholderDidChangeSignificantly
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __78__FBSApplicationPlaceholder__sendToObserversPlaceholderDidChangeSignificantly__block_invoke;
  v2[3] = &unk_1E76BDAB8;
  v2[4] = self;
  [(FBSApplicationPlaceholder *)self _dispatchToObserversWithBlock:v2];
}

void __78__FBSApplicationPlaceholder__sendToObserversPlaceholderDidChangeSignificantly__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 placeholderDidChangeSignificantly:*(a1 + 32)];
  }
}

- (BOOL)_canPerformAction:(unint64_t)action
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  queue = self->_queue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__FBSApplicationPlaceholder__canPerformAction___block_invoke;
  block[3] = &unk_1E76BDAE0;
  block[4] = self;
  block[5] = &v7;
  block[6] = action;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __47__FBSApplicationPlaceholder__canPerformAction___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_canPerformAction:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_performAction:(unint64_t)action withResult:(id)result
{
  v34 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ((action ^ (action - 1)) <= action - 1)
  {
    [FBSApplicationPlaceholder _performAction:a2 withResult:?];
  }

  v8 = resultCopy;
  bundleIdentifier = [(FBSBundleInfo *)self bundleIdentifier];
  if (action > 8)
  {
    v10 = @"(unknown)";
  }

  else
  {
    v10 = off_1E76BDBA0[action];
  }

  v11 = FBSLogApplicationPlaceholder();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = v10;
    v32 = 2114;
    v33 = bundleIdentifier;
    _os_log_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEFAULT, "Received request to perform action %{public}@ on %{public}@", buf, 0x16u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__FBSApplicationPlaceholder__performAction_withResult___block_invoke;
  v25[3] = &unk_1E76BDB30;
  v26 = v10;
  v12 = bundleIdentifier;
  selfCopy = self;
  v29 = v8;
  v27 = v12;
  v13 = v8;
  v14 = [off_1E76BC9A0 sentinelWithCompletion:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__FBSApplicationPlaceholder__performAction_withResult___block_invoke_2_70;
  v23[3] = &unk_1E76BD428;
  v15 = v14;
  v24 = v15;
  v16 = MEMORY[0x1A58E80F0](v23);
  if ([(FBSApplicationPlaceholder *)self _canPerformAction:action])
  {
    if (action > 3)
    {
      if (action == 4)
      {
        [(FBSApplicationPlaceholder *)self _resumeWithResult:v16];
        goto LABEL_25;
      }

      if (action == 8)
      {
        progress = [(FBSApplicationPlaceholder *)self progress];

        if (progress)
        {
          [(FBSApplicationPlaceholder *)self _cancelWithResult:v16];
        }

        else
        {
          appLibrary = [(FBSApplicationPlaceholder *)self appLibrary];
          v21 = appLibrary;
          if (appLibrary)
          {
            [appLibrary uninstallApplication:v12 withOptions:0 completion:v16];
          }

          else
          {
            [v15 signalWithContext:@"The placeholder's FBSApplicationLibrary has deallocated"];
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (action == 1)
      {
        [(FBSApplicationPlaceholder *)self _prioritizeWithResult:v16];
        goto LABEL_25;
      }

      if (action == 2)
      {
        [(FBSApplicationPlaceholder *)self _pauseWithResult:v16];
LABEL_25:
        v18 = 1;
        goto LABEL_26;
      }
    }

    v17 = @"This action is undefined";
  }

  else
  {
    v17 = @"This action is not currently supported";
  }

  [v15 signalWithContext:v17];
  v18 = 0;
LABEL_26:

  return v18;
}

void __55__FBSApplicationPlaceholder__performAction_withResult___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 context];
  if (v4 || [v3 isFailed])
  {
    v5 = MEMORY[0x1E696ABC0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55__FBSApplicationPlaceholder__performAction_withResult___block_invoke_2;
    v19[3] = &unk_1E76BDB08;
    v20 = v3;
    v21 = *(a1 + 32);
    v22 = v4;
    v6 = [v5 bs_errorWithDomain:@"FBSApplicationPlaceholder" code:1 configuration:v19];
    v7 = FBSLogApplicationPlaceholder();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = [v6 descriptionWithMultilinePrefix:0];
      *buf = 138543874;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&dword_1A2DBB000, v7, OS_LOG_TYPE_ERROR, "%{public}@ on %{public}@ failed: %{public}@", buf, 0x20u);
    }

    v8 = v20;
  }

  else
  {
    v8 = FBSLogApplicationPlaceholder();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138543618;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_1A2DBB000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ on %{public}@ succeeded!", buf, 0x16u);
    }

    v6 = 0;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(*(a1 + 48) + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__FBSApplicationPlaceholder__performAction_withResult___block_invoke_68;
    block[3] = &unk_1E76BD750;
    v18 = v9;
    v17 = v6;
    dispatch_async(v10, block);
  }
}

void __55__FBSApplicationPlaceholder__performAction_withResult___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 setFailureDescription:@"Unable to perform placeholder action"];
  if ([*(a1 + 32) isFailed])
  {
    [v14 setFailureReason:@"The completion block was dropped before being called"];
  }

  else
  {
    v3 = [*(a1 + 32) context];
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      [v14 setFailureReason:{@"%@", v7}];
    }

    else
    {
      [v14 setFailureReason:{@"The operation returned an error", v13}];
    }
  }

  [v14 setUserInfoValue:*(a1 + 40) forKey:@"FBSPlaceholderAction"];
  v8 = *(a1 + 48);
  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v14 setUnderlyingError:v12];
}

- (void)_prioritizeWithResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  bundleIdentifier = [(FBSBundleInfo *)self bundleIdentifier];
  v6 = FBSLogApplicationPlaceholder();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = bundleIdentifier;
    _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to prioritize %{public}@", buf, 0xCu);
  }

  if (FBSApplicationLibraryLogTransactionEnabled())
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requesting to prioritize placeholder."];
    _FBSApplicationLibraryLogTransaction(4, 3, 1, bundleIdentifier, v7);
  }

  IXAppInstallCoordinatorClass = getIXAppInstallCoordinatorClass();
  if (IXAppInstallCoordinatorClass)
  {
    v9 = IXAppInstallCoordinatorClass;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__FBSApplicationPlaceholder__prioritizeWithResult___block_invoke;
    v10[3] = &unk_1E76BDB58;
    v11 = resultCopy;
    [v9 prioritizeCoordinatorForAppWithBundleID:bundleIdentifier completion:v10];
  }

  else
  {
    (*(resultCopy + 2))(resultCopy, @"The IXAppInstallCoordinator class does not exist");
  }
}

- (void)_cancelWithResult:(id)result
{
  v23 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  bundleIdentifier = [(FBSBundleInfo *)self bundleIdentifier];
  v6 = FBSLogApplicationPlaceholder();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = bundleIdentifier;
    _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to cancel %{public}@", buf, 0xCu);
  }

  if (FBSApplicationLibraryLogTransactionEnabled())
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requesting to cancel placeholder."];
    _FBSApplicationLibraryLogTransaction(5, 3, 1, bundleIdentifier, v7);
  }

  v8 = MEMORY[0x1E696AEC0];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v11 = [v8 stringWithFormat:@"%@ requested cancellation via FBSApplicationPlaceholder", processName];

  v12 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A578];
  v20 = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v14 = [v12 errorWithDomain:@"com.apple.frontboard.app-library" code:1 userInfo:v13];

  IXAppInstallCoordinatorClass = getIXAppInstallCoordinatorClass();
  if (IXAppInstallCoordinatorClass)
  {
    v16 = IXAppInstallCoordinatorClass;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__FBSApplicationPlaceholder__cancelWithResult___block_invoke;
    v17[3] = &unk_1E76BDB58;
    v18 = resultCopy;
    [v16 cancelCoordinatorForAppWithBundleID:bundleIdentifier withReason:v14 client:8 completion:v17];
  }

  else
  {
    (*(resultCopy + 2))(resultCopy, @"The IXAppInstallCoordinator class does not exist");
  }
}

- (void)_pauseWithResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  bundleIdentifier = [(FBSBundleInfo *)self bundleIdentifier];
  v6 = FBSLogApplicationPlaceholder();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = bundleIdentifier;
    _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to pause %{public}@", buf, 0xCu);
  }

  if (FBSApplicationLibraryLogTransactionEnabled())
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requesting to pause placeholder."];
    _FBSApplicationLibraryLogTransaction(6, 3, 1, bundleIdentifier, v7);
  }

  IXAppInstallCoordinatorClass = getIXAppInstallCoordinatorClass();
  if (IXAppInstallCoordinatorClass)
  {
    v9 = IXAppInstallCoordinatorClass;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__FBSApplicationPlaceholder__pauseWithResult___block_invoke;
    v10[3] = &unk_1E76BDB58;
    v11 = resultCopy;
    [v9 pauseCoordinatorForAppWithBundleID:bundleIdentifier completion:v10];
  }

  else
  {
    (*(resultCopy + 2))(resultCopy, @"The IXAppInstallCoordinator class does not exist");
  }
}

- (void)_resumeWithResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  bundleIdentifier = [(FBSBundleInfo *)self bundleIdentifier];
  v6 = FBSLogApplicationPlaceholder();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = bundleIdentifier;
    _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to resume %{public}@", buf, 0xCu);
  }

  if (FBSApplicationLibraryLogTransactionEnabled())
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requesting to resume placeholder."];
    _FBSApplicationLibraryLogTransaction(7, 3, 1, bundleIdentifier, v7);
  }

  IXAppInstallCoordinatorClass = getIXAppInstallCoordinatorClass();
  if (IXAppInstallCoordinatorClass)
  {
    v9 = IXAppInstallCoordinatorClass;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__FBSApplicationPlaceholder__resumeWithResult___block_invoke;
    v10[3] = &unk_1E76BDB58;
    v11 = resultCopy;
    [v9 resumeCoordinatorForAppWithBundleID:bundleIdentifier completion:v10];
  }

  else
  {
    (*(resultCopy + 2))(resultCopy, @"The IXAppInstallCoordinator class does not exist");
  }
}

+ (id)_sharedQueue
{
  if (_sharedQueue_onceToken != -1)
  {
    +[FBSApplicationPlaceholder _sharedQueue];
  }

  v3 = _sharedQueue___SharedQueue;

  return v3;
}

+ (id)_callOutQueue
{
  if (_callOutQueue_onceToken != -1)
  {
    +[FBSApplicationPlaceholder _callOutQueue];
  }

  v3 = _callOutQueue___CallOutQueue;

  return v3;
}

- (LSApplicationProxy)_proxy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__FBSApplicationPlaceholder__proxy__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setProxy:(id)proxy force:(BOOL)force
{
  proxyCopy = proxy;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FBSApplicationPlaceholder__setProxy_force___block_invoke;
  block[3] = &unk_1E76BDB80;
  block[4] = self;
  v10 = proxyCopy;
  forceCopy = force;
  v8 = proxyCopy;
  dispatch_async(queue, block);
}

- (void)_queue_setProxy:(id)proxy force:(BOOL)force
{
  proxyCopy = proxy;
  [(FBSApplicationPlaceholderProgress *)self->_queue_progress queue_isValid];
  installProgress = [(LSApplicationProxy *)proxyCopy installProgress];

  if (!force && self->_proxy == proxyCopy)
  {
    BSEqualBools();
  }

  v9 = FBSLogApplicationPlaceholder();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FBSApplicationPlaceholder _queue_setProxy:v9 force:?];
  }

  if (force || self->_proxy != proxyCopy)
  {
    [(FBSApplicationPlaceholder *)self _reloadFromProxy:proxyCopy];
    fbs_correspondingApplicationRecord = [(LSApplicationProxy *)proxyCopy fbs_correspondingApplicationRecord];
    [(FBSApplicationPlaceholder *)self _reloadFromRecord:fbs_correspondingApplicationRecord];

    if (self->_proxy != proxyCopy)
    {
      objc_storeStrong(&self->_proxy, proxy);
    }
  }

  if ([(FBSApplicationPlaceholder *)self _queue_isCloudDemoted])
  {
    if (![(FBSApplicationPlaceholderProgress *)self->_queue_progress queue_updateProxy:0])
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!installProgress)
  {
    v11 = FBSLogApplicationPlaceholder();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FBSApplicationPlaceholder _queue_setProxy:v11 force:?];
    }
  }

  if ([(FBSApplicationPlaceholderProgress *)self->_queue_progress queue_updateProxy:proxyCopy])
  {
LABEL_18:
    [(FBSApplicationPlaceholder *)self _queue_noteChangedSignificantly:self];
  }

LABEL_19:
}

- (void)_reloadProgress
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__FBSApplicationPlaceholder__reloadProgress__block_invoke;
  block[3] = &unk_1E76BCDB0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_noteChangedSignificantly
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FBSApplicationPlaceholder__noteChangedSignificantly__block_invoke;
  block[3] = &unk_1E76BCDB0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (unint64_t)installType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__FBSApplicationPlaceholder_installType__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__FBSApplicationPlaceholder_installType__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) installType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)installState
{
  progress = [(FBSApplicationPlaceholder *)self progress];
  installState = [progress installState];

  return installState;
}

- (unint64_t)installPhase
{
  progress = [(FBSApplicationPlaceholder *)self progress];
  installPhase = [progress installPhase];

  return installPhase;
}

- (unint64_t)expectedFinalInstallPhase
{
  progress = [(FBSApplicationPlaceholder *)self progress];
  expectedFinalInstallPhase = [progress expectedFinalInstallPhase];

  return expectedFinalInstallPhase;
}

- (id)succinctDescriptionBuilder
{
  v9.receiver = self;
  v9.super_class = FBSApplicationPlaceholder;
  succinctDescriptionBuilder = [(FBSBundleInfo *)&v9 succinctDescriptionBuilder];
  fbs_personaUniqueString = [(LSApplicationIdentity *)self->_applicationIdentity fbs_personaUniqueString];
  v5 = [succinctDescriptionBuilder appendObject:fbs_personaUniqueString withName:@"persona" skipIfNil:1];

  v6 = [MEMORY[0x1E696AEC0] NSStringFromLSInstallType:self->_installType];
  v7 = [succinctDescriptionBuilder appendObject:v6 withName:@"LSInstallType"];

  return succinctDescriptionBuilder;
}

- (FBSApplicationLibrary)appLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_appLibrary);

  return WeakRetained;
}

- (void)_initWithApplicationProxy:(char *)a1 identity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithApplicationProxy:(char *)a1 identity:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"proxy", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_queue_canPerformAction:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"BSBitmaskCount(action) == 1", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_performAction:(char *)a1 withResult:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"BSBitmaskCount(action) == 1", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_queue_setProxy:(void *)a1 force:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_DEBUG, "Updating proxy for %@", &v4, 0xCu);
}

- (void)_queue_setProxy:(void *)a1 force:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "Non-demoted placeholder for %@ has no associated NSProgress!", &v4, 0xCu);
}

@end