@interface MSVTaskAssertion
- (BOOL)isValid;
- (MSVTaskAssertion)init;
- (id)description;
- (unsigned)_BSKReasonForMSVReason:(unint64_t)reason;
- (void)_cancelInvalidationTimerWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateOnDate:(id)date;
@end

@implementation MSVTaskAssertion

- (unsigned)_BSKReasonForMSVReason:(unint64_t)reason
{
  if (reason < 3)
  {
    return dword_1AC881CD8[reason];
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MSVTaskAssertion.m" lineNumber:236 description:@"Attempting to convert a non-existing MSVProcessAssertionReason value!"];

  return result;
}

- (void)_cancelInvalidationTimerWithCompletion:(id)completion
{
  v4 = [completion copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MSVTaskAssertion__cancelInvalidationTimerWithCompletion___block_invoke;
  v6[3] = &unk_1E7982B00;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __59__MSVTaskAssertion__cancelInvalidationTimerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (BOOL)isValid
{
  processAssertion = self->_processAssertion;
  if (processAssertion)
  {
    LOBYTE(processAssertion) = [(BKSProcessAssertion *)processAssertion valid];
  }

  return processAssertion;
}

- (void)invalidateOnDate:(id)date
{
  dateCopy = date;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MSVTaskAssertion_invalidateOnDate___block_invoke;
  v6[3] = &unk_1E7982B28;
  v6[4] = self;
  v7 = dateCopy;
  v5 = dateCopy;
  [(MSVTaskAssertion *)self _cancelInvalidationTimerWithCompletion:v6];
}

void __37__MSVTaskAssertion_invalidateOnDate___block_invoke(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_initWeak(&location, *(a1 + 32));
  [*(a1 + 40) timeIntervalSinceNow];
  v6 = dispatch_time(0, 1000000000 * v5);
  dispatch_source_set_timer(*(*(a1 + 32) + 40), v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v7 = *(*(a1 + 32) + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__MSVTaskAssertion_invalidateOnDate___block_invoke_2;
  v8[3] = &unk_1E7982AB0;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(*(*(a1 + 32) + 40));
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__MSVTaskAssertion_invalidateOnDate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEBUG, "Invalidating task assertion: %{public}@", &v7, 0xCu);
  }

  [(BKSProcessAssertion *)self->_processAssertion invalidate];
  [(MSVTaskAssertion *)self _cancelInvalidationTimerWithCompletion:0];
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, self);
    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  pid = self->_pid;
  bundleID = self->_bundleID;
  subsystem = self->_subsystem;
  name = self->_name;
  uuid = self->_uuid;
  isValid = [(MSVTaskAssertion *)self isValid];
  v11 = @"NO";
  if (isValid)
  {
    v11 = @"YES";
  }

  return [v3 stringWithFormat:@"%@ %p, bundleID = %@, pid = %lu, subsystem = %@, name = %@, uuid = %@, valid = %@>", v4, self, bundleID, pid, subsystem, name, uuid, v11];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_INFO, "Invalidating task assertion: %{public}@ (dealloc)", buf, 0xCu);
  }

  [(BKSProcessAssertion *)self->_processAssertion invalidate];
  invalidationTimer = self->_invalidationTimer;
  if (invalidationTimer)
  {
    dispatch_source_cancel(invalidationTimer);
  }

  v6.receiver = self;
  v6.super_class = MSVTaskAssertion;
  [(MSVTaskAssertion *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (MSVTaskAssertion)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = NSStringFromSelector(a2);
  v6 = NSStringFromSelector(sel_initWithName_bundleID_subsystem_reason_flags_);
  v7 = NSStringFromSelector(sel_initWithName_pid_subsystem_reason_flags_);
  [v3 raise:v4 format:{@"%@ is invalid. You must provide bundleID with %@ or a PID with %@.", v5, v6, v7}];

  return 0;
}

void __70__MSVTaskAssertion__initWithName_bundleID_pid_subsystem_reason_flags___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E695DF00] now];
    [v2 timeIntervalSinceReferenceDate];
    v4 = v3;

    v5 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4 - WeakRetained[7];
      v8 = 138412546;
      v9 = WeakRetained;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_DEFAULT, "Task assertion %@ was invalidated. duration=%f", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end