@interface Configuration
+ (CKContainerID)containerID;
+ (id)zoneNameForZoneUUID:(id)d;
+ (id)zoneUUIDForHomeIdentifier:(id)identifier;
+ (void)resetWithCompletion:(id)completion;
- (_TtC13HomeKitEvents13Configuration)init;
@end

@implementation Configuration

- (_TtC13HomeKitEvents13Configuration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Configuration();
  return [(Configuration *)&v3 init];
}

+ (CKContainerID)containerID
{
  swift_getObjCClassMetadata();
  v2 = sub_2541BC5E0();
  v3 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v4 = sub_25424DCA8();
  v5 = [v3 initWithContainerIdentifier:v4 environment:v2];

  return v5;
}

+ (id)zoneUUIDForHomeIdentifier:(id)identifier
{
  v3 = sub_25424D948();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_25424D908();
  static Configuration.zoneUUID(forHomeIdentifier:)(v8, v10);
  v11 = *(v4 + 8);
  v11(v8, v3);
  v12 = sub_25424D8E8();
  v11(v10, v3);

  return v12;
}

+ (id)zoneNameForZoneUUID:(id)d
{
  v3 = sub_25424D948();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D908();
  v14 = sub_25424D8D8();
  v15 = v8;
  v12 = 0x2D73746E657665;
  v13 = 0xE700000000000000;
  v12 = sub_25424DE78();
  v13 = v9;
  sub_25424DDD8();
  (*(v4 + 8))(v7, v3);

  v10 = sub_25424DCA8();

  return v10;
}

+ (void)resetWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  static Configuration.reset(completion:)(sub_2541BE3FC, v4);
}

@end