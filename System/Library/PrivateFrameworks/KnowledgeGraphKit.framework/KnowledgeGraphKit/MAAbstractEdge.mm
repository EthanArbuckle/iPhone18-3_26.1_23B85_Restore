@interface MAAbstractEdge
- (MAAbstractEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight minimum:(unint64_t)minimum maximum:(unint64_t)maximum directed:(BOOL)self0;
- (id)oppositeNode:(id)node;
- (id)sourceNode;
- (id)targetNode;
@end

@implementation MAAbstractEdge

- (id)oppositeNode:(id)node
{
  v5.receiver = self;
  v5.super_class = MAAbstractEdge;
  v3 = [(MAEdge *)&v5 oppositeNode:node];

  return v3;
}

- (id)targetNode
{
  WeakRetained = objc_loadWeakRetained(&self->_targetAbstractNode);

  return WeakRetained;
}

- (id)sourceNode
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceAbstractNode);

  return WeakRetained;
}

- (MAAbstractEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight minimum:(unint64_t)minimum maximum:(unint64_t)maximum directed:(BOOL)self0
{
  nodeCopy = node;
  targetNodeCopy = targetNode;
  v21.receiver = self;
  v21.super_class = MAAbstractEdge;
  LODWORD(v17) = 1.0;
  v18 = [(MAConcreteEdge *)&v21 initWithLabel:label sourceNode:0 targetNode:0 domain:1 weight:MEMORY[0x277CBEC10] properties:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_sourceAbstractNode, nodeCopy);
    objc_storeWeak(&v19->_targetAbstractNode, targetNodeCopy);
    v19->_minimum = minimum;
    v19->_maximum = maximum;
    v19->_isDirected = directed;
  }

  return v19;
}

@end