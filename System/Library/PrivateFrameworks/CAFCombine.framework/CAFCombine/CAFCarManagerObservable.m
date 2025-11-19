@interface CAFCarManagerObservable
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
@end

@implementation CAFCarManagerObservable

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFCarManagerObservable.carManager(_:didUpdateCurrentCar:)(v8, a4);
}

@end