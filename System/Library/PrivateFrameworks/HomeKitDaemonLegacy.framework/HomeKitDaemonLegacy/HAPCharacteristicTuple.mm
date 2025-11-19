@interface HAPCharacteristicTuple
- (HAPCharacteristicTuple)initWithHAPCharacteristic:(id)a3 serverIdentifier:(id)a4 linkType:(int64_t)a5;
@end

@implementation HAPCharacteristicTuple

- (HAPCharacteristicTuple)initWithHAPCharacteristic:(id)a3 serverIdentifier:(id)a4 linkType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HAPCharacteristicTuple;
  v11 = [(HAPCharacteristicTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_hapCharacteristic, a3);
    objc_storeStrong(&v12->_serverIdentifier, a4);
    v12->_linkType = a5;
  }

  return v12;
}

@end