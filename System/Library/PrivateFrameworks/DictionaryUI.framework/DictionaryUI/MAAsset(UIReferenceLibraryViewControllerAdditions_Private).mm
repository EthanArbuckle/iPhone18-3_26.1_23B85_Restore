@interface MAAsset(UIReferenceLibraryViewControllerAdditions_Private)
- (uint64_t)_contentVersion;
- (uint64_t)_formatVersion;
@end

@implementation MAAsset(UIReferenceLibraryViewControllerAdditions_Private)

- (uint64_t)_formatVersion
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"_CompatibilityVersion"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (uint64_t)_contentVersion
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"_ContentVersion"];
  integerValue = [v2 integerValue];

  return integerValue;
}

@end