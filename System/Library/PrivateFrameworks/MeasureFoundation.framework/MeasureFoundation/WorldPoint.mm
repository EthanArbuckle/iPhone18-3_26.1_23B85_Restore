@interface WorldPoint
- (NSArray)lines;
- (_TtC17MeasureFoundation10WorldPoint)init;
- (int64_t)state;
- (int64_t)type;
- (void)setLines:(id)lines;
- (void)setState:(int64_t)state;
- (void)setType:(int64_t)type;
@end

@implementation WorldPoint

- (NSArray)lines
{
  swift_beginAccess();
  type metadata accessor for WorldLine();

  v2 = sub_258428850();

  return v2;
}

- (void)setLines:(id)lines
{
  type metadata accessor for WorldLine();
  v4 = sub_258428860();
  v5 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (int64_t)type
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__type;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = *(v4 + 24);
  selfCopy = self;

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v7 = *(v4 + 16);
  os_unfair_lock_unlock(v5);

  return v7;
}

- (void)setType:(int64_t)type
{
  selfCopy = self;
  WorldPoint.type.setter(type);
}

- (int64_t)state
{
  v2 = *(self + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v3 = *(v2 + 24);
  selfCopy = self;

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v5 = *(v2 + 16);
  os_unfair_lock_unlock(v3);

  return v5;
}

- (void)setState:(int64_t)state
{
  selfCopy = self;
  WorldPoint.state.setter(state);
}

- (_TtC17MeasureFoundation10WorldPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end