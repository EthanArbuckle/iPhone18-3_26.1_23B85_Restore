@interface MSVSonicAssertion
+ (BOOL)hasEntitlement;
+ (BOOL)shouldAlsoUseOSTransaction;
+ (id)sharedObserver;
- (MSVSonicAssertion)initWithName:(id)name;
- (void)dealloc;
- (void)handleInvalidation:(id)invalidation;
- (void)invalidate;
@end

@implementation MSVSonicAssertion

+ (BOOL)hasEntitlement
{
  if (hasEntitlement_onceToken != -1)
  {
    dispatch_once(&hasEntitlement_onceToken, &__block_literal_global_5849);
  }

  return hasEntitlement_hasEntitlement;
}

BOOL __35__MSVSonicAssertion_hasEntitlement__block_invoke()
{
  result = [MSVEntitlementUtilities hasBoolEntitlement:@"com.apple.runningboard.sonic"];
  hasEntitlement_hasEntitlement = result;
  return result;
}

+ (id)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    dispatch_once(&sharedObserver_onceToken, &__block_literal_global_61);
  }

  v3 = sharedObserver_observer;

  return v3;
}

uint64_t __35__MSVSonicAssertion_sharedObserver__block_invoke()
{
  sharedObserver_observer = objc_alloc_init(MSVSonicAssertionObserver);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)shouldAlsoUseOSTransaction
{
  if (shouldAlsoUseOSTransaction_onceToken != -1)
  {
    dispatch_once(&shouldAlsoUseOSTransaction_onceToken, &__block_literal_global_55_5844);
  }

  return shouldAlsoUseOSTransaction_useOSTransaction;
}

void __47__MSVSonicAssertion_shouldAlsoUseOSTransaction__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  shouldAlsoUseOSTransaction_useOSTransaction = [v0 isEqualToString:@"com.apple.MediaPlayer.RemotePlayerService"];
}

- (void)invalidate
{
  os_unfair_lock_lock(&__assertionLock_5803);
  if (self->_needsInvalidation)
  {
    self->_needsInvalidation = 0;
    v4 = __assertionCount_5804;
    v5 = --__assertionCount_5804;
    if (v4 <= 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSonicAssertion.m" lineNumber:151 description:@"__assertionCount can't be negative"];

      if (__assertionCount_5804)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!v5)
    {
LABEL_4:
      v6 = arc4random();
      __assertionInvalidationNonce_5808 = v6;
      v7 = dispatch_time(0, 2000000000);
      v8 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__MSVSonicAssertion_invalidate__block_invoke;
      block[3] = &__block_descriptor_36_e5_v8__0l;
      v11 = v6;
      dispatch_after(v7, v8, block);
    }
  }

LABEL_5:
  os_unfair_lock_unlock(&__assertionLock_5803);
}

- (void)dealloc
{
  [(MSVSonicAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = MSVSonicAssertion;
  [(MSVSonicAssertion *)&v3 dealloc];
}

- (void)handleInvalidation:(id)invalidation
{
  invalidationHandler = [(MSVSonicAssertion *)self invalidationHandler];

  if (invalidationHandler)
  {
    invalidationHandler2 = [(MSVSonicAssertion *)self invalidationHandler];
    (invalidationHandler2)[2](invalidationHandler2, self);

    [(MSVSonicAssertion *)self setInvalidationHandler:0];
  }
}

void __31__MSVSonicAssertion_invalidate__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&__assertionLock_5803);
  if (*(a1 + 32) == __assertionInvalidationNonce_5808 && !__assertionCount_5804 && __assertion_5809 != 0)
  {
    if ([__assertion_5809 isValid])
    {
      v3 = os_log_create("com.apple.amp.MediaServices", "Default");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = __assertion_5809;
        _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "[MSVSonicAssertion] Invalidating RBSAssertion %p] Timeout", &v8, 0xCu);
      }
    }

    [__assertion_5809 invalidate];
    v4 = __assertion_5809;
    __assertion_5809 = 0;

    if (__transaction)
    {
      v5 = os_log_create("com.apple.amp.MediaServices", "Default");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = __transaction;
        _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_DEFAULT, "[MSVSonicAssertion] Releasing os_transaction %p Timeout", &v8, 0xCu);
      }

      v6 = __transaction;
      __transaction = 0;
    }
  }

  os_unfair_lock_unlock(&__assertionLock_5803);
  v7 = *MEMORY[0x1E69E9840];
}

- (MSVSonicAssertion)initWithName:(id)name
{
  v46[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v41.receiver = self;
  v41.super_class = MSVSonicAssertion;
  v5 = [(MSVSonicAssertion *)&v41 init];
  if (!v5)
  {
    goto LABEL_37;
  }

  os_unfair_lock_lock(&__assertionLock_5803);
  v6 = __assertion_5809;
  v7 = v6;
  v8 = 0x1E7981000;
  if (v6)
  {
    if ([v6 isValid])
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v11 = v10 + 30.0 - *&__assertionCreatedTime;

      if (v11 >= 5.0)
      {
        goto LABEL_18;
      }
    }
  }

  currentProcess = [MEMORY[0x1E69C7640] currentProcess];
  v13 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.sonic.backgroundtask" name:@"SonicBackgroundTask"];
  v46[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];

  v15 = [objc_alloc(MEMORY[0x1E69C7548]) initWithExplanation:nameCopy target:currentProcess attributes:v14];
  v16 = __assertion_5809;
  __assertion_5809 = v15;

  date2 = [MEMORY[0x1E695DF00] date];
  [date2 timeIntervalSince1970];
  __assertionCreatedTime = v18;

  v40 = 0;
  v19 = [__assertion_5809 acquireWithError:&v40];
  v20 = v40;
  v21 = os_log_create("com.apple.amp.MediaServices", "Default");
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v43 = __assertion_5809;
      v44 = 2114;
      v45 = v20;
      _os_log_impl(&dword_1AC81F000, v22, OS_LOG_TYPE_ERROR, "[MSVSonicAssertion] Failed to acquire RBSAssertion %p error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v43 = __assertion_5809;
      _os_log_impl(&dword_1AC81F000, v22, OS_LOG_TYPE_DEFAULT, "[MSVSonicAssertion] Acquired RBSAssertion %p", buf, 0xCu);
    }

    v23 = __assertion_5809;
    v22 = +[MSVSonicAssertion sharedObserver];
    v24 = v23;
    v8 = 0x1E7981000uLL;
    [v24 addObserver:v22];
  }

  if (v7)
  {
    if ([v7 isValid])
    {
      v25 = os_log_create("com.apple.amp.MediaServices", "Default");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v43 = v7;
        _os_log_impl(&dword_1AC81F000, v25, OS_LOG_TYPE_DEFAULT, "[MSVSonicAssertion] Invalidating existing RBSAssertion %p", buf, 0xCu);
      }
    }

    [v7 invalidate];
  }

  if (v19)
  {
LABEL_18:
    ++__assertionCount_5804;
    v26 = 1;
  }

  else
  {
    v27 = __assertion_5809;
    __assertion_5809 = 0;

    v26 = 0;
  }

  if ([*(v8 + 520) shouldAlsoUseOSTransaction])
  {
    if (__transaction)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v28 == 1)
    {
      [nameCopy UTF8String];
      v29 = os_transaction_create();
      v30 = __transaction;
      __transaction = v29;

      v31 = os_log_create("com.apple.amp.MediaServices", "Default");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v43 = __transaction;
        _os_log_impl(&dword_1AC81F000, v31, OS_LOG_TYPE_DEFAULT, "[MSVSonicAssertion] Created os_transaction %p", buf, 0xCu);
      }
    }

    else
    {
      if (__transaction)
      {
        v32 = v26;
      }

      else
      {
        v32 = 1;
      }

      if (v32)
      {
        goto LABEL_35;
      }

      v33 = os_log_create("com.apple.amp.MediaServices", "Default");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v43 = __transaction;
        _os_log_impl(&dword_1AC81F000, v33, OS_LOG_TYPE_DEFAULT, "[MSVSonicAssertion] Releasing os_transaction %p", buf, 0xCu);
      }

      v31 = __transaction;
      __transaction = 0;
    }
  }

LABEL_35:
  os_unfair_lock_unlock(&__assertionLock_5803);
  if (!v26)
  {

    v37 = 0;
    goto LABEL_39;
  }

  v34 = [nameCopy copy];
  name = v5->_name;
  v5->_name = v34;

  v5->_needsInvalidation = 1;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v5 selector:sel_handleInvalidation_ name:@"MSVSonicAssertionsWereInvalidatedNotification" object:0];

LABEL_37:
  v37 = v5;
LABEL_39:

  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

@end