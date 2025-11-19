@interface HUDashboardLayoutManager
- (BOOL)isAdaptiveTileStyleInSectionIdentifier:(id)a3 context:(id)a4;
- (HUDashboardLayoutManager)init;
- (HUDashboardLayoutManager)initWithDelegate:(id)a3;
- (HUGridSize)favoritesSectionGridSize;
- (id)buildNowPlayingSectionFor:(id)a3 sectionIdentifier:(id)a4 :(id)a5;
- (id)buildSectionWithIdentifier:(id)a3 context:(id)a4 layoutEnvironment:(id)a5;
- (id)configurationWithContext:(id)a3 traitCollection:(id)a4;
- (id)generateCameraLayoutOptionsFor:(id)a3;
- (void)registerSectionDecorationViewsWithLayout:(id)a3;
@end

@implementation HUDashboardLayoutManager

- (HUDashboardLayoutManager)initWithDelegate:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts) = 0;
  v3 = (&self->super.super.isa + OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DashboardLayoutManager();
  swift_unknownObjectRetain();
  v4 = [(HUCollectionLayoutManager *)&v6 init];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

- (id)configurationWithContext:(id)a3 traitCollection:(id)a4
{
  v4 = [objc_opt_self() defaultConfiguration];
  [v4 setContentInsetsReference_];
  [v4 setInterSectionSpacing_];

  return v4;
}

- (id)buildSectionWithIdentifier:(id)a3 context:(id)a4 layoutEnvironment:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  v11 = sub_20CF02ECC(v8, v9, a5);

  swift_unknownObjectRelease();

  return v11;
}

- (BOOL)isAdaptiveTileStyleInSectionIdentifier:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_20CF032D8(v6, &v13);
  v11 = v13;
  v12 = v14;
  v9 = xmmword_20D5BA030;
  v10 = 2;
  v7 = _s6HomeUI23CollectionLayoutManagerC5StyleO2eeoiySbAE_AEtFZ_0(&v11, &v9);

  sub_20CEFF424(v11, *(&v11 + 1), v12);
  return v7;
}

- (id)buildNowPlayingSectionFor:(id)a3 sectionIdentifier:(id)a4 :(id)a5
{
  v7 = sub_20D567838();
  v9 = v8;
  swift_unknownObjectRetain();
  v10 = self;
  sub_20CF03EC8(v7, v9, a5);
  v12 = v11;
  swift_unknownObjectRelease();

  return v12;
}

- (void)registerSectionDecorationViewsWithLayout:(id)a3
{
  type metadata accessor for TransparentBlackBackgroundDecorationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = a3;
  v5 = sub_20D5677F8();
  [v6 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v5];
}

- (HUGridSize)favoritesSectionGridSize
{
  v2 = 1;
  v3 = 2;
  result.columnsAcross = v3;
  result.rowsDown = v2;
  return result;
}

- (HUDashboardLayoutManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)generateCameraLayoutOptionsFor:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = HUCellSizeSubclassForViewSizeSubclass([v3 viewSizeSubclass]);
    v5 = [objc_opt_self() defaultOptionsForCellSizeSubclass:v4 viewSizeSubclass:{objc_msgSend(v3, sel_viewSizeSubclass)}];

    v6 = v5;
  }

  else
  {
    v6 = [objc_opt_self() defaultOptionsForCellSizeSubclass:1 viewSizeSubclass:1];
  }

  return v6;
}

@end