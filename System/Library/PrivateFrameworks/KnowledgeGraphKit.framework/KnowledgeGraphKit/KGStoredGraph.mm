@interface KGStoredGraph
- (id)initGraphWithStore:(id)store entityFactory:(id)factory;
@end

@implementation KGStoredGraph

- (id)initGraphWithStore:(id)store entityFactory:(id)factory
{
  v5.receiver = self;
  v5.super_class = KGStoredGraph;
  return [(KGMutableGraph *)&v5 initWithMutableImplementation:store entityFactory:factory];
}

@end