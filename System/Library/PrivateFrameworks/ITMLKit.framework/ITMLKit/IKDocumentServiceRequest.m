@interface IKDocumentServiceRequest
- (void)didCloseViewModelLink:(id)a3 withErrorDictionary:(id)a4;
- (void)documentDidChangeForViewModelLink:(id)a3;
- (void)onCancel;
- (void)onSend;
- (void)responseDictionaryDidChangeForViewModelLink:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation IKDocumentServiceRequest

- (void)setDelegate:(id)a3
{
  v3 = self;
  v6.receiver = self;
  v6.super_class = IKDocumentServiceRequest;
  v4 = a3;
  [(IKServiceRequest *)&v6 setDelegate:v4];
  p_dsrDelegateFlags = &v3->_dsrDelegateFlags;
  v3->_dsrDelegateFlags.hasResponseDictionaryDidChange = objc_opt_respondsToSelector() & 1;
  LOBYTE(v3) = objc_opt_respondsToSelector();

  p_dsrDelegateFlags->hasDocumentDidChange = v3 & 1;
}

- (void)onSend
{
  v3 = [(IKServiceRequest *)self serviceContext];
  v4 = [v3 element];

  v5 = [v4 appDocument];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__1;
  v16[4] = __Block_byref_object_dispose__1;
  v6 = [(IKServiceRequest *)self serviceContext];
  v17 = [v6 contextDictionary];

  objc_initWeak(&location, self);
  v7 = [(IKServiceRequest *)self appContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__IKDocumentServiceRequest_onSend__block_invoke;
  v10[3] = &unk_279799580;
  objc_copyWeak(&v14, &location);
  v8 = v4;
  v11 = v8;
  v9 = v5;
  v12 = v9;
  v13 = v16;
  [v7 evaluate:v10 completionBlock:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(v16, 8);
}

void __34__IKDocumentServiceRequest_onSend__block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [*(a1 + 40) retrieveJSElementForViewElement:v4 jsContext:v17];
      if (v5)
      {
        v6 = v5;
        v7 = *(*(*(a1 + 48) + 8) + 40);
        if (v7)
        {
          v8 = [v7 mutableCopy];
        }

        else
        {
          v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
        }

        v9 = v8;
        [v8 setObject:v6 forKeyedSubscript:@"source"];
        v10 = [v9 copy];
        v11 = *(*(a1 + 48) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }
    }

    v13 = [WeakRetained appContext];
    v14 = [v13 jsViewModelService];
    v15 = [v14 openLinkForType:@"document" document:0 extraInfo:*(*(*(a1 + 48) + 8) + 40)];

    objc_storeWeak(WeakRetained + 5, v15);
    [v15 setDelegate:WeakRetained];
    v16 = [v15 document];

    if (v16)
    {
      [WeakRetained documentDidChangeForViewModelLink:v15];
    }
  }
}

- (void)onCancel
{
  objc_initWeak(&location, self);
  v3 = [(IKServiceRequest *)self appContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__IKDocumentServiceRequest_onCancel__block_invoke;
  v4[3] = &unk_2797995A8;
  objc_copyWeak(&v5, &location);
  [v3 evaluate:v4 completionBlock:0];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __36__IKDocumentServiceRequest_onCancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 5);
    [v2 setDelegate:0];

    v3 = objc_loadWeakRetained(v4 + 5);
    [v3 cancel];

    objc_storeWeak(v4 + 5, 0);
    WeakRetained = v4;
  }
}

- (void)responseDictionaryDidChangeForViewModelLink:(id)a3
{
  v4 = a3;
  v5 = [v4 asPrivateIKJSViewModelLink];
  v6 = [v5 responseDictionary];
  responseDictionary = self->_responseDictionary;
  self->_responseDictionary = v6;

  objc_initWeak(&location, self);
  v8 = [(IKServiceRequest *)self appContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__IKDocumentServiceRequest_responseDictionaryDidChangeForViewModelLink___block_invoke;
  v9[3] = &unk_2797995D0;
  objc_copyWeak(&v10, &location);
  [v8 evaluateDelegateBlockSync:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __72__IKDocumentServiceRequest_responseDictionaryDidChangeForViewModelLink___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[48] == 1)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 responseDictionaryDidChangeForDocumentServiceRequest:v3];

    WeakRetained = v3;
  }
}

- (void)documentDidChangeForViewModelLink:(id)a3
{
  v17 = a3;
  v8 = 40;
  WeakRetained = objc_loadWeakRetained(&self->_link);
  v10 = [WeakRetained document];
  if (v10)
  {
    v11 = [IKAppDocument alloc];
    v12 = [(IKServiceRequest *)self appContext];
    v15 = objc_loadWeakRetained(&self->_link);
    v3 = [v15 document];
    v4 = [(IKServiceRequest *)self appContext];
    v5 = [v4 jsViewModelService];
    v6 = [(IKServiceRequest *)self serviceContext];
    v8 = [v6 contextDictionary];
    v16 = v12;
    v13 = [(IKAppDocument *)v11 initWithAppContext:v12 document:v3 owner:v5 extraInfo:v8];
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&self->_appDocument, v13);
  if (v10)
  {
  }

  objc_initWeak(&location, self);
  v14 = [(IKServiceRequest *)self appContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__IKDocumentServiceRequest_documentDidChangeForViewModelLink___block_invoke;
  v18[3] = &unk_2797995D0;
  objc_copyWeak(&v19, &location);
  [v14 evaluateDelegateBlockSync:v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __62__IKDocumentServiceRequest_documentDidChangeForViewModelLink___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[49] == 1)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 documentDidChangeForDocumentServiceRequest:v3];

    WeakRetained = v3;
  }
}

- (void)didCloseViewModelLink:(id)a3 withErrorDictionary:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_link);
  [WeakRetained setDelegate:0];

  objc_storeWeak(&self->_link, 0);
  v7 = [(IKServiceRequest *)self appContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__IKDocumentServiceRequest_didCloseViewModelLink_withErrorDictionary___block_invoke;
  v9[3] = &unk_279799260;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 evaluateDelegateBlockSync:v9];
}

@end