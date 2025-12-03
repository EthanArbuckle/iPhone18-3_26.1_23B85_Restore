@interface AccessoryDetailsLinkedApplicationViewController
- (_TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController)initWithCoder:(id)coder;
- (_TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AccessoryDetailsLinkedApplicationViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AccessoryDetailsLinkedApplicationViewController();
  [(AccessoryDetailsLinkedApplicationViewController *)&v4 viewWillDisappear:disappearCopy];
}

- (_TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController)initWithCoder:(id)coder
{
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  v8 = sub_20D5638C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  managerCopy = manager;
  itemCopy = item;
  selfCopy = self;
  sub_20D1195E0(itemCopy);

  (*(v9 + 8))(v11, v8);
}

- (_TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end