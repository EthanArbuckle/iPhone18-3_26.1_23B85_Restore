@interface NSBundle(IC)
- (uint64_t)ic_canEditNotes;
- (uint64_t)ic_isAppExtension;
@end

@implementation NSBundle(IC)

- (uint64_t)ic_isAppExtension
{
  infoDictionary = [self infoDictionary];
  allKeys = [infoDictionary allKeys];
  v3 = [allKeys containsObject:@"NSExtension"];

  return v3;
}

- (uint64_t)ic_canEditNotes
{
  bundleIdentifier = [self bundleIdentifier];
  v3 = ICNotesAppBundleIdentifier();
  if ([bundleIdentifier isEqual:v3])
  {
    v4 = 1;
  }

  else
  {
    bundleIdentifier2 = [self bundleIdentifier];
    v6 = ICEditorExtensionBundleIdentifier();
    v4 = [bundleIdentifier2 isEqual:v6];
  }

  return v4;
}

@end