@interface ITAttentionAwarenessClient
- (AWAttentionAwarenessConfiguration)configuration;
- (BOOL)isEnabled;
- (ITAttentionAwarenessClient)init;
- (ITAttentionAwarenessClient)initWithCalloutQueue:(id)queue;
- (ITAttentionAwarenessClientDelegate)delegate;
- (id)_initWithCalloutQueue:(id)queue attentionAwarenessClient:(id)client;
- (void)_access_resume;
- (void)_access_suspend;
- (void)_handleAttentionAwarenessEvent:(id)event;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation ITAttentionAwarenessClient

- (void)_access_resume
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_accessLock);
  configuration = [(AWAttentionAwarenessClient *)self->_access_attentionAwarenessClient configuration];
  v4 = ITLogIdleTimer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    access_attentionAwarenessClient = self->_access_attentionAwarenessClient;
    *buf = 138543618;
    v15 = access_attentionAwarenessClient;
    v16 = 2114;
    v17 = configuration;
    _os_log_impl(&dword_254AB6000, v4, OS_LOG_TYPE_DEFAULT, "attention client RESUME client: %{public}@ with configuration: %{public}@", buf, 0x16u);
  }

  v6 = self->_access_attentionAwarenessClient;
  v13 = 0;
  v7 = [(AWAttentionAwarenessClient *)v6 resumeWithError:&v13];
  v8 = v13;
  if ((v7 & 1) == 0)
  {
    v9 = ITLogIdleTimer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543874;
      v15 = v12;
      v16 = 2114;
      v17 = configuration;
      v18 = 2114;
      v19 = v8;
      _os_log_error_impl(&dword_254AB6000, v9, OS_LOG_TYPE_ERROR, "%{public}@ - attention client %{public}@ cannot resume; error:%{public}@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEnabled
{
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  access_enabled = self->_access_enabled;
  os_unfair_lock_unlock(&self->_accessLock);
  return access_enabled;
}

- (ITAttentionAwarenessClient)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ITAttentionAwarenessClient.m" lineNumber:25 description:@"wrong initializer"];

  return 0;
}

- (ITAttentionAwarenessClient)initWithCalloutQueue:(id)queue
{
  v4 = MEMORY[0x277CEF760];
  queueCopy = queue;
  v6 = objc_alloc_init(v4);
  v7 = [(ITAttentionAwarenessClient *)self _initWithCalloutQueue:queueCopy attentionAwarenessClient:v6];

  return v7;
}

- (id)_initWithCalloutQueue:(id)queue attentionAwarenessClient:(id)client
{
  queueCopy = queue;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = ITAttentionAwarenessClient;
  v8 = [(ITAttentionAwarenessClient *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_access_attentionAwarenessClient, client);
    objc_initWeak(&location, v9);
    access_attentionAwarenessClient = v9->_access_attentionAwarenessClient;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__ITAttentionAwarenessClient__initWithCalloutQueue_attentionAwarenessClient___block_invoke;
    v12[3] = &unk_2797A4DB0;
    objc_copyWeak(&v13, &location);
    [(AWAttentionAwarenessClient *)access_attentionAwarenessClient setEventHandlerWithQueue:queueCopy block:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __77__ITAttentionAwarenessClient__initWithCalloutQueue_attentionAwarenessClient___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleAttentionAwarenessEvent:v5];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  if (self->_access_enabled != enabledCopy)
  {
    self->_access_enabled = enabledCopy;
    if (enabledCopy)
    {
      [(ITAttentionAwarenessClient *)self _access_resume];
    }

    else
    {
      [(ITAttentionAwarenessClient *)self _access_suspend];
    }
  }

  os_unfair_lock_unlock(&self->_accessLock);
}

- (AWAttentionAwarenessConfiguration)configuration
{
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  configuration = [(AWAttentionAwarenessClient *)self->_access_attentionAwarenessClient configuration];
  v4 = [configuration copy];

  os_unfair_lock_unlock(&self->_accessLock);

  return v4;
}

- (void)_access_suspend
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_accessLock);
  v3 = ITLogIdleTimer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254AB6000, v3, OS_LOG_TYPE_DEFAULT, "attention client SUSPEND", buf, 2u);
  }

  access_attentionAwarenessClient = self->_access_attentionAwarenessClient;
  v13 = 0;
  v5 = [(AWAttentionAwarenessClient *)access_attentionAwarenessClient suspendWithError:&v13];
  v6 = v13;
  if ((v5 & 1) == 0)
  {
    configuration = [(AWAttentionAwarenessClient *)self->_access_attentionAwarenessClient configuration];
    v8 = ITLogIdleTimer();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      identifier = [configuration identifier];
      *buf = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = identifier;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_254AB6000, v8, OS_LOG_TYPE_ERROR, "%{public}@ - attention client %{public}@ cannot suspend; error:%{public}@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleAttentionAwarenessEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [eventCopy tag];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    if ([eventCopy eventMask])
    {
      v12 = objc_opt_class();
      v13 = eventCopy;
      if (v12)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v15)
      {
        [v15 attentionLostTimeout];
        v17 = v16;
        associatedObject = [v15 associatedObject];
        v19 = objc_opt_class();
        v20 = associatedObject;
        if (v19)
        {
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v22)
        {
          v23 = [[ITIdleTimeout alloc] initWithDuration:[v22 unsignedIntegerValue] identifier:v17];
          [WeakRetained client:self attentionLostTimeoutDidExpire:v23 forContext:v10];
        }

        else
        {
          v23 = ITLogIdleTimer();
          if (os_log_type_enabled(&v23->super, OS_LOG_TYPE_FAULT))
          {
            [(ITAttentionAwarenessClient *)self _handleAttentionAwarenessEvent:v15, &v23->super];
          }
        }
      }

      else
      {
        v22 = ITLogIdleTimer();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(ITAttentionAwarenessClient *)self _handleAttentionAwarenessEvent:v13, v22];
        }
      }
    }

    else
    {
      v11 = ITLogIdleTimer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(ITAttentionAwarenessClient *)eventCopy _handleAttentionAwarenessEvent:v11];
      }

      [WeakRetained clientDidReset:self forUserAttentionEvent:eventCopy withContext:v10];
    }
  }
}

- (ITAttentionAwarenessClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleAttentionAwarenessEvent:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 associatedObject];
  v9 = 138543618;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  _os_log_fault_impl(&dword_254AB6000, a3, OS_LOG_TYPE_FAULT, "%{public}@ - attention client lost event timeoutTag is not a NSObject: %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleAttentionAwarenessEvent:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_254AB6000, a3, OS_LOG_TYPE_ERROR, "%{public}@ - attention event: expected AWAttentionLostEvent instead of %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleAttentionAwarenessEvent:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_254AB6000, a2, OS_LOG_TYPE_DEBUG, "attention event: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end