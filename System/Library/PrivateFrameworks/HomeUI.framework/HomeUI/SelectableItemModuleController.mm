@interface SelectableItemModuleController
- (BOOL)canSelectItem:(id)item;
- (_TtC6HomeUI30SelectableItemModuleController)initWithModule:(id)module;
- (unint64_t)didSelectItem:(id)item;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation SelectableItemModuleController

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20CF2B80C(cellCopy, itemCopy);
}

- (BOOL)canSelectItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  LOBYTE(self) = sub_20CF2BC6C(itemCopy);

  return self & 1;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_20CF2C27C(itemCopy);

  return 0;
}

- (_TtC6HomeUI30SelectableItemModuleController)initWithModule:(id)module
{
  *(&self->super._host + OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for SelectableItemModuleController();
  return [(HUItemModuleController *)&v6 initWithModule:module];
}

@end