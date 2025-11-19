@interface SUUIJSModalDocumentController
- (NSArray)documents;
- (SUUIJSModalDocumentController)initWithAppContext:(id)a3 modalDocumentController:(id)a4;
- (SUUIModalDocumentController)modalDocumentController;
- (id)_adjustedOptionsWithOptions:(id)a3;
- (void)popDocument;
- (void)pushDocument:(id)a3 :(id)a4;
- (void)replaceDocument:(id)a3 :(id)a4 :(id)a5;
@end

@implementation SUUIJSModalDocumentController

- (SUUIJSModalDocumentController)initWithAppContext:(id)a3 modalDocumentController:(id)a4
{
  v6 = a3;
  objc_initWeak(&location, a4);
  v10.receiver = self;
  v10.super_class = SUUIJSModalDocumentController;
  v7 = [(IKJSObject *)&v10 initWithAppContext:v6];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_modalDocumentController, v8);
  }

  objc_destroyWeak(&location);

  return v7;
}

- (SUUIModalDocumentController)modalDocumentController
{
  WeakRetained = objc_loadWeakRetained(&self->_modalDocumentController);

  return WeakRetained;
}

- (NSArray)documents
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__102;
  v11 = __Block_byref_object_dispose__102;
  v12 = 0;
  v3 = [(IKJSObject *)self appContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SUUIJSModalDocumentController_documents__block_invoke;
  v6[3] = &unk_2798FB6A0;
  v6[4] = self;
  v6[5] = &v7;
  [v3 evaluateDelegateBlockSync:v6];

  v4 = [v8[5] valueForKey:@"jsDocument"];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__SUUIJSModalDocumentController_documents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = [WeakRetained documents];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)popDocument
{
  v3 = [(IKJSObject *)self appContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SUUIJSModalDocumentController_popDocument__block_invoke;
  v4[3] = &unk_2798FA7C0;
  v4[4] = self;
  [v3 evaluateDelegateBlockSync:v4];
}

void __44__SUUIJSModalDocumentController_popDocument__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained popDocument];
}

- (void)pushDocument:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKJSObject *)self appContext];
  if (v6 && [MEMORY[0x277D1B038] instancesRespondToSelector:sel_initWithAppContext_document_owner_])
  {
    v9 = [objc_alloc(MEMORY[0x277D1B038]) initWithAppContext:v8 document:v6 owner:self];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SUUIJSModalDocumentController *)self _adjustedOptionsWithOptions:v7];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__102;
  v23 = __Block_byref_object_dispose__102;
  v24 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__SUUIJSModalDocumentController_pushDocument::__block_invoke;
  v14[3] = &unk_2798FDF78;
  v14[4] = self;
  v11 = v9;
  v15 = v11;
  v12 = v10;
  v16 = v12;
  v18 = &v19;
  v13 = v8;
  v17 = v13;
  [v13 evaluateDelegateBlockSync:v14];
  [v6 setNavigationDocument:v20[5]];

  _Block_object_dispose(&v19, 8);
}

void __47__SUUIJSModalDocumentController_pushDocument::__block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained pushDocument:a1[5] options:a1[6]];

  v3 = objc_loadWeakRetained((a1[4] + 24));
  v7 = [v3 navigationDocumentForDocument:a1[5]];

  if (v7)
  {
    v4 = [objc_alloc(MEMORY[0x277D1B0B8]) initWithAppContext:a1[7] navigationController:v7];
    v5 = *(a1[8] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)replaceDocument:(id)a3 :(id)a4 :(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IKJSObject *)self appContext];
  if (v8 && [MEMORY[0x277D1B038] instancesRespondToSelector:sel_initWithAppContext_document_owner_])
  {
    v12 = [objc_alloc(MEMORY[0x277D1B038]) initWithAppContext:v11 document:v8 owner:self];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SUUIJSModalDocumentController *)self _adjustedOptionsWithOptions:v10];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__102;
  v35 = __Block_byref_object_dispose__102;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__102;
  v29 = __Block_byref_object_dispose__102;
  v30 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__SUUIJSModalDocumentController_replaceDocument_::__block_invoke;
  v18[3] = &unk_2798FDFA0;
  v18[4] = self;
  v14 = v9;
  v19 = v14;
  v23 = &v31;
  v15 = v12;
  v20 = v15;
  v16 = v13;
  v21 = v16;
  v24 = &v25;
  v17 = v11;
  v22 = v17;
  [v17 evaluateDelegateBlockSync:v18];
  if (v32[5])
  {
    [v17 setException:0 withErrorMessage:?];
  }

  else
  {
    [v8 setNavigationDocument:v26[5]];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __51__SUUIJSModalDocumentController_replaceDocument_::__block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v3 = [WeakRetained documents];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v20 + 1) + 8 * v8);
      v10 = [v9 valueForKey:{@"jsDocument", v20}];
      v11 = [v10 isEqual:a1[5]];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
      goto LABEL_14;
    }

    v13 = objc_loadWeakRetained((a1[4] + 24));
    [v13 replaceDocument:v12 withDocument:a1[6] options:a1[7]];

    v14 = objc_loadWeakRetained((a1[4] + 24));
    v15 = [v14 navigationDocumentForDocument:a1[6]];

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x277D1B0B8]) initWithAppContext:a1[8] navigationController:v15];
      v17 = *(a1[10] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }

  else
  {
LABEL_9:

LABEL_14:
    v19 = *(a1[9] + 8);
    v12 = *(v19 + 40);
    *(v19 + 40) = @"Old document not found";
  }
}

- (id)_adjustedOptionsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKey:@"sourceElement"];

  if (v5)
  {
    v6 = [v5 getAttribute:@"itmlID"];
    if ([v6 length])
    {
      [v4 setObject:v6 forKey:@"sourceElement"];
    }

    else
    {
      [v4 removeObjectForKey:@"sourceElement"];
    }
  }

  return v4;
}

@end