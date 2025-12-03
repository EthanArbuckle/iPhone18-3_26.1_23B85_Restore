@interface LNSpotlightCascadeAllowList
+ (BOOL)isAllowedClientBundleIdentifier:(id)identifier;
@end

@implementation LNSpotlightCascadeAllowList

+ (BOOL)isAllowedClientBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"com.apple.mail"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqual:", @"com.apple.mobilemail"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [identifierCopy isEqual:@"com.apple.MobileSMS"] ^ 1;
  }

  return v4;
}

@end