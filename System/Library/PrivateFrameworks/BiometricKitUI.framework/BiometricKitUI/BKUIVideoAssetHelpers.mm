@interface BKUIVideoAssetHelpers
+ (id)iPadVideoURLForAssetName:(id)name;
@end

@implementation BKUIVideoAssetHelpers

+ (id)iPadVideoURLForAssetName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:nameCopy withExtension:@"mov" subdirectory:@"iPad_videos"];

  return v6;
}

@end