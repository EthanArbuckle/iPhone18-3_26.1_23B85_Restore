@interface OS_geom_triangle_mesh_bvh_3f
- (void)dealloc;
@end

@implementation OS_geom_triangle_mesh_bvh_3f

- (void)dealloc
{
  geom_triangle_mesh_bvh_3f_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_geom_triangle_mesh_bvh_3f;
  [(OS_geom_bvh_3f *)&v3 dealloc];
}

@end