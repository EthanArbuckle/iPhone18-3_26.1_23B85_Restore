@interface FMR1DevicePoseProvider
- (_TtC11FMFindingUI22FMR1DevicePoseProvider)init;
- (_TtC11FMFindingUI22FMR1DevicePoseProvider)initWithARSession:(id)session;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
@end

@implementation FMR1DevicePoseProvider

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  sub_24A5A7CC0(sessionCopy, frameCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_24A5A8004(errorCopy);
}

- (_TtC11FMFindingUI22FMR1DevicePoseProvider)initWithARSession:(id)session
{
  *(&self->super.super._delegate + OBJC_IVAR____TtC11FMFindingUI22FMR1DevicePoseProvider_frameDelegate) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMR1DevicePoseProvider();
  return [(PRVIODevicePoseProvider *)&v6 initWithARSession:session];
}

- (_TtC11FMFindingUI22FMR1DevicePoseProvider)init
{
  *(&self->super.super._delegate + OBJC_IVAR____TtC11FMFindingUI22FMR1DevicePoseProvider_frameDelegate) = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMR1DevicePoseProvider();
  return [(FMR1DevicePoseProvider *)&v4 init];
}

@end