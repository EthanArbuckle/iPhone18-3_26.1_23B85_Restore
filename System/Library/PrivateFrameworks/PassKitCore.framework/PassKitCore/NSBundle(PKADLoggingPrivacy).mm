@interface NSBundle(PKADLoggingPrivacy)
- (__CFString)PKSanitizedBundleIdentifier;
@end

@implementation NSBundle(PKADLoggingPrivacy)

- (__CFString)PKSanitizedBundleIdentifier
{
  bundleIdentifier = [self bundleIdentifier];
  if (([(__CFString *)bundleIdentifier hasPrefix:@"com.apple."]& 1) == 0)
  {

    bundleIdentifier = @"thirdparty";
  }

  return bundleIdentifier;
}

@end