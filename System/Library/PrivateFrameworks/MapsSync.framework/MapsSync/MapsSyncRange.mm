@interface MapsSyncRange
- (_TtC8MapsSync13MapsSyncRange)init;
- (_TtC8MapsSync13MapsSyncRange)initWithOffset:(int64_t)a3 limit:(int64_t)a4;
@end

@implementation MapsSyncRange

- (_TtC8MapsSync13MapsSyncRange)initWithOffset:(int64_t)a3 limit:(int64_t)a4
{
  v4 = (self + OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range);
  *v4 = a3;
  v4[1] = a4;
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