@interface MapsSyncRange
- (_TtC8MapsSync13MapsSyncRange)init;
- (_TtC8MapsSync13MapsSyncRange)initWithOffset:(int64_t)offset limit:(int64_t)limit;
@end

@implementation MapsSyncRange

- (_TtC8MapsSync13MapsSyncRange)initWithOffset:(int64_t)offset limit:(int64_t)limit
{
  v4 = (self + OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range);
  *v4 = offset;
  v4[1] = limit;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MapsSyncRange();
  return [(MapsSyncRange *)&v6 init];
}

- (_TtC8MapsSync13MapsSyncRange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end