@interface HMAccessory(HMU_IDS)
- (id)hmu_destinationForService:()HMU_IDS;
@end

@implementation HMAccessory(HMU_IDS)

- (id)hmu_destinationForService:()HMU_IDS
{
  v4 = a3;
  v5 = [a1 device];
  v6 = [v5 IDSDestinationForIDSService:v4];

  return v6;
}

@end