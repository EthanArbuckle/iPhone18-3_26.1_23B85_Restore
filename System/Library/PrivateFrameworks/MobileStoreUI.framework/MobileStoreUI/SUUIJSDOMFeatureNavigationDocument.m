@interface SUUIJSDOMFeatureNavigationDocument
+ (id)makeFeatureJSObjectForFeature:(id)a3;
- (IKAppContext)appContext;
- (SUUIJSDOMFeatureNavigationDocument)initWithDOMNode:(id)a3 featureName:(id)a4;
- (id)documents;
- (void)clear;
- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5;
- (void)popDocument;
- (void)popToDocument:(id)a3;
- (void)popToRootDocument;
- (void)pushDocument:(id)a3 options:(id)a4;
- (void)removeDocument:(id)a3;
- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5;
- (void)setNavigationDocumentController:(id)a3;
@end

@implementation SUUIJSDOMFeatureNavigationDocument

- (SUUIJSDOMFeatureNavigationDocument)initWithDOMNode:(id)a3 featureName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SUUIJSDOMFeatureNavigationDocument;
  v9 = [(SUUIJSDOMFeatureNavigationDocument *)&v17 init];
  if (v9)
  {
    v10 = [v7 appContext];

    if (!v10)
    {
      [SUUIJSDOMFeatureNavigationDocument initWithDOMNode:a2 featureName:v9];
    }

    v11 = [v7 appContext];
    objc_storeWeak(&v9->_appContext, v11);

    v12 = [v8 copy];
    featureName = v9->_featureName;
    v9->_featureName = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackItems = v9->_stackItems;
    v9->_stackItems = v14;
  }

  return v9;
}

- (void)setNavigationDocumentController:(id)a3
{
  v5 = a3;
  if (self->_navigationDocumentController != v5)
  {
    objc_storeStrong(&self->_navigationDocumentController, a3);
    if ([(NSMutableArray *)self->_stackItems count])
    {
      [(SUUINavigationDocumentController *)self->_navigationDocumentController setStackItems:self->_stackItems animated:0];
      [(NSMutableArray *)self->_stackItems removeAllObjects];
    }
  }
}

+ (id)makeFeatureJSObjectForFeature:(id)a3
{
  v3 = MEMORY[0x277D1B0B8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 appContext];
  v7 = [v5 initWithAppContext:v6 navigationController:v4];

  return v7;
}

- (void)clear
{
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SUUINavigationDocumentController *)navigationDocumentController clear];
  }

  else
  {
    [(NSMutableArray *)self->_stackItems removeAllObjects];
  }
}

- (id)documents
{
  v17 = *MEMORY[0x277D85DE8];
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    v4 = [(SUUINavigationDocumentController *)navigationDocumentController documents];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_stackItems;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) document];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = v8;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    v11 = a5;
    v12 = a3;
    [(SUUINavigationDocumentController *)navigationDocumentController insertDocument:v12 beforeDocument:v9 options:v11];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__SUUIJSDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke;
    v19[3] = &unk_2798F61E0;
    v20 = v8;
    v14 = a5;
    v15 = a3;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[SUUIDocumentStackItem alloc] initWithDocument:v15 presentationOptions:v14];

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

BOOL __76__SUUIJSDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)pushDocument:(id)a3 options:(id)a4
{
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    v6 = a4;
    v10 = a3;
    [SUUINavigationDocumentController pushDocument:"pushDocument:options:" options:?];
  }

  else
  {
    v8 = a4;
    v9 = a3;
    v10 = [[SUUIDocumentStackItem alloc] initWithDocument:v9 presentationOptions:v8];

    [(NSMutableArray *)self->_stackItems addObject:v10];
  }
}

- (void)popDocument
{
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SUUINavigationDocumentController *)navigationDocumentController popDocument];
  }

  else
  {
    [(NSMutableArray *)self->_stackItems removeLastObject];
  }
}

- (void)popToDocument:(id)a3
{
  v4 = a3;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SUUINavigationDocumentController *)navigationDocumentController popToDocument:v4];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__SUUIJSDOMFeatureNavigationDocument_popToDocument___block_invoke;
    v8[3] = &unk_2798F61E0;
    v9 = v4;
    v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v8];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_stackItems removeObjectsInRange:v7, [(NSMutableArray *)self->_stackItems count]- v7];
    }
  }
}

BOOL __52__SUUIJSDOMFeatureNavigationDocument_popToDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)popToRootDocument
{
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {

    [(SUUINavigationDocumentController *)navigationDocumentController popToRootDocument];
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

- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = v8;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    v11 = a5;
    v12 = a4;
    [(SUUINavigationDocumentController *)navigationDocumentController replaceDocument:v9 withDocument:v12 options:v11];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__SUUIJSDOMFeatureNavigationDocument_replaceDocument_withDocument_options___block_invoke;
    v19[3] = &unk_2798F61E0;
    v20 = v8;
    v14 = a5;
    v15 = a4;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[SUUIDocumentStackItem alloc] initWithDocument:v15 presentationOptions:v14];

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

BOOL __75__SUUIJSDOMFeatureNavigationDocument_replaceDocument_withDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)removeDocument:(id)a3
{
  v4 = a3;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SUUINavigationDocumentController *)navigationDocumentController removeDocument:v4];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SUUIJSDOMFeatureNavigationDocument_removeDocument___block_invoke;
    v8[3] = &unk_2798F61E0;
    v9 = v4;
    v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v8];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v7];
    }
  }
}

BOOL __53__SUUIJSDOMFeatureNavigationDocument_removeDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (void)initWithDOMNode:(uint64_t)a1 featureName:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIJSDOMFeatureNavigationDocument.m" lineNumber:30 description:@"Unexpectedly tried to initialize SUUIJSDOMFeatureNavigationDocument without an appContext."];
}

@end