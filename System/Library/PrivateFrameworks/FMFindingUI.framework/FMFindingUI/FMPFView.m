@interface FMPFView
- (NSString)description;
- (_TtC11FMFindingUI8FMPFView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)renderer:(id)a3 didAddNode:(id)a4 forAnchor:(id)a5;
- (void)renderer:(id)a3 didRemoveNode:(id)a4 forAnchor:(id)a5;
- (void)renderer:(id)a3 didRenderScene:(id)a4 atTime:(double)a5;
- (void)renderer:(id)a3 didUpdateNode:(id)a4 forAnchor:(id)a5;
- (void)renderer:(id)a3 updateAtTime:(double)a4;
- (void)renderer:(id)a3 willRenderScene:(id)a4 atTime:(double)a5;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)thermalStateDidChangeWithNotification:(id)a3;
@end

@implementation FMPFView

- (void)renderer:(id)a3 updateAtTime:(double)a4
{
  v6 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 56))(a3, ObjectType, v7, a4);

    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)a3 willRenderScene:(id)a4 atTime:(double)a5
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 48))(a3, a4, ObjectType, v9, a5);

    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)a3 didRenderScene:(id)a4 atTime:(double)a5
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 64))(a3, a4, ObjectType, v9, a5);

    swift_unknownObjectRelease();
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24A596FD8(v6, v7);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v7 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v10(v11, v12, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)a3 didAddNode:(id)a4 forAnchor:(id)a5
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(a3, a4, a5, ObjectType, v9);

    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)a3 didUpdateNode:(id)a4 forAnchor:(id)a5
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 32))(a3, a4, a5, ObjectType, v9);

    swift_unknownObjectRelease();
  }
}

- (void)renderer:(id)a3 didRemoveNode:(id)a4 forAnchor:(id)a5
{
  v8 = self + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(a3, a4, a5, ObjectType, v9);

    swift_unknownObjectRelease();
  }
}

- (NSString)description
{
  v2 = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation);
  v4 = self;
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
  v10 = self;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11.receiver = v10;
    v11.super_class = type metadata accessor for FMPFView();
    [(FMPFView *)&v11 dealloc];
  }
}

- (void)thermalStateDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A5F5F4C(v4);
}

- (_TtC11FMFindingUI8FMPFView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end