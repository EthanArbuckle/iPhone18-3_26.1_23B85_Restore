@interface IRPlatformInfo
+ (BOOL)isInternalInstall;
+ (BOOL)isRunningInUnitTesting;
@end

@implementation IRPlatformInfo

+ (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken != -1)
  {
    +[IRPlatformInfo isInternalInstall];
  }

  return isInternalInstall_sIsInternalInstall;
}

+ (BOOL)isRunningInUnitTesting
{
  if (isRunningInUnitTesting_onceToken != -1)
  {
    +[IRPlatformInfo isRunningInUnitTesting];
  }

  return 0;
}

void __35__IRPlatformInfo_isInternalInstall__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  [@"com.apple.IntelligentRouting" UTF8String];
  isInternalInstall_sIsInternalInstall = os_variant_has_internal_content();
  v0 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    if (isInternalInstall_sIsInternalInstall)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEFAULT, "sIsInternalInstall %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end