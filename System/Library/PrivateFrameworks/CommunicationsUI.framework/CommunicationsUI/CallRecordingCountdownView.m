@interface CallRecordingCountdownView
- (_TtC16CommunicationsUI26CallRecordingCountdownView)initWithCoder:(id)a3;
- (_TtC16CommunicationsUI26CallRecordingCountdownView)initWithFrame:(CGRect)a3;
- (void)handleTapClose;
@end

@implementation CallRecordingCountdownView

- (_TtC16CommunicationsUI26CallRecordingCountdownView)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___closeButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___stackView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView____lazy_storage___subtitleLabel) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (void)handleTapClose
{
  v3 = self + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (_TtC16CommunicationsUI26CallRecordingCountdownView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end