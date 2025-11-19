@interface LNSiriVocabulary
+ (id)vocabularyForBundleIdentifier:(id)a3;
- (LNSiriVocabulary)initWithBundleIdentifier:(id)a3 donatorClient:(id)a4 picker:(id)a5;
- (void)corpusContentsChanged:(id)a3 completionHandler:(id)a4;
- (void)donateWithCompletionHandler:(id)a3;
- (void)setCorporaByPriority:(id)a3 completionHandler:(id)a4;
@end

@implementation LNSiriVocabulary

- (void)corpusContentsChanged:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  if (+[LNFeatureFlags isVocabularyDonationEnabled])
  {
    [(LNSiriVocabulary *)self donateWithCompletionHandler:v5];
  }
}

- (void)donateWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__LNSiriVocabulary_donateWithCompletionHandler___block_invoke;
  v10 = &unk_1E74B1930;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(queue, &v7);
  [(LNDebouncer *)self->_debouncer trigger:v7];
}

void __48__LNSiriVocabulary_donateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 56);
    v4 = _Block_copy(v2);
    [v3 addObject:v4];
  }
}

- (void)setCorporaByPriority:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[LNFeatureFlags isVocabularyDonationEnabled])
  {
    corpora = self->_corpora;
    if (corpora)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = corpora;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        do
        {
          v13 = 0;
          do
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v26 + 1) + 8 * v13++) removeObserver:self];
          }

          while (v11 != v13);
          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v11);
      }
    }

    v14 = [v6 copy];
    v15 = self->_corpora;
    self->_corpora = v14;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = self->_corpora;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v22 + 1) + 8 * v20++) setObserver:{self, v22}];
        }

        while (v18 != v20);
        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v18);
    }

    [(LNSiriVocabulary *)self donateWithCompletionHandler:v7];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (LNSiriVocabulary)initWithBundleIdentifier:(id)a3 donatorClient:(id)a4 picker:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"LNSiriVocabulary.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"client"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"LNSiriVocabulary.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v32 = [MEMORY[0x1E696AAA8] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"LNSiriVocabulary.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"picker"}];

LABEL_4:
  v39.receiver = self;
  v39.super_class = LNSiriVocabulary;
  v12 = [(LNSiriVocabulary *)&v39 init];
  if (v12)
  {
    v13 = [v9 copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v13;

    objc_storeStrong(&v12->_donatorClient, a4);
    objc_storeStrong(&v12->_vocabularyPicker, a5);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);

    v17 = dispatch_queue_create("com.apple.link.LNSiriVocabulary.internal-queue", v16);
    queue = v12->_queue;
    v12->_queue = v17;

    objc_initWeak(&location, v12);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__LNSiriVocabulary_initWithBundleIdentifier_donatorClient_picker___block_invoke;
    aBlock[3] = &unk_1E74B2778;
    objc_copyWeak(&v37, &location);
    v19 = _Block_copy(aBlock);
    v20 = [LNDebouncer alloc];
    v21 = v12->_queue;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __66__LNSiriVocabulary_initWithBundleIdentifier_donatorClient_picker___block_invoke_3;
    v33[3] = &unk_1E74B1930;
    v22 = v12;
    v34 = v22;
    v23 = v19;
    v35 = v23;
    v24 = [(LNDebouncer *)v20 initWithDelay:v21 maxDelay:v33 queue:0.25 block:1.0];
    debouncer = v22->_debouncer;
    v22->_debouncer = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completions = v22->_completions;
    v22->_completions = v26;

    v28 = v22;
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __66__LNSiriVocabulary_initWithBundleIdentifier_donatorClient_picker___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__LNSiriVocabulary_initWithBundleIdentifier_donatorClient_picker___block_invoke_2;
  v8[3] = &unk_1E74B27A0;
  v9 = WeakRetained;
  v10 = v3;
  v6 = v3;
  v7 = WeakRetained;
  dispatch_async(v5, v8);
}

void __66__LNSiriVocabulary_initWithBundleIdentifier_donatorClient_picker___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) pickTermsFromCorpora:*(*(a1 + 32) + 16)];
  [*(*(a1 + 32) + 24) donateFullVocabularySet:v2 completionHandler:*(a1 + 40)];
}

uint64_t __66__LNSiriVocabulary_initWithBundleIdentifier_donatorClient_picker___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (v7)
        {
          (*(v7 + 16))(v7, *(a1 + 40));
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 56) removeAllObjects];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)vocabularyForBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"LNSiriVocabulary.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  if (vocabularyForBundleIdentifier__onceToken != -1)
  {
    dispatch_once(&vocabularyForBundleIdentifier__onceToken, &__block_literal_global_9929);
  }

  v6 = vocabularyForBundleIdentifier__value;
  v7 = [v6 objectForKey:v5];

  if (!v7)
  {
    v8 = [LNSiriVocabulary alloc];
    v9 = [[LNKoaClient alloc] initForBundleIdentifier:v5];
    v10 = objc_opt_new();
    v11 = [(LNSiriVocabulary *)v8 initWithBundleIdentifier:v5 donatorClient:v9 picker:v10];

    [v6 setObject:v11 forKey:v5];
  }

  v12 = [v6 objectForKey:v5];

  return v12;
}

uint64_t __50__LNSiriVocabulary_vocabularyForBundleIdentifier___block_invoke()
{
  vocabularyForBundleIdentifier__value = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

@end