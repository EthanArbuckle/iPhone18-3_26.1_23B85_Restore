@interface FBSApplicationPlaceholderProgress
- (BOOL)queue_updateProxy:(id)a3;
- (FBSApplicationPlaceholder)placeholder;
- (FBSApplicationPlaceholderProgress)initWithPlaceholder:(id)a3 queue:(id)a4;
- (double)percentComplete;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)state;
- (unint64_t)expectedFinalInstallPhase;
- (unint64_t)installPhase;
- (unint64_t)installState;
- (void)_startObservingProgress:(id)a3 withContext:(void *)a4;
- (void)_stopObservingProgress:(id)a3 withContext:(void *)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)queue_isCancellationAllowed;
@end

@implementation FBSApplicationPlaceholderProgress

- (FBSApplicationPlaceholderProgress)initWithPlaceholder:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBSApplicationPlaceholderProgress initWithPlaceholder:a2 queue:?];
  }

  v9 = v8;
  if (!v8)
  {
    [FBSApplicationPlaceholderProgress initWithPlaceholder:a2 queue:?];
  }

  v10 = [(FBSApplicationPlaceholderProgress *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_placeholder, v7);
    objc_storeStrong(&v11->_queue, a4);
    v11->_invalidated = 0;
    v11->_percentComplete = -1.0;
    v11->_installPhase = 0x7FFFFFFFFFFFFFFFLL;
    v11->_installState = 0x7FFFFFFFFFFFFFFFLL;
    v11->_expectedFinalInstallPhase = 0x7FFFFFFFFFFFFFFFLL;
    *&v11->_cancellationAllowed = xmmword_1A2E693C0;
  }

  return v11;
}

void __44__FBSApplicationPlaceholderProgress_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__FBSApplicationPlaceholderProgress_state__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)percentComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__FBSApplicationPlaceholderProgress_percentComplete__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __52__FBSApplicationPlaceholderProgress_percentComplete__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)installState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__FBSApplicationPlaceholderProgress_installState__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)installPhase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__FBSApplicationPlaceholderProgress_installPhase__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)expectedFinalInstallPhase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__FBSApplicationPlaceholderProgress_expectedFinalInstallPhase__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __47__FBSApplicationPlaceholderProgress_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) queue_updateProxy:0];
  v2 = (*(a1 + 32) + 80);

  return objc_storeWeak(v2, 0);
}

- (id)succinctDescription
{
  v2 = [(FBSApplicationPlaceholderProgress *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = NSStringFromFBSApplicationPlaceholderProgressState([(FBSApplicationPlaceholderProgress *)self state]);
  v5 = [v3 appendObject:v4 withName:@"state"];

  [(FBSApplicationPlaceholderProgress *)self percentComplete];
  v6 = [v3 appendDouble:@"percentComplete" withName:2 decimalPrecision:?];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSApplicationPlaceholderProgress *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(FBSApplicationPlaceholderProgress *)self succinctDescriptionBuilder];
  v5 = FBSStringForInstallState([(FBSApplicationPlaceholderProgress *)self installState]);
  v6 = [v4 appendObject:v5 withName:@"LSInstallState"];

  v7 = FBSStringForInstallPhase([(FBSApplicationPlaceholderProgress *)self installPhase]);
  v8 = [v4 appendObject:v7 withName:@"LSInstallPhase"];

  return v4;
}

- (BOOL)queue_updateProxy:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a3;
  BSDispatchQueueAssert();
}

- (void)_startObservingProgress:(id)a3 withContext:(void *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [v6 addObserver:self forKeyPath:@"installPhase" options:0 context:a4];
  [v6 addObserver:self forKeyPath:@"installState" options:0 context:a4];
  [v6 addObserver:self forKeyPath:@"ls_expectedFinalInstallPhase" options:0 context:a4];
  [v6 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:a4];
  [v6 addObserver:self forKeyPath:@"prioritizable" options:0 context:a4];
  [v6 addObserver:self forKeyPath:@"cancellable" options:0 context:a4];
  [v6 addObserver:self forKeyPath:@"cancelled" options:0 context:a4];
  [v6 addObserver:self forKeyPath:@"pausable" options:0 context:a4];
  [v6 addObserver:self forKeyPath:@"paused" options:0 context:a4];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [MEMORY[0x1E696AE38] keyPathsForValuesAffectingInstallState];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addObserver:self forKeyPath:*(*(&v21 + 1) + 8 * v11++) options:0 context:a4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [MEMORY[0x1E696AE38] keyPathsForValuesAffectingInstallPhase];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v6 addObserver:self forKeyPath:*(*(&v17 + 1) + 8 * v16++) options:0 context:a4];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)_stopObservingProgress:(id)a3 withContext:(void *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [v6 removeObserver:self forKeyPath:@"installPhase" context:a4];
  [v6 removeObserver:self forKeyPath:@"installState" context:a4];
  [v6 removeObserver:self forKeyPath:@"ls_expectedFinalInstallPhase" context:a4];
  [v6 removeObserver:self forKeyPath:@"fractionCompleted" context:a4];
  [v6 removeObserver:self forKeyPath:@"prioritizable" context:a4];
  [v6 removeObserver:self forKeyPath:@"cancellable" context:a4];
  [v6 removeObserver:self forKeyPath:@"cancelled" context:a4];
  [v6 removeObserver:self forKeyPath:@"pausable" context:a4];
  [v6 removeObserver:self forKeyPath:@"paused" context:a4];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [MEMORY[0x1E696AE38] keyPathsForValuesAffectingInstallState];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 removeObserver:self forKeyPath:*(*(&v21 + 1) + 8 * v11++) context:a4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [MEMORY[0x1E696AE38] keyPathsForValuesAffectingInstallPhase];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v6 removeObserver:self forKeyPath:*(*(&v17 + 1) + 8 * v16++) context:a4];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = v10;
  if (&self->_placeholder == a6)
  {
    v12 = v10;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__FBSApplicationPlaceholderProgress_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E76BCD60;
    v16 = v12;
    v17 = self;
    dispatch_async(queue, block);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = FBSApplicationPlaceholderProgress;
    [(FBSApplicationPlaceholderProgress *)&v14 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

uint64_t __84__FBSApplicationPlaceholderProgress_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 16))
  {
    BSAtomicGetFlag();
  }

  return result;
}

- (FBSApplicationPlaceholder)placeholder
{
  WeakRetained = objc_loadWeakRetained(&self->_placeholder);

  return WeakRetained;
}

- (void)initWithPlaceholder:(const char *)a1 queue:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v8 = @"FBSApplicationPlaceholderProgress.m";
    v9 = 1024;
    v10 = 45;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithPlaceholder:(const char *)a1 queue:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"placeholder"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v8 = @"FBSApplicationPlaceholderProgress.m";
    v9 = 1024;
    v10 = 44;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"progress deallocated without being invalidated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSApplicationPlaceholderProgress.m";
    v16 = 1024;
    v17 = 63;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)queue_isCancellationAllowed
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 bundleIdentifier];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1A2DBB000, a3, OS_LOG_TYPE_ERROR, "Unable to determine removability for %{public}@: %{public}@", &v6, 0x16u);
}

@end