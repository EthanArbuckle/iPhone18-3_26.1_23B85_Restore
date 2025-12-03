@interface CAFPositionManagerObservable
- (void)positionManager:(id)manager didUpdateState:(unint64_t)state;
@end

@implementation CAFPositionManagerObservable

- (void)positionManager:(id)manager didUpdateState:(unint64_t)state
{
  managerCopy = manager;
  selfCopy = self;
  CAFPositionManagerObservable.positionManager(_:didUpdate:)(managerCopy);
}

@end