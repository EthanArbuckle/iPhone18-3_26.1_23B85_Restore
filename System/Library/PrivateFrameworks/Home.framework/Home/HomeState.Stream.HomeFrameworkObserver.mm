@interface HomeState.Stream.HomeFrameworkObserver
- (_TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver)init;
- (void)didUpdateToInstallingState:(BOOL)a3 forAccessory:(id)a4;
- (void)executionEnvironmentRunningStateDidChange:(id)a3;
- (void)home:(id)a3 didReadValuesForCharacteristics:(id)a4 failedCharacteristics:(id)a5;
- (void)home:(id)a3 didWriteValuesForCharacteristics:(id)a4 failedCharacteristics:(id)a5;
- (void)home:(id)a3 willReadValuesForCharacteristics:(id)a4;
- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didFailUpdate:(id)a5 withError:(id)a6 timestamp:(id)a7;
- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didReceiveUpdate:(id)a5;
@end

@implementation HomeState.Stream.HomeFrameworkObserver

- (_TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)home:(id)a3 didWriteValuesForCharacteristics:(id)a4 failedCharacteristics:(id)a5
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
  v13 = self;

  sub_20DD63B94();

  sub_20D9C7BC4(v8);
}

- (void)home:(id)a3 willReadValuesForCharacteristics:(id)a4
{
  sub_20D9C7830();
  sub_20D9C6D80(&unk_280E020F0, sub_20D9C7830);
  v6 = sub_20DD651E4();
  v7 = a3;
  v8 = self;
  sub_20D9C787C(v6);
}

- (void)home:(id)a3 didReadValuesForCharacteristics:(id)a4 failedCharacteristics:(id)a5
{
  sub_20D9C7830();
  sub_20D9C6D80(&unk_280E020F0, sub_20D9C7830);
  v7 = sub_20DD651E4();
  sub_20DD651E4();
  v8 = a3;
  v9 = self;
  sub_20D9C79E4(v7);
}

- (void)executionEnvironmentRunningStateDidChange:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = a3;
  v10 = self;
  v11 = [v9 runningState];
  v12 = sub_20DD65114();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v11;
  v14[5] = v13;
  sub_20DA1C200(0, 0, v8, &unk_20DD93830, v14);
}

- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didReceiveUpdate:(id)a5
{
  v5 = sub_20DD63744();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63714();
  (*(v6 + 8))(v9, v5);
}

- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didFailUpdate:(id)a5 withError:(id)a6 timestamp:(id)a7
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

- (void)didUpdateToInstallingState:(BOOL)a3 forAccessory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self;
  sub_20D9C5FAC(v4, v6);
}

@end