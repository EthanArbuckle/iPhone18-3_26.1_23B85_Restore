@interface HomeState.Stream.HomeFrameworkObserver
- (_TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver)init;
- (void)didUpdateToInstallingState:(BOOL)state forAccessory:(id)accessory;
- (void)executionEnvironmentRunningStateDidChange:(id)change;
- (void)home:(id)home didReadValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics;
- (void)home:(id)home didWriteValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics;
- (void)home:(id)home willReadValuesForCharacteristics:(id)characteristics;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didFailUpdate:(id)update withError:(id)error timestamp:(id)timestamp;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didReceiveUpdate:(id)update;
@end

@implementation HomeState.Stream.HomeFrameworkObserver

- (_TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)home:(id)home didWriteValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  sub_20D9C7830();
  sub_20D9C6D80(&unk_280E020F0, sub_20D9C7830);
  v9 = sub_20DD651E4();
  v10 = *(&self->super.isa + OBJC_IVAR____TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver_stream);
  sub_20DD63BB4();
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  selfCopy = self;

  sub_20DD63B94();

  sub_20D9C7BC4(v8);
}

- (void)home:(id)home willReadValuesForCharacteristics:(id)characteristics
{
  sub_20D9C7830();
  sub_20D9C6D80(&unk_280E020F0, sub_20D9C7830);
  v6 = sub_20DD651E4();
  homeCopy = home;
  selfCopy = self;
  sub_20D9C787C(v6);
}

- (void)home:(id)home didReadValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics
{
  sub_20D9C7830();
  sub_20D9C6D80(&unk_280E020F0, sub_20D9C7830);
  v7 = sub_20DD651E4();
  sub_20DD651E4();
  homeCopy = home;
  selfCopy = self;
  sub_20D9C79E4(v7);
}

- (void)executionEnvironmentRunningStateDidChange:(id)change
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  changeCopy = change;
  selfCopy = self;
  runningState = [changeCopy runningState];
  v12 = sub_20DD65114();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = runningState;
  v14[5] = v13;
  sub_20DA1C200(0, 0, v8, &unk_20DD93830, v14);
}

- (void)softwareUpdateController:(id)controller accessory:(id)accessory didReceiveUpdate:(id)update
{
  v5 = sub_20DD63744();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63714();
  (*(v6 + 8))(v9, v5);
}

- (void)softwareUpdateController:(id)controller accessory:(id)accessory didFailUpdate:(id)update withError:(id)error timestamp:(id)timestamp
{
  v7 = sub_20DD636C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20DD63744();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63714();
  sub_20DD63674();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)didUpdateToInstallingState:(BOOL)state forAccessory:(id)accessory
{
  stateCopy = state;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_20D9C5FAC(stateCopy, accessoryCopy);
}

@end