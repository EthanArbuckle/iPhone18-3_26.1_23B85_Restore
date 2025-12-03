@interface MUTextActivityProvider
+ (id)activityProviderFromDataProvider:(id)provider;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (void)_fetchMailTemplateWithCompletion:(id)completion;
- (void)_fetchPlaceNoteWithCompletion:(id)completion;
- (void)registerHTMLTemplate:(id)template;
- (void)registerNote:(id)note;
@end

@implementation MUTextActivityProvider

- (void)_fetchPlaceNoteWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  noteBlock = self->_noteBlock;
  if (noteBlock)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__MUTextActivityProvider__fetchPlaceNoteWithCompletion___block_invoke;
    v8[3] = &unk_1E82195B8;
    v9 = completionCopy;
    noteBlock[2](noteBlock, v8);
  }

  else
  {
    v7 = _MUCreateNoResultsActivityProviderError();
    (v5)[2](v5, 0, v7);
  }
}

void __56__MUTextActivityProvider__fetchPlaceNoteWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if ([v5 length])
    {
      v6 = [v9 dataUsingEncoding:4];
      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      v8 = *(a1 + 32);
      v6 = _MUCreateNoResultsActivityProviderError();
      v7 = *(v8 + 16);
    }

    v7();
  }
}

- (void)_fetchMailTemplateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  htmlTemplateBlock = self->_htmlTemplateBlock;
  if (htmlTemplateBlock)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__MUTextActivityProvider__fetchMailTemplateWithCompletion___block_invoke;
    v8[3] = &unk_1E82195B8;
    v9 = completionCopy;
    htmlTemplateBlock[2](htmlTemplateBlock, v8);
  }

  else
  {
    v7 = _MUCreateNoResultsActivityProviderError();
    (v5)[2](v5, 0, v7);
  }
}

void __59__MUTextActivityProvider__fetchMailTemplateWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = [a2 dataUsingEncoding:4];
    (*(*(a1 + 32) + 16))();
  }
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  if ([typeCopy isEqual:@"com.apple.share.System.CopyToPasteboard"])
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    objc_initWeak(&location, self);
    identifier = [*MEMORY[0x1E6982F40] identifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__MUTextActivityProvider_activityViewController_itemForActivityType___block_invoke;
    v11[3] = &unk_1E8218B00;
    objc_copyWeak(&v13, &location);
    v12 = typeCopy;
    [v8 registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v8;
}

uint64_t __69__MUTextActivityProvider_activityViewController_itemForActivityType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isEqual:*MEMORY[0x1E69CDA90]])
    {
      v5 = _MUCreateNoResultsActivityProviderError();
      v3[2](v3, 0, v5);
    }

    else if ([*(a1 + 32) isEqual:*MEMORY[0x1E69CDAA0]])
    {
      [WeakRetained _fetchMailTemplateWithCompletion:v3];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __69__MUTextActivityProvider_activityViewController_itemForActivityType___block_invoke_2;
      v7[3] = &unk_1E8218AD8;
      v10 = v3;
      v8 = *(a1 + 32);
      v9 = WeakRetained;
      [WeakRetained _fetchPlaceNoteWithCompletion:v7];
    }
  }

  return 0;
}

void __69__MUTextActivityProvider_activityViewController_itemForActivityType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    if ([*(a1 + 32) isEqual:*MEMORY[0x1E69CDAB0]])
    {
      v5 = *(a1 + 48);
      v6 = _MUCreateNoResultsActivityProviderError();
      (*(v5 + 16))(v5, 0, v6);
    }

    else
    {
      v6 = [*(*(a1 + 40) + 8) dataUsingEncoding:4];
      (*(*(a1 + 48) + 16))(*(a1 + 48), v6, 0);
    }
  }
}

- (void)registerNote:(id)note
{
  v4 = _Block_copy(note);
  noteBlock = self->_noteBlock;
  self->_noteBlock = v4;

  MEMORY[0x1EEE66BB8](v4, noteBlock);
}

- (void)registerHTMLTemplate:(id)template
{
  v4 = _Block_copy(template);
  htmlTemplateBlock = self->_htmlTemplateBlock;
  self->_htmlTemplateBlock = v4;

  MEMORY[0x1EEE66BB8](v4, htmlTemplateBlock);
}

+ (id)activityProviderFromDataProvider:(id)provider
{
  providerCopy = provider;
  v4 = objc_alloc_init(MUTextActivityProvider);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__MUTextActivityProvider_activityProviderFromDataProvider___block_invoke;
  v11[3] = &unk_1E8218B28;
  v5 = providerCopy;
  v12 = v5;
  [(MUTextActivityProvider *)v4 registerHTMLTemplate:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__MUTextActivityProvider_activityProviderFromDataProvider___block_invoke_3;
    v9[3] = &unk_1E8218B28;
    v10 = v6;
    [(MUTextActivityProvider *)v4 registerNote:v9];
  }

  activityTitle = [v5 activityTitle];
  if ([activityTitle length])
  {
    [(MUTextActivityProvider *)v4 registerActivityTitle:activityTitle];
  }

  return v4;
}

void __59__MUTextActivityProvider_activityProviderFromDataProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MUTextActivityProvider_activityProviderFromDataProvider___block_invoke_2;
  v6[3] = &unk_1E82195B8;
  v7 = v3;
  v5 = v3;
  [v4 fetchHTMLTemplateWithCompletion:v6];
}

void __59__MUTextActivityProvider_activityProviderFromDataProvider___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MUTextActivityProvider_activityProviderFromDataProvider___block_invoke_4;
  v6[3] = &unk_1E82195B8;
  v7 = v3;
  v5 = v3;
  [v4 fetchNoteWithCompletion:v6];
}

@end