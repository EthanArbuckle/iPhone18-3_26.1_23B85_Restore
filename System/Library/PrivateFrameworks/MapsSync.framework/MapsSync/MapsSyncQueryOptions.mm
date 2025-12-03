@interface MapsSyncQueryOptions
+ (id)restrictOptionsWithOptions:(id)options predicate:(id)predicate sortDescriptors:(id)descriptors;
- (BOOL)lazyLoad;
- (NSArray)sortDescriptors;
- (_TtC8MapsSync13MapsSyncRange)range;
- (_TtC8MapsSync20MapsSyncQueryOptions)init;
- (_TtC8MapsSync20MapsSyncQueryOptions)initWithOptions:(id)options;
- (_TtC8MapsSync20MapsSyncQueryOptions)initWithPredicate:(id)predicate sortDescriptors:(id)descriptors range:(id)range;
- (_TtC8MapsSync22MapsSyncQueryPredicate)predicate;
- (void)setLazyLoad:(BOOL)load;
- (void)setSortDescriptors:(id)descriptors;
@end

@implementation MapsSyncQueryOptions

- (_TtC8MapsSync20MapsSyncQueryOptions)initWithPredicate:(id)predicate sortDescriptors:(id)descriptors range:(id)range
{
  descriptorsCopy = descriptors;
  if (descriptors)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    descriptorsCopy = sub_1B63BECA4();
  }

  predicateCopy = predicate;
  rangeCopy = range;
  v10 = sub_1B62895F4(predicate, descriptorsCopy, range);

  return v10;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)predicate
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  return *(self + v3);
}

- (_TtC8MapsSync13MapsSyncRange)range
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  return *(self + v3);
}

- (NSArray)sortDescriptors
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  if (*(self + v3))
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);

    v4 = sub_1B63BEC94();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (descriptors)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    descriptorsCopy = sub_1B63BECA4();
  }

  v5 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = descriptorsCopy;
}

- (BOOL)lazyLoad
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLazyLoad:(BOOL)load
{
  v5 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  *(self + v5) = load;
}

- (_TtC8MapsSync20MapsSyncQueryOptions)initWithOptions:(id)options
{
  optionsCopy = options;
  v4 = sub_1B628DD60(optionsCopy);

  return v4;
}

+ (id)restrictOptionsWithOptions:(id)options predicate:(id)predicate sortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (descriptors)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    descriptorsCopy = sub_1B63BECA4();
  }

  optionsCopy = options;
  predicateCopy = predicate;
  v10 = sub_1B628EC4C(options, predicate, descriptorsCopy);

  return v10;
}

- (_TtC8MapsSync20MapsSyncQueryOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end