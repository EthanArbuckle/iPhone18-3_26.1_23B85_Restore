@interface Metric.LogEventAdaptor
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor)initWithHomeUUID:(id)a3;
- (_TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor)initWithStartTime:(double)a3 homeUUID:(id)a4;
@end

@implementation Metric.LogEventAdaptor

- (NSString)coreAnalyticsEventName
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_name);
  v3 = *(&self->super.super._lock._os_unfair_lock_opaque + OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_name);

  v4 = sub_253CD0938();

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
  sub_253278A64();

  sub_253200644(0, &qword_281530D00, 0x277D82BB8);
  v3 = sub_253CD08B8();

  return v3;
}

- (_TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor)initWithHomeUUID:(id)a3
{
  v3 = sub_253CCFF58();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_253CCFF38();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor)initWithStartTime:(double)a3 homeUUID:(id)a4
{
  v4 = sub_253CCFF58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_253CCFF38();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end