@interface CAFPositionManagerObservable
- (void)positionManager:(id)a3 didUpdateState:(unint64_t)a4;
@end

@implementation CAFPositionManagerObservable

- (void)positionManager:(id)a3 didUpdateState:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  CAFPositionManagerObservable.positionManager(_:didUpdate:)(v5);
}

@end