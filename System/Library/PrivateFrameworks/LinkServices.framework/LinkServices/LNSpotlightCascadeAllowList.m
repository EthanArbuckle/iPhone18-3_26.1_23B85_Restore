@interface LNSpotlightCascadeAllowList
+ (BOOL)isAllowedClientBundleIdentifier:(id)a3;
@end

@implementation LNSpotlightCascadeAllowList

+ (BOOL)isAllowedClientBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"com.apple.mail"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"com.apple.mobilemail"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isEqual:@"com.apple.MobileSMS"] ^ 1;
  }

  return v4;
}

@end