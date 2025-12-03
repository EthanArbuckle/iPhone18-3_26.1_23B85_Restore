@interface EKSHomeManager
- (_TtC16EnergyKitService14EKSHomeManager)init;
- (void)home:(id)home didUpdateLocation:(id)location;
- (void)homeDidUpdateName:(id)name;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateDataSyncInProgress:(id)progress;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation EKSHomeManager

- (_TtC16EnergyKitService14EKSHomeManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_100077A14(homesCopy);
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_10007D378(managerCopy, "[EKSHomeManager] homeManagerDidAddHome", &unk_1000C0080, sub_10007E100, &unk_1000C0098);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_10007D378(managerCopy, "[EKSHomeManager] homeManagerDidRemoveHome", &unk_1000C0008, sub_10007E014, &unk_1000C0020);
}

- (void)homeManagerDidUpdateDataSyncInProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  sub_10007883C(progressCopy);
}

- (void)homeDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  sub_10007D71C("[EKSHomeManager] homeDidUpdateName", sub_100078E28, &unk_1000BFEB8);
}

- (void)home:(id)home didUpdateLocation:(id)location
{
  homeCopy = home;
  locationCopy = location;
  selfCopy = self;
  sub_10007D71C("[EKSHomeManager] homeManagerDidUpdateLocation", sub_1000794AC, &unk_1000BFE18);
}

@end