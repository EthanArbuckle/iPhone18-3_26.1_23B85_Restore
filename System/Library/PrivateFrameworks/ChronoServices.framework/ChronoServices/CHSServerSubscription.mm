@interface CHSServerSubscription
- (BOOL)_lock_createServerSubscriptionIfNecessary:(id *)necessary forcing:(BOOL)forcing;
- (BOOL)_lock_updateSubscription:(id *)subscription;
- (BOOL)isSubscribed;
- (BOOL)resubscribeIfNecessary;
- (CHSServerSubscription)initWithIdentifier:(id)identifier serverSubscriptionBlock:(id)block;
- (NSObject)cachedValue;
- (id)subscribeWithResult:(id *)result forcingServerUpdate:(BOOL)update error:(id *)error;
- (id)updateSubscription:(id *)subscription;
- (void)noteConnectionTerminated;
- (void)setCachedValue:(id)value;
- (void)updateCachedValue:(id)value;
@end

@implementation CHSServerSubscription

- (CHSServerSubscription)initWithIdentifier:(id)identifier serverSubscriptionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = CHSServerSubscription;
  v8 = [(CHSServerSubscription *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_lock._os_unfair_lock_opaque = 0;
    lock_cachedValue = v8->_lock_cachedValue;
    v8->_lock_cachedValue = 0;

    v12 = [blockCopy copy];
    lock_subscriptionBlock = v8->_lock_subscriptionBlock;
    v8->_lock_subscriptionBlock = v12;
  }

  return v8;
}

- (NSObject)cachedValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__CHSServerSubscription_cachedValue__block_invoke;
  v5[3] = &unk_1E74534A0;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __36__CHSServerSubscription_cachedValue__block_invoke(v5);
  os_unfair_lock_unlock(&self->_lock);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isSubscribed
{
  selfCopy = self;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__CHSServerSubscription_isSubscribed__block_invoke;
  v4[3] = &unk_1E74534A0;
  v4[4] = self;
  v4[5] = &v5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&selfCopy->_lock);
  __37__CHSServerSubscription_isSubscribed__block_invoke(v4);
  os_unfair_lock_unlock(&selfCopy->_lock);
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

uint64_t __37__CHSServerSubscription_isSubscribed__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)setCachedValue:(id)value
{
  valueCopy = value;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CHSServerSubscription_setCachedValue___block_invoke;
  v6[3] = &unk_1E7453000;
  v6[4] = self;
  v7 = valueCopy;
  v5 = valueCopy;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __40__CHSServerSubscription_setCachedValue___block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateCachedValue:(id)value
{
  valueCopy = value;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CHSServerSubscription_updateCachedValue___block_invoke;
  v6[3] = &unk_1E7454278;
  v6[4] = self;
  v7 = valueCopy;
  v5 = valueCopy;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __43__CHSServerSubscription_updateCachedValue___block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
}

void __43__CHSServerSubscription_updateCachedValue___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;
}

- (id)subscribeWithResult:(id *)result forcingServerUpdate:(BOOL)update error:(id *)error
{
  v9 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v9 stringWithFormat:@"<%@: %@>", identifier, uUID];

  v13 = objc_alloc(MEMORY[0x1E698E778]);
  v14 = self->_identifier;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __71__CHSServerSubscription_subscribeWithResult_forcingServerUpdate_error___block_invoke;
  v37[3] = &unk_1E74542A0;
  v37[4] = self;
  v15 = [v13 initWithIdentifier:v12 forReason:v14 invalidationBlock:v37];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__CHSServerSubscription_subscribeWithResult_forcingServerUpdate_error___block_invoke_28;
  v20[3] = &unk_1E74542C8;
  v20[4] = self;
  v16 = v15;
  v21 = v16;
  v22 = &v31;
  updateCopy = update;
  v23 = &v25;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __71__CHSServerSubscription_subscribeWithResult_forcingServerUpdate_error___block_invoke_28(v20);
  os_unfair_lock_unlock(&self->_lock);
  if (result)
  {
    *result = v26[5];
  }

  if (error)
  {
    *error = v32[5];
  }

  v17 = v21;
  v18 = v16;

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v18;
}

void __71__CHSServerSubscription_subscribeWithResult_forcingServerUpdate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__CHSServerSubscription_subscribeWithResult_forcingServerUpdate_error___block_invoke_2;
  v6[3] = &unk_1E7453000;
  v6[4] = v4;
  v5 = v3;
  v7 = v5;
  os_unfair_lock_assert_not_owner(v4 + 4);
  os_unfair_lock_lock(v4 + 4);
  __71__CHSServerSubscription_subscribeWithResult_forcingServerUpdate_error___block_invoke_2(v6);
  os_unfair_lock_unlock(v4 + 4);
}

void __71__CHSServerSubscription_subscribeWithResult_forcingServerUpdate_error___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  v2 = CHSLogSubscriptions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(v3 + 32), "count")}];
    v12 = 138543618;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remaining local subscription count (post remove): %{public}@", &v12, 0x16u);
  }

  if (![*(*(a1 + 32) + 32) count])
  {
    v6 = CHSLogSubscriptions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 8);
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_195EB2000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating server subscription (no more subscribers)", &v12, 0xCu);
    }

    v9 = *(a1 + 32);
    v8 = a1 + 32;
    [*(v9 + 40) invalidate];
    v10 = *(*v8 + 40);
    *(*v8 + 40) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __71__CHSServerSubscription_subscribeWithResult_forcingServerUpdate_error___block_invoke_28(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = CHSLogSubscriptions();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(v7 + 32), "count")}];
    *buf = 138543618;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_195EB2000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Local subscription count (post add): %{public}@", buf, 0x16u);
  }

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 48) + 8);
  obj = *(v11 + 40);
  [v10 _lock_createServerSubscriptionIfNecessary:&obj forcing:*(a1 + 64)];
  objc_storeStrong((v11 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v12 = CHSLogSubscriptions();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 8);
      v14 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_195EB2000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error subscribing to server: %{public}@", buf, 0x16u);
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 24));
  v15 = *MEMORY[0x1E69E9840];
}

- (id)updateSubscription:(id *)subscription
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CHSServerSubscription_updateSubscription___block_invoke;
  v7[3] = &unk_1E7453478;
  v7[4] = self;
  v7[5] = &v14;
  v7[6] = &v8;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __44__CHSServerSubscription_updateSubscription___block_invoke(v7);
  os_unfair_lock_unlock(&self->_lock);
  if (subscription)
  {
    *subscription = v15[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __44__CHSServerSubscription_updateSubscription___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  [v2 _lock_updateSubscription:&obj];
  objc_storeStrong((v3 + 40), obj);
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 24));
}

- (void)noteConnectionTerminated
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CHSLogSubscriptions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138543362;
    v8 = identifier;
    _os_log_impl(&dword_195EB2000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Connection terminated; killing subscription.", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CHSServerSubscription_noteConnectionTerminated__block_invoke;
  v6[3] = &unk_1E74530E8;
  v6[4] = self;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __49__CHSServerSubscription_noteConnectionTerminated__block_invoke(v6);
  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x1E69E9840];
}

void __49__CHSServerSubscription_noteConnectionTerminated__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (BOOL)resubscribeIfNecessary
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = CHSLogSubscriptions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_195EB2000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resubscribing to server if necessary", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__CHSServerSubscription_resubscribeIfNecessary__block_invoke;
  v13[3] = &unk_1E7453450;
  v13[4] = self;
  v13[5] = &v14;
  v13[6] = &buf;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __47__CHSServerSubscription_resubscribeIfNecessary__block_invoke(v13);
  os_unfair_lock_unlock(&self->_lock);
  if ((v15[3] & 1) == 0)
  {
    v5 = CHSLogSubscriptions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_identifier;
      *v18 = 138543362;
      v19 = v6;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] No server subscription necessary.", v18, 0xCu);
    }
  }

  if (*(*(&buf + 1) + 40))
  {
    v7 = CHSLogSubscriptions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_identifier;
      v9 = *(*(&buf + 1) + 40);
      *v18 = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error re-subscribing to server: %{public}@", v18, 0x16u);
    }
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void __47__CHSServerSubscription_resubscribeIfNecessary__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _lock_createServerSubscriptionIfNecessary:&obj forcing:0];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (BOOL)_lock_createServerSubscriptionIfNecessary:(id *)necessary forcing:(BOOL)forcing
{
  forcingCopy = forcing;
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [(NSHashTable *)self->_lock_localSubscriptions count];
  if (v7)
  {
    if (self->_lock_serverSubscription)
    {
      v8 = !forcingCopy;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v9 = CHSLogSubscriptions();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSHashTable count](self->_lock_localSubscriptions, "count")}];
        v14 = 138543618;
        v15 = identifier;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&dword_195EB2000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Subscribing to server... %{public}@ local subscriptions.", &v14, 0x16u);
      }

      LOBYTE(v7) = [(CHSServerSubscription *)self _lock_updateSubscription:necessary];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_lock_updateSubscription:(id *)subscription
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = (*(self->_lock_subscriptionBlock + 2))();
  if (v5)
  {
    v6 = CHSLogSubscriptions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      v21 = 138543362;
      v22 = identifier;
      _os_log_impl(&dword_195EB2000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating subscription to server: success", &v21, 0xCu);
    }

    [(BSInvalidatable *)self->_lock_serverSubscription invalidate];
    assertion = [v5 assertion];
    lock_serverSubscription = self->_lock_serverSubscription;
    self->_lock_serverSubscription = assertion;

    value = [v5 value];
    lock_cachedValue = self->_lock_cachedValue;
    self->_lock_cachedValue = value;

    if (subscription)
    {
      error = [v5 error];
      v13 = error == 0;

      if (!v13)
      {
        v14 = CHSLogSubscriptions();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_identifier;
          error2 = [v5 error];
          v21 = 138543618;
          v22 = v15;
          v23 = 2114;
          v24 = error2;
          _os_log_impl(&dword_195EB2000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating subscription to server: failed: %{public}@", &v21, 0x16u);
        }
      }

      *subscription = [v5 error];
    }
  }

  else
  {
    v17 = CHSLogSubscriptions();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_identifier;
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_195EB2000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating nsubscription to server: failed for unknown reason", &v21, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

@end