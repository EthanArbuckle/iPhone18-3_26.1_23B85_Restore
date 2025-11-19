@interface HMDAssistantColorCharacteristic
- (HMDAssistantColorCharacteristic)initWithReadCharacteristicType:(id)a3 writeCharacteristicType:(id)a4 format:(id)a5 mandatory:(BOOL)a6;
@end

@implementation HMDAssistantColorCharacteristic

- (HMDAssistantColorCharacteristic)initWithReadCharacteristicType:(id)a3 writeCharacteristicType:(id)a4 format:(id)a5 mandatory:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HMDAssistantColorCharacteristic;
  v14 = [(HMDAssistantColorCharacteristic *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_readCharacteristicType, a3);
    objc_storeStrong(&v15->_writeCharacteristicType, a4);
    objc_storeStrong(&v15->_format, a5);
    v15->_mandatory = a6;
  }

  return v15;
}

@end