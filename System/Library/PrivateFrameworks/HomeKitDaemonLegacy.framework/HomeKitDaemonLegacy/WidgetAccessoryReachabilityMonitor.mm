@interface WidgetAccessoryReachabilityMonitor
- (BOOL)isAccessoryReachable:(id)reachable;
- (_TtC19HomeKitDaemonLegacy34WidgetAccessoryReachabilityMonitor)init;
- (void)startMonitoringAccessories:(id)accessories stopMonitoring:(id)monitoring completionHandler:(id)handler;
@end

@implementation WidgetAccessoryReachabilityMonitor

- (BOOL)isAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;
  home = [reachableCopy home];
  if (home)
  {
    v5 = home;
    isCurrentDevicePrimaryResident = [home isCurrentDevicePrimaryResident];
    v7 = &selRef_isReachable;
    if (!isCurrentDevicePrimaryResident)
    {
      v7 = &selRef_isRemotelyReachable;
    }

    v8 = [reachableCopy *v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)startMonitoringAccessories:(id)accessories stopMonitoring:(id)monitoring completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  sub_253200644(0, &qword_281530EA0, off_279719FE0);
  sub_25320C584();
  v12 = sub_253CD0BF8();
  v13 = sub_253CD0BF8();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = sub_253CD0B58();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = v12;
  v16[6] = v13;
  v16[7] = sub_25320C5F4;
  v16[8] = v14;

  sub_25324690C(0, 0, v10, &unk_253D488C0, v16);
}

- (_TtC19HomeKitDaemonLegacy34WidgetAccessoryReachabilityMonitor)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end