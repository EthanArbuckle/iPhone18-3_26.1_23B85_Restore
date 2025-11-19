@interface CameraSessionInformation
- (_TtC11DockKitCore24CameraSessionInformation)init;
- (_TtC11DockKitCore24CameraSessionInformation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CameraSessionInformation

- (_TtC11DockKitCore24CameraSessionInformation)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_azimuth) = 0x400921FB54442D18;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CameraSessionInformation *)&v6 init];
}

- (_TtC11DockKitCore24CameraSessionInformation)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2246259CC(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CameraSessionInformation.encode(with:)(v4);
}

@end