@interface HMService(HFHomeContainedObjectConformance)
- (BOOL)hf_isValidObject;
- (id)hf_parentRoom;
- (id)home;
@end

@implementation HMService(HFHomeContainedObjectConformance)

- (id)hf_parentRoom
{
  v1 = [a1 accessory];
  v2 = [v1 room];

  return v2;
}

- (BOOL)hf_isValidObject
{
  v2 = [a1 accessory];
  v3 = [v2 home];

  if (!v3)
  {
    return 0;
  }

  v4 = [a1 uniqueIdentifier];
  v5 = [a1 accessory];
  v6 = [v5 home];
  v7 = [v6 hf_serviceWithIdentifier:v4];
  v8 = v7 != 0;

  return v8;
}

- (id)home
{
  v1 = [a1 accessory];
  v2 = [v1 home];

  return v2;
}

@end