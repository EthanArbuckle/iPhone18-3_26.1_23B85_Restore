@interface ProfileCharacteristicsWithAutoAvatarImageViewController
- (_TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController)init;
- (_TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController)initWithHealthStore:(id)store;
- (void)didUpdateName;
- (void)setUpNavigationBar;
@end

@implementation ProfileCharacteristicsWithAutoAvatarImageViewController

- (_TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController)init
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v4 = sub_1BA4A1B08();
  v5 = sub_1BA4A1AF8();
  v8[3] = v4;
  v8[4] = MEMORY[0x1E69A3B38];
  v8[0] = v5;
  v6 = (*(ObjectType + 176))(v3, v8);
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)setUpNavigationBar
{
  selfCopy = self;
  sub_1BA06F1C8();
}

- (void)didUpdateName
{
  selfCopy = self;
  sub_1BA06F524();
}

- (_TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController)initWithHealthStore:(id)store
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end