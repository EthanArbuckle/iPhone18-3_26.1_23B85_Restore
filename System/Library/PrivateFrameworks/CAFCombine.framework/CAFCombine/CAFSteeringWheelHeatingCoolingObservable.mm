@interface CAFSteeringWheelHeatingCoolingObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)steeringWheelHeatingCoolingService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)steeringWheelHeatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4;
@end

@implementation CAFSteeringWheelHeatingCoolingObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFSteeringWheelHeatingCoolingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)steeringWheelHeatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4
{
  v5 = a3;
  v6 = self;
  CAFSteeringWheelHeatingCoolingObservable.steeringWheelHeatingCoolingService(_:didUpdateHeatingCoolingLevel:)();
}

- (void)steeringWheelHeatingCoolingService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFSteeringWheelHeatingCoolingObservable.steeringWheelHeatingCoolingService(_:didUpdateAutoMode:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFSteeringWheelHeatingCoolingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFSteeringWheelHeatingCoolingObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFSteeringWheelHeatingCoolingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end