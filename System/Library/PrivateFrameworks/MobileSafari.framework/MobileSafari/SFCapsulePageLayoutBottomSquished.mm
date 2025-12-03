@interface SFCapsulePageLayoutBottomSquished
- (NSArray)supplementaryIdentifiers;
- (_TtC12MobileSafari33SFCapsulePageLayoutBottomSquished)init;
- (_TtC12MobileSafari33SFCapsulePageLayoutBottomSquished)initWithContainer:(id)container;
- (_TtC12MobileSafari33SFCapsulePageLayoutBottomSquished)initWithContainer:(id)container baseLayout:(id)layout;
- (double)pageWidth;
- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page;
- (id)topBackdropInfoForPage:(id)page;
@end

@implementation SFCapsulePageLayoutBottomSquished

- (_TtC12MobileSafari33SFCapsulePageLayoutBottomSquished)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12MobileSafari33SFCapsulePageLayoutBottomSquished)initWithContainer:(id)container
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutBottomSquished();
  return [(SFCapsulePageLayoutBottomSquished *)&v5 init];
}

- (_TtC12MobileSafari33SFCapsulePageLayoutBottomSquished)initWithContainer:(id)container baseLayout:(id)layout
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = type metadata accessor for SFCapsulePageLayoutBottomSquished();
  return [(SFCapsulePageLayoutBottomSquished *)&v6 init];
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
  v10 = sub_18BA219F4(v6, v8, page);
  swift_unknownObjectRelease();

  return v10;
}

- (id)topBackdropInfoForPage:(id)page
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_unknownObjectRetain();
    selfCopy = self;
    topBackdropInfoForPage_ = [v6 topBackdropInfoForPage_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return topBackdropInfoForPage_;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

@end