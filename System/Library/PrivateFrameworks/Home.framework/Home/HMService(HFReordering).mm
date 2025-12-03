@interface HMService(HFReordering)
- (HFServiceNameComponents)hf_serviceNameComponents;
- (id)hf_displayName;
@end

@implementation HMService(HFReordering)

- (id)hf_displayName
{
  hf_serviceNameComponents = [self hf_serviceNameComponents];
  composedString = [hf_serviceNameComponents composedString];

  return composedString;
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  accessory = [self accessory];
  room = [accessory room];

  hf_parentService = [self hf_parentService];

  if (hf_parentService)
  {

    room = 0;
  }

  v5 = [HFNamingComponents namingComponentFromService:self];
  v6 = [HFServiceNameComponents alloc];
  name = [v5 name];
  name2 = [room name];
  v9 = [(HFServiceNameComponents *)v6 initWithRawServiceName:name rawRoomName:name2];

  return v9;
}

@end