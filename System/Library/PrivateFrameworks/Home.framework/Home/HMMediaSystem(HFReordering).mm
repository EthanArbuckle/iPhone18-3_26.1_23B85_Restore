@interface HMMediaSystem(HFReordering)
- (HFServiceNameComponents)hf_serviceNameComponents;
@end

@implementation HMMediaSystem(HFReordering)

- (HFServiceNameComponents)hf_serviceNameComponents
{
  v2 = [HFNamingComponents namingComponentFromMediaSystem:self];
  v3 = [HFServiceNameComponents alloc];
  name = [v2 name];
  hf_parentRoom = [self hf_parentRoom];
  name2 = [hf_parentRoom name];
  v7 = [(HFServiceNameComponents *)v3 initWithRawServiceName:name rawRoomName:name2];

  return v7;
}

@end