@interface NURenderTransaction
+ (id)assertCurrentTransaction;
+ (id)currentTransaction;
+ (id)ensureCurrentTransaction;
+ (void)_commit:(id)a3;
+ (void)begin;
+ (void)commit;
+ (void)commitAndNotifyOnQueue:(id)a3 withBlock:(id)a4;
+ (void)group:(id)a3;
+ (void)setCurrentTransaction:(id)a3;
+ (void)withCurrentTransaction:(id)a3;
- (BOOL)begin;
- (BOOL)commit;
- (NSArray)pendingRequests;
- (NURenderTransaction)init;
- (void)flush;
- (void)notifyCompletion:(id)a3 block:(id)a4;
- (void)submitPendingRequests;
- (void)submitRequest:(id)a3;
@end

@implementation NURenderTransaction

- (void)submitPendingRequests
{
  v4 = [(NURenderTransaction *)self pendingRequests];
  if ([v4 count])
  {
    v3 = +[NUScheduler sharedScheduler];
    [v3 submitRequests:v4 withGroup:self->_group];
  }
}

- (void)flush
{
  [(NURenderTransaction *)self submitPendingRequests];

  [(NURenderTransaction *)self resetPendingRequests];
}

- (NSArray)pendingRequests
{
  v2 = [(NSMutableArray *)self->_requests copy];

  return v2;
}

- (void)submitRequest:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v56 = a3;
  v4 = [v56 responseQueue];

  if (!v4)
  {
    v7 = NUAssertLogger_23382();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot render without a response queue"];
      *buf = 138543362;
      v58 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_23382();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v58 = v28;
        v59 = 2114;
        v60 = v32;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v58 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTransaction submitRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 173, @"Cannot render without a response queue", v33, v34, v35, v36, v55);
  }

  v5 = [v56 renderContext];

  if (!v5)
  {
    v14 = NUAssertLogger_23382();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot render without a context"];
      *buf = 138543362;
      v58 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_23382();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (v18)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        v40 = [v38 callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v58 = v37;
        v59 = 2114;
        v60 = v41;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v58 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTransaction submitRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 174, @"Cannot render without a context", v42, v43, v44, v45, v55);
  }

  v6 = [v56 completionBlock];

  if (!v6)
  {
    v21 = NUAssertLogger_23382();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot render without a completion block"];
      *buf = 138543362;
      v58 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_23382();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v58 = v46;
        v59 = 2114;
        v60 = v50;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v58 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTransaction submitRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 175, @"Cannot render without a completion block", v51, v52, v53, v54, v55);
  }

  [(NSMutableArray *)self->_requests addObject:v56];
}

- (void)notifyCompletion:(id)a3 block:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  queue = a3;
  v6 = a4;
  if (!queue)
  {
    v8 = NUAssertLogger_23382();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "queue != nil"];
      *buf = 138543362;
      v42 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_23382();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v22;
        v43 = 2114;
        v44 = v26;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTransaction notifyCompletion:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 165, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "queue != nil");
  }

  v7 = v6;
  if (!v6)
  {
    v15 = NUAssertLogger_23382();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v42 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_23382();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v19)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v31;
        v43 = 2114;
        v44 = v35;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTransaction notifyCompletion:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 166, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "block != nil");
  }

  dispatch_group_notify(self->_group, queue, v6);
}

- (BOOL)commit
{
  v25 = *MEMORY[0x1E69E9840];
  nestingLevel = self->_nestingLevel;
  if (nestingLevel <= 0)
  {
    v6 = NUAssertLogger_23382();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unbalanced transaction begin/commit pairs"];
      *v22 = 138543362;
      *&v22[4] = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v22, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_23382();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *v22 = 138543618;
        *&v22[4] = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v22, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *v22 = 138543362;
      *&v22[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v22, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTransaction commit]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 147, @"Unbalanced transaction begin/commit pairs", v18, v19, v20, v21, *v22);
  }

  v4 = nestingLevel - 1;
  self->_nestingLevel = nestingLevel - 1;
  if (nestingLevel == 1)
  {
    [(NURenderTransaction *)self flush];
    dispatch_group_leave(self->_group);
  }

  return v4 == 0;
}

- (BOOL)begin
{
  v23 = *MEMORY[0x1E69E9840];
  nestingLevel = self->_nestingLevel;
  if (nestingLevel < 0)
  {
    v4 = NUAssertLogger_23382();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unbalanced transaction begin/commit pairs"];
      *v20 = 138543362;
      *&v20[4] = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v20, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_23382();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v12 = MEMORY[0x1E696AF00];
        v13 = v11;
        v14 = [v12 callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *v20 = 138543618;
        *&v20[4] = v11;
        v21 = 2114;
        v22 = v15;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v20, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *v20 = 138543362;
      *&v20[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v20, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTransaction begin]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 132, @"Unbalanced transaction begin/commit pairs", v16, v17, v18, v19, *v20);
  }

  self->_nestingLevel = nestingLevel + 1;
  if (!nestingLevel)
  {
    dispatch_group_enter(self->_group);
  }

  return nestingLevel == 0;
}

- (NURenderTransaction)init
{
  v8.receiver = self;
  v8.super_class = NURenderTransaction;
  v2 = [(NURenderTransaction *)&v8 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  requests = v2->_requests;
  v2->_requests = v3;

  v5 = dispatch_group_create();
  group = v2->_group;
  v2->_group = v5;

  return v2;
}

+ (void)withCurrentTransaction:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v7 = NUAssertLogger_23382();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v24 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_23382();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderTransaction withCurrentTransaction:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 108, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "block != nil");
  }

  v5 = v4;
  v6 = [a1 ensureCurrentTransaction];
  [v6 begin];
  (v5)[2](v5, v6);
  [a1 _commit:v6];
}

+ (void)group:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = NUAssertLogger_23382();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v25 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_23382();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v13;
        v26 = 2114;
        v27 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderTransaction group:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 99, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "block != nil");
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __29__NURenderTransaction_group___block_invoke;
  v22[3] = &unk_1E810B000;
  v23 = v4;
  v5 = v4;
  [a1 withCurrentTransaction:v22];
}

+ (void)commitAndNotifyOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 assertCurrentTransaction];
  [v8 notifyCompletion:v7 block:v6];

  [a1 _commit:v8];
}

+ (void)_commit:(id)a3
{
  if ([a3 commit])
  {

    [a1 setCurrentTransaction:0];
  }
}

+ (void)commit
{
  v3 = [a1 assertCurrentTransaction];
  [a1 _commit:v3];
}

+ (void)begin
{
  v2 = [a1 ensureCurrentTransaction];
  [v2 begin];
}

+ (id)assertCurrentTransaction
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [a1 currentTransaction];
  if (!v2)
  {
    v4 = NUAssertLogger_23382();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No current transaction"];
      *v20 = 138543362;
      *&v20[4] = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v20, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_23382();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v12 = MEMORY[0x1E696AF00];
        v13 = v11;
        v14 = [v12 callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *v20 = 138543618;
        *&v20[4] = v11;
        v21 = 2114;
        v22 = v15;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v20, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *v20 = 138543362;
      *&v20[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v20, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderTransaction assertCurrentTransaction]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderTransaction.m", 61, @"No current transaction", v16, v17, v18, v19, *v20);
  }

  return v2;
}

+ (id)ensureCurrentTransaction
{
  v3 = [a1 currentTransaction];
  if (!v3)
  {
    v3 = objc_alloc_init(NURenderTransaction);
    [a1 setCurrentTransaction:v3];
  }

  return v3;
}

+ (void)setCurrentTransaction:(id)a3
{
  v5 = a3;
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];

  if (v5)
  {
    [v4 setObject:v5 forKey:@"NURenderTransaction.current"];
  }

  else
  {
    [v4 removeObjectForKey:@"NURenderTransaction.current"];
  }
}

+ (id)currentTransaction
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKey:@"NURenderTransaction.current"];

  return v4;
}

@end