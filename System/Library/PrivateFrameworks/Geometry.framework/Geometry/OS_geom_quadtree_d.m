@interface OS_geom_quadtree_d
- (void)dealloc;
@end

@implementation OS_geom_quadtree_d

- (void)dealloc
{
  geom::point_tree<float,(unsigned char)3>::~point_tree(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_quadtree_d;
  [(OS_geom_quadtree_d *)&v3 dealloc];
}

@end