@interface OS_geom_approximate_winding_number_3f
- (void)dealloc;
@end

@implementation OS_geom_approximate_winding_number_3f

- (void)dealloc
{
  geom_exact_winding_number_3f_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_geom_approximate_winding_number_3f;
  [(OS_geom_approximate_winding_number_3f *)&v3 dealloc];
}

@end