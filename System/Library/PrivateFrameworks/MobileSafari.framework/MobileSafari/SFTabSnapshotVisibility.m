@interface SFTabSnapshotVisibility
- (SFTabSnapshotVisibility)init;
- (SFTabSnapshotVisibility)initWithPriority:(double)a3 tier:(unint64_t)a4;
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

- (SFTabSnapshotVisibility)initWithPriority:(double)a3 tier:(unint64_t)a4
{
  v4 = self + OBJC_IVAR___SFTabSnapshotVisibility_wrapped;
  *v4 = a3;
  *(v4 + 1) = a4;
  v6.receiver = self;
  v6.super_class = SFTabSnapshotVisibility;
  return [(SFTabSnapshotVisibility *)&v6 init];
}

@end