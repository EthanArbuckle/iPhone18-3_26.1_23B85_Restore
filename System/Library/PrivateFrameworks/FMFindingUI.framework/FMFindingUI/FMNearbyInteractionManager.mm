@interface FMNearbyInteractionManager
- (_TtC11FMFindingUI26FMNearbyInteractionManager)init;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
@end

@implementation FMNearbyInteractionManager

- (void)applicationDidEnterBackground
{
  selfCopy = self;
  sub_24A562F38();
}

- (void)applicationWillEnterForeground
{
  selfCopy = self;
  sub_24A562F90();
}

- (_TtC11FMFindingUI26FMNearbyInteractionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end