@interface HFItemManagerMessageBatchCoordinator
- (HFItemManager)itemManager;
- (HFItemManagerBatchedDelegateAdapter)delegateAdapter;
- (HFItemManagerMessageBatchCoordinator)init;
- (void)batchedAccessory:(id)accessory didUpdateLoggedInAccount:(id)account inHome:(id)home sender:(SEL)sender;
- (void)batchedDidUpdateControllableAccessory:(id)accessory inHome:(id)home sender:(SEL)sender;
- (void)batchedLightProfileUpdate:(id)update settings:(id)settings sender:(SEL)sender;
- (void)batchedMediaObjectDidUpdate:(id)update settings:(id)settings inHome:(id)home sender:(SEL)sender;
- (void)batchedSoftwareUpdateV2DidUpdateForAccessory:(id)accessory sender:(SEL)sender;
- (void)batchedValuesDidUpdateForCharacteristics:(id)characteristics inHome:(id)home sender:(SEL)sender;
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

- (void)batchedAccessory:(id)accessory didUpdateLoggedInAccount:(id)account inHome:(id)home sender:(SEL)sender
{
  accessoryCopy = accessory;
  accountCopy = account;
  homeCopy = home;
  selfCopy = self;
  sub_20DA73B2C(accessoryCopy, home, sender);
}

- (void)batchedDidUpdateControllableAccessory:(id)accessory inHome:(id)home sender:(SEL)sender
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = accessory;
  accessoryCopy = accessory;
  homeCopy = home;
  selfCopy = self;
  sub_20D9EE8D0(inited);
  v14 = v13;
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  sub_20DA7141C(v14, 3, MEMORY[0x277D84FA0], home, sender);
}

- (void)batchedValuesDidUpdateForCharacteristics:(id)characteristics inHome:(id)home sender:(SEL)sender
{
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v8 = sub_20DD651E4();
  homeCopy = home;
  selfCopy = self;
  sub_20DA7141C(v8, 0, MEMORY[0x277D84FA0], home, sender);
}

- (void)batchedMediaObjectDidUpdate:(id)update settings:(id)settings inHome:(id)home sender:(SEL)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  settingsCopy = settings;
  homeCopy = home;
  sub_20DA7141C(update, 1, MEMORY[0x277D84FA0], home, sender);
  if (settingsCopy)
  {
    v13 = settingsCopy;
    sub_20DA7141C(settingsCopy, 2, MEMORY[0x277D84FA0], home, sender);

    homeCopy = selfCopy;
    selfCopy = v13;
  }

  swift_unknownObjectRelease();
}

- (void)batchedLightProfileUpdate:(id)update settings:(id)settings sender:(SEL)sender
{
  updateCopy = update;
  selfCopy = self;
  accessory = [updateCopy accessory];
  home = [accessory home];

  sub_20DA7141C(update, 4, MEMORY[0x277D84FA0], home, sender);
}

- (void)batchedSoftwareUpdateV2DidUpdateForAccessory:(id)accessory sender:(SEL)sender
{
  accessoryCopy = accessory;
  selfCopy = self;
  sub_20DA7274C(accessoryCopy, sender);
}

- (HFItemManagerMessageBatchCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end