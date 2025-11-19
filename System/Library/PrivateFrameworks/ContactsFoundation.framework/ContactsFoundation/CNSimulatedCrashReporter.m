@interface CNSimulatedCrashReporter
+ (id)os_log;
+ (void)simulateCrashWithCode:(int64_t)a3 description:(id)a4;
+ (void)simulateCrashWithMessage:(id)a3;
@end

@implementation CNSimulatedCrashReporter

+ (void)simulateCrashWithMessage:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [a1 simulateCrashWithCode:732802011 description:v6];
}

+ (void)simulateCrashWithCode:(int64_t)a3 description:(id)a4
{
  v6 = a4;
  if (softLinkSimulateCrashAvailable_onceToken != -1)
  {
    +[CNSimulatedCrashReporter simulateCrashWithCode:description:];
  }

  if (softLinkSimulateCrashAvailable_isAvailable)
  {
    v7 = softLinkSimulateCrash;
    v8 = getpid();
    v7(v8, a3, v6);
  }

  else
  {
    v9 = [a1 os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(CNSimulatedCrashReporter *)v6 simulateCrashWithCode:a3 description:v9];
    }

    v10 = [a1 os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [CNSimulatedCrashReporter simulateCrashWithCode:v10 description:?];
    }
  }
}

+ (id)os_log
{
  if (os_log_cn_once_token_3 != -1)
  {
    +[CNSimulatedCrashReporter os_log];
  }

  v3 = os_log_cn_once_object_3;

  return v3;
}

uint64_t __34__CNSimulatedCrashReporter_os_log__block_invoke()
{
  os_log_cn_once_object_3 = os_log_create("com.apple.contacts", "crash-reporter");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)simulateCrashWithCode:(NSObject *)a3 description:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 136315394;
  v7 = [a1 UTF8String];
  v8 = 2048;
  v9 = a2;
  _os_log_fault_impl(&dword_1859F0000, a3, OS_LOG_TYPE_FAULT, "[CRASH] %s (code 0x%llx)", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)simulateCrashWithCode:(NSObject *)a1 description:.cold.3(NSObject *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_1859F0000, a1, OS_LOG_TYPE_FAULT, "[CRASH] Backtrace: %@", &v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

@end