@interface OS_geom_inset_evaluator_2d
- (void)dealloc;
@end

@implementation OS_geom_inset_evaluator_2d

- (void)dealloc
{
  geom::straight_skeleton_evaluator<double>::~straight_skeleton_evaluator(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_inset_evaluator_2d;
  [(OS_geom_inset_evaluator_2d *)&v3 dealloc];
}

@end