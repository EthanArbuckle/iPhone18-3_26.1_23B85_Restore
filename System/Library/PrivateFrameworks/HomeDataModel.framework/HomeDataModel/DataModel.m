@interface DataModel
+ (_TtC13HomeDataModel9DataModel)shared;
+ (int64_t)context;
+ (void)setContext:(int64_t)a3;
+ (void)setHomeManagerConfiguration:(id)a3;
- (HMHome)currentHome;
- (HMHome)primaryHome;
- (HMHomeManager)homeManager;
- (id)accessoryFor:(id)a3;
- (id)accessoryFor:(id)a3 homeID:(id)a4;
- (id)accessoryFor:(id)a3 in:(id)a4;
- (id)accessoryFromAnyHomeFor:(id)a3;
- (id)actionSetFor:(id)a3;
- (id)cameraProfileFor:(id)a3;
- (id)characteristicFor:(id)a3;
- (id)homeFor:(id)a3;
- (id)mediaProfileFor:(id)a3;
- (id)mediaSystemFor:(id)a3;
- (id)residentFor:(id)a3;
- (id)roomFor:(id)a3;
- (id)serviceFor:(id)a3;
- (id)serviceGroupFor:(id)a3;
- (id)userFor:(id)a3;
- (void)accessory:(id)a3 didAddProfile:(id)a4;
- (void)accessory:(id)a3 didRemoveProfile:(id)a4;
- (void)accessory:(id)a3 didUpdateApplicationDataForService:(id)a4;
- (void)accessory:(id)a3 didUpdateAssociatedServiceTypeForService:(id)a4;
- (void)accessory:(id)a3 didUpdateFirmwareVersion:(id)a4;
- (void)accessory:(id)a3 didUpdateNameForService:(id)a4;
- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5;
- (void)accessoryDidUpdateApplicationData:(id)a3;
- (void)accessoryDidUpdateName:(id)a3;
- (void)accessoryDidUpdateReachability:(id)a3;
- (void)accessoryDidUpdateServices:(id)a3;
- (void)accessorySettingsDataSource:(id)a3 didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a4 settings:(id)a5;
- (void)device:(id)a3 stateChanged:(unint64_t)a4;
- (void)deviceBecameActive:(id)a3;
- (void)deviceCachePrimed:(id)a3;
- (void)deviceConfigurationChanged:(id)a3;
- (void)didUpdateSupportedCapabilitiesForResidentDevice:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddActionSet:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4 toZone:(id)a5;
- (void)home:(id)a3 didAddService:(id)a4 toServiceGroup:(id)a5;
- (void)home:(id)a3 didAddServiceGroup:(id)a4;
- (void)home:(id)a3 didAddTrigger:(id)a4;
- (void)home:(id)a3 didAddZone:(id)a4;
- (void)home:(id)a3 didEncounterError:(id)a4 forAccessory:(id)a5;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveActionSet:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4 fromZone:(id)a5;
- (void)home:(id)a3 didRemoveService:(id)a4 fromServiceGroup:(id)a5;
- (void)home:(id)a3 didRemoveServiceGroup:(id)a4;
- (void)home:(id)a3 didRemoveTrigger:(id)a4;
- (void)home:(id)a3 didRemoveZone:(id)a4;
- (void)home:(id)a3 didUnblockAccessory:(id)a4;
- (void)home:(id)a3 didUpdateActionSet:(id)a4 isExecuting:(BOOL)a5;
- (void)home:(id)a3 didUpdateActionsForActionSet:(id)a4;
- (void)home:(id)a3 didUpdateApplicationDataForActionSet:(id)a4;
- (void)home:(id)a3 didUpdateApplicationDataForRoom:(id)a4;
- (void)home:(id)a3 didUpdateApplicationDataForServiceGroup:(id)a4;
- (void)home:(id)a3 didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)a4;
- (void)home:(id)a3 didUpdateHomeHubState:(unint64_t)a4;
- (void)home:(id)a3 didUpdateNameForActionSet:(id)a4;
- (void)home:(id)a3 didUpdateNameForRoom:(id)a4;
- (void)home:(id)a3 didUpdateNameForServiceGroup:(id)a4;
- (void)home:(id)a3 didUpdateNameForTrigger:(id)a4;
- (void)home:(id)a3 didUpdateNameForZone:(id)a4;
- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5;
- (void)home:(id)a3 didUpdateTrigger:(id)a4;
- (void)home:(void *)a3 didAddUser:(void *)a4;
- (void)home:(void *)a3 didRemoveUser:(void *)a4;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3;
- (void)homeDidUpdateApplicationData:(id)a3;
- (void)homeDidUpdateName:(id)a3;
- (void)homeDidUpdateSupportedFeatures:(id)a3;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateCurrentHome:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)homeManagerDidUpdatePrimaryHome:(id)a3;
- (void)residentDevice:(id)a3 didUpdateStatus:(unint64_t)a4;
- (void)setCurrentHome:(id)a3;
- (void)setHomeManager:(id)a3;
- (void)set_currentHome:(id)a3;
- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didFailUpdate:(id)a5 withError:(id)a6 timestamp:(id)a7;
- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didReceiveUpdate:(id)a5;
- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didUpdateProgress:(id)a5;
- (void)userActionPredictionController:(id)a3 didUpdatePredictions:(id)a4;
@end

@implementation DataModel

- (void)home:(void *)a3 didAddUser:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D1E2BA70(v6, v7, "%s %@");
}

- (void)home:(void *)a3 didRemoveUser:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D1E2BDA4(v6, v7, "%s %@");
}

+ (void)setHomeManagerConfiguration:(id)a3
{
  swift_beginAccess();
  v4 = qword_1EE07AE00;
  qword_1EE07AE00 = a3;
  v5 = a3;
}

- (HMHomeManager)homeManager
{
  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHomeManager:(id)a3
{
  v5 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)set_currentHome:(id)a3
{
  v5 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome);
  v7 = v6;
  v8 = a3;
  v11 = self;
  sub_1D1DE7630(a3, sub_1D1DF39C4);
  v9 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v10 = v8;

  sub_1D1DE7630(v6, sub_1D1DE779C);
}

- (HMHome)currentHome
{
  swift_getKeyPath();
  sub_1D1DF4FF4(&qword_1EE07CFB0, type metadata accessor for DataModel);
  v3 = self;
  sub_1D1E66CAC();

  v4 = *(&v3->super.isa + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome);
  v5 = v4;

  return v4;
}

- (void)setCurrentHome:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D1DE83C0(a3);
}

+ (_TtC13HomeDataModel9DataModel)shared
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE07DC60;

  return v3;
}

+ (int64_t)context
{
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  return qword_1EE07AE40;
}

+ (void)setContext:(int64_t)a3
{
  if (qword_1EE07AE38 != -1)
  {
    v3 = a3;
    swift_once();
    a3 = v3;
  }

  qword_1EE07AE40 = a3;
}

- (HMHome)primaryHome
{
  v2 = self;
  v3 = DataModel.primaryHome.getter();

  return v3;
}

- (id)accessoryFor:(id)a3 in:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-v8];
  if (a3)
  {
    sub_1D1E66A5C();
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1D1E66A7C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a4;
  v13 = [v12 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v14 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v15);
  *&v18[-16] = v9;
  v16 = sub_1D174A6C4(sub_1D1E02250, &v18[-32], v14);

  sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);

  return v16;
}

- (id)accessoryFromAnyHomeFor:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  if (a3)
  {
    sub_1D1E66A5C();
    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = self;
  v15 = [(DataModel *)v14 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v16 = sub_1D1E67C1C();

  sub_1D17783E0(v11, v9);
  v17 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  sub_1D1778308(v9, v18 + v17);
  v22[1] = v16;
  v22[2] = sub_1D1E021A4;
  v22[3] = v18;
  v22[4] = sub_1D1CCEDD0;
  v22[5] = 0;
  v22[6] = sub_1D1716A30;
  v22[7] = 0;
  v19 = v14;
  v20 = sub_1D1778964(v19);

  sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);

  return v20;
}

- (id)homeFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1E66A5C();
  v9 = self;
  v10 = [(DataModel *)v9 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v11 = sub_1D1E67C1C();

  v15 = v8;
  v12 = sub_1D174A6C4(sub_1D1E02234, v14, v11);

  (*(v5 + 8))(v8, v4);

  return v12;
}

- (id)accessoryFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E020F8;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1716A30;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)accessoryFor:(id)a3 homeID:(id)a4
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  sub_1D1E66A5C();
  sub_1D1E66A5C();
  v13 = self;
  v14 = sub_1D1E66A2C();
  v15 = [(DataModel *)v13 homeFor:v14];

  if (v15)
  {
    v16 = sub_1D1E66A2C();
    v17 = [(DataModel *)v13 accessoryFor:v16 in:v15];

    v13 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v6 + 8);
  v18(v10, v5);
  v18(v12, v5);

  return v17;
}

- (id)actionSetFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E02058;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1A8D27C;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)cameraProfileFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E02040;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1A8D27C;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)mediaProfileFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E02028;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1A8D27C;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)characteristicFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E02010;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1A8D27C;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)roomFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E01FF8;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1A8D27C;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)serviceFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E01FE0;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1716A30;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)serviceGroupFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E01FC8;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1716A30;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)mediaSystemFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E01FB0;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1A8D27C;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)userFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E01F98;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1A8D27C;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (id)residentFor:(id)a3
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  sub_1D1E66A5C();
  v11 = self;
  v12 = [(DataModel *)v11 sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = (*(v5 + 32))(v15 + v14, v8, v4);
  v19[1] = v13;
  v19[2] = sub_1D1E01F80;
  v19[3] = v15;
  v19[4] = sub_1D1CCEDD0;
  v19[5] = 0;
  v19[6] = sub_1D1A8D27C;
  v19[7] = 0;
  v17 = sub_1D1778964(v16);

  (*(v5 + 8))(v10, v4);

  return v17;
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  DataModel.homeManagerDidUpdateHomes(_:)(v4);
}

- (void)homeManagerDidUpdatePrimaryHome:(id)a3
{
  v4 = a3;
  v5 = self;
  DataModel.homeManagerDidUpdatePrimaryHome(_:)(v4);
}

- (void)homeManagerDidUpdateCurrentHome:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D1E67E7C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D1E67E1C();
  v10 = self;
  v11 = sub_1D1E67E0C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = ObjectType;
  sub_1D17C6EF0(0, 0, v8, &unk_1D1EB1E18, v12);
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_1D1E67E7C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1D1E67E1C();
  v13 = a3;
  v14 = a4;
  v15 = self;
  v16 = v14;
  v17 = v13;
  v18 = v15;
  v19 = sub_1D1E67E0C();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v16;
  v20[5] = v17;
  v20[6] = v18;
  v20[7] = ObjectType;
  sub_1D17C6EF0(0, 0, v11, &unk_1D1EB1E10, v20);
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_1D1E67E7C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D1E67E1C();
  v12 = a4;
  v13 = self;
  v14 = v12;
  v15 = v13;
  v16 = a3;
  v17 = sub_1D1E67E0C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v14;
  v18[5] = v15;
  sub_1D17C6EF0(0, 0, v10, &unk_1D1EB1E08, v18);

  if (qword_1EC642408 != -1)
  {
    swift_once();
  }

  sub_1D1D50FD4(v14);
}

- (void)homeDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13HomeDataModel0bC0C17homeDidUpdateNameyySo6HMHomeCF_0(v4);
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13HomeDataModel0bC0C26homeDidUpdateAccessControl14forCurrentUserySo6HMHomeC_tF_0(v4);
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  DataModel.home(_:didAdd:)(v6, v7);
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  DataModel.home(_:didRemove:)(v6, v7);
}

- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  _s13HomeDataModel0bC0C4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0(v8, v9, v10);
}

- (void)home:(id)a3 didAddRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C4home_6didAddySo6HMHomeC_So6HMRoomCtF_0(v6, v7);
}

- (void)home:(id)a3 didRemoveRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C4home_9didRemoveySo6HMHomeC_So6HMRoomCtF_0(v6, v7);
}

- (void)home:(id)a3 didUpdateNameForRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C4home_16didUpdateNameForySo6HMHomeC_So6HMRoomCtF_0(v6, v7);
}

- (void)home:(id)a3 didAddZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2BA70(v6, v7, "%s zone %@");
}

- (void)home:(id)a3 didRemoveZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2BDA4(v6, v7, "%s zone %@");
}

- (void)home:(id)a3 didUpdateNameForZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2C0C8(v6, v7, "%s zone %@");
}

- (void)home:(id)a3 didAddRoom:(id)a4 toZone:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1E2C3EC(v8, v9, v10, "%s room %@ zone %@");
}

- (void)home:(id)a3 didRemoveRoom:(id)a4 fromZone:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1E2C73C(v8, v9, v10, "%s room %@ zone %@");
}

- (void)home:(id)a3 didAddServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2BA70(v6, v7, "%s group %@)");
}

- (void)home:(id)a3 didRemoveServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2BDA4(v6, v7, "%s group %@)");
}

- (void)home:(id)a3 didUpdateNameForServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2C0C8(v6, v7, "%s group %@)");
}

- (void)home:(id)a3 didAddService:(id)a4 toServiceGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1E2C3EC(v8, v9, v10, "%s service %@ group %@");
}

- (void)home:(id)a3 didRemoveService:(id)a4 fromServiceGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1E2C73C(v8, v9, v10, "%s service %@ group %@");
}

- (void)home:(id)a3 didAddActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2BA70(v6, v7, "%s actionSet %@");
}

- (void)home:(id)a3 didRemoveActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2BDA4(v6, v7, "%s actionSet %@");
}

- (void)home:(id)a3 didUpdateNameForActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2C0C8(v6, v7, "%s actionSet %@");
}

- (void)home:(id)a3 didUpdateActionsForActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C4home_19didUpdateActionsForySo6HMHomeC_So11HMActionSetCtF_0(v6, v7);
}

- (void)home:(id)a3 didAddTrigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2BA70(v6, v7, "%s trigger %@");
}

- (void)home:(id)a3 didRemoveTrigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2BDA4(v6, v7, "%s trigger %@");
}

- (void)home:(id)a3 didUpdateNameForTrigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2C0C8(v6, v7, "%s trigger %@");
}

- (void)home:(id)a3 didUpdateTrigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C4home_9didUpdateySo6HMHomeC_So9HMTriggerCtF_0(v6, v7);
}

- (void)home:(id)a3 didUnblockAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C4home_19didUnblockAccessoryySo6HMHomeC_So11HMAccessoryCtF_0(v6, v7);
}

- (void)home:(id)a3 didEncounterError:(id)a4 forAccessory:(id)a5
{
  v8 = a3;
  v11 = a4;
  v9 = a5;
  v10 = self;
  _s13HomeDataModel0bC0C4home_17didEncounterError3forySo6HMHomeC_s0G0_pSo11HMAccessoryCtF_0(v8, v11, v9);
}

- (void)home:(id)a3 didUpdateHomeHubState:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  _s13HomeDataModel0bC0C4home_9didUpdateySo6HMHomeC_So0G8HubStateVtF_0(v6, a4);
}

- (void)homeDidUpdateSupportedFeatures:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13HomeDataModel0bC0C30homeDidUpdateSupportedFeaturesyySo6HMHomeCF_0(v4);
}

- (void)home:(id)a3 didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)a4
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v6 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = qword_1EE07DC88;
  v15 = a3;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v16, qword_1EE07DCE0);
  *v8 = v15;
  swift_storeEnumTagMultiPayload();
  v17 = v15;
  sub_1D1E67ECC();

  (*(v10 + 8))(v13, v9);
}

- (void)homeDidUpdateApplicationData:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13HomeDataModel0bC0C024homeDidUpdateApplicationB0yySo6HMHomeCF_0(v4);
}

- (void)home:(id)a3 didUpdateApplicationDataForRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2E11C(v6, v7, "%s - new application data for room %s — %s");
}

- (void)home:(id)a3 didUpdateApplicationDataForServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2E11C(v6, v7, "%s - new application data for serviceGroup %s — %s");
}

- (void)home:(id)a3 didUpdateApplicationDataForActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1E2E11C(v6, v7, "%s - new application data for actionSet %s — %s");
}

- (void)home:(id)a3 didUpdateActionSet:(id)a4 isExecuting:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1D1E2E530(v9, v5);
}

- (void)userActionPredictionController:(id)a3 didUpdatePredictions:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
  v9 = sub_1D1E67C1C();
  v10 = sub_1D1E67E7C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = v9;
  v12 = a3;
  sub_1D17C6EF0(0, 0, v8, &unk_1D1EB1DF0, v11);
}

- (void)accessoryDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13HomeDataModel0bC0C22accessoryDidUpdateNameyySo11HMAccessoryCF_0(v4);
}

- (void)accessoryDidUpdateReachability:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13HomeDataModel0bC0C30accessoryDidUpdateReachabilityyySo11HMAccessoryCF_0(v4);
}

- (void)accessoryDidUpdateServices:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13HomeDataModel0bC0C26accessoryDidUpdateServicesyySo11HMAccessoryCF_0(v4);
}

- (void)accessory:(id)a3 didUpdateNameForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C9accessory_16didUpdateNameForySo11HMAccessoryC_So9HMServiceCtF_0(v6, v7);
}

- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1E2F9A0(v9, v10);
}

- (void)accessory:(id)a3 didUpdateAssociatedServiceTypeForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C9accessory_33didUpdateAssociatedServiceTypeForySo11HMAccessoryC_So9HMServiceCtF_0(v6);
}

- (void)accessory:(id)a3 didAddProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C9accessory_6didAddySo11HMAccessoryC_So0G7ProfileCtF_0(v6);
}

- (void)accessory:(id)a3 didRemoveProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C9accessory_9didRemoveySo11HMAccessoryC_So0G7ProfileCtF_0(v6);
}

- (void)accessory:(id)a3 didUpdateFirmwareVersion:(id)a4
{
  v5 = a3;
  v6 = self;
  _s13HomeDataModel0bC0C9accessory_24didUpdateFirmwareVersionySo11HMAccessoryC_SStF_0(v5);
}

- (void)accessoryDidUpdateApplicationData:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13HomeDataModel0bC0C029accessoryDidUpdateApplicationB0yySo11HMAccessoryCF_0(v4);
}

- (void)accessory:(id)a3 didUpdateApplicationDataForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s13HomeDataModel0bC0C9accessory_020didUpdateApplicationB3ForySo11HMAccessoryC_So9HMServiceCtF_0(v6, v7);
}

- (void)accessorySettingsDataSource:(id)a3 didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a4 settings:(id)a5
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v6 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v17, qword_1EE07DCE0);
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didReceiveUpdate:(id)a5
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  v13 = a3;
  v14 = a5;
  v15 = self;
  sub_1D1E3129C(v12, v14);

  (*(v9 + 8))(v12, v8);
}

- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didFailUpdate:(id)a5 withError:(id)a6 timestamp:(id)a7
{
  v23 = self;
  v24 = sub_1D1E669FC();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66A7C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  sub_1D1E669BC();
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v22 = v23;
  sub_1D1E315B0(v18, v20, v21);

  (*(v10 + 8))(v13, v24);
  (*(v15 + 8))(v18, v14);
}

- (void)softwareUpdateController:(id)a3 accessory:(id)a4 didUpdateProgress:(id)a5
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  v13 = a3;
  v14 = a5;
  v15 = self;
  sub_1D1E31928(v12, v14);

  (*(v9 + 8))(v12, v8);
}

- (void)residentDevice:(id)a3 didUpdateStatus:(unint64_t)a4
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v6 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = qword_1EE07DC88;
  v15 = a3;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v16, qword_1EE07DCE0);
  *v8 = [v15 home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();

  (*(v10 + 8))(v13, v9);
}

- (void)didUpdateSupportedCapabilitiesForResidentDevice:(id)a3
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = qword_1EE07DC88;
  v14 = a3;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v15, qword_1EE07DCE0);
  *v7 = [v14 home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();

  (*(v9 + 8))(v12, v8);
}

- (void)device:(id)a3 stateChanged:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  _s13HomeDataModel0bC0C6device_12stateChangedySo9MTRDeviceC_So0G5StateVtF_0(v6, a4);
}

- (void)deviceBecameActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1AB43C4(v4, "Received MTRDevice delegate deviceBecameActive for device:%{public}@");
}

- (void)deviceCachePrimed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1AB43C4(v4, "Received MTRDevice delegate deviceCachePrimed for device:%{public}@");
}

- (void)deviceConfigurationChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1AB43C4(v4, "Received MTRDevice delegate deviceConfigurationChanged for device:%{public}@");
}

@end