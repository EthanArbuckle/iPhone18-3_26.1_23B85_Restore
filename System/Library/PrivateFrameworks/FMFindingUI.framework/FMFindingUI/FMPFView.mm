@interface FMPFView
- (NSString)description;
- (_TtC11FMFindingUI8FMPFView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)renderer:(id)renderer didAddNode:(id)node forAnchor:(id)anchor;
- (void)renderer:(id)renderer didRemoveNode:(id)node forAnchor:(id)anchor;
- (void)renderer:(id)renderer didRenderScene:(id)scene atTime:(double)time;
- (void)renderer:(id)renderer didUpdateNode:(id)node forAnchor:(id)anchor;
- (void)renderer:(id)renderer updateAtTime:(double)time;
- (void)renderer:(id)renderer willRenderScene:(id)scene atTime:(double)time;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)thermalStateDidChangeWithNotification:(id)notification;
@end

@implementation FMPFView

- (void)renderer:(id)renderer updateAtTime:(double)time
{
  v6 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 56))(renderer, ObjectType, v7, time);

    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)renderer willRenderScene:(id)scene atTime:(double)time
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 48))(renderer, scene, ObjectType, v9, time);

    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)renderer didRenderScene:(id)scene atTime:(double)time
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 64))(renderer, scene, ObjectType, v9, time);

    swift_unknownObjectRelease();
  }
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  sub_24A596FD8(sessionCopy, frameCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  v7 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    sessionCopy = session;
    errorCopy = error;
    selfCopy = self;
    v10(sessionCopy, errorCopy, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)renderer didAddNode:(id)node forAnchor:(id)anchor
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(renderer, node, anchor, ObjectType, v9);

    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)renderer didUpdateNode:(id)node forAnchor:(id)anchor
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 32))(renderer, node, anchor, ObjectType, v9);

    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)renderer didRemoveNode:(id)node forAnchor:(id)anchor
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(renderer, node, anchor, ObjectType, v9);

    swift_unknownObjectRelease();
  }
}

- (NSString)description
{
  selfCopy = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation);
  selfCopy = self;
  if (v3)
  {
    v5 = v3;
    sub_24A62E064();
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue);
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A5F6300;
  *(v8 + 24) = v7;
  aBlock[4] = sub_24A517E48;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A592ED8;
  aBlock[3] = &unk_285DAA3B0;
  v9 = _Block_copy(aBlock);
  selfCopy2 = self;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11.receiver = selfCopy2;
    v11.super_class = type metadata accessor for FMPFView();
    [(FMPFView *)&v11 dealloc];
  }
}

- (void)thermalStateDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_24A5F5F4C(notificationCopy);
}

- (_TtC11FMFindingUI8FMPFView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end