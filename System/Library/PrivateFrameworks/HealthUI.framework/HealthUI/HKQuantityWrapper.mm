@interface HKQuantityWrapper
- (HKQuantityWrapper)initWithQuantity:(id)a3 dateInterval:(id)a4;
@end

@implementation HKQuantityWrapper

- (HKQuantityWrapper)initWithQuantity:(id)a3 dateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HKQuantityWrapper;
  v8 = [(HKQuantityWrapper *)&v13 init];
  quantity = v8->_quantity;
  v8->_quantity = v6;
  v10 = v6;

  dateInterval = v8->_dateInterval;
  v8->_dateInterval = v7;

  return v8;
}

@end