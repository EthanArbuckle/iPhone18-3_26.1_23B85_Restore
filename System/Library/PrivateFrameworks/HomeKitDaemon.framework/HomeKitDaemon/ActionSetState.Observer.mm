@interface ActionSetState.Observer
- (_TtCC13HomeKitDaemon14ActionSetState8Observer)init;
- (void)currentStateForActionSetUUIDs:(NSArray *)a3 completionHandler:(id)a4;
- (void)device:(id)a3 stateChanged:(unint64_t)a4;
- (void)handleWithCharacteristicsChangedNotification:(id)a3;
- (void)stateRegistrationsDidChangeForActionSetUUIDs:(id)a3;
- (void)stopMonitoringActionSet:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation ActionSetState.Observer

- (void)stopMonitoringActionSet:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_22A4DD9DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = a3;
  v11 = a3;

  sub_22957F3C0(0, 0, v8, &unk_22A581EC0, v10);
}

- (void)stateRegistrationsDidChangeForActionSetUUIDs:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_22A4DB7DC();
  v8 = sub_22A4DD83C();
  v9 = sub_22A4DD9DC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = v8;

  sub_22957F3C0(0, 0, v7, &unk_22A5832D0, v10);
}

- (void)handleWithCharacteristicsChangedNotification:(id)a3
{
  v3 = sub_22A4DB21C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();

  sub_22974FE88(v7);

  (*(v4 + 8))(v7, v3);
}

- (void)currentStateForActionSetUUIDs:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A581EA8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A57B590;
  v15[5] = v14;
  v16 = a3;

  sub_229859F70(0, 0, v10, &unk_22A581CC0, v15);
}

- (void)timerDidFire:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  v9 = sub_22A4DD9DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = ObjectType;

  sub_22957F3C0(0, 0, v8, &unk_22A581E98, v10);
}

- (_TtCC13HomeKitDaemon14ActionSetState8Observer)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)device:(id)a3 stateChanged:(unint64_t)a4
{
  v5 = a3;

  sub_22975C8B8(v5, a4);
}

@end