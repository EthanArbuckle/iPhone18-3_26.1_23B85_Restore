@interface TileTipView
- (_TtC19HealthMedicationsUI11TileTipView)initWithFrame:(CGRect)frame;
- (void)didTapDismiss;
- (void)didTapView;
@end

@implementation TileTipView

- (void)didTapView
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onTap);
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onTap);
  selfCopy = self;

  v2(v4);
}

- (void)didTapDismiss
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss);
  if (v2)
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss);
    selfCopy = self;
    v5 = sub_228176FA8(v2);
    v2(v5);

    sub_228176EC8(v2);
  }
}

- (_TtC19HealthMedicationsUI11TileTipView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end