@interface IKDOMNodeData
+ (id)jsNodeDataForNode:(id)node;
- (BOOL)containsUpdates;
- (IKDOMNode)ownerJSNode;
- (id)featureForName:(id)name;
- (void)setFeature:(id)feature forName:(id)name;
@end

@implementation IKDOMNodeData

+ (id)jsNodeDataForNode:(id)node
{
  nodeCopy = node;
  v4 = objc_alloc_init(IKDOMNodeData);
  [(IKDOMNodeData *)v4 setOwnerJSNode:nodeCopy];

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

- (void)setFeature:(id)feature forName:(id)name
{
  featureCopy = feature;
  nameCopy = name;
  featuresMap = [(IKDOMNodeData *)self featuresMap];

  if (!featuresMap)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    [(IKDOMNodeData *)self setFeaturesMap:v8];
  }

  featuresMap2 = [(IKDOMNodeData *)self featuresMap];
  v10 = featuresMap2;
  if (featureCopy)
  {
    [featuresMap2 setObject:featureCopy forKey:nameCopy];
  }

  else
  {
    [featuresMap2 removeObjectForKey:nameCopy];
  }
}

- (id)featureForName:(id)name
{
  nameCopy = name;
  featuresMap = [(IKDOMNodeData *)self featuresMap];
  v6 = [featuresMap objectForKey:nameCopy];

  return v6;
}

- (IKDOMNode)ownerJSNode
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerJSNode);

  return WeakRetained;
}

@end