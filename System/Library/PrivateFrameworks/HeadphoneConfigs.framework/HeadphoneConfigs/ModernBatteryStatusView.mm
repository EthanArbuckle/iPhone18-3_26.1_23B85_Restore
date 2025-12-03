@interface ModernBatteryStatusView
- (_TtC16HeadphoneConfigs23ModernBatteryStatusView)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigs23ModernBatteryStatusView)initWithFrame:(CGRect)frame;
- (id)batteryIconViewInstance;
- (void)cleanUp;
- (void)setupViews;
- (void)startLisentingWithDevice:(id)device;
@end

@implementation ModernBatteryStatusView

- (id)batteryIconViewInstance
{
  v2 = sub_25121136C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0FB58]);
  v6 = objc_allocWithZone(sub_25121138C());
  v7 = sub_25121139C();

  return v7;
}

- (void)startLisentingWithDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  sub_2511D162C(device);
}

- (void)setupViews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ModernBatteryStatusView();
  v2 = v4.receiver;
  setupViews = [(HPSBatteryStatusView *)&v4 setupViews];
  (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(setupViews);
}

- (_TtC16HeadphoneConfigs23ModernBatteryStatusView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners) = MEMORY[0x277D84FA0];
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (void)cleanUp
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.isa + v3);
  *(&self->super.super.super.super.isa + v3) = MEMORY[0x277D84FA0];
}

- (_TtC16HeadphoneConfigs23ModernBatteryStatusView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end