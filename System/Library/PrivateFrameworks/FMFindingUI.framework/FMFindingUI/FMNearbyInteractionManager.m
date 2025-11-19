@interface FMNearbyInteractionManager
- (_TtC11FMFindingUI26FMNearbyInteractionManager)init;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
@end

@implementation FMNearbyInteractionManager

- (void)applicationDidEnterBackground
{
  v2 = self;
  sub_24A562F38();
}

- (void)applicationWillEnterForeground
{
  v2 = self;
  sub_24A562F90();
}

- (_TtC11FMFindingUI26FMNearbyInteractionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end