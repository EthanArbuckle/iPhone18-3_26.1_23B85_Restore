@interface SFCapsulePageLayoutTopFloatingFocused
- (NSArray)supplementaryIdentifiers;
- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)init;
- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)initWithContainer:(id)a3;
- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)initWithContainer:(id)a3 baseLayout:(id)a4;
- (double)pageWidth;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
@end

@implementation SFCapsulePageLayoutTopFloatingFocused

- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)initWithContainer:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingFocused();
  return [(SFCapsulePageLayoutTopFloatingFocused *)&v5 init];
}

- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)initWithContainer:(id)a3 baseLayout:(id)a4
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingFocused();
  return [(SFCapsulePageLayoutTopFloatingFocused *)&v6 init];
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
  v10 = sub_18BA38F3C(v6, v8, a4);
  swift_unknownObjectRelease();

  return v10;
}

- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end