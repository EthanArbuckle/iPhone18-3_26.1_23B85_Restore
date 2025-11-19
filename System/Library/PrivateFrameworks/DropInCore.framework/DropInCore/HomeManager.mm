@interface HomeManager
- (HMAccessory)currentAccessory;
- (HMHome)currentHome;
- (NSArray)allHomes;
- (void)accessoryDidUpdateControllable:(id)a3;
- (void)accessoryDidUpdateName:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddUser:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveUser:(id)a4;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)loadHomeSynchronous;
- (void)loadHomes:(id)a3;
@end

@implementation HomeManager

- (void)loadHomes:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_249E526DC();
}

- (void)loadHomeSynchronous
{
  v2 = self;
  sub_249E52C50();
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_249E52C9C();
  swift_unknownObjectRelease();
}

- (NSArray)allHomes
{
  v2 = self;
  sub_249E530FC();

  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v3 = sub_249E7ABD8();

  return v3;
}

- (HMHome)currentHome
{
  v2 = self;
  v3 = sub_249E53144();

  return v3;
}

- (HMAccessory)currentAccessory
{
  v2 = self;
  v3 = sub_249E531C8();

  return v3;
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  HomeManager.homeManagerDidUpdateHomes(_:)(v4);
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  HomeManager.homeManager(_:didAdd:)(v8, v7);
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  HomeManager.homeManager(_:didRemove:)(v8, v7);
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3
{
  v4 = a3;
  v5 = self;
  HomeManager.homeDidUpdateAccessControl(forCurrentUser:)(v4);
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  HomeManager.home(_:didAdd:)(v6, v7);
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  HomeManager.home(_:didRemove:)(v6, v7);
}

- (void)home:(id)a3 didAddUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  HomeManager.home(_:didAdd:)(v6, v7);
}

- (void)home:(id)a3 didRemoveUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  HomeManager.home(_:didRemove:)(v6, v7);
}

- (void)accessoryDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  HomeManager.accessoryDidUpdateName(_:)(v4);
}

- (void)accessoryDidUpdateControllable:(id)a3
{
  v4 = a3;
  v5 = self;
  HomeManager.accessoryDidUpdateControllable(_:)(v4);
}

@end