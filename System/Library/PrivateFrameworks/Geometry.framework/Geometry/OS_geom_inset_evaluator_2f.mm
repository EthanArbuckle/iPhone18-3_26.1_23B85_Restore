@interface OS_geom_inset_evaluator_2f
- (void)dealloc;
@end

@implementation OS_geom_inset_evaluator_2f

- (void)dealloc
{
  geom::straight_skeleton_evaluator<float>::~straight_skeleton_evaluator(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_inset_evaluator_2f;
  [(OS_geom_inset_evaluator_2f *)&v3 dealloc];
}

@end