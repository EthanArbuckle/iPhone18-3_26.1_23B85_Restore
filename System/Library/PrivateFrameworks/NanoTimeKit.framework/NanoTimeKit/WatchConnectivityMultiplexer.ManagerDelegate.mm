@interface WatchConnectivityMultiplexer.ManagerDelegate
- (_TtCC11NanoTimeKit28WatchConnectivityMultiplexer15ManagerDelegate)init;
- (void)handleDeviceHasBecomeActiveWithCompletionHandler:(id)handler;
- (void)handlePingForExtensionBundleID:(id)d;
- (void)isExtensionPrivileged:(NSString *)privileged completionHandler:(id)handler;
- (void)shouldWakeAppWithBundleID:(NSString *)d completionHandler:(id)handler;
@end

@implementation WatchConnectivityMultiplexer.ManagerDelegate

- (void)handlePingForExtensionBundleID:(id)d
{
  if (d)
  {
    v4 = sub_22DCB612C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_22DC61F14(v4, v6);
}

- (void)isExtensionPrivileged:(NSString *)privileged completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = privileged;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_22DCB62BC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22DCEA368;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22DCEA370;
  v16[5] = v15;
  privilegedCopy = privileged;
  selfCopy = self;
  sub_22DC9E89C(0, 0, v11, &unk_22DCEA378, v16);
}

- (void)handleDeviceHasBecomeActiveWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_22DCB62BC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22DCEA328;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22DCEA330;
  v14[5] = v13;
  selfCopy = self;
  sub_22DC9E89C(0, 0, v9, &unk_22DCEA338, v14);
}

- (void)shouldWakeAppWithBundleID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_22DCB62BC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22DCEA2F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22DCEA300;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_22DC9E89C(0, 0, v11, &unk_22DCEC670, v16);
}

- (_TtCC11NanoTimeKit28WatchConnectivityMultiplexer15ManagerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end