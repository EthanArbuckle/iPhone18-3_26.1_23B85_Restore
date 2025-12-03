@interface SUUIJSDOMFeatureNavigationDocument
+ (id)makeFeatureJSObjectForFeature:(id)feature;
- (IKAppContext)appContext;
- (SUUIJSDOMFeatureNavigationDocument)initWithDOMNode:(id)node featureName:(id)name;
- (id)documents;
- (void)clear;
- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options;
- (void)popDocument;
- (void)popToDocument:(id)document;
- (void)popToRootDocument;
- (void)pushDocument:(id)document options:(id)options;
- (void)removeDocument:(id)document;
- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options;
- (void)setNavigationDocumentController:(id)controller;
@end

@implementation SUUIJSDOMFeatureNavigationDocument

- (SUUIJSDOMFeatureNavigationDocument)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SUUIJSDOMFeatureNavigationDocument;
  v9 = [(SUUIJSDOMFeatureNavigationDocument *)&v17 init];
  if (v9)
  {
    appContext = [nodeCopy appContext];

    if (!appContext)
    {
      [SUUIJSDOMFeatureNavigationDocument initWithDOMNode:a2 featureName:v9];
    }

    appContext2 = [nodeCopy appContext];
    objc_storeWeak(&v9->_appContext, appContext2);

    v12 = [nameCopy copy];
    featureName = v9->_featureName;
    v9->_featureName = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackItems = v9->_stackItems;
    v9->_stackItems = v14;
  }

  return v9;
}

- (void)setNavigationDocumentController:(id)controller
{
  controllerCopy = controller;
  if (self->_navigationDocumentController != controllerCopy)
  {
    objc_storeStrong(&self->_navigationDocumentController, controller);
    if ([(NSMutableArray *)self->_stackItems count])
    {
      [(SUUINavigationDocumentController *)self->_navigationDocumentController setStackItems:self->_stackItems animated:0];
      [(NSMutableArray *)self->_stackItems removeAllObjects];
    }
  }
}

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  v3 = MEMORY[0x277D1B0B8];
  featureCopy = feature;
  v5 = [v3 alloc];
  appContext = [featureCopy appContext];
  v7 = [v5 initWithAppContext:appContext navigationController:featureCopy];

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
    documents = [(SUUINavigationDocumentController *)navigationDocumentController documents];
  }

  else
  {
    documents = [MEMORY[0x277CBEB18] array];
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

          document = [*(*(&v12 + 1) + 8 * i) document];
          [documents addObject:document];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return documents;
}

- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options
{
  beforeDocumentCopy = beforeDocument;
  v9 = beforeDocumentCopy;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    optionsCopy = options;
    documentCopy = document;
    [(SUUINavigationDocumentController *)navigationDocumentController insertDocument:documentCopy beforeDocument:v9 options:optionsCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__SUUIJSDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke;
    v19[3] = &unk_2798F61E0;
    v20 = beforeDocumentCopy;
    optionsCopy2 = options;
    documentCopy2 = document;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[SUUIDocumentStackItem alloc] initWithDocument:documentCopy2 presentationOptions:optionsCopy2];

    v18 = self->_stackItems;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v18 addObject:v17];
    }

    else
    {
      [(NSMutableArray *)v18 insertObject:v17 atIndex:v16];
    }

    documentCopy = v20;
  }
}

BOOL __76__SUUIJSDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)pushDocument:(id)document options:(id)options
{
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    optionsCopy = options;
    documentCopy = document;
    [SUUINavigationDocumentController pushDocument:"pushDocument:options:" options:?];
  }

  else
  {
    optionsCopy2 = options;
    documentCopy2 = document;
    documentCopy = [[SUUIDocumentStackItem alloc] initWithDocument:documentCopy2 presentationOptions:optionsCopy2];

    [(NSMutableArray *)self->_stackItems addObject:documentCopy];
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

- (void)popToDocument:(id)document
{
  documentCopy = document;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SUUINavigationDocumentController *)navigationDocumentController popToDocument:documentCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__SUUIJSDOMFeatureNavigationDocument_popToDocument___block_invoke;
    v8[3] = &unk_2798F61E0;
    v9 = documentCopy;
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

- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options
{
  documentCopy = document;
  v9 = documentCopy;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    optionsCopy = options;
    withDocumentCopy = withDocument;
    [(SUUINavigationDocumentController *)navigationDocumentController replaceDocument:v9 withDocument:withDocumentCopy options:optionsCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__SUUIJSDOMFeatureNavigationDocument_replaceDocument_withDocument_options___block_invoke;
    v19[3] = &unk_2798F61E0;
    v20 = documentCopy;
    optionsCopy2 = options;
    withDocumentCopy2 = withDocument;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[SUUIDocumentStackItem alloc] initWithDocument:withDocumentCopy2 presentationOptions:optionsCopy2];

    v18 = self->_stackItems;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v18 addObject:v17];
    }

    else
    {
      [(NSMutableArray *)v18 replaceObjectAtIndex:v16 withObject:v17];
    }

    withDocumentCopy = v20;
  }
}

BOOL __75__SUUIJSDOMFeatureNavigationDocument_replaceDocument_withDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)removeDocument:(id)document
{
  documentCopy = document;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SUUINavigationDocumentController *)navigationDocumentController removeDocument:documentCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SUUIJSDOMFeatureNavigationDocument_removeDocument___block_invoke;
    v8[3] = &unk_2798F61E0;
    v9 = documentCopy;
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