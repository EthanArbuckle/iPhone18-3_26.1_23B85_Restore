@interface HFSmokeAlarmStatusItem
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3;
@end

@implementation HFSmokeAlarmStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{a3, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"smoke.fill" configuration:v3];

  return v4;
}

@end