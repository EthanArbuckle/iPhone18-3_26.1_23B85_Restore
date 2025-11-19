@interface IKDOMNodeData
+ (id)jsNodeDataForNode:(id)a3;
- (BOOL)containsUpdates;
- (IKDOMNode)ownerJSNode;
- (id)featureForName:(id)a3;
- (void)setFeature:(id)a3 forName:(id)a4;
@end

@implementation IKDOMNodeData

+ (id)jsNodeDataForNode:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(IKDOMNodeData);
  [(IKDOMNodeData *)v4 setOwnerJSNode:v3];

  return v4;
}

- (BOOL)containsUpdates
{
  if ([(IKDOMNodeData *)self isUpdated]|| [(IKDOMNodeData *)self isChildrenUpdated])
  {
    return 1;
  }

  return [(IKDOMNodeData *)self isSubtreeUpdated];
}

- (void)setFeature:(id)a3 forName:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(IKDOMNodeData *)self featuresMap];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    [(IKDOMNodeData *)self setFeaturesMap:v8];
  }

  v9 = [(IKDOMNodeData *)self featuresMap];
  v10 = v9;
  if (v11)
  {
    [v9 setObject:v11 forKey:v6];
  }

  else
  {
    [v9 removeObjectForKey:v6];
  }
}

- (id)featureForName:(id)a3
{
  v4 = a3;
  v5 = [(IKDOMNodeData *)self featuresMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (IKDOMNode)ownerJSNode
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerJSNode);

  return WeakRetained;
}

@end