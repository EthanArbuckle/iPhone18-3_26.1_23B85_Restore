@interface OS_geom_interpolating_curve_4f
- (void)dealloc;
@end

@implementation OS_geom_interpolating_curve_4f

- (void)dealloc
{
  geom::interpolating_curve<float>::~interpolating_curve(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_interpolating_curve_4f;
  [(OS_geom_interpolating_curve_4f *)&v3 dealloc];
}

@end