@interface SFCachedPageLayout
- (NSArray)supplementaryIdentifiers;
- (SFCapsulePageContainer)container;
- (_TtC12MobileSafari18SFCachedPageLayout)init;
- (_TtC12MobileSafari18SFCachedPageLayout)initWithContainer:(id)a3;
- (_TtC12MobileSafari18SFCachedPageLayout)initWithContainer:(id)a3 baseLayout:(id)a4;
- (id)capsuleInfoForPage:(id)a3;
- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4;
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
  v3 = self;
  v4 = [v2 supplementaryIdentifiers];
  if (!v4)
  {
    sub_18BC20D98();
    v4 = sub_18BC20D88();
  }

  return v4;
}

- (_TtC12MobileSafari18SFCachedPageLayout)initWithContainer:(id)a3
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

- (_TtC12MobileSafari18SFCachedPageLayout)initWithContainer:(id)a3 baseLayout:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_18BAC3734(a3, a4);
  swift_unknownObjectRelease();
  return v6;
}

- (void)clearCachedValues
{
  v2 = self;
  sub_18BAC2FD8();
}

- (id)capsuleInfoForPage:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_18BAC30CC(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (id)infoForSupplementaryIdentifier:(id)a3 page:(id)a4
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_18BAC33F0(v6, v8, a4);
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