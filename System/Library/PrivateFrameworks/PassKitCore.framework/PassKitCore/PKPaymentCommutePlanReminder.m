@interface PKPaymentCommutePlanReminder
- (PKPaymentCommutePlanReminder)initWithCoder:(id)a3;
- (PKPaymentCommutePlanReminder)initWithTimeInterval:(double)a3;
@end

@implementation PKPaymentCommutePlanReminder

- (PKPaymentCommutePlanReminder)initWithTimeInterval:(double)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentCommutePlanReminder;
  result = [(PKPaymentCommutePlanReminder *)&v5 init];
  if (result)
  {
    result->_timeInterval = a3;
  }

  return result;
}

- (PKPaymentCommutePlanReminder)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPaymentCommutePlanReminder;
  v5 = [(PKPaymentCommutePlanReminder *)&v7 init];
  if (v5)
  {
    v5->_timeInterval = [v4 decodeIntegerForKey:@"timeInterval"];
  }

  return v5;
}

@end