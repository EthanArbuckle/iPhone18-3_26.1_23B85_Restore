@interface HomeManager
- (_TtC18HomeMessagingUtils11HomeManager)init;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeManager

- (_TtC18HomeMessagingUtils11HomeManager)init
{
  v2 = objc_allocWithZone(type metadata accessor for HomeManager());
  v3 = HomeManager.init(homeDelegate:options:cachePolicy:)(0, 0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  HomeManager.homeManagerDidUpdateHomes(_:)(homesCopy);
}

@end