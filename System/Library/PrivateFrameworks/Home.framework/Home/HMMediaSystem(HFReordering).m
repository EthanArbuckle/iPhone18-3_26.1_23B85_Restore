@interface HMMediaSystem(HFReordering)
- (HFServiceNameComponents)hf_serviceNameComponents;
@end

@implementation HMMediaSystem(HFReordering)

- (HFServiceNameComponents)hf_serviceNameComponents
{
  v2 = [HFNamingComponents namingComponentFromMediaSystem:a1];
  v3 = [HFServiceNameComponents alloc];
  v4 = [v2 name];
  v5 = [a1 hf_parentRoom];
  v6 = [v5 name];
  v7 = [(HFServiceNameComponents *)v3 initWithRawServiceName:v4 rawRoomName:v6];

  return v7;
}

@end