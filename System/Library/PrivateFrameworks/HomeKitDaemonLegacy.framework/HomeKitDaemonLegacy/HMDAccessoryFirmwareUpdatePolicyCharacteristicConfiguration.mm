@interface HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration
- (HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration)initWithType:(id)a3 format:(id)a4 values:(id)a5 settlingTime:(id)a6;
@end

@implementation HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration

- (HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration)initWithType:(id)a3 format:(id)a4 values:(id)a5 settlingTime:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration;
  v15 = [(HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, a3);
    objc_storeStrong(&v16->_format, a4);
    objc_storeStrong(&v16->_values, a5);
    objc_storeStrong(&v16->_settlingTime, a6);
  }

  return v16;
}

@end