@interface NSBundle(PKADLoggingPrivacy)
- (__CFString)PKSanitizedBundleIdentifier;
@end

@implementation NSBundle(PKADLoggingPrivacy)

- (__CFString)PKSanitizedBundleIdentifier
{
  v1 = [a1 bundleIdentifier];
  if (([(__CFString *)v1 hasPrefix:@"com.apple."]& 1) == 0)
  {

    v1 = @"thirdparty";
  }

  return v1;
}

@end