@interface MeasureObject
- (BOOL)isEqual:(id)equal;
- (int64_t)state;
- (void)setState:(int64_t)state;
@end

@implementation MeasureObject

- (int64_t)state
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
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
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state);
  v5 = *(v4 + 24);
  selfCopy = self;

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  *(v4 + 16) = state;
  os_unfair_lock_unlock(v5);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_258428E20();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = MeasureObject.isEqual(_:)(v8);

  sub_2583A3D90(v8);
  return v6 & 1;
}

@end