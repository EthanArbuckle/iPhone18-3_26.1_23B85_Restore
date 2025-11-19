@interface KGEdgeFilter
- (BOOL)matchesEdge:(id)a3;
@end

@implementation KGEdgeFilter

- (BOOL)matchesEdge:(id)a3
{
  v4.receiver = self;
  v4.super_class = KGEdgeFilter;
  return [(KGElementFilter *)&v4 matchesElement:a3];
}

@end