@interface HKMedicalIDUIUtilities
+ (BOOL)isMessagesInstalled;
@end

@implementation HKMedicalIDUIUtilities

+ (BOOL)isMessagesInstalled
{
  v7 = *MEMORY[0x1E69E9840];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [defaultWorkspace applicationIsInstalled:@"com.apple.MobileSMS"];

  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B968];
  if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_INFO, "[MedicalIDUtilities] messages install state on current device is: %d", v6, 8u);
  }

  return v3;
}

@end