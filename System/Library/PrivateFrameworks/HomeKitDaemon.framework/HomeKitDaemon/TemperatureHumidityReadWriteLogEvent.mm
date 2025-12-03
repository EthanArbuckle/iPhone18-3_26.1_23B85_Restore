@interface TemperatureHumidityReadWriteLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)accessoryIdentifier;
- (NSString)coreAnalyticsEventName;
- (_TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent)init;
- (_TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent)initWithStartTime:(double)time;
@end

@implementation TemperatureHumidityReadWriteLogEvent

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_22A4DD5AC();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_22985F0CC();

  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  v3 = sub_22A4DD47C();

  return v3;
}

- (NSString)accessoryIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_readWriteEvent);
  selfCopy = self;
  accessoryIdentifier = [v2 accessoryIdentifier];
  if (!accessoryIdentifier)
  {
    sub_22A4DD5EC();
    accessoryIdentifier = sub_22A4DD5AC();
  }

  return accessoryIdentifier;
}

- (_TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent)initWithStartTime:(double)time
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end