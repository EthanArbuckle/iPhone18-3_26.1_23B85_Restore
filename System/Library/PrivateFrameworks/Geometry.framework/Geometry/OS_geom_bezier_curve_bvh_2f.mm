@interface OS_geom_bezier_curve_bvh_2f
- (void)dealloc;
@end

@implementation OS_geom_bezier_curve_bvh_2f

- (void)dealloc
{
  geom_bezier_curve_bvh_2f_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_geom_bezier_curve_bvh_2f;
  [(OS_geom_bvh_2f *)&v3 dealloc];
}

@end