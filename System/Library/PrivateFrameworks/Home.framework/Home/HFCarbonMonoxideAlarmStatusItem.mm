@interface HFCarbonMonoxideAlarmStatusItem
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3;
@end

@implementation HFCarbonMonoxideAlarmStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{a3, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"carbon.monoxide.cloud.fill" configuration:v3];

  return v4;
}

@end