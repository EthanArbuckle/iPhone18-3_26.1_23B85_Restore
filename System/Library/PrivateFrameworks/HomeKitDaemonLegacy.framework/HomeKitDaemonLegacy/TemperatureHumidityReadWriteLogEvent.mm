@interface TemperatureHumidityReadWriteLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)accessoryIdentifier;
- (NSString)coreAnalyticsEventName;
- (_TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent)init;
- (_TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent)initWithStartTime:(double)a3;
@end

@implementation TemperatureHumidityReadWriteLogEvent

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventName + 8);

  v4 = sub_253CD0938();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
  sub_25320E8F4();

  sub_253200644(0, &qword_281530D00, 0x277D82BB8);
  v3 = sub_253CD08B8();

  return v3;
}

- (NSString)accessoryIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_readWriteEvent);
  v3 = self;
  v4 = [v2 accessoryIdentifier];
  if (!v4)
  {
    sub_253CD0968();
    v4 = sub_253CD0938();
  }

  return v4;
}

- (_TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent)initWithStartTime:(double)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end