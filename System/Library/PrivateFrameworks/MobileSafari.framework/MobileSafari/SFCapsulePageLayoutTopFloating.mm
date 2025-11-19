@interface SFCapsulePageLayoutTopFloating
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (_TtC12MobileSafari30SFCapsulePageLayoutTopFloating)init;
- (_TtC12MobileSafari30SFCapsulePageLayoutTopFloating)initWithContainer:(id)a3;
- (double)pageWidth;
- (id)bottomBackdropInfoForPage:(id)a3;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
@end

@implementation SFCapsulePageLayoutTopFloating

- (_TtC12MobileSafari30SFCapsulePageLayoutTopFloating)initWithContainer:(id)a3
{
  *(self + OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_capsuleEdgePadding) = 0x4030000000000000;
  *(self + OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_toolbarEdgePadding) = 0x4020000000000000;
  *(self + OBJC_IVAR____TtC12MobileSafari30SFCapsulePageLayoutTopFloating_toolbarHeight) = 0x4048000000000000;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutTopFloating();
  return [(SFCapsulePageLayoutTopFloating *)&v5 init];
}

- (SFCapsulePageContainer)container
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (double)pageWidth
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v4 = Strong;
  v5 = self;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();
  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  Width = CGRectGetWidth(v16);

  return Width;
}

- (NSArray)supplementaryIdentifiers
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3FC60;
  *(v2 + 32) = sub_18BC20BD8();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_18BC20BD8();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_18BC20BD8();
  *(v2 + 72) = v5;
  v6 = sub_18BC20D88();

  return v6;
}

- (id)bottomBackdropInfoForPage:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_18BBE248C();
  swift_unknownObjectRelease();

  return v5;
}

- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_18BBE19B8(v6, v8, a4);
  swift_unknownObjectRelease();

  return v10;
}

- (_TtC12MobileSafari30SFCapsulePageLayoutTopFloating)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end