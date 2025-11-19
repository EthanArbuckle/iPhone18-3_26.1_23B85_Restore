@interface HFItemManagerMessageBatchCoordinator
- (HFItemManager)itemManager;
- (HFItemManagerBatchedDelegateAdapter)delegateAdapter;
- (HFItemManagerMessageBatchCoordinator)init;
- (void)batchedAccessory:(id)a3 didUpdateLoggedInAccount:(id)a4 inHome:(id)a5 sender:(SEL)a6;
- (void)batchedDidUpdateControllableAccessory:(id)a3 inHome:(id)a4 sender:(SEL)a5;
- (void)batchedLightProfileUpdate:(id)a3 settings:(id)a4 sender:(SEL)a5;
- (void)batchedMediaObjectDidUpdate:(id)a3 settings:(id)a4 inHome:(id)a5 sender:(SEL)a6;
- (void)batchedSoftwareUpdateV2DidUpdateForAccessory:(id)a3 sender:(SEL)a4;
- (void)batchedValuesDidUpdateForCharacteristics:(id)a3 inHome:(id)a4 sender:(SEL)a5;
@end

@implementation HFItemManagerMessageBatchCoordinator

- (HFItemManager)itemManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HFItemManagerBatchedDelegateAdapter)delegateAdapter
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)batchedAccessory:(id)a3 didUpdateLoggedInAccount:(id)a4 inHome:(id)a5 sender:(SEL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_20DA73B2C(v10, a5, a6);
}

- (void)batchedDidUpdateControllableAccessory:(id)a3 inHome:(id)a4 sender:(SEL)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = a3;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_20D9EE8D0(inited);
  v14 = v13;
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  sub_20DA7141C(v14, 3, MEMORY[0x277D84FA0], a4, a5);
}

- (void)batchedValuesDidUpdateForCharacteristics:(id)a3 inHome:(id)a4 sender:(SEL)a5
{
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v8 = sub_20DD651E4();
  v9 = a4;
  v10 = self;
  sub_20DA7141C(v8, 0, MEMORY[0x277D84FA0], a4, a5);
}

- (void)batchedMediaObjectDidUpdate:(id)a3 settings:(id)a4 inHome:(id)a5 sender:(SEL)a6
{
  swift_unknownObjectRetain();
  v11 = self;
  v14 = a4;
  v12 = a5;
  sub_20DA7141C(a3, 1, MEMORY[0x277D84FA0], a5, a6);
  if (v14)
  {
    v13 = v14;
    sub_20DA7141C(v14, 2, MEMORY[0x277D84FA0], a5, a6);

    v12 = v11;
    v11 = v13;
  }

  swift_unknownObjectRelease();
}

- (void)batchedLightProfileUpdate:(id)a3 settings:(id)a4 sender:(SEL)a5
{
  v8 = a3;
  v11 = self;
  v9 = [v8 accessory];
  v10 = [v9 home];

  sub_20DA7141C(a3, 4, MEMORY[0x277D84FA0], v10, a5);
}

- (void)batchedSoftwareUpdateV2DidUpdateForAccessory:(id)a3 sender:(SEL)a4
{
  v6 = a3;
  v7 = self;
  sub_20DA7274C(v6, a4);
}

- (HFItemManagerMessageBatchCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end