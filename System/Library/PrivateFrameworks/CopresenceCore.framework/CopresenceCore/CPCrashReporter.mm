@interface CPCrashReporter
+ (void)simulateCrashReportWithFormat:(id)a3;
@end

@implementation CPCrashReporter

uint64_t (*__58__CPCrashReporter_simulateCrashReportWithReason_pid_code___block_invoke())(void, void, void)
{
  result = CUTWeakLinkSymbol();
  simulateCrashReportWithReason_pid_code___SimulateCrash = result;
  return result;
}

+ (void)simulateCrashReportWithFormat:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [a1 simulateCrashReportWithReason:v6 pid:getpid() code:14593455];
}

+ (void)simulateCrashReportWithReason:pid:code:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1AEB26000, v0, OS_LOG_TYPE_FAULT, "%s Wanted to file a simulated crash report for reason: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)simulateCrashReportWithReason:pid:code:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AEB26000, v0, OS_LOG_TYPE_ERROR, "%s Simulated a crash report for reason: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end