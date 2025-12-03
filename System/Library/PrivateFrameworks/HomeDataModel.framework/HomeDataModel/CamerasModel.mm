@interface CamerasModel
- (_TtC13HomeDataModel12CamerasModel)init;
- (void)accessoryDidUpdateName:(id)name;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)homeManagerDidUpdatePrimaryHome:(id)home;
@end

@implementation CamerasModel

- (_TtC13HomeDataModel12CamerasModel)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + v4, 1, 1, v5);
  *(&self->super.isa + OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers) = sub_1D18D8B90(MEMORY[0x1E69E7CC0]);
  sub_1D1E66CDC();
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(CamerasModel *)&v8 init];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  CamerasModel.homeManagerDidUpdateHomes(_:)(homesCopy);
}

- (void)homeManagerDidUpdatePrimaryHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  CamerasModel.homeManagerDidUpdatePrimaryHome(_:)(homeCopy);
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_1D17E9F28(homeCopy);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_1D17EA1F4(homeCopy);
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  CamerasModel.home(_:didAdd:)(homeCopy, accessoryCopy);
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  CamerasModel.home(_:didRemove:)(homeCopy, accessoryCopy);
}

- (void)accessoryDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  CamerasModel.accessoryDidUpdateName(_:)(nameCopy);
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  reachabilityCopy = reachability;
  selfCopy = self;
  CamerasModel.accessoryDidUpdateReachability(_:)(reachabilityCopy);
}

@end