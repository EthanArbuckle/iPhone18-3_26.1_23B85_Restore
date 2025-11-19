@interface OS_geom_interpolating_curve_4d
- (void)dealloc;
@end

@implementation OS_geom_interpolating_curve_4d

- (void)dealloc
{
  geom::interpolating_curve<double>::~interpolating_curve(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_interpolating_curve_4d;
  [(OS_geom_interpolating_curve_4d *)&v3 dealloc];
}

@end