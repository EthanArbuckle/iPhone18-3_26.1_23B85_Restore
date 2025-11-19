@interface HMService(HFReordering)
- (HFServiceNameComponents)hf_serviceNameComponents;
- (id)hf_displayName;
@end

@implementation HMService(HFReordering)

- (id)hf_displayName
{
  v1 = [a1 hf_serviceNameComponents];
  v2 = [v1 composedString];

  return v2;
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  v2 = [a1 accessory];
  v3 = [v2 room];

  v4 = [a1 hf_parentService];

  if (v4)
  {

    v3 = 0;
  }

  v5 = [HFNamingComponents namingComponentFromService:a1];
  v6 = [HFServiceNameComponents alloc];
  v7 = [v5 name];
  v8 = [v3 name];
  v9 = [(HFServiceNameComponents *)v6 initWithRawServiceName:v7 rawRoomName:v8];

  return v9;
}

@end