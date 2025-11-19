@interface RestrictedGuestInfoLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent)initWithHomeUUID:(id)a3;
- (_TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4;
- (unint64_t)coreAnalyticsEventOptions;
- (void)setCoreAnalyticsEventName:(id)a3;
- (void)setCoreAnalyticsEventOptions:(unint64_t)a3;
@end

@implementation RestrictedGuestInfoLogEvent

- (NSString)coreAnalyticsEventName
{
  v2 = (self + OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_22A4DD5AC();

  return v5;
}

- (void)setCoreAnalyticsEventName:(id)a3
{
  v4 = sub_22A4DD5EC();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
  RestrictedGuestInfoLogEvent.coreAnalyticsEventDictionary.getter();

  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  v3 = sub_22A4DD47C();

  return v3;
}

- (unint64_t)coreAnalyticsEventOptions
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCoreAnalyticsEventOptions:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (_TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent)initWithHomeUUID:(id)a3
{
  v3 = sub_22A4DB7DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4
{
  v4 = sub_22A4DB7DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end