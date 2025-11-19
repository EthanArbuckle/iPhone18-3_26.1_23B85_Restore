@interface HKMCCycleTimelinePillConfiguration
+ (id)pillConfigurationWithWidth:(double)a3 spacing:(double)a4;
@end

@implementation HKMCCycleTimelinePillConfiguration

+ (id)pillConfigurationWithWidth:(double)a3 spacing:(double)a4
{
  v6 = objc_alloc_init(HKMCCycleTimelinePillConfiguration);
  v6->_width = a3;
  v6->_spacing = a4;

  return v6;
}

@end