@interface HUDashboardFilterBarController
- (BOOL)canReorderItemAtIndexPath:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUDashboardFilterBarController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HUDashboardFilterBarDelegate)delegate;
- (NSString)contextTypeDescriptionForAnalytics;
- (double)intrinsicHeight;
- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)compositionalLayoutConfigurationForTraitCollection:(id)a3;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)reorderableItemListForSection:(int64_t)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)diffableDataItemManager:(id)a3 willUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6 isInitialLoad:(BOOL)a7;
- (void)handleTraitChanges;
- (void)resetAnimated:(BOOL)a3;
- (void)setContextTypeDescriptionForAnalytics:(id)a3;
- (void)updateWithContext:(id)a3 animated:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUDashboardFilterBarController

- (void)viewDidLoad
{
  v2 = self;
  sub_20D09C758();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_20D09C95C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20D09CABC(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DashboardFilterBarController();
  v4 = v7.receiver;
  [(HUDashboardFilterBarController *)&v7 viewIsAppearing:v3];
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

- (void)setContextTypeDescriptionForAnalytics:(id)a3
{
  if (a3)
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

- (void)resetAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_20D09D164(v3);
}

- (void)updateWithContext:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_20D09D3A8(v6, v4);
}

- (double)intrinsicHeight
{
  v2 = self;
  sub_20D09D97C();
  v4 = v3;

  return v4;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
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

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20D09DC14(v6, v7);
}

- (id)compositionalLayoutConfigurationForTraitCollection:(id)a3
{
  v3 = [objc_opt_self() defaultConfiguration];
  [v3 setContentInsetsReference_];

  return v3;
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_20D0A2080();
  swift_unknownObjectRelease();

  return v6;
}

- (void)diffableDataItemManager:(id)a3 willUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6 isInitialLoad:(BOOL)a7
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v10 = sub_20D567D08();
  v11 = sub_20D567D08();
  v12 = sub_20D567D08();
  v13 = a3;
  v14 = self;
  sub_20D09DF30(v13, v10, v11, v12, a7);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = sub_20D5638C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v11 = a3;
  v12 = self;
  v13 = sub_20D0A23FC(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_20D09ECA4(v6, v7);

  return v9;
}

- (BOOL)canReorderItemAtIndexPath:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  if (a3)
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

  v10 = self;
  v11 = sub_20D09F0B0();

  sub_20CEF928C(v7, &qword_27C81D5C0);
  return v11 & 1;
}

- (id)reorderableItemListForSection:(int64_t)a3
{
  v3 = self;
  v4 = [(HUItemCollectionViewController *)v3 itemManager];
  v5 = [(HFItemManager *)v4 home];

  if (v5)
  {
    v6 = [(HMHome *)v5 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];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HUDashboardFilterBarController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleTraitChanges
{
  v2 = self;
  sub_20D0A0A94();
}

@end