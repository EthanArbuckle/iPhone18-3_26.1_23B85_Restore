@interface DeviceDisplaySignal
- (id)featureValueForName:(id)name;
@end

@implementation DeviceDisplaySignal

- (id)featureValueForName:(id)name
{
  v3 = sub_1C4F01138();
  v5 = v4;

  v6 = sub_1C46C326C(v3, v5);

  return v6;
}

@end