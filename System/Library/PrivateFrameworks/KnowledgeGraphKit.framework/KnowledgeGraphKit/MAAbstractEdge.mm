@interface MAAbstractEdge
- (MAAbstractEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 weight:(float)a7 minimum:(unint64_t)a8 maximum:(unint64_t)a9 directed:(BOOL)a10;
- (id)oppositeNode:(id)a3;
- (id)sourceNode;
- (id)targetNode;
@end

@implementation MAAbstractEdge

- (id)oppositeNode:(id)a3
{
  v5.receiver = self;
  v5.super_class = MAAbstractEdge;
  v3 = [(MAEdge *)&v5 oppositeNode:a3];

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

- (MAAbstractEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 weight:(float)a7 minimum:(unint64_t)a8 maximum:(unint64_t)a9 directed:(BOOL)a10
{
  v15 = a4;
  v16 = a5;
  v21.receiver = self;
  v21.super_class = MAAbstractEdge;
  LODWORD(v17) = 1.0;
  v18 = [(MAConcreteEdge *)&v21 initWithLabel:a3 sourceNode:0 targetNode:0 domain:1 weight:MEMORY[0x277CBEC10] properties:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_sourceAbstractNode, v15);
    objc_storeWeak(&v19->_targetAbstractNode, v16);
    v19->_minimum = a8;
    v19->_maximum = a9;
    v19->_isDirected = a10;
  }

  return v19;
}

@end