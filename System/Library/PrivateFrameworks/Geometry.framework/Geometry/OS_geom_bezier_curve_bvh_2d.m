@interface OS_geom_bezier_curve_bvh_2d
- (void)dealloc;
@end

@implementation OS_geom_bezier_curve_bvh_2d

- (void)dealloc
{
  geom_bezier_curve_bvh_2d_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_geom_bezier_curve_bvh_2d;
  [(OS_geom_bvh_2d *)&v3 dealloc];
}

@end