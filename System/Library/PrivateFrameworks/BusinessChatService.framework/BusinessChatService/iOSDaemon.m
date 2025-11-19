@interface iOSDaemon
- (_TtC17businessservicesd9iOSDaemon)init;
@end

@implementation iOSDaemon

- (_TtC17businessservicesd9iOSDaemon)init
{
  v3 = OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___rcsChatbotAssetDataSource;
  v4 = type metadata accessor for BrandAssetNetworkFetcher();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(&self->super.super.isa + OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___brandService) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for iOSDaemon();
  return [(Daemon *)&v6 init];
}

@end