@interface HMDCharacteristicNotificationChangeThreshold
- (HMDCharacteristicNotificationChangeThreshold)initWithCharacteristic:(id)characteristic threshold:(id)threshold;
@end

@implementation HMDCharacteristicNotificationChangeThreshold

- (HMDCharacteristicNotificationChangeThreshold)initWithCharacteristic:(id)characteristic threshold:(id)threshold
{
  characteristicCopy = characteristic;
  thresholdCopy = threshold;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicNotificationChangeThreshold;
  v9 = [(HMDCharacteristicNotificationChangeThreshold *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_characteristic, characteristic);
    v11 = [thresholdCopy copy];
    threshold = v10->_threshold;
    v10->_threshold = v11;
  }

  return v10;
}

@end