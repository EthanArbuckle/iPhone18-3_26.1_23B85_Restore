@interface HMAnalyticManager
- (_TtC13HearingModeUI17HMAnalyticManager)init;
- (_TtC13HearingModeUI17HMAnalyticManager)initWithHpDevice:(id)device;
- (void)addCustomEventWithEventName:(int64_t)name key:(int64_t)key value:(id)value;
- (void)sendCustomEvent;
- (void)sendHASettingsEvent;
- (void)sendHPSettingsEvent;
@end

@implementation HMAnalyticManager

- (_TtC13HearingModeUI17HMAnalyticManager)initWithHpDevice:(id)device
{
  v5 = OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice;
  *(&self->super.isa + OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_headphoneDevice) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13HearingModeUI17HMAnalyticManager_eventPayload) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(&self->super.isa + v5) = device;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HMAnalyticManager();
  deviceCopy = device;
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
  selfCopy = self;
  sub_25202D8B0();
}

- (void)sendHPSettingsEvent
{
  selfCopy = self;
  sub_25202DCB8();
}

- (void)addCustomEventWithEventName:(int64_t)name key:(int64_t)key value:(id)value
{
  valueCopy = value;
  selfCopy = self;
  sub_25202E034(name, key, valueCopy);
}

- (void)sendCustomEvent
{
  selfCopy = self;
  sub_25202E678();
}

@end