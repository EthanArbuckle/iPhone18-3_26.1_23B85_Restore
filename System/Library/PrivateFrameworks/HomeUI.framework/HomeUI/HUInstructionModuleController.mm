@interface HUInstructionModuleController
- (Class)collectionCellClassForItem:(id)a3;
- (HUInstructionModuleController)initWithModule:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation HUInstructionModuleController

- (Class)collectionCellClassForItem:(id)a3
{
  sub_20CECF940(0, &qword_27C820E40);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = a3;
  v7 = self;
  if ([v6 isKindOfClass_])
  {

    sub_20CECF940(0, &qword_27C81E2B8);
  }

  else
  {
    v9.receiver = v7;
    v9.super_class = type metadata accessor for InstructionModuleController();
    [(HUItemModuleController *)&v9 collectionCellClassForItem:v6];

    swift_getObjCClassMetadata();
  }

  return swift_getObjCClassFromMetadata();
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CFD77C8(v6, v7);
}

- (HUInstructionModuleController)initWithModule:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InstructionModuleController();
  return [(HUItemModuleController *)&v5 initWithModule:a3];
}

@end