@interface HFCarbonMonoxideAlarmStatusItem
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
@end

@implementation HFCarbonMonoxideAlarmStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{objects, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"carbon.monoxide.cloud.fill" configuration:v3];

  return v4;
}

@end