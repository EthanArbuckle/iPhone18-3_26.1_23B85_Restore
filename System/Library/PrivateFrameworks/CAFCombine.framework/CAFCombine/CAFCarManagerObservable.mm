@interface CAFCarManagerObservable
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
@end

@implementation CAFCarManagerObservable

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  CAFCarManagerObservable.carManager(_:didUpdateCurrentCar:)(selfCopy, car);
}

@end