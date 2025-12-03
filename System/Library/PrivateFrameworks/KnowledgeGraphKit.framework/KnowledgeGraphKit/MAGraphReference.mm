@interface MAGraphReference
- (MAGraph)concreteGraph;
- (MAGraphProxy)graph;
- (MAGraphReference)initWithGraph:(id)graph;
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

- (MAGraphReference)initWithGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = MAGraphReference;
  v5 = [(MAGraphReference *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_concreteGraph, graphCopy);
    identifier = [graphCopy identifier];
    v6->_hash = [identifier hash];
  }

  return v6;
}

@end