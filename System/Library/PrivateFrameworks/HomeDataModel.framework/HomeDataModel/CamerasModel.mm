@interface CamerasModel
- (_TtC13HomeDataModel12CamerasModel)init;
- (void)accessoryDidUpdateName:(id)a3;
- (void)accessoryDidUpdateReachability:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)homeManagerDidUpdatePrimaryHome:(id)a3;
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

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  CamerasModel.homeManagerDidUpdateHomes(_:)(v4);
}

- (void)homeManagerDidUpdatePrimaryHome:(id)a3
{
  v4 = a3;
  v5 = self;
  CamerasModel.homeManagerDidUpdatePrimaryHome(_:)(v4);
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D17E9F28(v7);
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D17EA1F4(v7);
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CamerasModel.home(_:didAdd:)(v6, v7);
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CamerasModel.home(_:didRemove:)(v6, v7);
}

- (void)accessoryDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  CamerasModel.accessoryDidUpdateName(_:)(v4);
}

- (void)accessoryDidUpdateReachability:(id)a3
{
  v4 = a3;
  v5 = self;
  CamerasModel.accessoryDidUpdateReachability(_:)(v4);
}

@end