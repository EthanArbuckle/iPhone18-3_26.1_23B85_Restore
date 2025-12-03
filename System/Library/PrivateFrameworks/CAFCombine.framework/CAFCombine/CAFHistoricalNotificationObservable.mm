@interface CAFHistoricalNotificationObservable
- (NSString)description;
- (void)historicalNotificationService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)historicalNotificationService:(id)service didUpdateHistoricalNotificationUserActions:(id)actions;
- (void)historicalNotificationService:(id)service didUpdateNotificationSeverity:(unsigned __int8)severity;
- (void)historicalNotificationService:(id)service didUpdateTimestamp:(id)timestamp;
- (void)historicalNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action;
- (void)historicalNotificationService:(id)service didUpdateUserDismissible:(BOOL)dismissible;
- (void)historicalNotificationService:(id)service didUpdateUserVisibleFullDescription:(id)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFHistoricalNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFHistoricalNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)historicalNotificationService:(id)service didUpdateUserVisibleFullDescription:(id)description
{
  if (description)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserVisibleFullDescription:)();
}

- (void)historicalNotificationService:(id)service didUpdateTimestamp:(id)timestamp
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateTimestamp:)(selfCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (void)historicalNotificationService:(id)service didUpdateNotificationSeverity:(unsigned __int8)severity
{
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateNotificationSeverity:)();
}

- (void)historicalNotificationService:(id)service didUpdateHistoricalNotificationUserActions:(id)actions
{
  serviceCopy = service;
  actionsCopy = actions;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateHistoricalNotificationUserActions:)(selfCopy, actions);
}

- (void)historicalNotificationService:(id)service didUpdateUserDismissible:(BOOL)dismissible
{
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserDismissible:)(selfCopy, dismissible);
}

- (void)historicalNotificationService:(id)service didUpdateHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateHidden:)(selfCopy, hidden);
}

- (void)historicalNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action
{
  serviceCopy = service;
  selfCopy = self;
  CAFHistoricalNotificationObservable.historicalNotificationService(_:didUpdateUserAction:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFHistoricalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFHistoricalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFHistoricalNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end