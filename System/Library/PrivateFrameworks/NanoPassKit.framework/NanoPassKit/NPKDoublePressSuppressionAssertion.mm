@interface NPKDoublePressSuppressionAssertion
- (NPKDoublePressSuppressionAssertion)initWithQueue:(id)queue;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)_resyncStateWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation NPKDoublePressSuppressionAssertion

- (NPKDoublePressSuppressionAssertion)initWithQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = NPKDoublePressSuppressionAssertion;
  v3 = [(NPKTransientAssertion *)&v6 initWithQueue:queue];
  v4 = v3;
  if (v3)
  {
    v3->_requestSuppression = 1;
    atomic_store(0, &v3->_isInvalidating);
    v3->_stateLock._os_unfair_lock_opaque = 0;
    [(NPKDoublePressSuppressionAssertion *)v3 _resyncState];
  }

  return v4;
}

- (void)invalidate
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_isInvalidating, &v2, 1u);
  if (v2)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Double-press suppression assertion: invalidation already in progress, ignoring duplicate call", buf, 2u);
      }
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_requestSuppression = 0;
    os_unfair_lock_unlock(&self->_stateLock);
    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Double-press suppression assertion: invalidating assertion", buf, 2u);
      }
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__NPKDoublePressSuppressionAssertion_invalidate__block_invoke;
    v10[3] = &unk_279944F98;
    v10[4] = self;
    [(NPKDoublePressSuppressionAssertion *)self _resyncStateWithCompletion:v10];
  }
}

id __48__NPKDoublePressSuppressionAssertion_invalidate__block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Double-press suppression assertion: state sync completed, proceeding with invalidation", buf, 2u);
    }
  }

  v6.receiver = *(a1 + 32);
  v6.super_class = NPKDoublePressSuppressionAssertion;
  return objc_msgSendSuper2(&v6, sel_invalidate);
}

- (void)_resyncStateWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_stateLock);
  requestSuppression = self->_requestSuppression;
  os_unfair_lock_unlock(&self->_stateLock);
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromBOOL();
      v10 = _Block_copy(completionCopy);
      *buf = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Double-press suppression assertion: resyncing state (suppression: %@) with completion %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__NPKDoublePressSuppressionAssertion__resyncStateWithCompletion___block_invoke;
  v17[3] = &unk_279945A70;
  objc_copyWeak(&v19, buf);
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NPKTransientAssertion *)self _remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__NPKDoublePressSuppressionAssertion__resyncStateWithCompletion___block_invoke_186;
  v15[3] = &unk_279945198;
  v13 = v11;
  v16 = v13;
  [v12 setDoublePressSuppressionRequested:requestSuppression withCompletion:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __65__NPKDoublePressSuppressionAssertion__resyncStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: Double-press suppression assertion: XPC error during state sync: %@", &v10, 0xCu);
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __65__NPKDoublePressSuppressionAssertion__resyncStateWithCompletion___block_invoke_186(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Double-press suppression assertion: Server confirmed state change", v6, 2u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleInterruption
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = atomic_load(&self->_isInvalidating);
  os_unfair_lock_unlock(&self->_stateLock);
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    if (!v5)
    {
      return;
    }

    v6 = pk_General_log();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v14 = 0;
    v7 = "Notice: Double-press suppression assertion: connection interrupted during invalidation; suppression disabled";
    v8 = &v14;
    goto LABEL_12;
  }

  if (v5)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Double-press suppression assertion: connection interrupted; disabling suppression locally.", buf, 2u);
    }
  }

  os_unfair_lock_lock(&self->_stateLock);
  self->_requestSuppression = 0;
  os_unfair_lock_unlock(&self->_stateLock);
  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v6 = pk_General_log();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      return;
    }

    v12 = 0;
    v7 = "Notice: Double-press suppression assertion: Suppression disabled locally due to interruption.";
    v8 = &v12;
LABEL_12:
    _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    goto LABEL_13;
  }
}

- (void)_handleInvalidation
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = atomic_load(&self->_isInvalidating);
  os_unfair_lock_unlock(&self->_stateLock);
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Double-press suppression assertion: connection invalidated during invalidation; suppression disabled", buf, 2u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Double-press suppression assertion: connection invalidated; disabling suppression on server.", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    _remoteObjectProxy = [(NPKTransientAssertion *)self _remoteObjectProxy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__NPKDoublePressSuppressionAssertion__handleInvalidation__block_invoke;
    v9[3] = &unk_279945030;
    objc_copyWeak(&v10, buf);
    [_remoteObjectProxy setDoublePressSuppressionRequested:0 withCompletion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __57__NPKDoublePressSuppressionAssertion__handleInvalidation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    BYTE1(v2[5]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v2 + 4);
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Double-press suppression assertion: Suppression disabled on server after invalidation.", v6, 2u);
      }
    }
  }
}

@end