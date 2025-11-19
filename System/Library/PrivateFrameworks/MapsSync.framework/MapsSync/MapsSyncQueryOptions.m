@interface MapsSyncQueryOptions
+ (id)restrictOptionsWithOptions:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5;
- (BOOL)lazyLoad;
- (NSArray)sortDescriptors;
- (_TtC8MapsSync13MapsSyncRange)range;
- (_TtC8MapsSync20MapsSyncQueryOptions)init;
- (_TtC8MapsSync20MapsSyncQueryOptions)initWithOptions:(id)a3;
- (_TtC8MapsSync20MapsSyncQueryOptions)initWithPredicate:(id)a3 sortDescriptors:(id)a4 range:(id)a5;
- (_TtC8MapsSync22MapsSyncQueryPredicate)predicate;
- (void)setLazyLoad:(BOOL)a3;
- (void)setSortDescriptors:(id)a3;
@end

@implementation MapsSyncQueryOptions

- (_TtC8MapsSync20MapsSyncQueryOptions)initWithPredicate:(id)a3 sortDescriptors:(id)a4 range:(id)a5
{
  v6 = a4;
  if (a4)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    v6 = sub_1B63BECA4();
  }

  v8 = a3;
  v9 = a5;
  v10 = sub_1B62895F4(a3, v6, a5);

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

- (void)setSortDescriptors:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    v3 = sub_1B63BECA4();
  }

  v5 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
}

- (BOOL)lazyLoad
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLazyLoad:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (_TtC8MapsSync20MapsSyncQueryOptions)initWithOptions:(id)a3
{
  v3 = a3;
  v4 = sub_1B628DD60(v3);

  return v4;
}

+ (id)restrictOptionsWithOptions:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5
{
  v5 = a5;
  if (a5)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    v5 = sub_1B63BECA4();
  }

  v8 = a3;
  v9 = a4;
  v10 = sub_1B628EC4C(a3, a4, v5);

  return v10;
}

- (_TtC8MapsSync20MapsSyncQueryOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end