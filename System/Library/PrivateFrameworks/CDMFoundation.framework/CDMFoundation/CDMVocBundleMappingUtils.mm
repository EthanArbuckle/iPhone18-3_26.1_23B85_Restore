@interface CDMVocBundleMappingUtils
+ (id)mapVocGenericBundleIdToPlatformBundleId:(id)id;
@end

@implementation CDMVocBundleMappingUtils

+ (id)mapVocGenericBundleIdToPlatformBundleId:(id)id
{
  idCopy = id;
  if ([idCopy isEqualToString:@"com.apple.siri.applemusic"])
  {
    v4 = @"com.apple.Music";
  }

  else
  {
    v4 = @"com.apple.tv";
    if (([idCopy isEqualToString:@"com.apple.tv"] & 1) == 0)
    {
      v4 = @"com.apple.mobilemail";
      if (([idCopy isEqualToString:@"com.apple.mobilemail"] & 1) == 0)
      {
        v4 = @"com.apple.mobilesafari";
        if (([idCopy isEqualToString:@"com.apple.mobilesafari"] & 1) == 0)
        {
          v4 = @"com.apple.DocumentsApp";
          if (([idCopy isEqualToString:@"com.apple.DocumentsApp"] & 1) == 0)
          {
            if ([idCopy isEqualToString:@"com.apple.siri.clock"] & 1) != 0 || (objc_msgSend(idCopy, "isEqualToString:", @"com.apple.siri.timer"))
            {
              v4 = @"com.apple.mobiletimer";
            }

            else
            {
              v4 = @"com.apple.mobiletimer";
              if (([idCopy isEqualToString:@"com.apple.siri.alarms"] & 1) == 0 && !objc_msgSend(idCopy, "isEqualToString:", @"com.apple.siri.stopwatch"))
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