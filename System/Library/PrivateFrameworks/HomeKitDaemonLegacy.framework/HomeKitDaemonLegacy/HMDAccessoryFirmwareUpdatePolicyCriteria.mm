@interface HMDAccessoryFirmwareUpdatePolicyCriteria
- (HMDAccessoryFirmwareUpdatePolicyCriteria)init;
@end

@implementation HMDAccessoryFirmwareUpdatePolicyCriteria

- (HMDAccessoryFirmwareUpdatePolicyCriteria)init
{
  v6.receiver = self;
  v6.super_class = HMDAccessoryFirmwareUpdatePolicyCriteria;
  v2 = [(HMDAccessoryFirmwareUpdatePolicyCriteria *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    characteristicConfigurations = v2->_characteristicConfigurations;
    v2->_characteristicConfigurations = array;
  }

  return v2;
}

@end