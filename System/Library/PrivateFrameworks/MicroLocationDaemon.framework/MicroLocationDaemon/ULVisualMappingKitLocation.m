@interface ULVisualMappingKitLocation
+ (id)locationNotAvailable;
- (_TtC19MicroLocationDaemon26ULVisualMappingKitLocation)init;
- (_TtC19MicroLocationDaemon26ULVisualMappingKitLocation)initWithCoordinates:(_TtC19MicroLocationDaemon26ULVisualMappingKitLocation *)self;
@end

@implementation ULVisualMappingKitLocation

- (_TtC19MicroLocationDaemon26ULVisualMappingKitLocation)initWithCoordinates:(_TtC19MicroLocationDaemon26ULVisualMappingKitLocation *)self
{
  v6 = v2;
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates) = v6;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ULVisualMappingKitLocation *)&v7 init];
}

+ (id)locationNotAvailable
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = *MEMORY[0x277D28830];
  v3 = objc_allocWithZone(ObjCClassMetadata);
  *&v3[OBJC_IVAR____TtC19MicroLocationDaemon26ULVisualMappingKitLocation_coordinates] = v6;
  v7.receiver = v3;
  v7.super_class = ObjCClassMetadata;
  v4 = objc_msgSendSuper2(&v7, sel_init);

  return v4;
}

- (_TtC19MicroLocationDaemon26ULVisualMappingKitLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end