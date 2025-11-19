@interface HMMEphemeralContainerState
- (BOOL)isActive;
- (HMMEphemeralContainerState)init;
- (double)activeDuration;
@end

@implementation HMMEphemeralContainerState

- (BOOL)isActive
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMMEphemeralContainerState_lock);
  v3 = self;
  os_unfair_lock_lock(v2 + 4);
  v4 = *(&v3->super.isa + OBJC_IVAR___HMMEphemeralContainerState__isActive);
  os_unfair_lock_unlock(v2 + 4);

  return v4;
}

- (double)activeDuration
{
  v2 = self;
  v3 = sub_22B0B9CC8();

  return v3;
}

- (HMMEphemeralContainerState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end