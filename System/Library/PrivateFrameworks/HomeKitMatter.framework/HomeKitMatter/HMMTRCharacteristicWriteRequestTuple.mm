@interface HMMTRCharacteristicWriteRequestTuple
- (HMMTRCharacteristicWriteRequestTuple)initWithRequestTuple:(id)tuple;
@end

@implementation HMMTRCharacteristicWriteRequestTuple

- (HMMTRCharacteristicWriteRequestTuple)initWithRequestTuple:(id)tuple
{
  tupleCopy = tuple;
  v10.receiver = self;
  v10.super_class = HMMTRCharacteristicWriteRequestTuple;
  v6 = [(HMMTRCharacteristicWriteRequestTuple *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_characteristicHandlingType = 0;
    objc_storeStrong(&v6->_primary, tuple);
    secondary = v7->_secondary;
    v7->_secondary = 0;
  }

  return v7;
}

@end