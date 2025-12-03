@interface MapsSyncDictionaryQueryOptions
- (NSArray)propertiesToFetch;
- (NSArray)propertiesToGroupBy;
- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithOptions:(id)options;
- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithPredicate:(id)predicate sortDescriptors:(id)descriptors range:(id)range;
- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithPropertiesToFetch:(id)fetch groupBy:(id)by expression:(id)expression;
- (void)setPropertiesToGroupBy:(id)by;
- (void)updateWithOptions:(id)options;
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

- (void)setPropertiesToGroupBy:(id)by
{
  if (by)
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

- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithPropertiesToFetch:(id)fetch groupBy:(id)by expression:(id)expression
{
  v7 = sub_1B63BECA4();
  if (by)
  {
    by = sub_1B63BECA4();
  }

  expressionCopy = expression;
  v9 = sub_1B639EA7C(v7, by, expression);

  return v9;
}

- (void)updateWithOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  sub_1B639E494(optionsCopy);
}

- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithPredicate:(id)predicate sortDescriptors:(id)descriptors range:(id)range
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8MapsSync30MapsSyncDictionaryQueryOptions)initWithOptions:(id)options
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end