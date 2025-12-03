@interface PKPaymentCommutePlanReminder
- (PKPaymentCommutePlanReminder)initWithCoder:(id)coder;
- (PKPaymentCommutePlanReminder)initWithTimeInterval:(double)interval;
@end

@implementation PKPaymentCommutePlanReminder

- (PKPaymentCommutePlanReminder)initWithTimeInterval:(double)interval
{
  v5.receiver = self;
  v5.super_class = PKPaymentCommutePlanReminder;
  result = [(PKPaymentCommutePlanReminder *)&v5 init];
  if (result)
  {
    result->_timeInterval = interval;
  }

  return result;
}

- (PKPaymentCommutePlanReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPaymentCommutePlanReminder;
  v5 = [(PKPaymentCommutePlanReminder *)&v7 init];
  if (v5)
  {
    v5->_timeInterval = [coderCopy decodeIntegerForKey:@"timeInterval"];
  }

  return v5;
}

@end