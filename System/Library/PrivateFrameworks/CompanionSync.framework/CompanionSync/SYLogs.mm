@interface SYLogs
+ (id)logFolder;
+ (void)initialize;
@end

@implementation SYLogs

+ (void)initialize
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = @"SyncErrorAlert";
    v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v11[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [standardUserDefaults registerDefaults:v4];

    v8 = @"Pumbaa";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v9 = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [standardUserDefaults registerDefaults:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)logFolder
{
  if (logFolder_onceToken != -1)
  {
    +[SYLogs logFolder];
  }

  v3 = logFolder___folder;

  return v3;
}

uint64_t __19__SYLogs_logFolder__block_invoke()
{
  v0 = MGGetBoolAnswer();
  v1 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CompanionSync";
  if (v0)
  {
    v1 = @"/var/mobile/Library/Logs/CompanionSync";
  }

  logFolder___folder = v1;

  return MEMORY[0x1EEE66BB8]();
}

@end