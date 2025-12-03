@interface NSArray(_CDSiriLearningSettings)
- (BOOL)_cd_containsSiriLearningBundleId:()_CDSiriLearningSettings;
@end

@implementation NSArray(_CDSiriLearningSettings)

- (BOOL)_cd_containsSiriLearningBundleId:()_CDSiriLearningSettings
{
  v4 = a3;
  v5 = [self indexOfObject:v4 inSortedRange:0 options:objc_msgSend(self usingComparator:{"count"), 0, &__block_literal_global_35}];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

@end