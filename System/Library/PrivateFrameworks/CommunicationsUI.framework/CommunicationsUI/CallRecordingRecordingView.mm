@interface CallRecordingRecordingView
- (_TtC16CommunicationsUI26CallRecordingRecordingView)initWithFrame:(CGRect)frame;
- (void)handleTapContainer;
- (void)handleTapStopRecording;
@end

@implementation CallRecordingRecordingView

- (void)handleTapContainer
{
  v3 = self + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    selfCopy = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)handleTapStopRecording
{
  v3 = self + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    selfCopy = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (_TtC16CommunicationsUI26CallRecordingRecordingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end