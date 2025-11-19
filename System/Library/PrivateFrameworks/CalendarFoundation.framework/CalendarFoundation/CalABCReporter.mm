@interface CalABCReporter
- (BOOL)rateLimitingAllowsABCReport;
- (CalABCReporter)initWithType:(id)a3 subtype:(id)a4 context:(id)a5;
- (void)report:(BOOL)a3;
@end

@implementation CalABCReporter

- (CalABCReporter)initWithType:(id)a3 subtype:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CalABCReporter;
  v11 = [(CalABCReporter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CalABCReporter *)v11 setType:v8];
    [(CalABCReporter *)v12 setSubtype:v9];
    [(CalABCReporter *)v12 setSubtypeContext:v10];
  }

  return v12;
}

- (void)report:(BOOL)a3
{
  v3 = a3;
  if ([(CalABCReporter *)self rateLimitingAllowsABCReport])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69D4F80]);
    v6 = [(CalABCReporter *)self domain];
    v7 = [(CalABCReporter *)self type];
    v8 = [(CalABCReporter *)self subtype];
    v9 = [(CalABCReporter *)self subtypeContext];
    v10 = [MEMORY[0x1E696AE30] processInfo];
    v11 = [v10 processName];
    v12 = [v5 signatureWithDomain:v6 type:v7 subType:v8 subtypeContext:v9 detectedProcess:v11 triggerThresholdValues:0];

    v13 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(CalABCReporter *)self report:v13];
    }

    v14 = 0;
    if (v3)
    {
      v14 = dispatch_semaphore_create(0);
    }

    events = self->_events;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __25__CalABCReporter_report___block_invoke;
    v18[3] = &unk_1E7EC6648;
    v20 = v3;
    v16 = v14;
    v19 = v16;
    [v5 snapshotWithSignature:v12 delay:events events:0 payload:0 actions:v18 reply:0.0];
    if (v3)
    {
      v17 = dispatch_time(0, 900000000000);
      dispatch_semaphore_wait(v16, v17);
    }
  }

  else
  {
    v5 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CalABCReporter *)self report:v5];
    }
  }
}

void __25__CalABCReporter_report___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __25__CalABCReporter_report___block_invoke_cold_1(v3, v4);
  }

  if (*(a1 + 40) == 1)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (BOOL)rateLimitingAllowsABCReport
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  os_unfair_lock_lock(&rateLimitingAllowsABCReport_lock);
  if (*&rateLimitingAllowsABCReport_lastABCReportTime == 0.0 || self->_ignoreRateLimiting || v4 - *&rateLimitingAllowsABCReport_lastABCReportTime > 86400.0)
  {
    rateLimitingAllowsABCReport_lastABCReportTime = *&v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&rateLimitingAllowsABCReport_lock);
  return v5;
}

- (void)report:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a1 domain];
  v5 = [a1 type];
  v6 = [a1 subtype];
  v7 = [a1 subtypeContext];
  v8 = [a1 events];
  OUTLINED_FUNCTION_0();
  v13 = v5;
  v14 = v9;
  v15 = v6;
  v16 = v9;
  v17 = v7;
  v18 = v9;
  v19 = v10;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Not reporting to ABC because we are rate limited: %@.%@.%@.%@ - %@", v12, 0x34u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)report:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [a1 domain];
  v5 = [a1 type];
  v6 = [a1 subtype];
  v7 = [a1 subtypeContext];
  OUTLINED_FUNCTION_0();
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v15 = v8;
  v16 = v9;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "Submitting snapshot request to ABC for signature: %@.%@.%@.%@", v11, 0x2Au);

  v10 = *MEMORY[0x1E69E9840];
}

void __25__CalABCReporter_report___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "Submitted diagnostic reporter snapshot request with reply: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end