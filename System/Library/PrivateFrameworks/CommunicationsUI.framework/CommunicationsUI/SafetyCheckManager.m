@interface SafetyCheckManager
- (_TtC16CommunicationsUI18SafetyCheckManager)init;
- (void)fetchSharing;
@end

@implementation SafetyCheckManager

- (void)fetchSharing
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask;
  if (!*(&self->super.isa + OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask))
  {
    v7 = sub_1C2E75E74();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v9 = self;
    *(&self->super.isa + v6) = sub_1C2D22B9C(0, 0, v5, &unk_1C2E81EC8, v8);
  }
}

- (_TtC16CommunicationsUI18SafetyCheckManager)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SafetyCheckManager *)&v5 init];
}

@end