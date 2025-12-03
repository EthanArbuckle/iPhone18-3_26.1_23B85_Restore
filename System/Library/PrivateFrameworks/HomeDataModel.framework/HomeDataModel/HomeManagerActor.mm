@interface HomeManagerActor
- (_TtC13HomeDataModel16HomeManagerActor)init;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeManagerActor

- (_TtC13HomeDataModel16HomeManagerActor)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;

  HomeManagerActor.homeManagerDidUpdateHomes(_:)(homesCopy);
}

@end