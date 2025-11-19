@interface ConfirmDetailsLearnMoreView
- (_TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView)initWithCoder:(id)a3;
- (_TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)learnMoreTapped;
- (void)tintColorDidChange;
@end

@implementation ConfirmDetailsLearnMoreView

- (_TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___detailLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView____lazy_storage___tapGestureRecognizer) = 0;
  result = sub_2519AF198();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v2 = self;
  v3 = sub_2519A6A10();
  v4 = sub_2519A6C5C();
  [v3 removeGestureRecognizer_];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for ConfirmDetailsLearnMoreView();
  [(ConfirmDetailsLearnMoreView *)&v5 dealloc];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ConfirmDetailsLearnMoreView();
  v2 = v5.receiver;
  [(ConfirmDetailsLearnMoreView *)&v5 tintColorDidChange];
  v3 = sub_2519A6A10();
  v4 = [v2 tintColor];
  [v3 setTextColor_];
}

- (void)learnMoreTapped
{
  v3 = self + OBJC_IVAR____TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (_TtC16HealthMobilityUI27ConfirmDetailsLearnMoreView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end