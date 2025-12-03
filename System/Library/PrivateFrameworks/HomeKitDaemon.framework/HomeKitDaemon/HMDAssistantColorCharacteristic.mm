@interface HMDAssistantColorCharacteristic
- (HMDAssistantColorCharacteristic)initWithReadCharacteristicType:(id)type writeCharacteristicType:(id)characteristicType format:(id)format mandatory:(BOOL)mandatory;
@end

@implementation HMDAssistantColorCharacteristic

- (HMDAssistantColorCharacteristic)initWithReadCharacteristicType:(id)type writeCharacteristicType:(id)characteristicType format:(id)format mandatory:(BOOL)mandatory
{
  typeCopy = type;
  characteristicTypeCopy = characteristicType;
  formatCopy = format;
  v17.receiver = self;
  v17.super_class = HMDAssistantColorCharacteristic;
  v14 = [(HMDAssistantColorCharacteristic *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_readCharacteristicType, type);
    objc_storeStrong(&v15->_writeCharacteristicType, characteristicType);
    objc_storeStrong(&v15->_format, format);
    v15->_mandatory = mandatory;
  }

  return v15;
}

@end