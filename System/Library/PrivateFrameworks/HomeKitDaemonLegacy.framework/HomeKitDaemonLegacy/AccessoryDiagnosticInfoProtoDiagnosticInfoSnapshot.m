@interface AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isFirstCloudImportComplete;
- (BOOL)isSignedIntoiCloud;
- (HMAccessoryInfoProtoPublicPairingIdentity)currentAccessoryPublicPairingIdentity;
- (HMAccessoryInfoProtoWifiNetworkInfoEvent)networkInfo;
- (HMDAppleMediaAccessory)currentAppleMediaAccessory;
- (HMDHome)currentHome;
- (HMFSystemInfo)systemInfo;
- (HMRemoteEventRouterProtoServerDiagnosticInfo)eventRouterServerInfo;
- (HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor)softwareUpdateDescriptor;
- (HMSoftwareUpdateEventProtoSoftwareUpdateProgress)softwareUpdateProgress;
- (NSDictionary)networkInfoProto;
- (_TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot)init;
- (int)octagonState;
- (unint64_t)currentHomeNumberOfAppleMediaAccessories;
- (unint64_t)currentHomeNumberOfResidents;
- (unint64_t)numHomes;
- (unint64_t)sfProblemFlags;
- (void)setCurrentAccessoryPublicPairingIdentity:(id)a3;
- (void)setCurrentAppleMediaAccessory:(id)a3;
- (void)setCurrentHome:(id)a3;
- (void)setCurrentHomeNumberOfAppleMediaAccessories:(unint64_t)a3;
- (void)setCurrentHomeNumberOfResidents:(unint64_t)a3;
- (void)setEventRouterServerInfo:(id)a3;
- (void)setNetworkInfo:(id)a3;
- (void)setNetworkInfoProto:(id)a3;
- (void)setNumHomes:(unint64_t)a3;
- (void)setOctagonState:(int)a3;
- (void)setSfProblemFlags:(unint64_t)a3;
- (void)setSoftwareUpdateDescriptor:(id)a3;
- (void)setSoftwareUpdateProgress:(id)a3;
- (void)setSystemInfo:(id)a3;
@end

@implementation AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot

- (int)octagonState
{
  v2 = self;
  v3 = sub_253222CC0();

  return v3;
}

- (void)setOctagonState:(int)a3
{
  v3 = self + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState;
  *v3 = a3;
  v3[4] = 0;
}

- (BOOL)isFirstCloudImportComplete
{
  v2 = self;
  v3 = sub_253222D68();

  return v3 & 1;
}

- (BOOL)isSignedIntoiCloud
{
  v2 = self;
  v3 = sub_253222DC0();

  return v3 & 1;
}

- (HMAccessoryInfoProtoWifiNetworkInfoEvent)networkInfo
{
  v2 = self;
  v3 = sub_253222E28();

  return v3;
}

- (void)setNetworkInfo:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfo);
  *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfo) = a3;
  v5 = a3;
  v6 = self;
  sub_2531FD41C(v4);
}

- (unint64_t)numHomes
{
  v2 = self;
  v3 = sub_253222EF8();

  return v3;
}

- (void)setNumHomes:(unint64_t)a3
{
  v3 = self + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes;
  *v3 = a3;
  v3[8] = 0;
}

- (HMFSystemInfo)systemInfo
{
  v2 = self;
  v3 = sub_2532230A4();

  return v3;
}

- (void)setSystemInfo:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo) = a3;
  v3 = a3;
}

- (NSDictionary)networkInfoProto
{
  v2 = self;
  sub_2532234E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33A8, &qword_253D491B8);
  v3 = sub_253CD08B8();

  return v3;
}

- (void)setNetworkInfoProto:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33A8, &qword_253D491B8);
  v4 = sub_253CD08D8();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto);
  *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto) = v4;
}

- (HMDAppleMediaAccessory)currentAppleMediaAccessory
{
  v2 = self;
  v3 = sub_253223D30();

  return v3;
}

- (void)setCurrentAppleMediaAccessory:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAppleMediaAccessory);
  *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAppleMediaAccessory) = a3;
  v5 = a3;
  v6 = self;
  sub_2531FD41C(v4);
}

- (HMAccessoryInfoProtoPublicPairingIdentity)currentAccessoryPublicPairingIdentity
{
  v2 = self;
  v3 = sub_2532241FC();

  return v3;
}

- (void)setCurrentAccessoryPublicPairingIdentity:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity);
  *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity) = a3;
  v5 = a3;
  v6 = self;
  sub_2531FD41C(v4);
}

- (HMDHome)currentHome
{
  v2 = self;
  v3 = sub_253224378();

  return v3;
}

- (void)setCurrentHome:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome);
  *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome) = a3;
  v5 = a3;
  v6 = self;
  sub_2531FD41C(v4);
}

- (unint64_t)currentHomeNumberOfAppleMediaAccessories
{
  v2 = self;
  v3 = sub_253224494();

  return v3;
}

- (void)setCurrentHomeNumberOfAppleMediaAccessories:(unint64_t)a3
{
  v3 = self + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories;
  *v3 = a3;
  v3[8] = 0;
}

- (unint64_t)currentHomeNumberOfResidents
{
  v2 = self;
  v3 = sub_2532245D0();

  return v3;
}

- (void)setCurrentHomeNumberOfResidents:(unint64_t)a3
{
  v3 = self + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents;
  *v3 = a3;
  v3[8] = 0;
}

- (HMRemoteEventRouterProtoServerDiagnosticInfo)eventRouterServerInfo
{
  v2 = self;
  v3 = sub_25322473C();

  return v3;
}

- (void)setEventRouterServerInfo:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___eventRouterServerInfo);
  *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___eventRouterServerInfo) = a3;
  v5 = a3;
  v6 = self;
  sub_2531FD41C(v4);
}

- (HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor)softwareUpdateDescriptor
{
  v2 = self;
  v3 = sub_2532248B4();

  return v3;
}

- (void)setSoftwareUpdateDescriptor:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateDescriptor);
  *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateDescriptor) = a3;
  v5 = a3;
  v6 = self;
  sub_2531FD41C(v4);
}

- (HMSoftwareUpdateEventProtoSoftwareUpdateProgress)softwareUpdateProgress
{
  v2 = self;
  v3 = sub_253224994();

  return v3;
}

- (void)setSoftwareUpdateProgress:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateProgress);
  *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateProgress) = a3;
  v5 = a3;
  v6 = self;
  sub_2531FD41C(v4);
}

- (unint64_t)sfProblemFlags
{
  v2 = self;
  v3 = sub_253224B30();

  return v3;
}

- (void)setSfProblemFlags:(unint64_t)a3
{
  v3 = self + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags;
  *v3 = a3;
  v3[8] = 0;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  v2 = self;
  v3 = sub_2532251C8();

  return v3 & 1;
}

- (_TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end