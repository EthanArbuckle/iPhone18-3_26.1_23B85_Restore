@interface WatchPlaceETAProvider
- (_TtC6MapsUI21WatchPlaceETAProvider)init;
- (void)ETAProviderUpdated:(id)updated;
- (void)dealloc;
@end

@implementation WatchPlaceETAProvider

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider);
  selfCopy = self;
  [v5 removeObserver_];
  [*(&self->super.isa + v4) cancel];
  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(WatchPlaceETAProvider *)&v7 dealloc];
}

- (void)ETAProviderUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  WatchPlaceETAProvider.etaProviderUpdated(_:)(updated);
}

- (_TtC6MapsUI21WatchPlaceETAProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end