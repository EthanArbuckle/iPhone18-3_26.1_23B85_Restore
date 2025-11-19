@interface MapsSyncStoreConfig
+ (_TtC8MapsSync19MapsSyncStoreConfig)defaultStoreConfig;
+ (id)withConfigWithPrimary:(int64_t)a3 cache:(int64_t)a4;
- (_TtC8MapsSync19MapsSyncStoreConfig)init;
@end

@implementation MapsSyncStoreConfig

+ (id)withConfigWithPrimary:(int64_t)a3 cache:(int64_t)a4
{
  v6 = type metadata accessor for MapsSyncStoreConfig();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC8MapsSync19MapsSyncStoreConfig_primary] = a3;
  *&v7[OBJC_IVAR____TtC8MapsSync19MapsSyncStoreConfig_cache] = a4;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

+ (_TtC8MapsSync19MapsSyncStoreConfig)defaultStoreConfig
{
  v2 = _s8MapsSync0aB11StoreConfigC07defaultcD0ACvgZ_0();

  return v2;
}

- (_TtC8MapsSync19MapsSyncStoreConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end