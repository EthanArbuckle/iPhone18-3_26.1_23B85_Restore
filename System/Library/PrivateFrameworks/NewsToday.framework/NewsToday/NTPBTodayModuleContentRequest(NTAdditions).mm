@interface NTPBTodayModuleContentRequest(NTAdditions)
- (id)identifier;
@end

@implementation NTPBTodayModuleContentRequest(NTAdditions)

- (id)identifier
{
  v2 = MEMORY[0x277CCACA8];
  moduleDescriptorType = [self moduleDescriptorType];
  tagID = [self tagID];
  v5 = [v2 stringWithFormat:@"%d-%@", moduleDescriptorType, tagID];

  return v5;
}

@end