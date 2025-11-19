@interface AddressSelectionTableViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (_TtC6HomeUI35AddressSelectionTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AddressSelectionTableViewController

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
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

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = sub_20D5638C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_20D0B804C(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v10 = a3;
  v11 = self;
  sub_20D0B729C(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC6HomeUI35AddressSelectionTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end