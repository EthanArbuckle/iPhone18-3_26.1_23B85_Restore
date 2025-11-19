@interface FeatureStatusInputSignal.FeatureStatusObserver
- (_TtCC14HealthPlatform24FeatureStatusInputSignal21FeatureStatusObserver)init;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
@end

@implementation FeatureStatusInputSignal.FeatureStatusObserver

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_22844D330(a3, v7);
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