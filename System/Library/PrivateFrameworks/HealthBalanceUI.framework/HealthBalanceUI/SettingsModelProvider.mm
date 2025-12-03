@interface SettingsModelProvider
- (_TtC15HealthBalanceUI21SettingsModelProvider)init;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
@end

@implementation SettingsModelProvider

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  swift_unknownObjectRetain();
  statusCopy = status;
  selfCopy = self;
  sub_1CFE62744(statusCopy, selfCopy, sub_1CFE629F8);
  swift_unknownObjectRelease();
}

- (_TtC15HealthBalanceUI21SettingsModelProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end