@interface FSFDeviceInfo
+ (BOOL)isRunningOnInternalBuild;
@end

@implementation FSFDeviceInfo

+ (BOOL)isRunningOnInternalBuild
{
  if (isRunningOnInternalBuild_onceToken != -1)
  {
    +[FSFDeviceInfo isRunningOnInternalBuild];
  }

  return isRunningOnInternalBuild_isInternalBuild;
}

uint64_t __41__FSFDeviceInfo_isRunningOnInternalBuild__block_invoke()
{
  result = os_variant_has_internal_content();
  isRunningOnInternalBuild_isInternalBuild = result;
  return result;
}

@end