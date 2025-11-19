@interface WorldRectangle
- (_TtC17MeasureFoundation14WorldRectangle)init;
- (int64_t)state;
- (void)setState:(int64_t)a3;
@end

@implementation WorldRectangle

- (int64_t)state
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v3 = *(v2 + 24);
  v4 = self;

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v5 = *(v2 + 16);
  os_unfair_lock_unlock(v3);

  return v5;
}

- (void)setState:(int64_t)a3
{
  v4 = self;
  WorldRectangle.state.setter(a3);
}

- (_TtC17MeasureFoundation14WorldRectangle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end