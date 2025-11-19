@interface AITransactionLog
+ (id)_defaultLog;
+ (void)_defaultLog;
+ (void)initializeWithLog:(id)a3;
+ (void)logStep:(unint64_t)a3 byParty:(unint64_t)a4 phase:(unint64_t)a5 success:(BOOL)a6 forBundleID:(id)a7 persona:(id)a8 description:(id)a9;
- (id)_initWithLog:(id)a3;
- (void)_logScenario:(id)a3 step:(unint64_t)a4 success:(BOOL)a5 forBundleID:(id)a6 persona:(id)a7 description:(id)a8;
@end

@implementation AITransactionLog

+ (void)initializeWithLog:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AITransactionLog_initializeWithLog___block_invoke;
  block[3] = &unk_1E80B9F00;
  v7 = v3;
  v4 = initializeWithLog__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&initializeWithLog__onceToken, block);
  }
}

uint64_t __38__AITransactionLog_initializeWithLog___block_invoke(uint64_t a1)
{
  v1 = [[AITransactionLog alloc] _initWithLog:*(a1 + 32)];
  v2 = __defaultLog;
  __defaultLog = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (void)logStep:(unint64_t)a3 byParty:(unint64_t)a4 phase:(unint64_t)a5 success:(BOOL)a6 forBundleID:(id)a7 persona:(id)a8 description:(id)a9
{
  v10 = a6;
  v33 = *MEMORY[0x1E69E9840];
  v14 = a7;
  v15 = a8;
  v16 = a9;
  if (logStep_byParty_phase_success_forBundleID_persona_description__onceToken != -1)
  {
    +[AITransactionLog logStep:byParty:phase:success:forBundleID:persona:description:];
  }

  v17 = logStep_byParty_phase_success_forBundleID_persona_description__sharedLog;
  if (os_log_type_enabled(logStep_byParty_phase_success_forBundleID_persona_description__sharedLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138544898;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2048;
    v24 = a4;
    v25 = 2048;
    v26 = a3;
    v27 = 2048;
    v28 = a5;
    v29 = 1024;
    v30 = v10;
    v31 = 2114;
    v32 = v16;
    _os_log_impl(&dword_1BF34F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@:%lu:%lu:%lu:%u:%{public}@", &v19, 0x44u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __82__AITransactionLog_logStep_byParty_phase_success_forBundleID_persona_description___block_invoke()
{
  v0 = os_log_create("com.apple.appinstallation", "TransactionLog");
  v1 = logStep_byParty_phase_success_forBundleID_persona_description__sharedLog;
  logStep_byParty_phase_success_forBundleID_persona_description__sharedLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_initWithLog:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AITransactionLog;
  v6 = [(AITransactionLog *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, a3);
  }

  return v7;
}

+ (id)_defaultLog
{
  v5 = __defaultLog;
  if (__defaultLog)
  {
  }

  else
  {
    v7[1] = v2;
    v8 = v3;
    +[(AITransactionLog *)a2];
    v5 = v7[0];
  }

  return v5;
}

- (void)_logScenario:(id)a3 step:(unint64_t)a4 success:(BOOL)a5 forBundleID:(id)a6 persona:(id)a7 description:(id)a8
{
  v11 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = [a3 UTF8String];
  v20 = [v18 UTF8String];

  v21 = [v17 UTF8String];
  v22 = [v16 UTF8String];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v24 = "_";
    if (v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = "_";
    }

    v30 = 136316418;
    if (v21)
    {
      v26 = v21;
    }

    else
    {
      v26 = "_";
    }

    if (v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = "_";
    }

    v31 = v27;
    v32 = 2080;
    v33 = v26;
    if (v19)
    {
      v24 = v19;
    }

    v34 = 2080;
    v35 = v24;
    v28 = "Success";
    v36 = 2048;
    v37 = a4;
    if (!v11)
    {
      v28 = "Fail";
    }

    v38 = 2080;
    v39 = v28;
    v40 = 2080;
    v41 = v25;
    _os_log_impl(&dword_1BF34F000, log, OS_LOG_TYPE_DEFAULT, "%s:%s:%s:%ld:%s:%s", &v30, 0x3Eu);
  }

  v29 = *MEMORY[0x1E69E9840];
}

+ (void)_defaultLog
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"AITransactionLog.m" lineNumber:63 description:@"Transaction log must be initialized before use. Please call +[AITransactionLog initializeWithLog:]."];

  *a3 = __defaultLog;
}

@end