@interface OS_geom_point_cloud_laplacian_3f
- (void)dealloc;
@end

@implementation OS_geom_point_cloud_laplacian_3f

- (void)dealloc
{
  std::__destroy_at[abi:nn200100]<geom::point_cloud_laplacian<float>,0>(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_point_cloud_laplacian_3f;
  [(OS_geom_point_cloud_laplacian_3f *)&v3 dealloc];
}

@end