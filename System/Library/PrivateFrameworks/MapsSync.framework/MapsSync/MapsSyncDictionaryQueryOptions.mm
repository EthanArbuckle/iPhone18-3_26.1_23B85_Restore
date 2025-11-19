@interface MapsSyncDictionaryQueryOptions
- (NSArray)propertiesToFetch;
- (NSArray)propertiesToGroupBy;
- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithOptions:(id)a3;
- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithPredicate:(id)a3 sortDescriptors:(id)a4 range:(id)a5;
- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithPropertiesToFetch:(id)a3 groupBy:(id)a4 expression:(id)a5;
- (void)setPropertiesToGroupBy:(id)a3;
- (void)updateWithOptions:(id)a3;
@end

@implementation MapsSyncDictionaryQueryOptions

- (NSArray)propertiesToFetch
{
  v2 = *(self + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToFetch);

  v3 = sub_1B63BEC94();

  return v3;
}

- (NSArray)propertiesToGroupBy
{
  if (*(self + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy))
  {
    v2 = *(self + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy);

    v3 = sub_1B63BEC94();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPropertiesToGroupBy:(id)a3
{
  if (a3)
  {
    v4 = sub_1B63BECA4();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy);
  *(self + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy) = v4;
}

- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithPropertiesToFetch:(id)a3 groupBy:(id)a4 expression:(id)a5
{
  v7 = sub_1B63BECA4();
  if (a4)
  {
    a4 = sub_1B63BECA4();
  }

  v8 = a5;
  v9 = sub_1B639EA7C(v7, a4, a5);

  return v9;
}

- (void)updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B639E494(v4);
}

- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithPredicate:(id)a3 sortDescriptors:(id)a4 range:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithOptions:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end