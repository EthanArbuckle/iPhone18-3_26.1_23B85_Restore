@interface IKDOMNodeList
+ (IKDOMNodeList)nodeListWithAppContext:(id)a3 contextNode:(id)a4 xpath:(id)a5;
- (IKDOMNodeList)initWithAppContext:(id)a3 contextNode:(id)a4 evaluationBlock:(id)a5;
- (id)item:(int64_t)a3;
- (int64_t)length;
- (void)_updateNodes;
- (void)domDidUpdateForContextNode:(id)a3;
@end

@implementation IKDOMNodeList

+ (IKDOMNodeList)nodeListWithAppContext:(id)a3 contextNode:(id)a4 xpath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__IKDOMNodeList_nodeListWithAppContext_contextNode_xpath___block_invoke;
  v15[3] = &unk_27979A428;
  v16 = v8;
  v12 = v8;
  v13 = [v11 initWithAppContext:v10 contextNode:v9 evaluationBlock:v15];

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

- (IKDOMNodeList)initWithAppContext:(id)a3 contextNode:(id)a4 evaluationBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = IKDOMNodeList;
  v11 = [(IKJSObject *)&v18 initWithAppContext:v8];
  if (v11)
  {
    v12 = [v8 jsContext];
    v13 = [v12 virtualMachine];

    v14 = [v9 managedSelf];
    [v13 addManagedReference:v14 withOwner:v11];

    [v9 addDOMObserver:v11];
    objc_storeStrong(&v11->_contextNode, a4);
    v15 = [v10 copy];
    evaluationBlock = v11->_evaluationBlock;
    v11->_evaluationBlock = v15;
  }

  return v11;
}

- (int64_t)length
{
  [(IKDOMNodeList *)self _updateNodes];
  v3 = [(IKDOMNodeList *)self nodes];
  v4 = [v3 count];

  return v4;
}

- (id)item:(int64_t)a3
{
  [(IKDOMNodeList *)self _updateNodes];
  if (a3 < 0 || [(IKDOMNodeList *)self length]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(IKDOMNodeList *)self nodes];
    v6 = [v5 objectAtIndex:a3];
  }

  return v6;
}

- (void)domDidUpdateForContextNode:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(IKJSObject *)self appContext];
  v5 = [v4 jsContext];
  v6 = [v5 virtualMachine];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(IKDOMNodeList *)self nodes];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) managedSelf];
        [v6 removeManagedReference:v12 withOwner:self];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(IKDOMNodeList *)self setNodes:0];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateNodes
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(IKDOMNodeList *)self nodes];

  if (!v3)
  {
    v4 = [(IKDOMNodeList *)self evaluationBlock];

    v5 = MEMORY[0x277CBEBF8];
    if (v4)
    {
      v6 = [(IKDOMNodeList *)self evaluationBlock];
      v7 = [(IKDOMNodeList *)self contextNode];
      v8 = (v6)[2](v6, v7);
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

    v11 = [(IKJSObject *)self appContext];
    v12 = [v11 jsContext];
    v13 = [v12 virtualMachine];

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

          v19 = [*(*(&v21 + 1) + 8 * i) managedSelf];
          [v13 addManagedReference:v19 withOwner:self];
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