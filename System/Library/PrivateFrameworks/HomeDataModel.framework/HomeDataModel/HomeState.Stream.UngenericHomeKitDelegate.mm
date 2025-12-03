@interface HomeState.Stream.UngenericHomeKitDelegate
- (_TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate)init;
- (void)didUpdateSupportedCapabilitiesForResidentDevice:(id)device;
- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status;
- (void)softwareUpdate:(char *)update didUpdateState:;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didFailUpdate:(id)update withError:(id)error timestamp:(id)timestamp;
@end

@implementation HomeState.Stream.UngenericHomeKitDelegate

- (_TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status
{
  deviceCopy = device;
  selfCopy = self;
  sub_1D1AACCAC(deviceCopy);
}

- (void)didUpdateSupportedCapabilitiesForResidentDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  sub_1D1AACCAC(deviceCopy);
}

- (void)softwareUpdate:(char *)update didUpdateState:
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v13 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v16 = *(**&update[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate_stateSnapshotUpdateController] + 120);
  sub_1D1AB10C0(v15, v6);
  v17 = *(v3 + 52);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v18 - 8) + 56))(&v6[v17], 1, 1, v18);
  updateCopy = update;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v8 + 8))(v11, v7);
  sub_1D1AB1124(v15);
}

- (void)softwareUpdateController:(id)controller accessory:(id)accessory didFailUpdate:(id)update withError:(id)error timestamp:(id)timestamp
{
  selfCopy = self;
  v24 = sub_1D1E669FC();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &selfCopy - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66A7C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &selfCopy - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  sub_1D1E669BC();
  controllerCopy = controller;
  updateCopy = update;
  errorCopy = error;
  v22 = selfCopy;
  sub_1D1AB0840(v18, updateCopy, errorCopy);

  (*(v10 + 8))(v13, v24);
  (*(v15 + 8))(v18, v14);
}

@end