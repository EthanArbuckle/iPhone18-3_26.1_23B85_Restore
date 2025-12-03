@interface FeatureStatusInputSignal.FeatureStatusObserver
- (_TtCC14HealthPlatform24FeatureStatusInputSignal21FeatureStatusObserver)init;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
@end

@implementation FeatureStatusInputSignal.FeatureStatusObserver

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  swift_unknownObjectRetain();
  statusCopy = status;
  selfCopy = self;
  sub_22844D330(providing, statusCopy);
  swift_unknownObjectRelease();
}

- (_TtCC14HealthPlatform24FeatureStatusInputSignal21FeatureStatusObserver)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(FeatureStatusInputSignal.FeatureStatusObserver *)&v5 init];
}

@end