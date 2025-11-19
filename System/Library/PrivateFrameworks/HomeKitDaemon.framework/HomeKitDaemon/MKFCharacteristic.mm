@interface MKFCharacteristic
@end

@implementation MKFCharacteristic

void __34___MKFCharacteristic_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"service.accessory.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_122970;
  homeRelation__hmf_once_v1_122970 = v0;
}

@end