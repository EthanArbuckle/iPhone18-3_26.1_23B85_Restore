@interface AccessoryDetailsLinkedApplicationViewController
- (_TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController)initWithCoder:(id)a3;
- (_TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AccessoryDetailsLinkedApplicationViewController

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AccessoryDetailsLinkedApplicationViewController();
  [(AccessoryDetailsLinkedApplicationViewController *)&v4 viewWillDisappear:v3];
}

- (_TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController)initWithCoder:(id)a3
{
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v8 = sub_20D5638C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_20D1195E0(v13);

  (*(v9 + 8))(v11, v8);
}

- (_TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end