@interface KGEdgeFilter
- (BOOL)matchesEdge:(id)edge;
@end

@implementation KGEdgeFilter

- (BOOL)matchesEdge:(id)edge
{
  v4.receiver = self;
  v4.super_class = KGEdgeFilter;
  return [(KGElementFilter *)&v4 matchesElement:edge];
}

@end