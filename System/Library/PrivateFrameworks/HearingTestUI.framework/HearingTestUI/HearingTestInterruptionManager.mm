@interface HearingTestInterruptionManager
- (_TtC13HearingTestUI30HearingTestInterruptionManager)init;
- (void)dealloc;
- (void)sceneDidEnterBackground;
- (void)sceneWillDeactivateNotification;
@end

@implementation HearingTestInterruptionManager

- (void)dealloc
{
  v2 = self;
  sub_20CDBDA1C();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for HearingTestInterruptionManager();
  [(HearingTestInterruptionManager *)&v3 dealloc];
}

- (_TtC13HearingTestUI30HearingTestInterruptionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneDidEnterBackground
{
  v2 = self;
  sub_20CDBF830("[%{public}s] Received UIScene.didEnterBackgroundNotification and will add the interruption.", &unk_2823BD7C8, sub_20CDC165C, &block_descriptor_50);
}

- (void)sceneWillDeactivateNotification
{
  v2 = self;
  sub_20CDBF830("[%{public}s] Received UIScene.willDeactivateNotification and will add the interruption.", &unk_2823BD778, sub_20CDC1624, &block_descriptor_44);
}

@end