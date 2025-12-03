@interface _FPDExtensionRequestRecord
- (FPXPCAutomaticErrorProxy)proxy;
- (_FPDExtensionRequestRecord)initWithSelector:(SEL)selector proxy:(id)proxy timeout:(double)timeout queue:(id)queue log:(id)log timeoutHandler:(id)handler;
- (const)_timeoutExpirationState;
- (id)description;
- (void)_handleTimeout;
- (void)_setupProgressTimer;
- (void)_setupTimer:(double)timer;
- (void)cancelTimeout;
- (void)monitorProgress:(id)progress;
@end

@implementation _FPDExtensionRequestRecord

- (void)cancelTimeout
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v6 = self->_progressTimer;
    self->_progressTimer = 0;
  }

  fractionCompletedObservation = self->_fractionCompletedObservation;
  if (fractionCompletedObservation)
  {
    [(NSObservation *)fractionCompletedObservation finishObserving];
    v8 = self->_fractionCompletedObservation;
    self->_fractionCompletedObservation = 0;
  }
}

- (FPXPCAutomaticErrorProxy)proxy
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

- (_FPDExtensionRequestRecord)initWithSelector:(SEL)selector proxy:(id)proxy timeout:(double)timeout queue:(id)queue log:(id)log timeoutHandler:(id)handler
{
  proxyCopy = proxy;
  queueCopy = queue;
  logCopy = log;
  handlerCopy = handler;
  v26.receiver = self;
  v26.super_class = _FPDExtensionRequestRecord;
  v18 = [(_FPDExtensionRequestRecord *)&v26 init];
  v19 = v18;
  if (v18)
  {
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v18->_selector = selectorCopy;
    objc_storeWeak(&v18->_proxy, proxyCopy);
    if (timeout > 0.0)
    {
      v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:timeout];
      timeout = v19->_timeout;
      v19->_timeout = v21;
    }

    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v19->_log, log);
    v23 = _Block_copy(handlerCopy);
    handler = v19->_handler;
    v19->_handler = v23;

    [(_FPDExtensionRequestRecord *)v19 _setupTimer:timeout];
  }

  return v19;
}

- (void)monitorProgress:(id)progress
{
  progressCopy = progress;
  v5 = progressCopy;
  if (self->_timeout)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46___FPDExtensionRequestRecord_monitorProgress___block_invoke;
    v7[3] = &unk_1E83BE158;
    v7[4] = self;
    v8 = progressCopy;
    dispatch_async(queue, v7);
  }
}

- (void)_handleTimeout
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: hard expiration reached, cancelling progress", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_setupTimer:(double)timer
{
  if (!self->_handler)
  {
    timer = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ setting up timer without a timeout handler", timer];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("-[_FPDExtensionRequestRecord _setupTimer:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionRequestRecord.m", 116, [timer UTF8String]);
  }

  if (timer > 0.0)
  {
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    timer = self->_timer;
    self->_timer = v5;

    v7 = self->_timer;
    v8 = dispatch_time(0, (timer * 1000000000.0));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    v9 = self->_timer;
    dispatch_set_qos_class_fallback();
    objc_initWeak(&location, self);
    v10 = self->_timer;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42___FPDExtensionRequestRecord__setupTimer___block_invoke;
    v15[3] = &unk_1E83BE0B8;
    objc_copyWeak(&v16, &location);
    v11 = v10;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v15);
    dispatch_source_set_event_handler(v11, v12);

    dispatch_resume(self->_timer);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)_setupProgressTimer
{
  if (!self->_handler)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ setting up timer without a timeout handler"];
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("-[_FPDExtensionRequestRecord _setupProgressTimer]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionRequestRecord.m", 144, [v16 UTF8String]);
  }

  v3 = +[FPDConfigurationStore defaultStore];
  [v3 upcallExcutionTimeLimitStaleProgress];
  v5 = v4;
  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v7 = self->_progressTimer;
    self->_progressTimer = 0;
  }

  if (v5 > 0.0)
  {
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    v9 = self->_progressTimer;
    self->_progressTimer = v8;

    v10 = self->_progressTimer;
    v11 = dispatch_time(0, ((v5 + 5.0) * 1000000000.0));
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    v12 = self->_progressTimer;
    dispatch_set_qos_class_fallback();
    objc_initWeak(&location, self);
    v13 = self->_progressTimer;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49___FPDExtensionRequestRecord__setupProgressTimer__block_invoke;
    v18[3] = &unk_1E83BE0B8;
    objc_copyWeak(&v19, &location);
    v14 = v13;
    v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v18);
    dispatch_source_set_event_handler(v14, v15);

    dispatch_resume(self->_progressTimer);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (const)_timeoutExpirationState
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    timeoutState = [WeakRetained timeoutState];
    v5 = "not expired";
    if (timeoutState == 1)
    {
      v5 = "soft expired";
    }

    if (timeoutState == 2)
    {
      v6 = "hard expired";
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = "no proxy";
  }

  return v6;
}

- (id)description
{
  progress = self->_progress;
  if (progress)
  {
    v4 = MEMORY[0x1E696AEC0];
    [(NSProgress *)progress fractionCompleted];
    v6 = [v4 stringWithFormat:@"%.1f%%", v5 * 100.0];
  }

  else
  {
    v6 = @"no progress";
  }

  selector = self->_selector;
  v8 = MEMORY[0x1E696AEC0];
  if (self->_timeout)
  {
    if (selector)
    {
      v9 = self->_selector;
    }

    else
    {
      v9 = 0;
    }

    v11 = NSStringFromSelector(v9);
    [v8 stringWithFormat:@"%@ (%@ - %s), %@", v11, self->_timeout, -[_FPDExtensionRequestRecord _timeoutExpirationState](self, "_timeoutExpirationState"), v6];
  }

  else
  {
    if (selector)
    {
      v10 = self->_selector;
    }

    else
    {
      v10 = 0;
    }

    v11 = NSStringFromSelector(v10);
    [v8 stringWithFormat:@"%@ (no timeout), %@", v11, v6, v14, v15];
  }
  v12 = ;

  return v12;
}

@end