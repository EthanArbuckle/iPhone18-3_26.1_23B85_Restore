@interface SFCapsulePageLayoutMinibar
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (_TtC12MobileSafari26SFCapsulePageLayoutMinibar)init;
- (_TtC12MobileSafari26SFCapsulePageLayoutMinibar)initWithContainer:(id)container;
- (double)pageWidth;
- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page;
- (id)topBackdropInfoForPage:(id)page;
@end

@implementation SFCapsulePageLayoutMinibar

- (_TtC12MobileSafari26SFCapsulePageLayoutMinibar)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_18B7B9860(v6, v8, page);
  swift_unknownObjectRelease();

  return v10;
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

- (id)topBackdropInfoForPage:(id)page
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_18B7F8970();
  swift_unknownObjectRelease();

  return v5;
}

- (_TtC12MobileSafari26SFCapsulePageLayoutMinibar)initWithContainer:(id)container
{
  *(self + OBJC_IVAR____TtC12MobileSafari26SFCapsulePageLayoutMinibar_buttonPadding) = 0x4020000000000000;
  *(self + OBJC_IVAR____TtC12MobileSafari26SFCapsulePageLayoutMinibar_minimumCapsuleHeight) = 0x4048000000000000;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutMinibar();
  return [(SFCapsulePageLayoutMinibar *)&v5 init];
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
  selfCopy = self;
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

@end