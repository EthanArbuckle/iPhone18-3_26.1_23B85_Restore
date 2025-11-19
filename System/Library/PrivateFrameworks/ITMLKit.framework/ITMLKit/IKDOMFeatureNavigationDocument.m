@interface IKDOMFeatureNavigationDocument
+ (id)makeFeatureJSObjectForFeature:(id)a3;
- (IKAppContext)appContext;
- (IKDOMFeatureNavigationDocument)initWithDOMNode:(id)a3 featureName:(id)a4;
- (id)documents;
- (void)clear;
- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5;
- (void)popDocument;
- (void)popToDocument:(id)a3;
- (void)popToRootDocument;
- (void)pushDocument:(id)a3 options:(id)a4;
- (void)removeDocument:(id)a3;
- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5;
- (void)setNavigationController:(id)a3;
@end

@implementation IKDOMFeatureNavigationDocument

+ (id)makeFeatureJSObjectForFeature:(id)a3
{
  v3 = a3;
  v4 = [IKJSNavigationDocument alloc];
  v5 = [v3 appContext];
  v6 = [(IKJSNavigationDocument *)v4 initWithAppContext:v5 navigationController:v3];

  return v6;
}

- (IKDOMFeatureNavigationDocument)initWithDOMNode:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = IKDOMFeatureNavigationDocument;
  v8 = [(IKDOMFeatureNavigationDocument *)&v15 init];
  if (v8)
  {
    v9 = [v6 appContext];
    objc_storeWeak(&v8->_appContext, v9);

    v10 = [v7 copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackItems = v8->_stackItems;
    v8->_stackItems = v12;
  }

  return v8;
}

- (void)setNavigationController:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_appNavigationController = &self->_appNavigationController;
  if (self->_appNavigationController != v5)
  {
    objc_storeStrong(&self->_appNavigationController, a3);
    if ([(NSMutableArray *)self->_stackItems count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = [(NSMutableArray *)self->_stackItems reverseObjectEnumerator];
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v19 = self;
        v20 = v5;
        v10 = 0;
        v11 = *v22;
        do
        {
          v12 = 0;
          v13 = v10;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v21 + 1) + 8 * v12);
            v15 = *p_appNavigationController;
            v16 = [v14 document];
            v17 = [v14 options];
            if (v13)
            {
              [(IKAppNavigationController *)v15 insertDocument:v16 beforeDocument:v13 options:v17];
            }

            else
            {
              [(IKAppNavigationController *)v15 pushDocument:v16 options:v17];
            }

            v10 = [v14 document];

            ++v12;
            v13 = v10;
          }

          while (v9 != v12);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);

        self = v19;
        v5 = v20;
      }

      [(NSMutableArray *)self->_stackItems removeAllObjects];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)pushDocument:(id)a3 options:(id)a4
{
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    v6 = a4;
    v10 = a3;
    [IKAppNavigationController pushDocument:"pushDocument:options:" options:?];
  }

  else
  {
    v8 = a4;
    v9 = a3;
    v10 = [[IKNavigationItem alloc] initWithDocument:v9 presentationOptions:v8];

    [(NSMutableArray *)self->_stackItems addObject:v10];
  }
}

- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = v8;
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    v11 = a5;
    v12 = a3;
    [(IKAppNavigationController *)appNavigationController insertDocument:v12 beforeDocument:v9 options:v11];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__IKDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke;
    v19[3] = &unk_279799360;
    v20 = v8;
    v14 = a5;
    v15 = a3;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[IKNavigationItem alloc] initWithDocument:v15 presentationOptions:v14];

    v18 = self->_stackItems;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v18 addObject:v17];
    }

    else
    {
      [(NSMutableArray *)v18 insertObject:v17 atIndex:v16];
    }

    v12 = v20;
  }
}

BOOL __72__IKDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = v8;
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    v11 = a5;
    v12 = a4;
    [(IKAppNavigationController *)appNavigationController replaceDocument:v9 withDocument:v12 options:v11];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__IKDOMFeatureNavigationDocument_replaceDocument_withDocument_options___block_invoke;
    v19[3] = &unk_279799360;
    v20 = v8;
    v14 = a5;
    v15 = a4;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[IKNavigationItem alloc] initWithDocument:v15 presentationOptions:v14];

    v18 = self->_stackItems;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v18 addObject:v17];
    }

    else
    {
      [(NSMutableArray *)v18 replaceObjectAtIndex:v16 withObject:v17];
    }

    v12 = v20;
  }
}

BOOL __71__IKDOMFeatureNavigationDocument_replaceDocument_withDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)popDocument
{
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    [(IKAppNavigationController *)appNavigationController popDocument];
  }

  else
  {
    [(NSMutableArray *)self->_stackItems removeLastObject];
  }
}

- (void)popToDocument:(id)a3
{
  v4 = a3;
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    [(IKAppNavigationController *)appNavigationController popToDocument:v4];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__IKDOMFeatureNavigationDocument_popToDocument___block_invoke;
    v8[3] = &unk_279799360;
    v9 = v4;
    v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v8];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_stackItems removeObjectsInRange:v7, [(NSMutableArray *)self->_stackItems count]- v7];
    }
  }
}

BOOL __48__IKDOMFeatureNavigationDocument_popToDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)popToRootDocument
{
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {

    [(IKAppNavigationController *)appNavigationController popToRootDocument];
  }

  else
  {
    v4 = [(NSMutableArray *)self->_stackItems count];
    if (v4 >= 2)
    {
      v5 = v4 - 1;
      stackItems = self->_stackItems;

      [(NSMutableArray *)stackItems removeObjectsInRange:1, v5];
    }
  }
}

- (void)removeDocument:(id)a3
{
  v4 = a3;
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    [(IKAppNavigationController *)appNavigationController removeDocument:v4];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__IKDOMFeatureNavigationDocument_removeDocument___block_invoke;
    v8[3] = &unk_279799360;
    v9 = v4;
    v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v8];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v7];
    }
  }
}

BOOL __49__IKDOMFeatureNavigationDocument_removeDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)documents
{
  v18 = *MEMORY[0x277D85DE8];
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    v4 = [(IKAppNavigationController *)appNavigationController documents];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_stackItems;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) document];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)clear
{
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    [(IKAppNavigationController *)appNavigationController clear];
  }

  else
  {
    [(NSMutableArray *)self->_stackItems removeAllObjects];
  }
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end