@interface CAFDimensionObservable
- (void)dimensionManager:(id)a3 didUpdateMeasurementSystem:(unint64_t)a4;
- (void)dimensionManager:(id)a3 didUpdateTemperatureUnit:(id)a4;
@end

@implementation CAFDimensionObservable

- (void)dimensionManager:(id)a3 didUpdateMeasurementSystem:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  CAFDimensionObservable.dimensionManager(_:didUpdate:)();
}

- (void)dimensionManager:(id)a3 didUpdateTemperatureUnit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFDimensionObservable.dimensionManager(_:didUpdateTemperatureUnit:)(v8, v7);
}

@end