@interface NSBundle(IC)
- (uint64_t)ic_canEditNotes;
- (uint64_t)ic_isAppExtension;
@end

@implementation NSBundle(IC)

- (uint64_t)ic_isAppExtension
{
  v1 = [a1 infoDictionary];
  v2 = [v1 allKeys];
  v3 = [v2 containsObject:@"NSExtension"];

  return v3;
}

- (uint64_t)ic_canEditNotes
{
  v2 = [a1 bundleIdentifier];
  v3 = ICNotesAppBundleIdentifier();
  if ([v2 isEqual:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 bundleIdentifier];
    v6 = ICEditorExtensionBundleIdentifier();
    v4 = [v5 isEqual:v6];
  }

  return v4;
}

@end