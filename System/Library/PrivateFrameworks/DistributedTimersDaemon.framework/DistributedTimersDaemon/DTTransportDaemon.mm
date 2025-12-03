@interface DTTransportDaemon
- (_TtC23DistributedTimersDaemon17DTTransportDaemon)init;
- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)siriEndpointProfile:(id)profile didUpdateSessionHubIdentifier:(id)identifier;
@end

@implementation DTTransportDaemon

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  managerCopy = manager;

  sub_2490EE05C(managerCopy, "HomeKit didUpdateStatus: %{public}s", &unk_285C204A0, &unk_249110818, &unk_249110820);
}

- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state
{
  managerCopy = manager;

  sub_2490F854C(state);
}

- (void)siriEndpointProfile:(id)profile didUpdateSessionHubIdentifier:(id)identifier
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  if (identifier)
  {
    sub_24910C2CC();
    v10 = sub_24910C2FC();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_24910C2FC();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  profileCopy = profile;

  DTTransportDaemon.siriEndpointProfile(_:didUpdateSessionHubIdentifier:)(profileCopy);

  sub_2490A487C(v9, &qword_27EED7900, &qword_24910EB50);
}

- (_TtC23DistributedTimersDaemon17DTTransportDaemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end