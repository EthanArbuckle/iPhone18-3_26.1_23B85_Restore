@interface CAFDimensionObservable
- (void)dimensionManager:(id)manager didUpdateMeasurementSystem:(unint64_t)system;
- (void)dimensionManager:(id)manager didUpdateTemperatureUnit:(id)unit;
@end

@implementation CAFDimensionObservable

- (void)dimensionManager:(id)manager didUpdateMeasurementSystem:(unint64_t)system
{
  managerCopy = manager;
  selfCopy = self;
  CAFDimensionObservable.dimensionManager(_:didUpdate:)();
}

- (void)dimensionManager:(id)manager didUpdateTemperatureUnit:(id)unit
{
  managerCopy = manager;
  unitCopy = unit;
  selfCopy = self;
  CAFDimensionObservable.dimensionManager(_:didUpdateTemperatureUnit:)(selfCopy, unitCopy);
}

@end