@interface DOCFeature(UI)
+ (uint64_t)folderCustomizationEnabled;
@end

@implementation DOCFeature(UI)

+ (uint64_t)folderCustomizationEnabled
{
  folderCustomization = [MEMORY[0x277D06208] folderCustomization];
  if ([folderCustomization isEnabled])
  {
    v1 = 1;
  }

  else
  {
    v1 = _UISolariumFeatureFlagEnabled();
  }

  return v1;
}

@end