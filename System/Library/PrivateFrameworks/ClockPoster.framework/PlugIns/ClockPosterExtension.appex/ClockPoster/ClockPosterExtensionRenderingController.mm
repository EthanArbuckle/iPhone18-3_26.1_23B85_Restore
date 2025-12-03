@interface ClockPosterExtensionRenderingController
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)renderer:(id)renderer didReceiveTapAtPoint:(CGPoint)point;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation ClockPosterExtensionRenderingController

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000037A4(rendererCopy, environment);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    swift_unknownObjectRetain();
    selfCopy = self;

    sub_1000041FC();
    sub_100008978();

    swift_getObjectType();
    sub_100007700(environment, selfCopy);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000080A0(&OBJC_IVAR____TtC20ClockPosterExtension39ClockPosterExtensionRenderingController_renderer);
}

- (void)renderer:(id)renderer didReceiveTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = sub_100001C28(&qword_100016460, &qword_100009CE8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_100008D58();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008D38();
  selfCopy = self;

  v14 = sub_100008D28();
  v15 = swift_allocObject();
  *(v15 + 2) = v14;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = v12;
  v15[5] = x;
  v15[6] = y;

  sub_100003D8C(0, 0, v10, &unk_100009CF8, v15);
}

@end