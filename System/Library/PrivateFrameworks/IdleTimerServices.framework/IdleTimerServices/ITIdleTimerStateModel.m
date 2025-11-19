@interface ITIdleTimerStateModel
- (BOOL)handleIdleEvent:(unint64_t)a3 usingConfigurationWithIdentifier:(id)a4;
- (ITIdleTimerStateModel)init;
- (id)_access_newIdleTimerAssertionWithConfiguration:(id)a3 forReason:(id)a4 error:(id *)a5;
- (id)newIdleTimerAssertionWithConfiguration:(id)a3 forReason:(id)a4 error:(id *)a5;
- (void)_addStateCaptureHandler;
- (void)dealloc;
- (void)resendIdleTimerAssertions;
@end

@implementation ITIdleTimerStateModel

- (ITIdleTimerStateModel)init
{
  v9.receiver = self;
  v9.super_class = ITIdleTimerStateModel;
  v2 = [(ITIdleTimerStateModel *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    access_idleTimerAssertionsByConfigIdentifier = v3->_access_idleTimerAssertionsByConfigIdentifier;
    v3->_access_idleTimerAssertionsByConfigIdentifier = v4;

    v6 = [ITIdleTimerServiceProvider makeRequestHandlerWithDelegate:v3];
    requestHandler = v3->_requestHandler;
    v3->_requestHandler = v6;

    [(ITIdleTimerStateModel *)v3 _addStateCaptureHandler];
  }

  return v3;
}

- (void)dealloc
{
  stateCaptureAssertion = self->_stateCaptureAssertion;
  if (stateCaptureAssertion)
  {
    [(BSInvalidatable *)stateCaptureAssertion invalidate];
    v4 = self->_stateCaptureAssertion;
    self->_stateCaptureAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = ITIdleTimerStateModel;
  [(ITIdleTimerStateModel *)&v5 dealloc];
}

- (id)newIdleTimerAssertionWithConfiguration:(id)a3 forReason:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    [ITIdleTimerStateModel newIdleTimerAssertionWithConfiguration:forReason:error:];
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v10 = [(ITIdleTimerStateModel *)self _access_newIdleTimerAssertionWithConfiguration:v8 forReason:v9 error:a5];
  os_unfair_lock_unlock(&self->_accessLock);

  return v10;
}

- (void)resendIdleTimerAssertions
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = ITLogIdleTimer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254ABE000, v3, OS_LOG_TYPE_DEFAULT, "[ITIdleTimerStateModel resendIdleTimerAssertions]", buf, 2u);
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(NSMutableDictionary *)self->_access_idleTimerAssertionsByConfigIdentifier allValues];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138543362;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 configuration];
        v12 = [v10 _uniqueReason];
        requestHandler = self->_requestHandler;
        v18 = 0;
        [(ITIdleTimerStateRequestHandling *)requestHandler addIdleTimerConfiguration:v11 forReason:v12 error:&v18];
        v14 = v18;
        if (v14)
        {
          v15 = ITLogIdleTimer();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v24 = v14;
            _os_log_error_impl(&dword_254ABE000, v15, OS_LOG_TYPE_ERROR, "Encountered error resending idle timer assertions: %{public}@", buf, 0xCu);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_accessLock);
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleIdleEvent:(unint64_t)a3 usingConfigurationWithIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = ITLogIdleTimer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    v17 = a3;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_254ABE000, v7, OS_LOG_TYPE_DEFAULT, "[ITIdleTimerStateModel handleIdleEvent: %lu usingConfigurationWithIdentifier: %{public}@]", &v16, 0x16u);
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v8 = [(NSMutableDictionary *)self->_access_idleTimerAssertionsByConfigIdentifier objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 configuration];
    v11 = [v10 _idleEventHandlerBlock];
    v12 = v11;
    if (v11)
    {
      v13 = (*(v11 + 16))(v11, a3);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(&self->_accessLock);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __111__ITIdleTimerStateModel__access_newIdleTimerAssertionOnBehalfOfSceneWithPID_withConfiguration_forReason_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  if (v4)
  {
    os_unfair_lock_assert_not_owner(v4 + 2);
    os_unfair_lock_lock(v5 + 2);
    v6 = [v3 _uniqueReason];
    v7 = ITLogIdleTimer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_254ABE000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing IdleTimer assertion for reason: %{public}@.", &v13, 0x16u);
    }

    v10 = [v3 configuration];
    [*(a1 + 40) removeIdleTimerConfiguration:v10 forReason:v6];
    v11 = [v10 _identifier];
    [*&v5[4]._os_unfair_lock_opaque removeObjectForKey:v11];
    os_unfair_lock_unlock(v5 + 2);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_access_newIdleTimerAssertionWithConfiguration:(id)a3 forReason:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    [ITIdleTimerStateModel _access_newIdleTimerAssertionWithConfiguration:forReason:error:];
  }

  os_unfair_lock_assert_owner(&self->_accessLock);
  v10 = self->_requestHandler;
  v11 = [v8 _uniquedReason:v9];
  v12 = ITLogIdleTimer();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v31 = v14;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_254ABE000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding IdleTimer assertion for reason: %{public}@.", buf, 0x16u);
  }

  v29 = 0;
  [(ITIdleTimerStateRequestHandling *)v10 addIdleTimerConfiguration:v8 forReason:v11 error:&v29];
  v15 = v29;
  v16 = v15;
  if (v15)
  {
    if (a5)
    {
      v17 = v15;
      v18 = 0;
      *a5 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v19 = self;
    v20 = [ITIdleTimerAssertion alloc];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __88__ITIdleTimerStateModel__access_newIdleTimerAssertionWithConfiguration_forReason_error___block_invoke;
    v26[3] = &unk_2797A54A0;
    v27 = v19;
    v28 = v10;
    v21 = v19;
    v18 = [(ITIdleTimerAssertion *)v20 _initWithConfiguration:v8 forReason:v9 invalidationBlock:v26];
    access_idleTimerAssertionsByConfigIdentifier = v21->_access_idleTimerAssertionsByConfigIdentifier;
    v23 = [v8 _identifier];
    [(NSMutableDictionary *)access_idleTimerAssertionsByConfigIdentifier setObject:v18 forKey:v23];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

void __88__ITIdleTimerStateModel__access_newIdleTimerAssertionWithConfiguration_forReason_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  if (v4)
  {
    os_unfair_lock_assert_not_owner(v4 + 2);
    os_unfair_lock_lock(v5 + 2);
    v6 = [v3 _uniqueReason];
    v7 = ITLogIdleTimer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_254ABE000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing IdleTimer assertion for reason: %{public}@.", &v13, 0x16u);
    }

    v10 = [v3 configuration];
    [*(a1 + 40) removeIdleTimerConfiguration:v10 forReason:v6];
    v11 = [v10 _identifier];
    [*&v5[4]._os_unfair_lock_opaque removeObjectForKey:v11];
    os_unfair_lock_unlock(v5 + 2);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_addStateCaptureHandler
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v6, &location);
  v4 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureAssertion = self->_stateCaptureAssertion;
  self->_stateCaptureAssertion = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

__CFString *__48__ITIdleTimerStateModel__addStateCaptureHandler__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  os_unfair_lock_assert_not_owner(WeakRetained + 2);
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [*(WeakRetained + 2) allValues];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v12 + 1) + 8 * i) description];
          [v2 addObject:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    os_unfair_lock_unlock(WeakRetained + 2);
    v9 = [v2 description];
  }

  else
  {
    v9 = &stru_2866F3550;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)newIdleTimerAssertionOnBehalfOfSceneWithPID:withConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)newIdleTimerAssertionWithConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_access_newIdleTimerAssertionOnBehalfOfSceneWithPID:withConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_access_newIdleTimerAssertionWithConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

@end