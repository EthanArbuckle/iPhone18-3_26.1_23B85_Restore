@interface SFCapsulePageLayoutFadeOut
- (NSArray)supplementaryIdentifiers;
- (_TtC12MobileSafari26SFCapsulePageLayoutFadeOut)init;
- (_TtC12MobileSafari26SFCapsulePageLayoutFadeOut)initWithContainer:(id)a3;
- (_TtC12MobileSafari26SFCapsulePageLayoutFadeOut)initWithContainer:(id)a3 baseLayout:(id)a4;
- (double)pageWidth;
- (id)capsuleInfoForPage:(id)a3;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
@end

@implementation SFCapsulePageLayoutFadeOut

- (_TtC12MobileSafari26SFCapsulePageLayoutFadeOut)initWithContainer:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutFadeOut();
  return [(SFCapsulePageLayoutFadeOut *)&v5 init];
}

- (_TtC12MobileSafari26SFCapsulePageLayoutFadeOut)initWithContainer:(id)a3 baseLayout:(id)a4
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = type metadata accessor for SFCapsulePageLayoutFadeOut();
  return [(SFCapsulePageLayoutFadeOut *)&v6 init];
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

- (id)capsuleInfoForPage:(id)a3
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [result capsuleInfoForPage_];
    swift_unknownObjectRelease();
    v6 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
    swift_beginAccess();
    *&v5[v6] = 0;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_18BAB1C40(v6, v8, a4);
  swift_unknownObjectRelease();

  return v10;
}

- (_TtC12MobileSafari26SFCapsulePageLayoutFadeOut)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end