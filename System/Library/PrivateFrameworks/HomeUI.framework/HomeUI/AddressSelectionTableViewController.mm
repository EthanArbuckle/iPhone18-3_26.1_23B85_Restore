@interface AddressSelectionTableViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (_TtC6HomeUI35AddressSelectionTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AddressSelectionTableViewController

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  (*(v5 + 8))(v7, v4);
  sub_20CECF940(0, &qword_27C820E48);
  return swift_getObjCClassFromMetadata();
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  v8 = sub_20D5638C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20D0B804C(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  viewCopy = view;
  selfCopy = self;
  sub_20D0B729C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC6HomeUI35AddressSelectionTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end