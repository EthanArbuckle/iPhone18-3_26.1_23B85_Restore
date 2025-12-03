@interface DBCameraOverlayController
- (CAFCar)car;
- (_TtC9DashBoard25DBCameraOverlayController)init;
- (_TtC9DashBoard25DBCameraOverlayController)initWithWindowScene:(id)scene windowFrame:(CGRect)frame cameraScene:(id)cameraScene environment:(id)environment;
- (void)cameraGeneralService:(id)service didUpdateOn:(BOOL)on;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)invalidate;
- (void)setCar:(id)car;
@end

@implementation DBCameraOverlayController

- (_TtC9DashBoard25DBCameraOverlayController)initWithWindowScene:(id)scene windowFrame:(CGRect)frame cameraScene:(id)cameraScene environment:(id)environment
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sceneCopy = scene;
  cameraSceneCopy = cameraScene;
  swift_unknownObjectRetain();
  v13 = sub_24831118C(sceneCopy, cameraSceneCopy, x, y, width, height);

  swift_unknownObjectRelease();
  return v13;
}

- (CAFCar)car
{
  v3 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCar:(id)car
{
  v5 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = car;
  carCopy = car;
  selfCopy = self;
  sub_2483100E4(v6);
}

- (_TtC9DashBoard25DBCameraOverlayController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  selfCopy = self;
  DBCameraOverlayController.invalidate()();
}

- (void)cameraGeneralService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  DBCameraOverlayController.cameraGeneralService(_:didUpdateOn:)(serviceCopy, on);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  DBCameraOverlayController.carDidUpdateAccessories(_:)(accessoriesCopy);
}

@end