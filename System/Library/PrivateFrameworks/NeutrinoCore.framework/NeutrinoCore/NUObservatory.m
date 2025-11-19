@interface NUObservatory
- (NUObservatory)init;
- (id)addObserverForKey:(int64_t)a3 queue:(id)a4 block:(id)a5;
- (void)_notifyAllObserversForKey:(int64_t)a3 withBlock:(id)a4;
- (void)_removeObserver:(id)a3;
- (void)_removeObserver:(id)a3 forKey:(int64_t)a4;
- (void)addObserver:(id)a3 forKey:(int64_t)a4 queue:(id)a5 block:(id)a6;
- (void)notifyAllObserversForKey:(int64_t)a3 withBlock:(id)a4;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 forKey:(int64_t)a4;
@end

@implementation NUObservatory

- (void)_notifyAllObserversForKey:(int64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  observations = self->_observations;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __53__NUObservatory__notifyAllObserversForKey_withBlock___block_invoke;
  v13 = &unk_1E810B350;
  v14 = v6;
  v15 = a3;
  v8 = v6;
  v9 = [(NSMutableArray *)observations indexesOfObjectsPassingTest:&v10];
  [(NSMutableArray *)self->_observations removeObjectsAtIndexes:v9, v10, v11, v12, v13];
}

BOOL __53__NUObservatory__notifyAllObserversForKey_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 observer];
  if (v4 && [v3 key] == *(a1 + 40))
  {
    [v3 notifyWithBlock:*(a1 + 32)];
  }

  return v4 == 0;
}

- (void)notifyAllObserversForKey:(int64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  serializer = self->_serializer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__NUObservatory_notifyAllObserversForKey_withBlock___block_invoke;
  block[3] = &unk_1E810B328;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_sync(serializer, block);
}

- (void)_removeObserver:(id)a3
{
  v4 = a3;
  observations = self->_observations;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__NUObservatory__removeObserver___block_invoke;
  v8[3] = &unk_1E810B300;
  v9 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)observations indexesOfObjectsPassingTest:v8];
  [(NSMutableArray *)self->_observations removeObjectsAtIndexes:v7];
}

BOOL __33__NUObservatory__removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 observer];
  if (v3)
  {
    v4 = v3 == *(a1 + 32);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)removeObserver:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v7 = NUAssertLogger_27562();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "observer != nil"];
      *buf = 138543362;
      v26 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_27562();
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
        v26 = v14;
        v27 = 2114;
        v28 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUObservatory removeObserver:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUObservatory.m", 130, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "observer != nil");
  }

  serializer = self->_serializer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__NUObservatory_removeObserver___block_invoke;
  block[3] = &unk_1E810B958;
  block[4] = self;
  v24 = v4;
  v6 = v4;
  dispatch_sync(serializer, block);
}

- (void)_removeObserver:(id)a3 forKey:(int64_t)a4
{
  v6 = a3;
  observations = self->_observations;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__NUObservatory__removeObserver_forKey___block_invoke;
  v13 = &unk_1E810B2D8;
  v14 = v6;
  v15 = a4;
  v8 = v6;
  v9 = [(NSMutableArray *)observations indexesOfObjectsPassingTest:&v10];
  [(NSMutableArray *)self->_observations removeObjectsAtIndexes:v9, v10, v11, v12, v13];
}

BOOL __40__NUObservatory__removeObserver_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 observer];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == *(a1 + 32) && [v3 key] == *(a1 + 40);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)removeObserver:(id)a3 forKey:(int64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v9 = NUAssertLogger_27562();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "observer != nil"];
      *buf = 138543362;
      v29 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_27562();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v16;
        v30 = 2114;
        v31 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUObservatory removeObserver:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUObservatory.m", 107, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "observer != nil");
  }

  serializer = self->_serializer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__NUObservatory_removeObserver_forKey___block_invoke;
  block[3] = &unk_1E810B750;
  block[4] = self;
  v26 = v6;
  v27 = a4;
  v8 = v6;
  dispatch_sync(serializer, block);
}

- (void)addObserver:(id)a3 forKey:(int64_t)a4 queue:(id)a5 block:(id)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    v17 = NUAssertLogger_27562();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "observer != nil"];
      *buf = 138543362;
      v52 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_27562();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v31;
        v53 = 2114;
        v54 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUObservatory addObserver:forKey:queue:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUObservatory.m", 89, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "observer != nil");
  }

  v13 = v12;
  if (!v12)
  {
    v24 = NUAssertLogger_27562();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v52 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_27562();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v40;
        v53 = 2114;
        v54 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUObservatory addObserver:forKey:queue:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUObservatory.m", 90, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "block != nil");
  }

  v14 = [[_NUObservation alloc] initWithObserver:v10 key:a4 queue:v11 block:v12];
  serializer = self->_serializer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__NUObservatory_addObserver_forKey_queue_block___block_invoke;
  block[3] = &unk_1E810B958;
  block[4] = self;
  v50 = v14;
  v16 = v14;
  dispatch_sync(serializer, block);
}

- (id)addObserverForKey:(int64_t)a3 queue:(id)a4 block:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(_NUObserver);
  [(NUObservatory *)self addObserver:v10 forKey:a3 queue:v9 block:v8];

  return v10;
}

- (NUObservatory)init
{
  v8.receiver = self;
  v8.super_class = NUObservatory;
  v2 = [(NUObservatory *)&v8 init];
  v3 = dispatch_queue_create("NUObservatory", 0);
  serializer = v2->_serializer;
  v2->_serializer = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  observations = v2->_observations;
  v2->_observations = v5;

  return v2;
}

@end