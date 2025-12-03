@interface ULVisualMappingKitAnchor
- (NSUUID)uniqueIdentifier;
- (_TtC19MicroLocationDaemon24ULVisualMappingKitAnchor)init;
- (_TtC19MicroLocationDaemon24ULVisualMappingKitAnchor)initWithUniqueIdentifier:(id)identifier location:(id)location;
@end

@implementation ULVisualMappingKitAnchor

- (NSUUID)uniqueIdentifier
{
  v3 = sub_2592121D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier, v3, v6);
  v9 = sub_259212170();
  (*(v4 + 8))(v8, v3);

  return v9;
}

- (_TtC19MicroLocationDaemon24ULVisualMappingKitAnchor)initWithUniqueIdentifier:(id)identifier location:(id)location
{
  ObjectType = swift_getObjectType();
  v7 = sub_2592121D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212190();
  (*(v8 + 16))(self + OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier, v11, v7);
  *(self + OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location) = location;
  v15.receiver = self;
  v15.super_class = ObjectType;
  locationCopy = location;
  v13 = [(ULVisualMappingKitAnchor *)&v15 init];
  (*(v8 + 8))(v11, v7);
  return v13;
}

- (_TtC19MicroLocationDaemon24ULVisualMappingKitAnchor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end