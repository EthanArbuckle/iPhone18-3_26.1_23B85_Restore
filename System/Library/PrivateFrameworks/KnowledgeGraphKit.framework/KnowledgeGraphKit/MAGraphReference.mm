@interface MAGraphReference
- (MAGraph)concreteGraph;
- (MAGraphProxy)graph;
- (MAGraphReference)initWithGraph:(id)a3;
@end

@implementation MAGraphReference

- (MAGraph)concreteGraph
{
  WeakRetained = objc_loadWeakRetained(&self->_concreteGraph);

  return WeakRetained;
}

- (MAGraphProxy)graph
{
  WeakRetained = objc_loadWeakRetained(&self->_concreteGraph);

  return WeakRetained;
}

- (MAGraphReference)initWithGraph:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MAGraphReference;
  v5 = [(MAGraphReference *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_concreteGraph, v4);
    v7 = [v4 identifier];
    v6->_hash = [v7 hash];
  }

  return v6;
}

@end