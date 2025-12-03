@interface IKJSNavigationDocument
- (IKJSNavigationDocument)initWithAppContext:(id)context navigationController:(id)controller;
- (NSArray)documents;
- (id)_makeAppDocumentWithDocument:(id)document;
- (void)clear;
- (void)dismissModal;
- (void)insertBeforeDocument:(id)document :(id)a4 :(id)a5;
- (void)popDocument;
- (void)popToDocument:(id)document;
- (void)popToRootDocument;
- (void)presentModal:(id)modal :(id)a4;
- (void)pushDocument:(id)document :(id)a4;
- (void)removeDocument:(id)document;
- (void)replaceDocument:(id)document :(id)a4 :(id)a5;
- (void)setDocuments:(id)documents :(id)a4;
@end

@implementation IKJSNavigationDocument

- (IKJSNavigationDocument)initWithAppContext:(id)context navigationController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = IKJSNavigationDocument;
  v7 = [(IKJSObject *)&v10 initWithAppContext:context];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_navigationControllerDelegate, controllerCopy);
    v8->_delegateSelectors.hasClear = objc_opt_respondsToSelector() & 1;
    v8->_delegateSelectors.hasSetDocuments = objc_opt_respondsToSelector() & 1;
    v8->_delegateSelectors.hasPresentModal = objc_opt_respondsToSelector() & 1;
    v8->_delegateSelectors.hasDismissModal = objc_opt_respondsToSelector() & 1;
  }

  return v8;
}

- (NSArray)documents
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__25;
  v11 = __Block_byref_object_dispose__25;
  v12 = 0;
  appContext = [(IKJSObject *)self appContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__IKJSNavigationDocument_documents__block_invoke;
  v6[3] = &unk_279799028;
  v6[4] = self;
  v6[5] = &v7;
  [appContext evaluateDelegateBlockSync:v6];

  v4 = [v8[5] valueForKey:@"jsDocument"];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__IKJSNavigationDocument_documents__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) navigationControllerDelegate];
  v2 = [v5 documents];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setDocuments:(id)documents :(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  documentsCopy = documents;
  v7 = a4;
  if (self->_delegateSelectors.hasSetDocuments)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = documentsCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(IKJSNavigationDocument *)self _makeAppDocumentWithDocument:*(*(&v21 + 1) + 8 * v13)];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    appContext = [(IKJSObject *)self appContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __40__IKJSNavigationDocument_setDocuments::__block_invoke;
    v18[3] = &unk_279799B40;
    v18[4] = self;
    v19 = v8;
    v20 = v7;
    v16 = v8;
    [appContext evaluateDelegateBlockSync:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __40__IKJSNavigationDocument_setDocuments::__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationControllerDelegate];
  [v2 setDocuments:*(a1 + 40) options:*(a1 + 48)];
}

- (void)pushDocument:(id)document :(id)a4
{
  documentCopy = document;
  v7 = a4;
  kdebug_trace();
  v8 = [v7 objectForKey:@"TransitionOptionRetainContext"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    documents = [(IKJSNavigationDocument *)self documents];
    lastObject = [documents lastObject];
    [(IKJSNavigationDocument *)self _migrateMediaControllerFromDocument:lastObject toDocument:documentCopy];
  }

  v12 = [(IKJSNavigationDocument *)self _makeAppDocumentWithDocument:documentCopy];
  appContext = [(IKJSObject *)self appContext];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__IKJSNavigationDocument_pushDocument::__block_invoke;
  v16[3] = &unk_279799B40;
  v16[4] = self;
  v17 = v12;
  v18 = v7;
  v14 = v7;
  v15 = v12;
  [appContext evaluateDelegateBlockSync:v16];
}

void __40__IKJSNavigationDocument_pushDocument::__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationControllerDelegate];
  [v2 pushDocument:*(a1 + 40) options:*(a1 + 48)];
}

- (void)presentModal:(id)modal :(id)a4
{
  modalCopy = modal;
  v7 = a4;
  v8 = v7;
  if (self->_delegateSelectors.hasPresentModal)
  {
    v9 = [v7 objectForKey:@"TransitionOptionRetainContext"];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      documents = [(IKJSNavigationDocument *)self documents];
      lastObject = [documents lastObject];
      [(IKJSNavigationDocument *)self _migrateMediaControllerFromDocument:lastObject toDocument:modalCopy];
    }

    v13 = [(IKJSNavigationDocument *)self _makeAppDocumentWithDocument:modalCopy];
    appContext = [(IKJSObject *)self appContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__IKJSNavigationDocument_presentModal::__block_invoke;
    v16[3] = &unk_279799B40;
    v16[4] = self;
    v17 = v13;
    v18 = v8;
    v15 = v13;
    [appContext evaluateDelegateBlockSync:v16];
  }
}

void __40__IKJSNavigationDocument_presentModal::__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationControllerDelegate];
  [v2 presentModal:*(a1 + 40) options:*(a1 + 48)];
}

- (void)dismissModal
{
  if (self->_delegateSelectors.hasDismissModal)
  {
    v6[7] = v2;
    v6[8] = v3;
    appContext = [(IKJSObject *)self appContext];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__IKJSNavigationDocument_dismissModal__block_invoke;
    v6[3] = &unk_279799AA0;
    v6[4] = self;
    [appContext evaluateDelegateBlockSync:v6];
  }
}

void __38__IKJSNavigationDocument_dismissModal__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationControllerDelegate];
  [v1 dismissModal];
}

- (void)insertBeforeDocument:(id)document :(id)a4 :(id)a5
{
  documentCopy = document;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = [v10 objectForKey:@"TransitionOptionRetainContext"];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      [(IKJSNavigationDocument *)self _migrateMediaControllerFromDocument:v9 toDocument:documentCopy];
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__25;
    v27 = __Block_byref_object_dispose__25;
    v28 = 0;
    v14 = [(IKJSNavigationDocument *)self _makeAppDocumentWithDocument:documentCopy];
    appContext = [(IKJSObject *)self appContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__IKJSNavigationDocument_insertBeforeDocument_::__block_invoke;
    v18[3] = &unk_27979C278;
    v18[4] = self;
    v19 = v9;
    v16 = v14;
    v20 = v16;
    v21 = v11;
    v22 = &v23;
    [appContext evaluateDelegateBlockSync:v18];

    if ([v24[5] length])
    {
      appContext2 = [(IKJSObject *)self appContext];
      [appContext2 setException:0 withErrorMessage:v24[5]];
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    [(IKJSNavigationDocument *)self pushDocument:documentCopy];
  }
}

void __49__IKJSNavigationDocument_insertBeforeDocument_::__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) navigationControllerDelegate];
  v3 = [v2 documents];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      v10 = [v9 jsDocument];
      v11 = [v10 isEqual:*(a1 + 40)];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = [*(a1 + 32) navigationControllerDelegate];
    [v13 insertDocument:*(a1 + 48) beforeDocument:v12 options:*(a1 + 56)];
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = *(*(a1 + 64) + 8);
    v12 = *(v14 + 40);
    *(v14 + 40) = @"Before document not found on stack";
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)replaceDocument:(id)document :(id)a4 :(id)a5
{
  documentCopy = document;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__25;
  v26 = __Block_byref_object_dispose__25;
  v27 = 0;
  if (documentCopy && v9)
  {
    v11 = [v10 objectForKey:@"TransitionOptionRetainContext"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      [(IKJSNavigationDocument *)self _migrateMediaControllerFromDocument:v9 toDocument:documentCopy];
    }

    v13 = [(IKJSNavigationDocument *)self _makeAppDocumentWithDocument:documentCopy];
    appContext = [(IKJSObject *)self appContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__IKJSNavigationDocument_replaceDocument_::__block_invoke;
    v17[3] = &unk_27979C278;
    v17[4] = self;
    v18 = v9;
    v15 = v13;
    v19 = v15;
    v20 = v10;
    v21 = &v22;
    [appContext evaluateDelegateBlockSync:v17];
  }

  else
  {
    v15 = 0;
    v27 = @"Invalid arguments";
  }

  if ([v23[5] length])
  {
    appContext2 = [(IKJSObject *)self appContext];
    [appContext2 setException:0 withErrorMessage:v23[5]];
  }

  _Block_object_dispose(&v22, 8);
}

void __44__IKJSNavigationDocument_replaceDocument_::__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) navigationControllerDelegate];
  v3 = [v2 documents];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      v10 = [v9 jsDocument];
      v11 = [v10 isEqual:*(a1 + 40)];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = [*(a1 + 32) navigationControllerDelegate];
    [v13 replaceDocument:v12 withDocument:*(a1 + 48) options:*(a1 + 56)];
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = *(*(a1 + 64) + 8);
    v12 = *(v14 + 40);
    *(v14 + 40) = @"Document not found on stack";
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)popDocument
{
  appContext = [(IKJSObject *)self appContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__IKJSNavigationDocument_popDocument__block_invoke;
  v4[3] = &unk_279799AA0;
  v4[4] = self;
  [appContext evaluateDelegateBlockSync:v4];
}

void __37__IKJSNavigationDocument_popDocument__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationControllerDelegate];
  [v1 popDocument];
}

- (void)popToDocument:(id)document
{
  documentCopy = document;
  appContext = [(IKJSObject *)self appContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__IKJSNavigationDocument_popToDocument___block_invoke;
  v7[3] = &unk_279799260;
  v7[4] = self;
  v8 = documentCopy;
  v6 = documentCopy;
  [appContext evaluateDelegateBlockSync:v7];
}

void __40__IKJSNavigationDocument_popToDocument___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) navigationControllerDelegate];
  v3 = [v2 documents];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v6 = v4;
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = [v10 jsDocument];
      v12 = [v11 isEqual:*(a1 + 40)];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        v6 = v4;
        goto LABEL_12;
      }
    }

    v6 = v10;

    if (!v6)
    {
      goto LABEL_13;
    }

    v13 = [*(a1 + 32) navigationControllerDelegate];
    [v13 popToDocument:v6];
  }

LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)popToRootDocument
{
  appContext = [(IKJSObject *)self appContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__IKJSNavigationDocument_popToRootDocument__block_invoke;
  v4[3] = &unk_279799AA0;
  v4[4] = self;
  [appContext evaluateDelegateBlockSync:v4];
}

void __43__IKJSNavigationDocument_popToRootDocument__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationControllerDelegate];
  [v1 popToRootDocument];
}

- (void)removeDocument:(id)document
{
  documentCopy = document;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__25;
  v15 = __Block_byref_object_dispose__25;
  v16 = 0;
  appContext = [(IKJSObject *)self appContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__IKJSNavigationDocument_removeDocument___block_invoke;
  v8[3] = &unk_27979B2D8;
  v8[4] = self;
  v6 = documentCopy;
  v9 = v6;
  v10 = &v11;
  [appContext evaluateDelegateBlockSync:v8];

  if ([v12[5] length])
  {
    appContext2 = [(IKJSObject *)self appContext];
    [appContext2 setException:0 withErrorMessage:v12[5]];
  }

  _Block_object_dispose(&v11, 8);
}

void __41__IKJSNavigationDocument_removeDocument___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) navigationControllerDelegate];
  v3 = [v2 documents];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      v10 = [v9 jsDocument];
      v11 = [v10 isEqual:*(a1 + 40)];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = [*(a1 + 32) navigationControllerDelegate];
    [v13 removeDocument:v12];
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = *(*(a1 + 48) + 8);
    v12 = *(v14 + 40);
    *(v14 + 40) = @"Document not found on stack";
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  if (self->_delegateSelectors.hasClear)
  {
    v6[7] = v2;
    v6[8] = v3;
    appContext = [(IKJSObject *)self appContext];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__IKJSNavigationDocument_clear__block_invoke;
    v6[3] = &unk_279799AA0;
    v6[4] = self;
    [appContext evaluateDelegateBlockSync:v6];
  }
}

void __31__IKJSNavigationDocument_clear__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationControllerDelegate];
  [v1 clear];
}

- (id)_makeAppDocumentWithDocument:(id)document
{
  if (document)
  {
    documentCopy = document;
    [documentCopy setNavigationDocument:self];
    v5 = [IKAppDocument alloc];
    appContext = [(IKJSObject *)self appContext];
    v7 = [(IKAppDocument *)v5 initWithAppContext:appContext document:documentCopy owner:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end