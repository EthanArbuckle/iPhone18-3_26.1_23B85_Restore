@interface ActionSetState.SubscriptionManager
- (BOOL)isActionSetOn:(id)on;
- (BOOL)isMonitoringActionSet:(id)set;
- (_TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager)init;
- (void)actionSetStateDidChange:(id)change state:(BOOL)state;
- (void)stopAllMonitoringForActionSetUUID:(NSUUID *)d completion:(id)completion;
@end

@implementation ActionSetState.SubscriptionManager

- (void)stopAllMonitoringForActionSetUUID:(NSUUID *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A581C58;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A57B590;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_229859F70(0, 0, v10, &unk_22A581CC0, v15);
}

- (BOOL)isMonitoringActionSet:(id)set
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  selfCopy = self;
  v10 = sub_2297486D0(v8);

  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

- (BOOL)isActionSetOn:(id)on
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v9 = *(&self->super.super.isa + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);
  selfCopy = self;

  os_unfair_lock_lock(v9 + 6);
  sub_229748838(&v9[4], v8, &v13);
  os_unfair_lock_unlock(v9 + 6);
  LOBYTE(self) = v13;

  (*(v5 + 8))(v8, v4);
  return self;
}

- (void)actionSetStateDidChange:(id)change state:(BOOL)state
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  selfCopy = self;
  sub_2297489C4(v10, state);

  (*(v7 + 8))(v10, v6);
}

- (_TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end