@interface HKInteractiveChartOverlayPredicate
- (HKInteractiveChartOverlayPredicate)initWithPredicate:(id)predicate name:(id)name;
@end

@implementation HKInteractiveChartOverlayPredicate

- (HKInteractiveChartOverlayPredicate)initWithPredicate:(id)predicate name:(id)name
{
  predicateCopy = predicate;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HKInteractiveChartOverlayPredicate;
  v9 = [(HKInteractiveChartOverlayPredicate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predicate, predicate);
    objc_storeStrong(&v10->_localizedNameKey, name);
  }

  return v10;
}

@end