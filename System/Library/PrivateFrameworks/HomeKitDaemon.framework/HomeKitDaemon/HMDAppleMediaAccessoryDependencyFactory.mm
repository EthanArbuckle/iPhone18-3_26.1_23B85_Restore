@interface HMDAppleMediaAccessoryDependencyFactory
- (id)deviceForIDSIdentifier:(id)a3;
- (id)deviceWithAddress:(id)a3;
- (id)symptomsHandlerForAccessory:(id)a3;
@end

@implementation HMDAppleMediaAccessoryDependencyFactory

- (id)symptomsHandlerForAccessory:(id)a3
{
  v3 = a3;
  v4 = [[HMDAccessorySymptomHandler alloc] initWithAccessory:v3];

  return v4;
}

- (id)deviceForIDSIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[HMDAccountRegistry sharedRegistry];
  v5 = [v4 deviceForIDSIdentifier:v3];

  return v5;
}

- (id)deviceWithAddress:(id)a3
{
  v3 = a3;
  v4 = +[HMDAccountRegistry sharedRegistry];
  v5 = [v4 deviceForAddress:v3];

  return v5;
}

@end