@interface HUDashboardFilterBarController
- (BOOL)canReorderItemAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUDashboardFilterBarController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HUDashboardFilterBarDelegate)delegate;
- (NSString)contextTypeDescriptionForAnalytics;
- (double)intrinsicHeight;
- (id)_performTapActionForItem:(id)item tappedArea:(id)area;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)compositionalLayoutConfigurationForTraitCollection:(id)collection;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (id)reorderableItemListForSection:(int64_t)section;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)diffableDataItemManager:(id)manager willUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems isInitialLoad:(BOOL)load;
- (void)handleTraitChanges;
- (void)resetAnimated:(BOOL)animated;
- (void)setContextTypeDescriptionForAnalytics:(id)analytics;
- (void)updateWithContext:(id)context animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUDashboardFilterBarController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20D09C758();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20D09C95C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20D09CABC(disappear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DashboardFilterBarController();
  v4 = v7.receiver;
  [(HUDashboardFilterBarController *)&v7 viewIsAppearing:appearingCopy];
  sub_20D0A1514();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC410;
  *(inited + 32) = sub_20D566298();
  v6 = sub_20D07AE80(inited);
  swift_setDeallocating();
  MEMORY[0x20F31D410](v6, sel_handleTraitChanges);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DashboardFilterBarController();
  v2 = v4.receiver;
  [(HUItemCollectionViewController *)&v4 viewDidLayoutSubviews];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dashboardFilterBarControllerDidLayoutSubviews_];
    swift_unknownObjectRelease();
  }
}

- (HUDashboardFilterBarDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)contextTypeDescriptionForAnalytics
{
  v2 = self + OBJC_IVAR___HUDashboardFilterBarController_contextTypeDescriptionForAnalytics;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_20D5663C8();
    v3 = sub_20D5677F8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContextTypeDescriptionForAnalytics:(id)analytics
{
  if (analytics)
  {
    v4 = sub_20D567838();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___HUDashboardFilterBarController_contextTypeDescriptionForAnalytics);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (void)resetAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_20D09D164(animatedCopy);
}

- (void)updateWithContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  selfCopy = self;
  sub_20D09D3A8(contextCopy, animatedCopy);
}

- (double)intrinsicHeight
{
  selfCopy = self;
  sub_20D09D97C();
  v4 = v3;

  return v4;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  (*(v5 + 8))(v7, v4);
  type metadata accessor for DashboardFilterCategoryCell();
  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20D09DC14(cellCopy, itemCopy);
}

- (id)compositionalLayoutConfigurationForTraitCollection:(id)collection
{
  defaultConfiguration = [objc_opt_self() defaultConfiguration];
  [defaultConfiguration setContentInsetsReference_];

  return defaultConfiguration;
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_20D0A2080();
  swift_unknownObjectRelease();

  return v6;
}

- (void)diffableDataItemManager:(id)manager willUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems isInitialLoad:(BOOL)load
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v10 = sub_20D567D08();
  v11 = sub_20D567D08();
  v12 = sub_20D567D08();
  managerCopy = manager;
  selfCopy = self;
  sub_20D09DF30(managerCopy, v10, v11, v12, load);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = sub_20D5638C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_20D0A23FC(viewCopy, v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)_performTapActionForItem:(id)item tappedArea:(id)area
{
  itemCopy = item;
  areaCopy = area;
  selfCopy = self;
  v9 = sub_20D09ECA4(itemCopy, areaCopy);

  return v9;
}

- (BOOL)canReorderItemAtIndexPath:(id)path
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  if (path)
  {
    sub_20D563878();
    v8 = sub_20D5638C8();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_20D5638C8();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  v11 = sub_20D09F0B0();

  sub_20CEF928C(v7, &qword_27C81D5C0);
  return v11 & 1;
}

- (id)reorderableItemListForSection:(int64_t)section
{
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  home = [(HFItemManager *)itemManager home];

  if (home)
  {
    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 = [(HMHome *)home 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];
  }

  else
  {
    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 = 0;
  }

  return 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;
}

- (HUDashboardFilterBarController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)manager
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleTraitChanges
{
  selfCopy = self;
  sub_20D0A0A94();
}

@end