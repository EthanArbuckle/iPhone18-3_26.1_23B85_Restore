@interface HMMTRCharacteristicWriteRequestTuple
- (HMMTRCharacteristicWriteRequestTuple)initWithRequestTuple:(id)a3;
@end

@implementation HMMTRCharacteristicWriteRequestTuple

- (HMMTRCharacteristicWriteRequestTuple)initWithRequestTuple:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HMMTRCharacteristicWriteRequestTuple;
  v6 = [(HMMTRCharacteristicWriteRequestTuple *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_characteristicHandlingType = 0;
    objc_storeStrong(&v6->_primary, a3);
    secondary = v7->_secondary;
    v7->_secondary = 0;
  }

  return v7;
}

@end