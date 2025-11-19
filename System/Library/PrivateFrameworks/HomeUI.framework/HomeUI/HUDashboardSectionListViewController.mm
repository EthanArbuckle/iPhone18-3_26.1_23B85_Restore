@interface HUDashboardSectionListViewController
- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4;
- (BOOL)shouldShowHeaderForSection:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUDashboardSectionListViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (id)displayedItemsInSection:(id)a3;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (void)_cancel;
- (void)_done;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)didReorderItemWithSortedItemsBySectionID:(id)a3;
- (void)home:(id)a3 didUpdateApplicationDataForRoom:(id)a4;
- (void)homeDidUpdateApplicationData:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUDashboardSectionListViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20CFB02F0();
}

- (void)_cancel
{
  v2 = self;
  sub_20CFB0688();
}

- (void)_done
{
  v2 = self;
  sub_20CFB0918();
}

- (id)layoutSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_20CFB0A34(a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  (*(v5 + 8))(v7, v4);
  sub_20CECF940(0, &qword_27C81E2B8);
  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CFB1948(v6, v7);
}

- (id)displayedItemsInSection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(HUItemCollectionViewController *)v5 itemManager];
  v7 = [(HFItemManager *)v6 displayedItemsInSectionWithIdentifier:v4];

  if (!v7)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v7 = sub_20D567A58();
  }

  return v7;
}

- (BOOL)shouldShowHeaderForSection:(id)a3
{
  sub_20D567838();
  v4 = self;
  v5 = [(HUItemCollectionViewController *)v4 itemManager];
  v6 = sub_20D5677F8();
  v7 = [(HFItemManager *)v5 sectionIndexForDisplayedSectionIdentifier:v6];

  v8 = [(HUItemCollectionViewController *)v4 itemManager];
  v9 = [(HFItemManager *)v8 titleForSection:v7];

  if (v9)
  {
  }

  return v9 != 0;
}

- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4
{
  v5 = sub_20D5638C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v9 = [a3 isEditing];
  (*(v6 + 8))(v8, v5);
  return v9;
}

- (void)didReorderItemWithSortedItemsBySectionID:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E330);
  v4 = sub_20D567758();
  v5 = self;
  sub_20CFB0FA4(v4);
}

- (void)homeDidUpdateApplicationData:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20CFB1160(v4);
}

- (void)home:(id)a3 didUpdateApplicationDataForRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CFB1E64(v7);
}

- (HUDashboardSectionListViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
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

@end