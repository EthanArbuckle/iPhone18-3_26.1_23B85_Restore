@interface CDMVocBundleMappingUtils
+ (id)mapVocGenericBundleIdToPlatformBundleId:(id)a3;
@end

@implementation CDMVocBundleMappingUtils

+ (id)mapVocGenericBundleIdToPlatformBundleId:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.siri.applemusic"])
  {
    v4 = @"com.apple.Music";
  }

  else
  {
    v4 = @"com.apple.tv";
    if (([v3 isEqualToString:@"com.apple.tv"] & 1) == 0)
    {
      v4 = @"com.apple.mobilemail";
      if (([v3 isEqualToString:@"com.apple.mobilemail"] & 1) == 0)
      {
        v4 = @"com.apple.mobilesafari";
        if (([v3 isEqualToString:@"com.apple.mobilesafari"] & 1) == 0)
        {
          v4 = @"com.apple.DocumentsApp";
          if (([v3 isEqualToString:@"com.apple.DocumentsApp"] & 1) == 0)
          {
            if ([v3 isEqualToString:@"com.apple.siri.clock"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.siri.timer"))
            {
              v4 = @"com.apple.mobiletimer";
            }

            else
            {
              v4 = @"com.apple.mobiletimer";
              if (([v3 isEqualToString:@"com.apple.siri.alarms"] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", @"com.apple.siri.stopwatch"))
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

@end