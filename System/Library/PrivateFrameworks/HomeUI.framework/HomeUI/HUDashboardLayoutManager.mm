@interface HUDashboardLayoutManager
- (BOOL)isAdaptiveTileStyleInSectionIdentifier:(id)identifier context:(id)context;
- (HUDashboardLayoutManager)init;
- (HUDashboardLayoutManager)initWithDelegate:(id)delegate;
- (HUGridSize)favoritesSectionGridSize;
- (id)buildNowPlayingSectionFor:(id)for sectionIdentifier:(id)identifier :(id)a5;
- (id)buildSectionWithIdentifier:(id)identifier context:(id)context layoutEnvironment:(id)environment;
- (id)configurationWithContext:(id)context traitCollection:(id)collection;
- (id)generateCameraLayoutOptionsFor:(id)for;
- (void)registerSectionDecorationViewsWithLayout:(id)layout;
@end

@implementation HUDashboardLayoutManager

- (HUDashboardLayoutManager)initWithDelegate:(id)delegate
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

- (id)configurationWithContext:(id)context traitCollection:(id)collection
{
  defaultConfiguration = [objc_opt_self() defaultConfiguration];
  [defaultConfiguration setContentInsetsReference_];
  [defaultConfiguration setInterSectionSpacing_];

  return defaultConfiguration;
}

- (id)buildSectionWithIdentifier:(id)identifier context:(id)context layoutEnvironment:(id)environment
{
  identifierCopy = identifier;
  contextCopy = context;
  swift_unknownObjectRetain();
  selfCopy = self;
  v11 = sub_20CF02ECC(identifierCopy, contextCopy, environment);

  swift_unknownObjectRelease();

  return v11;
}

- (BOOL)isAdaptiveTileStyleInSectionIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  sub_20CF032D8(contextCopy, &v13);
  v11 = v13;
  v12 = v14;
  v9 = xmmword_20D5BA030;
  v10 = 2;
  v7 = _s6HomeUI23CollectionLayoutManagerC5StyleO2eeoiySbAE_AEtFZ_0(&v11, &v9);

  sub_20CEFF424(v11, *(&v11 + 1), v12);
  return v7;
}

- (id)buildNowPlayingSectionFor:(id)for sectionIdentifier:(id)identifier :(id)a5
{
  v7 = sub_20D567838();
  v9 = v8;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CF03EC8(v7, v9, a5);
  v12 = v11;
  swift_unknownObjectRelease();

  return v12;
}

- (void)registerSectionDecorationViewsWithLayout:(id)layout
{
  type metadata accessor for TransparentBlackBackgroundDecorationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  layoutCopy = layout;
  v5 = sub_20D5677F8();
  [layoutCopy registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v5];
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

- (id)generateCameraLayoutOptionsFor:(id)for
{
  if (for)
  {
    forCopy = for;
    v4 = HUCellSizeSubclassForViewSizeSubclass([forCopy viewSizeSubclass]);
    v5 = [objc_opt_self() defaultOptionsForCellSizeSubclass:v4 viewSizeSubclass:{objc_msgSend(forCopy, sel_viewSizeSubclass)}];

    v6 = v5;
  }

  else
  {
    v6 = [objc_opt_self() defaultOptionsForCellSizeSubclass:1 viewSizeSubclass:1];
  }

  return v6;
}

@end