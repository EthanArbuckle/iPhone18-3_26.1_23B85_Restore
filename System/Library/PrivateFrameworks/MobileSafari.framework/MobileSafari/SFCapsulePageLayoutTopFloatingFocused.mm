@interface SFCapsulePageLayoutTopFloatingFocused
- (NSArray)supplementaryIdentifiers;
- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)init;
- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)initWithContainer:(id)container;
- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)initWithContainer:(id)container baseLayout:(id)layout;
- (double)pageWidth;
- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page;
@end

@implementation SFCapsulePageLayoutTopFloatingFocused

- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)initWithContainer:(id)container
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingFocused();
  return [(SFCapsulePageLayoutTopFloatingFocused *)&v5 init];
}

- (_TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused)initWithContainer:(id)container baseLayout:(id)layout
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
    selfCopy = self;
    supplementaryIdentifiers = [v4 supplementaryIdentifiers];
    swift_unknownObjectRelease();
    sub_18BC20D98();
  }

  v7 = sub_18BC20D88();

  return v7;
}

- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_18BA38F3C(v6, v8, page);
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