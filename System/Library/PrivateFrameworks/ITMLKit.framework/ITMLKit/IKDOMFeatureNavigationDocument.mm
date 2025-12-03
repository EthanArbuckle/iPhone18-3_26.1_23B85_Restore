@interface IKDOMFeatureNavigationDocument
+ (id)makeFeatureJSObjectForFeature:(id)feature;
- (IKAppContext)appContext;
- (IKDOMFeatureNavigationDocument)initWithDOMNode:(id)node featureName:(id)name;
- (id)documents;
- (void)clear;
- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options;
- (void)popDocument;
- (void)popToDocument:(id)document;
- (void)popToRootDocument;
- (void)pushDocument:(id)document options:(id)options;
- (void)removeDocument:(id)document;
- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options;
- (void)setNavigationController:(id)controller;
@end

@implementation IKDOMFeatureNavigationDocument

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  featureCopy = feature;
  v4 = [IKJSNavigationDocument alloc];
  appContext = [featureCopy appContext];
  v6 = [(IKJSNavigationDocument *)v4 initWithAppContext:appContext navigationController:featureCopy];

  return v6;
}

- (IKDOMFeatureNavigationDocument)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = IKDOMFeatureNavigationDocument;
  v8 = [(IKDOMFeatureNavigationDocument *)&v15 init];
  if (v8)
  {
    appContext = [nodeCopy appContext];
    objc_storeWeak(&v8->_appContext, appContext);

    v10 = [nameCopy copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackItems = v8->_stackItems;
    v8->_stackItems = v12;
  }

  return v8;
}

- (void)setNavigationController:(id)controller
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  p_appNavigationController = &self->_appNavigationController;
  if (self->_appNavigationController != controllerCopy)
  {
    objc_storeStrong(&self->_appNavigationController, controller);
    if ([(NSMutableArray *)self->_stackItems count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      reverseObjectEnumerator = [(NSMutableArray *)self->_stackItems reverseObjectEnumerator];
      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        selfCopy = self;
        v20 = controllerCopy;
        document2 = 0;
        v11 = *v22;
        do
        {
          v12 = 0;
          v13 = document2;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v14 = *(*(&v21 + 1) + 8 * v12);
            v15 = *p_appNavigationController;
            document = [v14 document];
            options = [v14 options];
            if (v13)
            {
              [(IKAppNavigationController *)v15 insertDocument:document beforeDocument:v13 options:options];
            }

            else
            {
              [(IKAppNavigationController *)v15 pushDocument:document options:options];
            }

            document2 = [v14 document];

            ++v12;
            v13 = document2;
          }

          while (v9 != v12);
          v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);

        self = selfCopy;
        controllerCopy = v20;
      }

      [(NSMutableArray *)self->_stackItems removeAllObjects];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)pushDocument:(id)document options:(id)options
{
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    optionsCopy = options;
    documentCopy = document;
    [IKAppNavigationController pushDocument:"pushDocument:options:" options:?];
  }

  else
  {
    optionsCopy2 = options;
    documentCopy2 = document;
    documentCopy = [[IKNavigationItem alloc] initWithDocument:documentCopy2 presentationOptions:optionsCopy2];

    [(NSMutableArray *)self->_stackItems addObject:documentCopy];
  }
}

- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options
{
  beforeDocumentCopy = beforeDocument;
  v9 = beforeDocumentCopy;
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    optionsCopy = options;
    documentCopy = document;
    [(IKAppNavigationController *)appNavigationController insertDocument:documentCopy beforeDocument:v9 options:optionsCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__IKDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke;
    v19[3] = &unk_279799360;
    v20 = beforeDocumentCopy;
    optionsCopy2 = options;
    documentCopy2 = document;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[IKNavigationItem alloc] initWithDocument:documentCopy2 presentationOptions:optionsCopy2];

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

BOOL __72__IKDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options
{
  documentCopy = document;
  v9 = documentCopy;
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    optionsCopy = options;
    withDocumentCopy = withDocument;
    [(IKAppNavigationController *)appNavigationController replaceDocument:v9 withDocument:withDocumentCopy options:optionsCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__IKDOMFeatureNavigationDocument_replaceDocument_withDocument_options___block_invoke;
    v19[3] = &unk_279799360;
    v20 = documentCopy;
    optionsCopy2 = options;
    withDocumentCopy2 = withDocument;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[IKNavigationItem alloc] initWithDocument:withDocumentCopy2 presentationOptions:optionsCopy2];

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

- (void)popToDocument:(id)document
{
  documentCopy = document;
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    [(IKAppNavigationController *)appNavigationController popToDocument:documentCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__IKDOMFeatureNavigationDocument_popToDocument___block_invoke;
    v8[3] = &unk_279799360;
    v9 = documentCopy;
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

- (void)removeDocument:(id)document
{
  documentCopy = document;
  appNavigationController = self->_appNavigationController;
  if (appNavigationController)
  {
    [(IKAppNavigationController *)appNavigationController removeDocument:documentCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__IKDOMFeatureNavigationDocument_removeDocument___block_invoke;
    v8[3] = &unk_279799360;
    v9 = documentCopy;
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
    documents = [(IKAppNavigationController *)appNavigationController documents];
  }

  else
  {
    documents = [MEMORY[0x277CBEB18] array];
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

          document = [*(*(&v13 + 1) + 8 * i) document];
          [documents addObject:document];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return documents;
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