@interface HMDCharacteristicNotificationChangeThreshold
- (HMDCharacteristicNotificationChangeThreshold)initWithCharacteristic:(id)a3 threshold:(id)a4;
@end

@implementation HMDCharacteristicNotificationChangeThreshold

- (HMDCharacteristicNotificationChangeThreshold)initWithCharacteristic:(id)a3 threshold:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicNotificationChangeThreshold;
  v9 = [(HMDCharacteristicNotificationChangeThreshold *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_characteristic, a3);
    v11 = [v8 copy];
    threshold = v10->_threshold;
    v10->_threshold = v11;
  }

  return v10;
}

@end