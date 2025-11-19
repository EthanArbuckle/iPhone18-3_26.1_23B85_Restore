@interface OS_geom_point_cloud_laplacian_3d
- (void)dealloc;
@end

@implementation OS_geom_point_cloud_laplacian_3d

- (void)dealloc
{
  std::__destroy_at[abi:nn200100]<geom::point_cloud_laplacian<float>,0>(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_point_cloud_laplacian_3d;
  [(OS_geom_point_cloud_laplacian_3d *)&v3 dealloc];
}

@end