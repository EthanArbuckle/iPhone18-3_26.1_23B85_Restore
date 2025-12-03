@interface AccessoryDetailsSuggestedAutomationsViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (_TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)buildItemModuleControllerForModule:(id)module;
- (void)viewDidLayoutSubviews;
@end

@implementation AccessoryDetailsSuggestedAutomationsViewController

- (Class)cellClassForItem:(id)item indexPath:(id)path
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
  selfCopy = self;
  sub_20D0FDC50();
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20D0FDEC8(moduleCopy);

  return v6;
}

- (_TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end