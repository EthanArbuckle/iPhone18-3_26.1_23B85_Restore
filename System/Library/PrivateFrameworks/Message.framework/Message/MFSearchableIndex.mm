@interface MFSearchableIndex
@end

@implementation MFSearchableIndex

void __28__MFSearchableIndex_iOS_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_30;
  log_log_30 = v1;
}

void __49__MFSearchableIndex_iOS_dataSourceRefreshReasons__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"MonitoredActivityReasonCompacting";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = dataSourceRefreshReasons_reasons;
  dataSourceRefreshReasons_reasons = v1;

  v3 = *MEMORY[0x1E69E9840];
}

void __37__MFSearchableIndex_iOS_purgeReasons__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"MonitoredActivityReasonCompacting";
  v4[1] = @"MonitoredActivityReasonMoving";
  v4[2] = @"MonitoredActivityReasonArchiving";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = purgeReasons_reasons;
  purgeReasons_reasons = v1;

  v3 = *MEMORY[0x1E69E9840];
}

void __41__MFSearchableIndex_iOS_exclusionReasons__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"MonitoredActivityReasonDeleting";
  v4[1] = @"MonitoredActivityReasonJunking";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = exclusionReasons_reasons;
  exclusionReasons_reasons = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end