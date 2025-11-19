@interface _CDDeviceInfo
+ (BOOL)isRunningOnInternalBuild;
@end

@implementation _CDDeviceInfo

+ (BOOL)isRunningOnInternalBuild
{
  if (isRunningOnInternalBuild_onceToken != -1)
  {
    +[_CDDeviceInfo isRunningOnInternalBuild];
  }

  return isRunningOnInternalBuild_isInternalBuild;
}

@end