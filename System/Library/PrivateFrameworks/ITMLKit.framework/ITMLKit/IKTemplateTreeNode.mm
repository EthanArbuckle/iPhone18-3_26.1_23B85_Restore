@interface IKTemplateTreeNode
- (IKTemplateTreeNode)initWithNodeName:(id)name styleOverrides:(id)overrides parentNode:(id)node;
- (IKTemplateTreeNode)parentNode;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setChildNodes:(id)nodes;
@end

@implementation IKTemplateTreeNode

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() allocWithZone:zone];
  nodeName = [(IKTemplateTreeNode *)self nodeName];
  styleOverrides = [(IKTemplateTreeNode *)self styleOverrides];
  v7 = [v4 initWithNodeName:nodeName styleOverrides:styleOverrides parentNode:0];

  v8 = MEMORY[0x277CBEB38];
  childNodes = [(IKTemplateTreeNode *)self childNodes];
  v10 = [v8 dictionaryWithCapacity:{objc_msgSend(childNodes, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(IKTemplateTreeNode *)self childNodes];
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        childNodes2 = [(IKTemplateTreeNode *)self childNodes];
        v17 = [childNodes2 objectForKey:v15];
        v18 = [v17 copy];

        objc_storeWeak(v18 + 1, v7);
        [v10 setObject:v18 forKey:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  [v7 setChildNodes:v10];
  [v7 setStyleComposer:0];

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (IKTemplateTreeNode)initWithNodeName:(id)name styleOverrides:(id)overrides parentNode:(id)node
{
  nameCopy = name;
  overridesCopy = overrides;
  nodeCopy = node;
  v15.receiver = self;
  v15.super_class = IKTemplateTreeNode;
  v11 = [(IKTemplateTreeNode *)&v15 init];
  if (v11)
  {
    ik_sharedInstance = [nameCopy ik_sharedInstance];
    nodeName = v11->_nodeName;
    v11->_nodeName = ik_sharedInstance;

    objc_storeStrong(&v11->_styleOverrides, overrides);
    objc_storeWeak(&v11->_parentNode, nodeCopy);
  }

  return v11;
}

- (void)setChildNodes:(id)nodes
{
  nodesCopy = nodes;
  v4 = [nodesCopy count];
  if (v4)
  {
    v4 = [nodesCopy copy];
  }

  childNodes = self->_childNodes;
  self->_childNodes = v4;
}

- (IKTemplateTreeNode)parentNode
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  return WeakRetained;
}

@end