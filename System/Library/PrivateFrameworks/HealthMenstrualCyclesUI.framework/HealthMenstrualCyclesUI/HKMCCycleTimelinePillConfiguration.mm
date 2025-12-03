@interface HKMCCycleTimelinePillConfiguration
+ (id)pillConfigurationWithWidth:(double)width spacing:(double)spacing;
@end

@implementation HKMCCycleTimelinePillConfiguration

+ (id)pillConfigurationWithWidth:(double)width spacing:(double)spacing
{
  v6 = objc_alloc_init(HKMCCycleTimelinePillConfiguration);
  v6->_width = width;
  v6->_spacing = spacing;

  return v6;
}

@end