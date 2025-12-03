@interface CAFCarObservable
- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carDidUpdateAccessories:(id)accessories;
@end

@implementation CAFCarObservable

- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFCarObservable.carDidUpdate(_:receivedAllValues:)(updateCopy, values);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  CAFCarObservable.carDidUpdateAccessories(_:)(accessoriesCopy);
}

@end