@interface OS_geom_approximate_convex_decomposition_3f
- (void)dealloc;
@end

@implementation OS_geom_approximate_convex_decomposition_3f

- (void)dealloc
{
  geom::acd<float>::~acd(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_approximate_convex_decomposition_3f;
  [(OS_geom_approximate_convex_decomposition_3f *)&v3 dealloc];
}

@end