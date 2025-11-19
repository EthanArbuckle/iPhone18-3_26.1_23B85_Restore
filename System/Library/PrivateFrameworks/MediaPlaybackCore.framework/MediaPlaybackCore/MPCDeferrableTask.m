@interface MPCDeferrableTask
- (BOOL)cancel;
- (BOOL)disarmTimeout;
- (MPCDeferrableTask)initWithIdentifier:(id)a3 timeout:(double)a4 queue:(id)a5 block:(id)a6;
- (id)description;
- (void)dealloc;
- (void)execute:(int64_t)a3;
- (void)taskDidExecute;
@end

@implementation MPCDeferrableTask

- (void)taskDidExecute
{
  os_unfair_lock_lock(&self->_lock);
  [(MPCDeferrableTask *)self setBlock:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)execute:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(MPCDeferrableTask *)self block];
  os_unfair_lock_unlock(&self->_lock);
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Optimal";
    if (a3 == 1)
    {
      v8 = @"Timed out";
    }

    if (a3 == 2)
    {
      v8 = @"Canceled";
    }

    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Started executing (%{public}@)", buf, 0x16u);
  }

  if (!v6)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MPCDeferrableTask.m" lineNumber:90 description:{@"%@ Deferred task can't be executed multiple times", self}];
  }

  v9 = [(MPCDeferrableTask *)self deallocating];
  v10 = [(MPCDeferrableTask *)self queue];
  if (v9)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __29__MPCDeferrableTask_execute___block_invoke;
    v18[3] = &unk_1E8235068;
    v11 = v19;
    v19[0] = v6;
    v19[1] = a3;
    v12 = v6;
    v13 = v18;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__MPCDeferrableTask_execute___block_invoke_2;
    block[3] = &unk_1E8237020;
    v11 = v17;
    v17[0] = v6;
    v17[1] = a3;
    block[4] = self;
    v14 = v6;
    v13 = block;
  }

  dispatch_async(v10, v13);

  [(MPCDeferrableTask *)self taskDidExecute];
}

uint64_t __29__MPCDeferrableTask_execute___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setFinished:1];
}

- (BOOL)disarmTimeout
{
  v3 = [(MPCDeferrableTask *)self guard];
  if (v3)
  {
    v4 = [(MPCDeferrableTask *)self guard];
    v5 = [v4 disarm];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)dealloc
{
  [(MPCDeferrableTask *)self setDeallocating:1];
  [(MPCDeferrableTask *)self cancel];
  v3.receiver = self;
  v3.super_class = MPCDeferrableTask;
  [(MPCDeferrableTask *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPCDeferrableTask *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier=%@>", v4, self, v5];

  return v6;
}

- (BOOL)cancel
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(MPCDeferrableTask *)self block];
  os_unfair_lock_unlock(&self->_lock);
  if (v3 && [(MPCDeferrableTask *)self disarmTimeout])
  {
    [(MPCDeferrableTask *)self execute:2];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MPCDeferrableTask)initWithIdentifier:(id)a3 timeout:(double)a4 queue:(id)a5 block:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v24.receiver = self;
  v24.super_class = MPCDeferrableTask;
  v13 = [(MPCDeferrableTask *)&v24 init];
  v14 = v13;
  if (v13)
  {
    [(MPCDeferrableTask *)v13 setIdentifier:v10];
    [(MPCDeferrableTask *)v14 setQueue:v11];
    [(MPCDeferrableTask *)v14 setBlock:v12];
    v14->_lock._os_unfair_lock_opaque = 0;
    if (a4 > 0.0)
    {
      objc_initWeak(&location, v14);
      v15 = objc_alloc(MEMORY[0x1E69B13F0]);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __60__MPCDeferrableTask_initWithIdentifier_timeout_queue_block___block_invoke;
      v21 = &unk_1E8234200;
      objc_copyWeak(&v22, &location);
      v16 = [v15 initWithTimeout:&v18 interruptionHandler:a4];
      [(MPCDeferrableTask *)v14 setGuard:v16, v18, v19, v20, v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  return v14;
}

void __60__MPCDeferrableTask_initWithIdentifier_timeout_queue_block___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained execute:1];
  }
}

@end