@interface HKQuantityWrapper
- (HKQuantityWrapper)initWithQuantity:(id)quantity dateInterval:(id)interval;
@end

@implementation HKQuantityWrapper

- (HKQuantityWrapper)initWithQuantity:(id)quantity dateInterval:(id)interval
{
  quantityCopy = quantity;
  intervalCopy = interval;
  v13.receiver = self;
  v13.super_class = HKQuantityWrapper;
  v8 = [(HKQuantityWrapper *)&v13 init];
  quantity = v8->_quantity;
  v8->_quantity = quantityCopy;
  v10 = quantityCopy;

  dateInterval = v8->_dateInterval;
  v8->_dateInterval = intervalCopy;

  return v8;
}

@end