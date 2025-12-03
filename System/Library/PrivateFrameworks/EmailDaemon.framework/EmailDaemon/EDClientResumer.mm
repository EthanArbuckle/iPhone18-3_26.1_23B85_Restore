@interface EDClientResumer
+ (id)log;
+ (id)signpostLog;
- (EDClientResumer)initWithClientBundleIdentifier:(id)identifier hookRegistry:(id)registry clientState:(id)state;
- (unint64_t)signpostID;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)dealloc;
- (void)invalidate;
- (void)resumeForUpdates;
@end

@implementation EDClientResumer

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__EDClientResumer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_24 != -1)
  {
    dispatch_once(&log_onceToken_24, block);
  }

  v2 = log_log_24;

  return v2;
}

void __22__EDClientResumer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_24;
  log_log_24 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__EDClientResumer_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken != -1)
  {
    dispatch_once(&signpostLog_onceToken, block);
  }

  v2 = signpostLog_log;

  return v2;
}

void __30__EDClientResumer_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log;
  signpostLog_log = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDClientResumer)initWithClientBundleIdentifier:(id)identifier hookRegistry:(id)registry clientState:(id)state
{
  identifierCopy = identifier;
  registryCopy = registry;
  stateCopy = state;
  v21.receiver = self;
  v21.super_class = EDClientResumer;
  v11 = [(EDClientResumer *)&v21 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    bundleID = v11->_bundleID;
    v11->_bundleID = v12;

    objc_storeStrong(&v11->_clientState, state);
    objc_storeStrong(&v11->_hookRegistry, registry);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.maild.EDClientResumer", v14);
    queue = v11->_queue;
    v11->_queue = v15;

    v17 = [MEMORY[0x1E699B978] dispatchQueueSchedulerWithQueue:v11->_queue];
    scheduler = v11->_scheduler;
    v11->_scheduler = v17;

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v19 = v11->_queue;
      EFRegisterContentProtectionObserver();
    }

    [(EDPersistenceHookRegistry *)v11->_hookRegistry registerProtectedDataReconciliationHookResponder:v11];
  }

  return v11;
}

- (void)dealloc
{
  EFUnregisterContentProtectionObserver();
  v3.receiver = self;
  v3.super_class = EDClientResumer;
  [(EDClientResumer *)&v3 dealloc];
}

- (void)resumeForUpdates
{
  v19 = *MEMORY[0x1E69E9840];
  if (([(EDClientStateReporting *)self->_clientState isForeground]& 1) != 0 || [(EDClientStateReporting *)self->_clientState isRunningTests])
  {
    v3 = +[EDClientResumer log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = self->_bundleID;
      *buf = 138543362;
      v18 = bundleID;
      v5 = "resumeForUpdates - Not Resuming client because device is either in foreground already or running PPT tests: %{public}@";
LABEL_5:
      _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
    }
  }

  else
  {
    if ((_os_feature_enabled_impl() & 1) == 0 && (EFProtectedDataAvailable() & 1) == 0)
    {
      v3 = +[EDClientResumer log];
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v13 = self->_bundleID;
      *buf = 138543362;
      v18 = v13;
      v5 = "resumeForUpdates - Not Resuming client because device is locked: %{public}@";
      goto LABEL_5;
    }

    v6 = +[EDClientResumer log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_bundleID;
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "resumeForUpdates - Resuming client: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E699FB70];
    v15 = *MEMORY[0x1E699F8E8];
    v16 = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v3 = [v8 optionsWithDictionary:v9];

    serviceWithDefaultShellEndpoint = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
    v11 = self->_bundleID;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35__EDClientResumer_resumeForUpdates__block_invoke;
    v14[3] = &unk_1E8251AA0;
    v14[4] = self;
    [serviceWithDefaultShellEndpoint openApplication:v11 withOptions:v3 completion:v14];
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

void __35__EDClientResumer_resumeForUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[EDClientResumer log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Resumed process:%@", buf, 0xCu);
    }

    v8 = *(*(a1 + 32) + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35__EDClientResumer_resumeForUpdates__block_invoke_13;
    v14[3] = &unk_1E8250128;
    v9 = v5;
    v10 = *(a1 + 32);
    v15 = v9;
    v16 = v10;
    [v8 performBlock:v14];
    v11 = v15;
  }

  else
  {
    v11 = +[EDClientResumer log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 ef_publicDescription];
      __35__EDClientResumer_resumeForUpdates__block_invoke_cold_1(v12, buf, v11);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __35__EDClientResumer_resumeForUpdates__block_invoke_13(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:objc_msgSend(*(a1 + 32) flags:"pid") reason:35 name:{4, @"ClientResumeAssertion"}];
  v3 = +[EDClientResumer signpostLog];
  v4 = os_signpost_id_generate(v3);

  if ([v2 acquire])
  {
    v5 = +[EDClientResumer log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = @"ClientResumeAssertion";
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Acquired BKSProcessAssertion: %{public}@", buf, 0xCu);
    }

    v6 = +[EDClientResumer signpostLog];
    v7 = v6;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = *(*(a1 + 40) + 8);
      *buf = 138543362;
      v19 = v8;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "BKSProcessAssertion", "Start BKSProcessAssertion for %{public}@", buf, 0xCu);
    }

    v9 = *(*(a1 + 40) + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35__EDClientResumer_resumeForUpdates__block_invoke_15;
    v14[3] = &unk_1E8251A78;
    v10 = v2;
    v11 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    v17 = v4;
    v12 = [v9 afterDelay:v14 performBlock:5.0];
    [*(*(a1 + 40) + 16) invalidate];
    objc_storeStrong((*(a1 + 40) + 16), v2);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __35__EDClientResumer_resumeForUpdates__block_invoke_15(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  if (v3 == *(a1 + 32))
  {
    *(v2 + 16) = 0;
  }

  v4 = +[EDClientResumer log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = @"ClientResumeAssertion";
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Invalidated BKSProcessAssertion: %{public}@", &v10, 0xCu);
  }

  v5 = +[EDClientResumer signpostLog];
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = *(*(a1 + 40) + 8);
    v10 = 138543362;
    v11 = v8;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v6, OS_SIGNPOST_INTERVAL_END, v7, "BKSProcessAssertion", "End BKSProcessAssertion for %{public}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[EDClientResumer log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = self->_bundleID;
    v6 = 138543362;
    v7 = bundleID;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating EDobserverResumer:%{public}@", &v6, 0xCu);
  }

  EFUnregisterContentProtectionObserver();
  [(EDPersistenceHookRegistry *)self->_hookRegistry unregisterHookResponder:self];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  v11 = *MEMORY[0x1E69E9840];
  if ((changed - 1) <= 1 && self->_assertion != 0)
  {
    v6 = +[EDClientResumer log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = @"ClientResumeAssertion";
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Releasing BKSProcessAssertion as device is locking/locked: %{public}@", &v9, 0xCu);
    }

    [(BKSProcessAssertion *)self->_assertion invalidate];
    assertion = self->_assertion;
    self->_assertion = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __35__EDClientResumer_resumeForUpdates__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Resumed process failed with error %{public}@", buf, 0xCu);
}

@end