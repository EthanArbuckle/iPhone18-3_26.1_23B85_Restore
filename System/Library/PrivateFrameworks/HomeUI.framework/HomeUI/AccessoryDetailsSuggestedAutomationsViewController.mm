@interface AccessoryDetailsSuggestedAutomationsViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (_TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation AccessoryDetailsSuggestedAutomationsViewController

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563878();
  (*(v5 + 8))(v7, v4);
  sub_20D0FD850();
  return swift_getObjCClassFromMetadata();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_20D0FDC50();
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D0FDEC8(v4);

  return v6;
}

- (_TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end