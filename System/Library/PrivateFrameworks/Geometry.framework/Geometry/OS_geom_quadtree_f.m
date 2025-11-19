@interface OS_geom_quadtree_f
- (void)dealloc;
@end

@implementation OS_geom_quadtree_f

- (void)dealloc
{
  geom::point_tree<float,(unsigned char)2>::~point_tree(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_quadtree_f;
  [(OS_geom_quadtree_f *)&v3 dealloc];
}

@end