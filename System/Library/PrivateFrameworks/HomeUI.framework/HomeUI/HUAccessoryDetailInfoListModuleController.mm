@interface HUAccessoryDetailInfoListModuleController
- (Class)cellClassForItem:(id)item;
- (HUAccessoryDetailInfoListModuleController)initWithModule:(id)module;
- (id)init:(id)init;
- (unint64_t)didSelectItem:(id)item;
- (void)accessoryButtonTappedForItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUAccessoryDetailInfoListModuleController

- (id)init:(id)init
{
  v5 = self + OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
  v6 = type metadata accessor for AccessoryDetailInfoListModuleController();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(HUItemModuleController *)&v8 initWithModule:init];
}

- (Class)cellClassForItem:(id)item
{
  sub_20D08472C();

  return swift_getObjCClassFromMetadata();
}

- (void)setupCell:(id)cell forItem:(id)item
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for AccessoryDetailInfoListModuleController();
  cellCopy = cell;
  itemCopy = item;
  v8 = v13.receiver;
  [(HUItemModuleController *)&v13 setupCell:cellCopy forItem:itemCopy];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = cellCopy;
    [v10 setHideIcon_];
    v12 = v11;
    [v10 setAccessoryType_];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20D08488C(cellCopy, itemCopy, animated);
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_20D084CDC(itemCopy);

  return 0;
}

- (void)accessoryButtonTappedForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_20D084DF0(itemCopy);
}

- (HUAccessoryDetailInfoListModuleController)initWithModule:(id)module
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end