@interface DBCameraOverlayController
- (CAFCar)car;
- (_TtC9DashBoard25DBCameraOverlayController)init;
- (_TtC9DashBoard25DBCameraOverlayController)initWithWindowScene:(id)a3 windowFrame:(CGRect)a4 cameraScene:(id)a5 environment:(id)a6;
- (void)cameraGeneralService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)invalidate;
- (void)setCar:(id)a3;
@end

@implementation DBCameraOverlayController

- (_TtC9DashBoard25DBCameraOverlayController)initWithWindowScene:(id)a3 windowFrame:(CGRect)a4 cameraScene:(id)a5 environment:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  swift_unknownObjectRetain();
  v13 = sub_24831118C(v11, v12, x, y, width, height);

  swift_unknownObjectRelease();
  return v13;
}

- (CAFCar)car
{
  v3 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCar:(id)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard25DBCameraOverlayController_car;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
  v8 = self;
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
  v2 = self;
  DBCameraOverlayController.invalidate()();
}

- (void)cameraGeneralService:(id)a3 didUpdateOn:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  DBCameraOverlayController.cameraGeneralService(_:didUpdateOn:)(v6, a4);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  DBCameraOverlayController.carDidUpdateAccessories(_:)(v4);
}

@end