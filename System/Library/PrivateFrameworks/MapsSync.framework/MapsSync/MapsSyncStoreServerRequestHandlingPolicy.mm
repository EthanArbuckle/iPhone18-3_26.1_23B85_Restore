@interface MapsSyncStoreServerRequestHandlingPolicy
- (_TtC9mapssyncd40MapsSyncStoreServerRequestHandlingPolicy)init;
@end

@implementation MapsSyncStoreServerRequestHandlingPolicy

- (_TtC9mapssyncd40MapsSyncStoreServerRequestHandlingPolicy)init
{
  self->NSXPCStoreServerRequestHandlingPolicy_opaque[OBJC_IVAR____TtC9mapssyncd40MapsSyncStoreServerRequestHandlingPolicy_mapsInstalled] = sub_1000127E0() & 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
  return [(MapsSyncStoreServerRequestHandlingPolicy *)&v4 init];
}

@end