@interface AppLaunchSignal
- (id)featureValueForName:(id)name;
@end

@implementation AppLaunchSignal

- (id)featureValueForName:(id)name
{
  v3 = sub_1C4F01138();
  v5 = v4;

  v6 = sub_1C4595D7C(v3, v5);

  return v6;
}

@end