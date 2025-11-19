@interface IKTemplateTreeNode
- (IKTemplateTreeNode)initWithNodeName:(id)a3 styleOverrides:(id)a4 parentNode:(id)a5;
- (IKTemplateTreeNode)parentNode;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setChildNodes:(id)a3;
@end

@implementation IKTemplateTreeNode

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(IKTemplateTreeNode *)self nodeName];
  v6 = [(IKTemplateTreeNode *)self styleOverrides];
  v7 = [v4 initWithNodeName:v5 styleOverrides:v6 parentNode:0];

  v8 = MEMORY[0x277CBEB38];
  v9 = [(IKTemplateTreeNode *)self childNodes];
  v10 = [v8 dictionaryWithCapacity:{objc_msgSend(v9, "count")}];

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
        v16 = [(IKTemplateTreeNode *)self childNodes];
        v17 = [v16 objectForKey:v15];
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

- (IKTemplateTreeNode)initWithNodeName:(id)a3 styleOverrides:(id)a4 parentNode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = IKTemplateTreeNode;
  v11 = [(IKTemplateTreeNode *)&v15 init];
  if (v11)
  {
    v12 = [v8 ik_sharedInstance];
    nodeName = v11->_nodeName;
    v11->_nodeName = v12;

    objc_storeStrong(&v11->_styleOverrides, a4);
    objc_storeWeak(&v11->_parentNode, v10);
  }

  return v11;
}

- (void)setChildNodes:(id)a3
{
  v6 = a3;
  v4 = [v6 count];
  if (v4)
  {
    v4 = [v6 copy];
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