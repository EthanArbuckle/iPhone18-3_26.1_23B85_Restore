@interface OS_geom_approximate_winding_number_3d
- (void)dealloc;
@end

@implementation OS_geom_approximate_winding_number_3d

- (void)dealloc
{
  geom_exact_winding_number_3d_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_geom_approximate_winding_number_3d;
  [(OS_geom_approximate_winding_number_3d *)&v3 dealloc];
}

@end