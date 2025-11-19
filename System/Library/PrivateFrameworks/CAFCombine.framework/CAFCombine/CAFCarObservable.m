@interface CAFCarObservable
- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
@end

@implementation CAFCarObservable

- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFCarObservable.carDidUpdate(_:receivedAllValues:)(v6, a4);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFCarObservable.carDidUpdateAccessories(_:)(v4);
}

@end