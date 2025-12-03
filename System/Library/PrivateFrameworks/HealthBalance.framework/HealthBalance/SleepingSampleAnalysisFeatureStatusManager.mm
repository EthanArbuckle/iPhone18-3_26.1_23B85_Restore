@interface SleepingSampleAnalysisFeatureStatusManager
- (_TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager)init;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
@end

@implementation SleepingSampleAnalysisFeatureStatusManager

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  swift_unknownObjectRetain();
  statusCopy = status;
  selfCopy = self;
  SleepingSampleAnalysisFeatureStatusManager.featureStatusProviding(_:didUpdate:)(providing);
  swift_unknownObjectRelease();
}

- (_TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end