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
- (_TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot)init;
- (int)octagonState;
- (unint64_t)currentHomeNumberOfAppleMediaAccessories;
- (unint64_t)currentHomeNumberOfResidents;
- (unint64_t)numHomes;
- (unint64_t)sfProblemFlags;
- (void)setCurrentAccessoryPublicPairingIdentity:(id)identity;
- (void)setCurrentAppleMediaAccessory:(id)accessory;
- (void)setCurrentHome:(id)home;
- (void)setCurrentHomeNumberOfAppleMediaAccessories:(unint64_t)accessories;
- (void)setCurrentHomeNumberOfResidents:(unint64_t)residents;
- (void)setEventRouterServerInfo:(id)info;
- (void)setNetworkInfo:(id)info;
- (void)setNetworkInfoProto:(id)proto;
- (void)setNumHomes:(unint64_t)homes;
- (void)setOctagonState:(int)state;
- (void)setSfProblemFlags:(unint64_t)flags;
- (void)setSoftwareUpdateDescriptor:(id)descriptor;
- (void)setSoftwareUpdateProgress:(id)progress;
- (void)setSystemInfo:(id)info;
@end

@implementation AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot

- (int)octagonState
{
  selfCopy = self;
  v3 = sub_2295A49BC();

  return v3;
}

- (void)setOctagonState:(int)state
{
  v3 = self + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState;
  *v3 = state;
  v3[4] = 0;
}

- (BOOL)isFirstCloudImportComplete
{
  selfCopy = self;
  v3 = sub_2295A4A64();

  return v3 & 1;
}

- (BOOL)isSignedIntoiCloud
{
  selfCopy = self;
  v3 = sub_2295A4ABC();

  return v3 & 1;
}

- (HMAccessoryInfoProtoWifiNetworkInfoEvent)networkInfo
{
  selfCopy = self;
  v3 = sub_2295A4B24();

  return v3;
}

- (void)setNetworkInfo:(id)info
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfo);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfo) = info;
  infoCopy = info;
  selfCopy = self;
  sub_22954BC9C(v4);
}

- (unint64_t)numHomes
{
  selfCopy = self;
  v3 = sub_2295A4BF4();

  return v3;
}

- (void)setNumHomes:(unint64_t)homes
{
  v3 = self + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes;
  *v3 = homes;
  v3[8] = 0;
}

- (HMFSystemInfo)systemInfo
{
  selfCopy = self;
  v3 = sub_2295A4DA0();

  return v3;
}

- (void)setSystemInfo:(id)info
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo) = info;
  infoCopy = info;
}

- (NSDictionary)networkInfoProto
{
  selfCopy = self;
  sub_2295A51DC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D798, &qword_22A578BE8);
  v3 = sub_22A4DD47C();

  return v3;
}

- (void)setNetworkInfoProto:(id)proto
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D798, &qword_22A578BE8);
  v4 = sub_22A4DD49C();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto) = v4;
}

- (HMDAppleMediaAccessory)currentAppleMediaAccessory
{
  selfCopy = self;
  v3 = sub_2295A576C();

  return v3;
}

- (void)setCurrentAppleMediaAccessory:(id)accessory
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAppleMediaAccessory);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAppleMediaAccessory) = accessory;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_22954BC9C(v4);
}

- (HMAccessoryInfoProtoPublicPairingIdentity)currentAccessoryPublicPairingIdentity
{
  selfCopy = self;
  v3 = sub_2295A5C38();

  return v3;
}

- (void)setCurrentAccessoryPublicPairingIdentity:(id)identity
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity) = identity;
  identityCopy = identity;
  selfCopy = self;
  sub_22954BC9C(v4);
}

- (HMDHome)currentHome
{
  selfCopy = self;
  v3 = sub_2295A5DB4();

  return v3;
}

- (void)setCurrentHome:(id)home
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome) = home;
  homeCopy = home;
  selfCopy = self;
  sub_22954BC9C(v4);
}

- (unint64_t)currentHomeNumberOfAppleMediaAccessories
{
  selfCopy = self;
  v3 = sub_2295A5ED0();

  return v3;
}

- (void)setCurrentHomeNumberOfAppleMediaAccessories:(unint64_t)accessories
{
  v3 = self + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories;
  *v3 = accessories;
  v3[8] = 0;
}

- (unint64_t)currentHomeNumberOfResidents
{
  selfCopy = self;
  v3 = sub_2295A600C();

  return v3;
}

- (void)setCurrentHomeNumberOfResidents:(unint64_t)residents
{
  v3 = self + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents;
  *v3 = residents;
  v3[8] = 0;
}

- (HMRemoteEventRouterProtoServerDiagnosticInfo)eventRouterServerInfo
{
  selfCopy = self;
  v3 = sub_2295A6178();

  return v3;
}

- (void)setEventRouterServerInfo:(id)info
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___eventRouterServerInfo);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___eventRouterServerInfo) = info;
  infoCopy = info;
  selfCopy = self;
  sub_22954BC9C(v4);
}

- (HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor)softwareUpdateDescriptor
{
  selfCopy = self;
  v3 = sub_2295A62F0();

  return v3;
}

- (void)setSoftwareUpdateDescriptor:(id)descriptor
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateDescriptor);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateDescriptor) = descriptor;
  descriptorCopy = descriptor;
  selfCopy = self;
  sub_22954BC9C(v4);
}

- (HMSoftwareUpdateEventProtoSoftwareUpdateProgress)softwareUpdateProgress
{
  selfCopy = self;
  v3 = sub_2295A63D0();

  return v3;
}

- (void)setSoftwareUpdateProgress:(id)progress
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateProgress);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateProgress) = progress;
  progressCopy = progress;
  selfCopy = self;
  sub_22954BC9C(v4);
}

- (unint64_t)sfProblemFlags
{
  selfCopy = self;
  v3 = sub_2295A656C();

  return v3;
}

- (void)setSfProblemFlags:(unint64_t)flags
{
  v3 = self + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags;
  *v3 = flags;
  v3[8] = 0;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  selfCopy = self;
  v3 = sub_2295A6C04();

  return v3 & 1;
}

- (_TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end