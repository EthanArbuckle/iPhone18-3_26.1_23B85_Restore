@interface KGStoredGraph
- (id)initGraphWithStore:(id)a3 entityFactory:(id)a4;
@end

@implementation KGStoredGraph

- (id)initGraphWithStore:(id)a3 entityFactory:(id)a4
{
  v5.receiver = self;
  v5.super_class = KGStoredGraph;
  return [(KGMutableGraph *)&v5 initWithMutableImplementation:a3 entityFactory:a4];
}

@end