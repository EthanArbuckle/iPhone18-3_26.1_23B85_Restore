@interface LKPlatformSupport
+ (BOOL)isInternalBuild;
@end

@implementation LKPlatformSupport

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[LKPlatformSupport isInternalBuild];
  }

  return isInternalBuild_isInternalBuild;
}

void __36__LKPlatformSupport_isInternalBuild__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    isInternalBuild_isInternalBuild = CFEqual(v0, @"Internal") != 0;

    CFRelease(v1);
  }
}

@end