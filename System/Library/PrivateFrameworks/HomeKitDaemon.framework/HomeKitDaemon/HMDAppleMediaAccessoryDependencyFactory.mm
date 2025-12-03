@interface HMDAppleMediaAccessoryDependencyFactory
- (id)deviceForIDSIdentifier:(id)identifier;
- (id)deviceWithAddress:(id)address;
- (id)symptomsHandlerForAccessory:(id)accessory;
@end

@implementation HMDAppleMediaAccessoryDependencyFactory

- (id)symptomsHandlerForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = [[HMDAccessorySymptomHandler alloc] initWithAccessory:accessoryCopy];

  return v4;
}

- (id)deviceForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[HMDAccountRegistry sharedRegistry];
  v5 = [v4 deviceForIDSIdentifier:identifierCopy];

  return v5;
}

- (id)deviceWithAddress:(id)address
{
  addressCopy = address;
  v4 = +[HMDAccountRegistry sharedRegistry];
  v5 = [v4 deviceForAddress:addressCopy];

  return v5;
}

@end