@interface WidgetAccessoryReachabilityMonitor
- (BOOL)isAccessoryReachable:(id)reachable;
- (_TtC13HomeKitDaemon34WidgetAccessoryReachabilityMonitor)init;
- (void)startMonitoringAccessories:(id)accessories stopMonitoring:(id)monitoring completionHandler:(id)handler;
@end

@implementation WidgetAccessoryReachabilityMonitor

- (BOOL)isAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;

  v4 = sub_2297CD6A4(reachableCopy);

  return v4 & 1;
}

- (void)startMonitoringAccessories:(id)accessories stopMonitoring:(id)monitoring completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  sub_2297CD744();
  v12 = sub_22A4DDB6C();
  v13 = sub_22A4DDB6C();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = sub_22A4DD9DC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = v12;
  v16[6] = v13;
  v16[7] = sub_2295A1B4C;
  v16[8] = v14;

  sub_22957F3C0(0, 0, v10, &unk_22A583E48, v16);
}

- (_TtC13HomeKitDaemon34WidgetAccessoryReachabilityMonitor)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end