@interface CTUtilities
+ (BOOL)isClassCLocked;
@end

@implementation CTUtilities

+ (BOOL)isClassCLocked
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    return 0;
  }

  v3 = MGCopyAnswer();
  v2 = v3 == *MEMORY[0x277CBED28];
  if (v3)
  {
    CFRelease(v3);
  }

  else
  {
    v4 = +[CTLogging contextKitHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_24331E000, v4, OS_LOG_TYPE_INFO, "No response from MobileGestalt.", v6, 2u);
    }
  }

  return v2;
}

@end