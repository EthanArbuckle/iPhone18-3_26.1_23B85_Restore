@interface OS_geom_triangle_mesh_bvh_3d
- (void)dealloc;
@end

@implementation OS_geom_triangle_mesh_bvh_3d

- (void)dealloc
{
  geom_triangle_mesh_bvh_3d_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_geom_triangle_mesh_bvh_3d;
  [(OS_geom_bvh_3d *)&v3 dealloc];
}

@end