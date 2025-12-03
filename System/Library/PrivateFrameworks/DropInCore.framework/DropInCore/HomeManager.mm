@interface HomeManager
- (HMAccessory)currentAccessory;
- (HMHome)currentHome;
- (NSArray)allHomes;
- (void)accessoryDidUpdateControllable:(id)controllable;
- (void)accessoryDidUpdateName:(id)name;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)user;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)loadHomeSynchronous;
- (void)loadHomes:(id)homes;
@end

@implementation HomeManager

- (void)loadHomes:(id)homes
{
  v4 = _Block_copy(homes);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_249E526DC();
}

- (void)loadHomeSynchronous
{
  selfCopy = self;
  sub_249E52C50();
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  swift_unknownObjectRetain();
  queueCopy = queue;
  selfCopy = self;
  sub_249E52C9C();
  swift_unknownObjectRelease();
}

- (NSArray)allHomes
{
  selfCopy = self;
  sub_249E530FC();

  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v3 = sub_249E7ABD8();

  return v3;
}

- (HMHome)currentHome
{
  selfCopy = self;
  v3 = sub_249E53144();

  return v3;
}

- (HMAccessory)currentAccessory
{
  selfCopy = self;
  v3 = sub_249E531C8();

  return v3;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  HomeManager.homeManagerDidUpdateHomes(_:)(homesCopy);
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  HomeManager.homeManager(_:didAdd:)(selfCopy, homeCopy);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  HomeManager.homeManager(_:didRemove:)(selfCopy, homeCopy);
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)user
{
  userCopy = user;
  selfCopy = self;
  HomeManager.homeDidUpdateAccessControl(forCurrentUser:)(userCopy);
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  HomeManager.home(_:didAdd:)(homeCopy, accessoryCopy);
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  HomeManager.home(_:didRemove:)(homeCopy, accessoryCopy);
}

- (void)home:(id)home didAddUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  HomeManager.home(_:didAdd:)(homeCopy, userCopy);
}

- (void)home:(id)home didRemoveUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  HomeManager.home(_:didRemove:)(homeCopy, userCopy);
}

- (void)accessoryDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  HomeManager.accessoryDidUpdateName(_:)(nameCopy);
}

- (void)accessoryDidUpdateControllable:(id)controllable
{
  controllableCopy = controllable;
  selfCopy = self;
  HomeManager.accessoryDidUpdateControllable(_:)(controllableCopy);
}

@end