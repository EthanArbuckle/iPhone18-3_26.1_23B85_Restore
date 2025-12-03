@interface SFCachedPageLayout
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (_TtC12MobileSafari18SFCachedPageLayout)init;
- (_TtC12MobileSafari18SFCachedPageLayout)initWithContainer:(id)container;
- (_TtC12MobileSafari18SFCachedPageLayout)initWithContainer:(id)container baseLayout:(id)layout;
- (id)capsuleInfoForPage:(id)page;
- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page;
- (void)clearCachedValues;
@end

@implementation SFCachedPageLayout

- (SFCapsulePageContainer)container
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)supplementaryIdentifiers
{
  v2 = *(self + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_baseLayout);
  selfCopy = self;
  supplementaryIdentifiers = [v2 supplementaryIdentifiers];
  if (!supplementaryIdentifiers)
  {
    sub_18BC20D98();
    supplementaryIdentifiers = sub_18BC20D88();
  }

  return supplementaryIdentifiers;
}

- (_TtC12MobileSafari18SFCachedPageLayout)initWithContainer:(id)container
{
  v4 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedCapsuleInfoForPage;
  v5 = MEMORY[0x1E69E7CC0];
  *(self + v4) = sub_18BA65C34(MEMORY[0x1E69E7CC0]);
  *(self + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedBottomBackdropInfo) = 0;
  v6 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedSupplementaryInfo;
  swift_unknownObjectRetain();
  *(self + v6) = sub_18BA65D30(v5);
  *(self + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedTopBackdropInfo) = 0;
  swift_unknownObjectWeakInit();
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (_TtC12MobileSafari18SFCachedPageLayout)initWithContainer:(id)container baseLayout:(id)layout
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_18BAC3734(container, layout);
  swift_unknownObjectRelease();
  return v6;
}

- (void)clearCachedValues
{
  selfCopy = self;
  sub_18BAC2FD8();
}

- (id)capsuleInfoForPage:(id)page
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_18BAC30CC(page);
  swift_unknownObjectRelease();

  return v6;
}

- (id)infoForSupplementaryIdentifier:(id)identifier page:(id)page
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_18BAC33F0(v6, v8, page);
  swift_unknownObjectRelease();

  return v10;
}

- (_TtC12MobileSafari18SFCachedPageLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end