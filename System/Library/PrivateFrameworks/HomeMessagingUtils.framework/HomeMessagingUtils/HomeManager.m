@interface HomeManager
- (_TtC18HomeMessagingUtils11HomeManager)init;
- (void)homeManagerDidUpdateHomes:(id)a3;
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

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  HomeManager.homeManagerDidUpdateHomes(_:)(v4);
}

@end