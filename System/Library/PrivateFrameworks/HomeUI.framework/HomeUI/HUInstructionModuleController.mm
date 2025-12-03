@interface HUInstructionModuleController
- (Class)collectionCellClassForItem:(id)item;
- (HUInstructionModuleController)initWithModule:(id)module;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation HUInstructionModuleController

- (Class)collectionCellClassForItem:(id)item
{
  sub_20CECF940(0, &qword_27C820E40);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  itemCopy = item;
  selfCopy = self;
  if ([itemCopy isKindOfClass_])
  {

    sub_20CECF940(0, &qword_27C81E2B8);
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = type metadata accessor for InstructionModuleController();
    [(HUItemModuleController *)&v9 collectionCellClassForItem:itemCopy];

    swift_getObjCClassMetadata();
  }

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_20CFD77C8(cellCopy, itemCopy);
}

- (HUInstructionModuleController)initWithModule:(id)module
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InstructionModuleController();
  return [(HUItemModuleController *)&v5 initWithModule:module];
}

@end