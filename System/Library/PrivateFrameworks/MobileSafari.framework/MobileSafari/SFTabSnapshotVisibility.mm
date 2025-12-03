@interface SFTabSnapshotVisibility
- (SFTabSnapshotVisibility)init;
- (SFTabSnapshotVisibility)initWithPriority:(double)priority tier:(unint64_t)tier;
@end

@implementation SFTabSnapshotVisibility

- (SFTabSnapshotVisibility)init
{
  v2 = (&self->super.isa + OBJC_IVAR___SFTabSnapshotVisibility_wrapped);
  *v2 = 0;
  v2[1] = 1;
  v4.receiver = self;
  v4.super_class = SFTabSnapshotVisibility;
  return [(SFTabSnapshotVisibility *)&v4 init];
}

- (SFTabSnapshotVisibility)initWithPriority:(double)priority tier:(unint64_t)tier
{
  v4 = self + OBJC_IVAR___SFTabSnapshotVisibility_wrapped;
  *v4 = priority;
  *(v4 + 1) = tier;
  v6.receiver = self;
  v6.super_class = SFTabSnapshotVisibility;
  return [(SFTabSnapshotVisibility *)&v6 init];
}

@end