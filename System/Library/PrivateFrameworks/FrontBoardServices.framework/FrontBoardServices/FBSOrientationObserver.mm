@interface FBSOrientationObserver
+ (int64_t)activeInterfaceOrientation;
- (id)_getAndSetFreshestUpdateGivenUpdate:(id)update forced:(BOOL)forced;
- (id)_initWithClient:(id)client callbackQueue:(id)queue;
- (id)_lock_getAndSetFreshestUpdateGivenUpdate:(id)update forced:(BOOL)forced;
- (id)handler;
- (void)_lock_setHandler:(id)handler;
- (void)activeInterfaceOrientationWithCompletion:(id)completion;
- (void)client:(id)client handleOrientationUpdate:(id)update;
- (void)dealloc;
- (void)handleOrientationResetForClient:(id)client;
- (void)invalidate;
- (void)setHandler:(id)handler;
@end

@implementation FBSOrientationObserver

- (id)handler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x1A58E80F0](self->_lock_handler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x1A58E80F0](v3);

  return v4;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "<%p> Invalidating client.", &v6, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_freshestUpdate = self->_lock_freshestUpdate;
  self->_lock_freshestUpdate = 0;

  lock_handler = self->_lock_handler;
  self->_lock_handler = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(FBSOrientationObserverClient *)self->_client invalidate];
}

- (void)dealloc
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: you must call -invalidate before releasing", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FBSOrientationObserver dealloc]"];
    *buf = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"FBSOrientationObserver.m";
    v6 = 1024;
    v7 = 118;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithClient:(id)client callbackQueue:(id)queue
{
  clientCopy = client;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = FBSOrientationObserver;
  v9 = [(FBSOrientationObserver *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_callback_queue, queue);
    objc_storeStrong(p_isa + 1, client);
    [p_isa[1] activate];
  }

  return p_isa;
}

+ (int64_t)activeInterfaceOrientation
{
  if (activeInterfaceOrientation_onceToken != -1)
  {
    +[FBSOrientationObserver activeInterfaceOrientation];
  }

  v3 = activeInterfaceOrientation_client;

  return [v3 activeInterfaceOrientation];
}

uint64_t __52__FBSOrientationObserver_activeInterfaceOrientation__block_invoke()
{
  v0 = [[FBSOrientationObserverClient alloc] initWithDelegate:0];
  v1 = activeInterfaceOrientation_client;
  activeInterfaceOrientation_client = v0;

  v2 = activeInterfaceOrientation_client;

  return [v2 activate];
}

- (void)activeInterfaceOrientationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    client = self->_client;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__FBSOrientationObserver_activeInterfaceOrientationWithCompletion___block_invoke;
    v6[3] = &unk_1E76BD820;
    objc_copyWeak(&v8, &location);
    v7 = completionCopy;
    [(FBSOrientationObserverClient *)client activeInterfaceOrientationWithCompletion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __67__FBSOrientationObserver_activeInterfaceOrientationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__FBSOrientationObserver_activeInterfaceOrientationWithCompletion___block_invoke_2;
    block[3] = &unk_1E76BD7F8;
    block[4] = WeakRetained;
    v8 = v3;
    v9 = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

uint64_t __67__FBSOrientationObserver_activeInterfaceOrientationWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _getAndSetFreshestUpdateGivenUpdate:*(a1 + 40) forced:0];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return MEMORY[0x1EEE66BB8](v3, v2);
}

- (void)setHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  [(FBSOrientationObserver *)self _lock_setHandler:handlerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_getAndSetFreshestUpdateGivenUpdate:(id)update forced:(BOOL)forced
{
  forcedCopy = forced;
  updateCopy = update;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(FBSOrientationObserver *)self _lock_getAndSetFreshestUpdateGivenUpdate:updateCopy forced:forcedCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)_lock_setHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_lock_handler != handler)
  {
    v5 = [handler copy];
    lock_handler = self->_lock_handler;
    self->_lock_handler = v5;

    v7 = FBLogInterfaceOrientationObserver();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (handler)
    {
      if (v8)
      {
        *v10 = 134217984;
        *&v10[4] = self;
        v9 = "<%p> Registering interest for orientation updates.";
LABEL_7:
        _os_log_impl(&dword_1A2DBB000, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 0xCu);
      }
    }

    else if (v8)
    {
      *v10 = 134217984;
      *&v10[4] = self;
      v9 = "<%p> Unregistering interest for orientation updates.";
      goto LABEL_7;
    }

    [(FBSOrientationObserverClient *)self->_client registerOrientationInterest:self->_lock_handler != 0, *v10];
  }
}

- (id)_lock_getAndSetFreshestUpdateGivenUpdate:(id)update forced:(BOOL)forced
{
  forcedCopy = forced;
  v22 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  lock_freshestUpdate = self->_lock_freshestUpdate;
  if (!lock_freshestUpdate)
  {
    goto LABEL_10;
  }

  if (forcedCopy)
  {
    v9 = FBLogInterfaceOrientationObserver();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218242;
      selfCopy2 = self;
      v18 = 2114;
      v19 = updateCopy;
      _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "<%p>: Received orientation update: %{public}@ that we're forcefully updating", &v16, 0x16u);
    }

    goto LABEL_10;
  }

  sequenceNumber = [(FBSOrientationUpdate *)lock_freshestUpdate sequenceNumber];
  if (sequenceNumber <= [updateCopy sequenceNumber])
  {
LABEL_10:
    objc_storeStrong(&self->_lock_freshestUpdate, update);
    goto LABEL_11;
  }

  v11 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = self->_lock_freshestUpdate;
    v16 = 134218498;
    selfCopy2 = self;
    v18 = 2114;
    v19 = updateCopy;
    v20 = 2114;
    v21 = v15;
    _os_log_error_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_ERROR, "<%p> Received orientation update: %{public}@ with a sequence number less than the last update received %{public}@.", &v16, 0x20u);
  }

LABEL_11:
  v12 = self->_lock_freshestUpdate;
  v13 = v12;

  return v12;
}

- (void)client:(id)client handleOrientationUpdate:(id)update
{
  v16 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v14 = 2114;
    v15 = updateCopy;
    _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Received orientation update: %{public}@.", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  callback_queue = self->_callback_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__FBSOrientationObserver_client_handleOrientationUpdate___block_invoke;
  v9[3] = &unk_1E76BD848;
  objc_copyWeak(&v11, buf);
  v10 = updateCopy;
  v8 = updateCopy;
  dispatch_async(callback_queue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __57__FBSOrientationObserver_client_handleOrientationUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained _getAndSetFreshestUpdateGivenUpdate:*(a1 + 32) forced:0];
    v4 = [v6 handler];
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    WeakRetained = v6;
  }
}

- (void)handleOrientationResetForClient:(id)client
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A2DBB000, v4, OS_LOG_TYPE_DEFAULT, "<%p> Received orientation reset.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  callback_queue = self->_callback_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FBSOrientationObserver_handleOrientationResetForClient___block_invoke;
  block[3] = &unk_1E76BD870;
  objc_copyWeak(&v7, buf);
  dispatch_async(callback_queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __58__FBSOrientationObserver_handleOrientationResetForClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _getAndSetFreshestUpdateGivenUpdate:0 forced:1];
}

@end