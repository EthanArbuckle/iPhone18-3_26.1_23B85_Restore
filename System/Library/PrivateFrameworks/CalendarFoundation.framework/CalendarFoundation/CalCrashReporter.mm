@interface CalCrashReporter
+ (void)simulateCrashWithMessage:(id)a3;
@end

@implementation CalCrashReporter

+ (void)simulateCrashWithMessage:(id)a3
{
  v3 = a3;
  v4 = EKWeakLinkSymbol("SimulateCrash", 0xCuLL);
  v5 = +[CalFoundationLogSubsystem defaultCategory];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CalCrashReporter *)v3 simulateCrashWithMessage:v6];
    }

    v7 = getpid();
    v4(v7, 516869835, v3);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CalCrashReporter *)v3 simulateCrashWithMessage:v6];
    }
  }
}

+ (void)simulateCrashWithMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "Simulating crash report with message: [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)simulateCrashWithMessage:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "SimulateCrash";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Will not simulate crash report because the [%s] function couldn't be loaded.  Given crash report message: [%@]", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end