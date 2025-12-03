@interface HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration
- (HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration)initWithType:(id)type format:(id)format values:(id)values settlingTime:(id)time;
@end

@implementation HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration

- (HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration)initWithType:(id)type format:(id)format values:(id)values settlingTime:(id)time
{
  typeCopy = type;
  formatCopy = format;
  valuesCopy = values;
  timeCopy = time;
  v18.receiver = self;
  v18.super_class = HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration;
  v15 = [(HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, type);
    objc_storeStrong(&v16->_format, format);
    objc_storeStrong(&v16->_values, values);
    objc_storeStrong(&v16->_settlingTime, time);
  }

  return v16;
}

@end