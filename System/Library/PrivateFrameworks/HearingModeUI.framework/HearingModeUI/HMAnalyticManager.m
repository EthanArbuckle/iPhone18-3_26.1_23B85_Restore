@interface HMAnalyticManager
- (_TtC13HearingModeUI17HMAnalyticManager)init;
- (_TtC13HearingModeUI17HMAnalyticManager)initWithHpDevice:(id)a3;
- (void)addCustomEventWithEventName:(int64_t)a3 key:(int64_t)a4 value:(id)a5;
- (void)sendCustomEvent;
- (void)sendHASettingsEvent;
- (void)sendHPSettingsEvent;
@end

@implementation HMAnalyticManager

- (_TtC13HearingModeUI17HMAnalyticManager)initWithHpDevice:(id)a3
{
  v5 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice;
  *(&self->super.isa + OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_eventPayload) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HMAnalyticManager();
  v6 = a3;
  return [(HMAnalyticManager *)&v8 init];
}

- (_TtC13HearingModeUI17HMAnalyticManager)init
{
  v3 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice;
  *(&self->super.isa + OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_eventPayload) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(&self->super.isa + v3) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HMAnalyticManager();
  return [(HMAnalyticManager *)&v5 init];
}

- (void)sendHASettingsEvent
{
  v2 = self;
  sub_25202D8B0();
}

- (void)sendHPSettingsEvent
{
  v2 = self;
  sub_25202DCB8();
}

- (void)addCustomEventWithEventName:(int64_t)a3 key:(int64_t)a4 value:(id)a5
{
  v8 = a5;
  v9 = self;
  sub_25202E034(a3, a4, v8);
}

- (void)sendCustomEvent
{
  v2 = self;
  sub_25202E678();
}

@end