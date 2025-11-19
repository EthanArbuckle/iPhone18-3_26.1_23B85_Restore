@interface WatchPlaceETAProvider
- (_TtC6MapsUI21WatchPlaceETAProvider)init;
- (void)ETAProviderUpdated:(id)a3;
- (void)dealloc;
@end

@implementation WatchPlaceETAProvider

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider);
  v6 = self;
  [v5 removeObserver_];
  [*(&self->super.isa + v4) cancel];
  v7.receiver = v6;
  v7.super_class = ObjectType;
  [(WatchPlaceETAProvider *)&v7 dealloc];
}

- (void)ETAProviderUpdated:(id)a3
{
  v5 = a3;
  v6 = self;
  WatchPlaceETAProvider.etaProviderUpdated(_:)(a3);
}

- (_TtC6MapsUI21WatchPlaceETAProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end