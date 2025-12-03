@interface IKDOMNodeList
+ (IKDOMNodeList)nodeListWithAppContext:(id)context contextNode:(id)node xpath:(id)xpath;
- (IKDOMNodeList)initWithAppContext:(id)context contextNode:(id)node evaluationBlock:(id)block;
- (id)item:(int64_t)item;
- (int64_t)length;
- (void)_updateNodes;
- (void)domDidUpdateForContextNode:(id)node;
@end

@implementation IKDOMNodeList

+ (IKDOMNodeList)nodeListWithAppContext:(id)context contextNode:(id)node xpath:(id)xpath
{
  xpathCopy = xpath;
  nodeCopy = node;
  contextCopy = context;
  v11 = [self alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__IKDOMNodeList_nodeListWithAppContext_contextNode_xpath___block_invoke;
  v15[3] = &unk_27979A428;
  v16 = xpathCopy;
  v12 = xpathCopy;
  v13 = [v11 initWithAppContext:contextCopy contextNode:nodeCopy evaluationBlock:v15];

  return v13;
}

id __58__IKDOMNodeList_nodeListWithAppContext_contextNode_xpath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [a2 nodesForXPath:v2 error:&v9];
  v4 = v9;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  if (v4)
  {
    v7 = ITMLKitGetLogObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(IKDOMDocument *)v4 getElementById:v7];
    }
  }

  return v6;
}

- (IKDOMNodeList)initWithAppContext:(id)context contextNode:(id)node evaluationBlock:(id)block
{
  contextCopy = context;
  nodeCopy = node;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = IKDOMNodeList;
  v11 = [(IKJSObject *)&v18 initWithAppContext:contextCopy];
  if (v11)
  {
    jsContext = [contextCopy jsContext];
    virtualMachine = [jsContext virtualMachine];

    managedSelf = [nodeCopy managedSelf];
    [virtualMachine addManagedReference:managedSelf withOwner:v11];

    [nodeCopy addDOMObserver:v11];
    objc_storeStrong(&v11->_contextNode, node);
    v15 = [blockCopy copy];
    evaluationBlock = v11->_evaluationBlock;
    v11->_evaluationBlock = v15;
  }

  return v11;
}

- (int64_t)length
{
  [(IKDOMNodeList *)self _updateNodes];
  nodes = [(IKDOMNodeList *)self nodes];
  v4 = [nodes count];

  return v4;
}

- (id)item:(int64_t)item
{
  [(IKDOMNodeList *)self _updateNodes];
  if (item < 0 || [(IKDOMNodeList *)self length]<= item)
  {
    v6 = 0;
  }

  else
  {
    nodes = [(IKDOMNodeList *)self nodes];
    v6 = [nodes objectAtIndex:item];
  }

  return v6;
}

- (void)domDidUpdateForContextNode:(id)node
{
  v19 = *MEMORY[0x277D85DE8];
  appContext = [(IKJSObject *)self appContext];
  jsContext = [appContext jsContext];
  virtualMachine = [jsContext virtualMachine];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  nodes = [(IKDOMNodeList *)self nodes];
  v8 = [nodes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(nodes);
        }

        managedSelf = [*(*(&v14 + 1) + 8 * v11) managedSelf];
        [virtualMachine removeManagedReference:managedSelf withOwner:self];

        ++v11;
      }

      while (v9 != v11);
      v9 = [nodes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(IKDOMNodeList *)self setNodes:0];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateNodes
{
  v26 = *MEMORY[0x277D85DE8];
  nodes = [(IKDOMNodeList *)self nodes];

  if (!nodes)
  {
    evaluationBlock = [(IKDOMNodeList *)self evaluationBlock];

    v5 = MEMORY[0x277CBEBF8];
    if (evaluationBlock)
    {
      evaluationBlock2 = [(IKDOMNodeList *)self evaluationBlock];
      contextNode = [(IKDOMNodeList *)self contextNode];
      v8 = (evaluationBlock2)[2](evaluationBlock2, contextNode);
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v5;
      }

      v5 = v10;
    }

    appContext = [(IKJSObject *)self appContext];
    jsContext = [appContext jsContext];
    virtualMachine = [jsContext virtualMachine];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          managedSelf = [*(*(&v21 + 1) + 8 * i) managedSelf];
          [virtualMachine addManagedReference:managedSelf withOwner:self];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [(IKDOMNodeList *)self setNodes:v14];
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end