@interface HAPCharacteristicTuple
- (HAPCharacteristicTuple)initWithHAPCharacteristic:(id)characteristic serverIdentifier:(id)identifier linkType:(int64_t)type;
@end

@implementation HAPCharacteristicTuple

- (HAPCharacteristicTuple)initWithHAPCharacteristic:(id)characteristic serverIdentifier:(id)identifier linkType:(int64_t)type
{
  characteristicCopy = characteristic;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HAPCharacteristicTuple;
  v11 = [(HAPCharacteristicTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_hapCharacteristic, characteristic);
    objc_storeStrong(&v12->_serverIdentifier, identifier);
    v12->_linkType = type;
  }

  return v12;
}

@end