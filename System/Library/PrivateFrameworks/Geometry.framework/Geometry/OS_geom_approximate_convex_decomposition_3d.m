@interface OS_geom_approximate_convex_decomposition_3d
- (void)dealloc;
@end

@implementation OS_geom_approximate_convex_decomposition_3d

- (void)dealloc
{
  geom::acd<double>::~acd(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_approximate_convex_decomposition_3d;
  [(OS_geom_approximate_convex_decomposition_3d *)&v3 dealloc];
}

@end