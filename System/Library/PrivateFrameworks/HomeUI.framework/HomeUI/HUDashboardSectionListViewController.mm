@interface HUDashboardSectionListViewController
- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (BOOL)shouldShowHeaderForSection:(id)section;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUDashboardSectionListViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (id)displayedItemsInSection:(id)section;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (void)_cancel;
- (void)_done;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)didReorderItemWithSortedItemsBySectionID:(id)d;
- (void)home:(id)home didUpdateApplicationDataForRoom:(id)room;
- (void)homeDidUpdateApplicationData:(id)data;
- (void)viewDidLoad;
@end

@implementation HUDashboardSectionListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CFB02F0();
}

- (void)_cancel
{
  selfCopy = self;
  sub_20CFB0688();
}

- (void)_done
{
  selfCopy = self;
  sub_20CFB0918();
}

- (id)layoutSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_20CFB0A34(section, environment);
  swift_unknownObjectRelease();

  return v8;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
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

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20CFB1948(cellCopy, itemCopy);
}

- (id)displayedItemsInSection:(id)section
{
  sectionCopy = section;
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  v7 = [(HFItemManager *)itemManager displayedItemsInSectionWithIdentifier:sectionCopy];

  if (!v7)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20D567A78();
    v7 = sub_20D567A58();
  }

  return v7;
}

- (BOOL)shouldShowHeaderForSection:(id)section
{
  sub_20D567838();
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
  v6 = sub_20D5677F8();
  v7 = [(HFItemManager *)itemManager sectionIndexForDisplayedSectionIdentifier:v6];

  itemManager2 = [(HUItemCollectionViewController *)selfCopy itemManager];
  v9 = [(HFItemManager *)itemManager2 titleForSection:v7];

  if (v9)
  {
  }

  return v9 != 0;
}

- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path
{
  v5 = sub_20D5638C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  isEditing = [view isEditing];
  (*(v6 + 8))(v8, v5);
  return isEditing;
}

- (void)didReorderItemWithSortedItemsBySectionID:(id)d
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E330);
  v4 = sub_20D567758();
  selfCopy = self;
  sub_20CFB0FA4(v4);
}

- (void)homeDidUpdateApplicationData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_20CFB1160(dataCopy);
}

- (void)home:(id)home didUpdateApplicationDataForRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  selfCopy = self;
  sub_20CFB1E64(roomCopy);
}

- (HUDashboardSectionListViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
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

@end