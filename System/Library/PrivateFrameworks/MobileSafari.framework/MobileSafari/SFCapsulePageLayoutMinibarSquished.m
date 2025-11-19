@interface SFCapsulePageLayoutMinibarSquished
- (NSArray)supplementaryIdentifiers;
- (_TtC12MobileSafari34SFCapsulePageLayoutMinibarSquished)init;
- (_TtC12MobileSafari34SFCapsulePageLayoutMinibarSquished)initWithContainer:(id)a3;
- (_TtC12MobileSafari34SFCapsulePageLayoutMinibarSquished)initWithContainer:(id)a3 baseLayout:(id)a4;
- (double)pageWidth;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
- (id)topBackdropInfoForPage:(id)a3;
@end

@implementation SFCapsulePageLayoutMinibarSquished

- (_TtC12MobileSafari34SFCapsulePageLayoutMinibarSquished)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)topBackdropInfoForPage:(id)a3
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_unknownObjectRetain();
    v7 = self;
    v8 = [v6 topBackdropInfoForPage_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return v8;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

- (_TtC12MobileSafari34SFCapsulePageLayoutMinibarSquished)initWithContainer:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutMinibarSquished();
  return [(SFCapsulePageLayoutMinibarSquished *)&v5 init];
}

- (_TtC12MobileSafari34SFCapsulePageLayoutMinibarSquished)initWithContainer:(id)a3 baseLayout:(id)a4
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = type metadata accessor for SFCapsulePageLayoutMinibarSquished();
  return [(SFCapsulePageLayoutMinibarSquished *)&v6 init];
}

- (double)pageWidth
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  [Strong pageWidth];
  v4 = v3;
  swift_unknownObjectRelease();
  return v4;
}

- (NSArray)supplementaryIdentifiers
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    v6 = [v4 supplementaryIdentifiers];
    swift_unknownObjectRelease();
    sub_18BC20D98();
  }

  v7 = sub_18BC20D88();

  return v7;
}

- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_18B9EF2D4(v6, v8, a4);
  swift_unknownObjectRelease();

  return v10;
}

@end