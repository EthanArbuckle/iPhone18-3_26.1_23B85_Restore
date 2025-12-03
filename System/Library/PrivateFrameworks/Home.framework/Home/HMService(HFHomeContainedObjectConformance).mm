@interface HMService(HFHomeContainedObjectConformance)
- (BOOL)hf_isValidObject;
- (id)hf_parentRoom;
- (id)home;
@end

@implementation HMService(HFHomeContainedObjectConformance)

- (id)hf_parentRoom
{
  accessory = [self accessory];
  room = [accessory room];

  return room;
}

- (BOOL)hf_isValidObject
{
  accessory = [self accessory];
  home = [accessory home];

  if (!home)
  {
    return 0;
  }

  uniqueIdentifier = [self uniqueIdentifier];
  accessory2 = [self accessory];
  home2 = [accessory2 home];
  v7 = [home2 hf_serviceWithIdentifier:uniqueIdentifier];
  v8 = v7 != 0;

  return v8;
}

- (id)home
{
  accessory = [self accessory];
  home = [accessory home];

  return home;
}

@end