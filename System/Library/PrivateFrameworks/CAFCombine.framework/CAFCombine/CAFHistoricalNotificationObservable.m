@interface CAFHistoricalNotificationObservable
- (NSString)description;
- (void)historicalNotificationService:(id)a3 didUpdateHidden:(BOOL)a4;
- (void)historicalNotificationService:(id)a3 didUpdateHistoricalNotificationUserActions:(id)a4;
- (void)historicalNotificationService:(id)a3 didUpdateNotificationSeverity:(unsigned __int8)a4;
- (void)historicalNotificationService:(id)a3 didUpdateTimestamp:(id)a4;
- (void)historicalNotificationService:(id)a3 didUpdateUserAction:(unsigned __int8)a4;
- (void)historicalNotificationService:(id)a3 didUpdateUserDismissible:(BOOL)a4;
- (void)historicalNotificationService:(id)a3 didUpdateUserVisibleFullDescription:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFHistoricalNotificationObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFHistoricalNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)historicalNotificationService:(id)a3 didUpdateUserVisibleFullDescription:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserVisibleFullDescription:)();
}

- (void)historicalNotificationService:(id)a3 didUpdateTimestamp:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateTimestamp:)(v12, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)historicalNotificationService:(id)a3 didUpdateNotificationSeverity:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateNotificationSeverity:)();
}

- (void)historicalNotificationService:(id)a3 didUpdateHistoricalNotificationUserActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateHistoricalNotificationUserActions:)(v8, a4);
}

- (void)historicalNotificationService:(id)a3 didUpdateUserDismissible:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserDismissible:)(v7, a4);
}

- (void)historicalNotificationService:(id)a3 didUpdateHidden:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateHidden:)(v7, a4);
}

- (void)historicalNotificationService:(id)a3 didUpdateUserAction:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserAction:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFHistoricalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFHistoricalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFHistoricalNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end