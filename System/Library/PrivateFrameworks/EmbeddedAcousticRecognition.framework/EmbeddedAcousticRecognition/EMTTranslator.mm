@interface EMTTranslator
+ (void)initialize;
- (BOOL)isCompileRequiredFrom:(id)a3 to:(id)a4;
- (EMTTranslator)initWithModelURL:(id)a3 task:(id)a4;
- (EMTTranslator)initWithModelURL:(id)a3 task:(id)a4 skipNonFinalToCatchup:(BOOL)a5;
- (EMTTranslator)initWithModelURL:(id)a3 task:(id)a4 skipNonFinalToCatchup:(BOOL)a5 translatorCacheSize:(int64_t)a6;
- (EMTTranslator)initWithModelURL:(id)a3 task:(id)a4 skipNonFinalToCatchup:(BOOL)a5 translatorCacheSize:(int64_t)a6 useGlobalTranslationQueue:(BOOL)a7;
- (EMTTranslator)initWithModelURLs:(id)a3 task:(id)a4 skipNonFinalToCatchup:(BOOL)a5 translatorCacheSize:(int64_t)a6 useGlobalTranslationQueue:(BOOL)a7;
- (id).cxx_construct;
- (shared_ptr<quasar::Translator>)_prepareFor:(id)a3 to:(id)a4;
- (vector<std::string,)_tokenizeString:(EMTTranslator *)self;
- (void)_dispatchTranslationRequest:()vector<std:(std:(BOOL)a4 :(id)a5 allocator<std:(shared_ptr<quasar:(id)a7 :(id)a8 Translator>)a6 :(id)a9 string>> *)a3 :(id)a10 string isFinal:spans:translator:sourceLocale:targetLocale:options:completion:;
- (void)getTranslatorWithCompletion:(id)a3;
- (void)loadTranslatorFrom:(id)a3 to:(id)a4;
- (void)prepareFor:(id)a3 to:(id)a4;
- (void)translateSpeech:(id)a3 from:(id)a4 to:(id)a5 completion:(id)a6;
- (void)translateString:(id)a3 from:(id)a4 to:(id)a5 options:(id)a6 completion:(id)a7;
- (void)translateTokens:(id)a3 from:(id)a4 to:(id)a5 spans:(id)a6 options:(id)a7 completion:(id)a8;
- (void)translateTokens:(id)a3 isFinal:(BOOL)a4 spans:(id)a5 options:(id)a6 completion:(id)a7;
@end

@implementation EMTTranslator

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (EMTTranslator)initWithModelURL:(id)a3 task:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(EMTTranslator *)self initWithModelURLs:v8 task:v7 skipNonFinalToCatchup:0 translatorCacheSize:-1 useGlobalTranslationQueue:0];

  return v9;
}

- (EMTTranslator)initWithModelURL:(id)a3 task:(id)a4 skipNonFinalToCatchup:(BOOL)a5
{
  v5 = a5;
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v13[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [(EMTTranslator *)self initWithModelURLs:v10 task:v9 skipNonFinalToCatchup:v5 translatorCacheSize:-1 useGlobalTranslationQueue:0];

  return v11;
}

- (EMTTranslator)initWithModelURL:(id)a3 task:(id)a4 skipNonFinalToCatchup:(BOOL)a5 translatorCacheSize:(int64_t)a6
{
  v7 = a5;
  v15[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v15[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [(EMTTranslator *)self initWithModelURLs:v12 task:v11 skipNonFinalToCatchup:v7 translatorCacheSize:a6 useGlobalTranslationQueue:0];

  return v13;
}

- (EMTTranslator)initWithModelURL:(id)a3 task:(id)a4 skipNonFinalToCatchup:(BOOL)a5 translatorCacheSize:(int64_t)a6 useGlobalTranslationQueue:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v17[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v17[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [(EMTTranslator *)self initWithModelURLs:v14 task:v13 skipNonFinalToCatchup:v9 translatorCacheSize:a6 useGlobalTranslationQueue:v7];

  return v15;
}

- (EMTTranslator)initWithModelURLs:(id)a3 task:(id)a4 skipNonFinalToCatchup:(BOOL)a5 translatorCacheSize:(int64_t)a6 useGlobalTranslationQueue:(BOOL)a7
{
  v7 = a7;
  v35 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v25 = a4;
  if (!v25)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"EMTTranslator.mm" lineNumber:237 description:@"Task string cannot be nil"];
  }

  v33.receiver = self;
  v33.super_class = EMTTranslator;
  v12 = [(EMTTranslator *)&v33 init];
  v13 = v12;
  if (v12)
  {
    v12->_skipNonFinalToCatchup = a5;
    v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    translationRequestsQueue = v13->_translationRequestsQueue;
    v13->_translationRequestsQueue = v14;

    [(NSOperationQueue *)v13->_translationRequestsQueue setMaxConcurrentOperationCount:1];
    v16 = [(NSOperationQueue *)v13->_translationRequestsQueue progress];
    [v16 setTotalUnitCount:1];

    if (v7)
    {
      +[EMTTranslationQueue globalTranslationQueue];
    }

    else
    {
      +[EMTTranslationQueue createTranslationQueue];
    }
    v17 = ;
    translationQueue = v13->_translationQueue;
    v13->_translationQueue = v17;

    objc_storeStrong(&v13->_callbackQueue, MEMORY[0x1E69E96A0]);
    memset(v32, 0, sizeof(v32));
    v19 = v26;
    if ([v19 countByEnumeratingWithState:v32 objects:v34 count:16])
    {
      [*v32[1] URLByAppendingPathComponent:@"mt-quasar-config.json"];
      objc_claimAutoreleasedReturnValue();
      quasar::SystemConfig::SystemConfig(v31);
    }

    v20 = v13->_translationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__EMTTranslator_initWithModelURLs_task_skipNonFinalToCatchup_translatorCacheSize_useGlobalTranslationQueue___block_invoke;
    block[3] = &unk_1E7C1BDA8;
    v28 = v13;
    v29 = v25;
    v30 = a6;
    dispatch_async(v20, block);
  }

  v21 = v13;

  return v21;
}

void __108__EMTTranslator_initWithModelURLs_task_skipNonFinalToCatchup_translatorCacheSize_useGlobalTranslationQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    [v1 ear_toString];
  }

  quasar::TranslatorFactory::createTranslatorFactory((v2 + 56));
}

- (void)loadTranslatorFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqual:v7] & 1) == 0)
  {
    translationQueue = self->_translationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__EMTTranslator_loadTranslatorFrom_to___block_invoke;
    block[3] = &unk_1E7C1A488;
    v10 = v6;
    v11 = v7;
    v12 = self;
    dispatch_async(translationQueue, block);
  }
}

void __39__EMTTranslator_loadTranslatorFrom_to___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localeIdentifier];
  v3 = [*(a1 + 40) localeIdentifier];
  v4 = v3;
  v5 = *(*(a1 + 48) + 8);
  if (v2)
  {
    [v2 ear_toString];
    if (v4)
    {
LABEL_3:
      [v4 ear_toString];
      goto LABEL_6;
    }
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
LABEL_6:
  (*(*v5 + 16))(&v10, v5, v8, __p);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

- (BOOL)isCompileRequiredFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([v6 isEqual:v7])
    {
      v9 = 0;
    }

    else
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      translationQueue = self->_translationQueue;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __42__EMTTranslator_isCompileRequiredFrom_to___block_invoke;
      v12[3] = &unk_1E7C1BDD0;
      v13 = v6;
      v15 = self;
      v16 = &v17;
      v14 = v8;
      dispatch_async_and_wait(translationQueue, v12);
      v9 = *(v18 + 24);

      _Block_object_dispose(&v17, 8);
    }
  }

  return v9 & 1;
}

void __42__EMTTranslator_isCompileRequiredFrom_to___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localeIdentifier];
  v3 = [*(a1 + 40) localeIdentifier];
  v4 = v3;
  v5 = *(*(a1 + 48) + 8);
  if (v2)
  {
    [v2 ear_toString];
    if (v4)
    {
LABEL_3:
      [v4 ear_toString];
      goto LABEL_6;
    }
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
LABEL_6:
  *(*(*(a1 + 56) + 8) + 24) = (*(*v5 + 40))(v5, v8, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

- (void)translateSpeech:(id)a3 from:(id)a4 to:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = [MEMORY[0x1E695E0F0] mutableCopy];
  v14 = [v10 rawTranscription];
  v15 = [v14 segments];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__EMTTranslator_translateSpeech_from_to_completion___block_invoke;
  v16[3] = &unk_1E7C1BDF8;
  v16[4] = &v17;
  [v15 enumerateObjectsUsingBlock:v16];

  [(EMTTranslator *)self translateTokens:v18[5] from:v11 to:v12 spans:0 options:0 completion:v13];
  _Block_object_dispose(&v17, 8);
}

void __52__EMTTranslator_translateSpeech_from_to_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 substring];
  [v2 addObject:?];
}

- (void)translateString:(id)a3 from:(id)a4 to:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  translationQueue = self->_translationQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__EMTTranslator_translateString_from_to_options_completion___block_invoke;
  v23[3] = &unk_1E7C1BE20;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(translationQueue, v23);
}

void __60__EMTTranslator_translateString_from_to_options_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    [v2 _tokenizeString:a1[5]];
    v3 = a1[4];
    if (v3)
    {
      [v3 _prepareFor:a1[6] to:a1[7]];
      v4 = a1[4];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v4 = 0;
  v8 = 0;
  v9 = 0;
LABEL_6:
  memset(v7, 0, sizeof(v7));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v7, v10, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3));
  v5 = v8;
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v4 _dispatchTranslationRequest:v7 isFinal:1 spans:0 translator:&v5 sourceLocale:a1[6] targetLocale:a1[7] options:a1[8] completion:a1[9]];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v13 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v8 = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
}

- (void)translateTokens:(id)a3 from:(id)a4 to:(id)a5 spans:(id)a6 options:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  translationQueue = self->_translationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__EMTTranslator_translateTokens_from_to_spans_options_completion___block_invoke;
  block[3] = &unk_1E7C1BE48;
  v28 = v14;
  v29 = self;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  dispatch_async(translationQueue, block);
}

void __66__EMTTranslator_translateTokens_from_to_spans_options_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        if (v6)
        {
          [v6 ear_toString];
        }

        else
        {
          __p = 0uLL;
          v13 = 0;
        }

        std::vector<std::string>::push_back[abi:ne200100](&v18, &__p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v3);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    [v7 _prepareFor:*(a1 + 48) to:*(a1 + 56)];
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = 0;
    __p = 0uLL;
  }

  memset(v11, 0, sizeof(v11));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v11, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
  v9 = *(a1 + 64);
  v10 = __p;
  if (*(&__p + 1))
  {
    atomic_fetch_add_explicit((*(&__p + 1) + 8), 1uLL, memory_order_relaxed);
  }

  [v8 _dispatchTranslationRequest:v11 isFinal:1 spans:v9 translator:&v10 sourceLocale:*(a1 + 48) targetLocale:*(a1 + 56) options:*(a1 + 72) completion:*(a1 + 80)];
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }

  v21 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  *&__p = &v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

- (void)translateTokens:(id)a3 isFinal:(BOOL)a4 spans:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  translationQueue = self->_translationQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__EMTTranslator_translateTokens_isFinal_spans_options_completion___block_invoke;
  v21[3] = &unk_1E7C1BE70;
  v22 = v12;
  v23 = self;
  v27 = a4;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(translationQueue, v21);
}

void __66__EMTTranslator_translateTokens_isFinal_spans_options_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        if (v6)
        {
          [v6 ear_toString];
        }

        else
        {
          __p = 0uLL;
          v16 = 0;
        }

        std::vector<std::string>::push_back[abi:ne200100](&v21, &__p);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v3);
  }

  v7 = *(a1 + 40);
  memset(v14, 0, sizeof(v14));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v14, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
  v8 = *(a1 + 72);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = v10[4];
  v12 = v10[3];
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(a1 + 40);
  }

  [v7 _dispatchTranslationRequest:v14 isFinal:v8 spans:v9 translator:&v12 sourceLocale:v10[5] targetLocale:v10[6] options:*(a1 + 56) completion:*(a1 + 64)];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  *&__p = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  *&__p = &v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

- (void)prepareFor:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  translationQueue = self->_translationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EMTTranslator_prepareFor_to___block_invoke;
  block[3] = &unk_1E7C1A488;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(translationQueue, block);
}

void __31__EMTTranslator_prepareFor_to___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _prepareFor:*(a1 + 40) to:*(a1 + 48)];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

- (vector<std::string,)_tokenizeString:(EMTTranslator *)self
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [a4 componentsSeparatedByString:@" "];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) lowercaseString];
        v11 = v10;
        if (v10)
        {
          [v10 ear_toString];
        }

        else
        {
          __p = 0uLL;
          v14 = 0;
        }

        std::vector<std::string>::push_back[abi:ne200100](retstr, &__p);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return result;
}

- (shared_ptr<quasar::Translator>)_prepareFor:(id)a3 to:(id)a4
{
  v8 = v4;
  v9 = a3;
  v10 = a4;
  dispatch_assert_queue_V2(self->_translationQueue);
  if ([(NSLocale *)self->_sourceLocale isEqual:v9]&& ([(NSLocale *)self->_targetLocale isEqual:v10]& 1) != 0)
  {
    goto LABEL_21;
  }

  objc_storeStrong(&self->_sourceLocale, a3);
  objc_storeStrong(&self->_targetLocale, a4);
  if (!v9 || !v10 || [v9 isEqual:v10])
  {
    cntrl = self->_translator.__cntrl_;
    self->_translator.__ptr_ = 0;
    self->_translator.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    goto LABEL_21;
  }

  v12 = [v9 localeIdentifier];
  v13 = [v10 localeIdentifier];
  v14 = v13;
  ptr = self->_translatorFactory.__ptr_;
  if (v12)
  {
    [v12 ear_toString];
    if (v14)
    {
LABEL_10:
      [v14 ear_toString];
      goto LABEL_13;
    }
  }

  else
  {
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
LABEL_13:
  (*(*ptr + 16))(&v25, ptr, v23, __p);
  v16 = v25;
  v25 = 0;
  v17 = self->_translator.__cntrl_;
  self->_translator = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    if (v25.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25.__cntrl_);
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

LABEL_21:
  v18 = self->_translator.__cntrl_;
  *v8 = self->_translator.__ptr_;
  v8[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = v20;
  result.__ptr_ = v19;
  return result;
}

- (void)_dispatchTranslationRequest:()vector<std:(std:(BOOL)a4 :(id)a5 allocator<std:(shared_ptr<quasar:(id)a7 :(id)a8 Translator>)a6 :(id)a9 string>> *)a3 :(id)a10 string isFinal:spans:translator:sourceLocale:targetLocale:options:completion:
{
  cntrl = a6.__cntrl_;
  ptr = a6.__ptr_;
  v31 = a5;
  v30 = cntrl;
  v29 = a7;
  v16 = a8;
  v28 = a9;
  dispatch_assert_queue_V2(self->_translationQueue);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke;
  v41[3] = &unk_1E7C1A550;
  v41[4] = self;
  v17 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:v41];
  [v17 setQueuePriority:8];
  [(NSOperationQueue *)self->_translationRequestsQueue addOperation:v17];
  translationRequestsQueue = self->_translationRequestsQueue;
  v19 = MEMORY[0x1E696AAE0];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3321888768;
  v32[2] = __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke_2;
  v32[3] = &unk_1F2D315B8;
  v40 = a4;
  v32[4] = self;
  memset(v38, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v38, a3->__begin_, a3->__end_, 0xAAAAAAAAAAAAAAABLL * ((a3->__end_ - a3->__begin_) >> 3));
  v20 = v28;
  v37 = v20;
  v21 = v30;
  v33 = v21;
  v22 = v29;
  v24 = *ptr;
  v23 = *(ptr + 1);
  v34 = v22;
  v38[3] = v24;
  v39 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = v31;
  v35 = v25;
  v26 = v16;
  v36 = v26;
  v27 = [v19 blockOperationWithBlock:v32];
  [(NSOperationQueue *)translationRequestsQueue addOperation:v27];

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v42 = v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
}

void __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 88) progress];
  [v1 setTotalUnitCount:{objc_msgSend(v1, "totalUnitCount") + 2}];
}

void __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v199 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 80) != 1 || (*(a1 + 120) & 1) != 0 || ([*(v2 + 88) progress], v3 = objc_claimAutoreleasedReturnValue(), v1 = a1, v4 = objc_msgSend(v3, "totalUnitCount"), objc_msgSend(*(*(a1 + 32) + 88), "progress"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "completedUnitCount") - v4, v5, v3, v6 >= -2))
  {
    if (*(v1 + 88) == *(v1 + 80))
    {
      v20 = *(*(v1 + 32) + 112);
      v194[0] = MEMORY[0x1E69E9820];
      v194[1] = 3221225472;
      v194[2] = __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke_3;
      v194[3] = &unk_1E7C1BE98;
      v195 = *(v1 + 72);
      dispatch_async(v20, v194);
    }

    else if ([*(v1 + 40) isEqual:*(v1 + 48)])
    {
      v7 = [MEMORY[0x1E695DF70] array];
      v8 = *(a1 + 80);
      for (i = *(a1 + 88); v8 != i; v8 += 3)
      {
        v10 = [EMTToken alloc];
        v11 = v8;
        if (*(v8 + 23) < 0)
        {
          v11 = *v8;
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
        LODWORD(v13) = 1148846080;
        v14 = [(EMTToken *)v10 initWithText:v12 confidence:1 precededBySpace:1 followedBySpace:v13];

        [v7 addObject:v14];
      }

      v15 = [EMTResult alloc];
      LODWORD(v16) = 1148846080;
      v17 = [(EMTResult *)v15 initWithLocale:*(a1 + 40) tokens:v7 confidence:0 lowConfidence:0 metaInfo:0 romanization:0 alternativeSelectionSpans:v16 sourceSpans:0 targetProjections:0 stableSegments:0];
      v18 = *(*(a1 + 32) + 112);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke_4;
      block[3] = &unk_1E7C1A578;
      v193 = *(a1 + 72);
      v192 = v17;
      v19 = v17;
      dispatch_async(v18, block);
    }

    else if (*(v1 + 104))
    {
      v171 = 0xBF80000000000000;
      v172 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 0;
      v181 = 0;
      v182 = 0;
      v183 = 0;
      v184 = 0;
      v173 = 0u;
      *v174 = 0u;
      v175 = 0u;
      LOBYTE(v176) = 0;
      v186 = 0;
      v187 = 0u;
      memset(v188, 0, sizeof(v188));
      v185 = *(v1 + 120);
      v21 = *(v1 + 80);
      v22 = *(v1 + 88);
      if (v21 != v22)
      {
        do
        {
          if (*(v21 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v162, *v21, *(v21 + 1));
          }

          else
          {
            v23 = *v21;
            v162.__r_.__value_.__r.__words[2] = *(v21 + 2);
            *&v162.__r_.__value_.__l.__data_ = v23;
          }

          __src = v162;
          memset(&v162, 0, sizeof(v162));
          v165 = 0;
          v167 = 0;
          v168 = 0;
          v166 = 0;
          v169 = 3212836864;
          v170 = -1;
          v24 = *(v21 + 23);
          v164 = 1;
          if (v24 < 0)
          {
            std::string::__init_copy_ctor_external(&v155, *v21, *(v21 + 1));
          }

          else
          {
            v25 = *v21;
            v155.__r_.__value_.__r.__words[2] = *(v21 + 2);
            *&v155.__r_.__value_.__l.__data_ = v25;
          }

          v156 = v155;
          memset(&v155, 0, sizeof(v155));
          v157 = 0;
          __p[1] = 0;
          v159 = 0;
          __p[0] = 0;
          v160 = 3212836864;
          v161 = -1;
          v26 = *(&v173 + 1);
          if (*(&v173 + 1) >= v174[0])
          {
            *(&v173 + 1) = std::vector<quasar::TranslationToken>::__emplace_back_slow_path<quasar::TranslationToken>(&v173, &v156);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v27 = *&v156.__r_.__value_.__l.__data_;
            *(*(&v173 + 1) + 16) = *(&v156.__r_.__value_.__l + 2);
            *v26 = v27;
            memset(&v156, 0, sizeof(v156));
            *(v26 + 24) = v157;
            *(v26 + 40) = 0;
            *(v26 + 48) = 0;
            *(v26 + 32) = 0;
            *(v26 + 32) = *__p;
            *(v26 + 48) = v159;
            __p[0] = 0;
            __p[1] = 0;
            v159 = 0;
            v28 = v160;
            *(v26 + 64) = v161;
            *(v26 + 56) = v28;
            *(&v173 + 1) = v26 + 72;
          }

          if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v156.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v155.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          v21 = (v21 + 24);
        }

        while (v21 != v22);
        if (v173 != *(&v173 + 1))
        {
          *(*(&v173 + 1) - 48) = 0;
        }
      }

      v29 = *(v1 + 56);
      if (v29)
      {
        memset(&__src, 0, sizeof(__src));
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        obj = v29;
        v30 = [obj countByEnumeratingWithState:&v151 objects:v198 count:16];
        if (v30)
        {
          v31 = *v152;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v152 != v31)
              {
                objc_enumerationMutation(obj);
              }

              v33 = *(*(&v151 + 1) + 8 * j);
              v34 = [v33 range];
              v35 = [v33 range];
              [v33 range];
              v37 = v36;
              v38 = [v33 doNotTranslate];
              v39 = v37 + v35;
              size = __src.__r_.__value_.__l.__size_;
              if (__src.__r_.__value_.__l.__size_ >= __src.__r_.__value_.__r.__words[2])
              {
                v42 = 0xAAAAAAAAAAAAAAABLL * ((__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2);
                v43 = v42 + 1;
                if (v42 + 1 > 0x1555555555555555)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 2) > v43)
                {
                  v43 = 0x5555555555555556 * ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v44 = 0x1555555555555555;
                }

                else
                {
                  v44 = v43;
                }

                if (v44)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>(&__src, v44);
                }

                v45 = 4 * ((__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2);
                *v45 = v34;
                *(v45 + 4) = v39;
                *(v45 + 8) = v38;
                v41 = 12 * v42 + 12;
                v46 = (12 * v42 - (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]));
                memcpy(v46, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]);
                v47 = __src.__r_.__value_.__r.__words[0];
                __src.__r_.__value_.__r.__words[0] = v46;
                *&__src.__r_.__value_.__r.__words[1] = v41;
                if (v47)
                {
                  operator delete(v47);
                }
              }

              else
              {
                *__src.__r_.__value_.__l.__size_ = v34;
                *(size + 4) = v39;
                v41 = size + 12;
                *(size + 8) = v38;
              }

              __src.__r_.__value_.__l.__size_ = v41;
            }

            v30 = [obj countByEnumeratingWithState:&v151 objects:v198 count:16];
          }

          while (v30);
        }

        quasar::TranslationPhrase::populateMetaInfoWithAlignmentQueries(&v171, &__src);
      }

      v48 = [*(v1 + 64) stablePrefixState];
      v49 = v48 == 0;

      if (!v49)
      {
        v50 = [*(a1 + 64) stablePrefixState];
        v51 = v50;
        if (v50)
        {
          [v50 data];
        }

        else
        {
          memset(&__src, 0, sizeof(__src));
        }

        if (v187)
        {
          *(&v187 + 1) = v187;
          operator delete(v187);
        }

        v187 = *&__src.__r_.__value_.__l.__data_;
        v188[0] = *(&__src.__r_.__value_.__l + 2);
        memset(&__src, 0, sizeof(__src));

        v53 = [*(a1 + 64) stablePrefixState];
        v54 = v53;
        if (v53)
        {
          [v53 sourceSideData];
        }

        else
        {
          memset(&__src, 0, sizeof(__src));
        }

        std::vector<quasar::TranslationPhrase::SegmentInfo>::__vdeallocate(&v188[1]);
        *&v188[1] = __src;
        memset(&__src, 0, sizeof(__src));
        v156.__r_.__value_.__r.__words[0] = &__src;
        std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v156);
      }

      v55 = *(a1 + 104);
      v56 = *(a1 + 64);
      v57 = v56;
      if (v56)
      {
        v58 = [v56 enableDisambiguationAlternatives];
      }

      else
      {
        v58 = 0;
      }

      (*(*v55 + 24))(&v156, v55, &v171, v58, 0);
      if (v156.__r_.__value_.__r.__words[0] == v156.__r_.__value_.__l.__size_)
      {
        v120 = *(*(a1 + 32) + 112);
        v149[0] = MEMORY[0x1E69E9820];
        v149[1] = 3221225472;
        v149[2] = __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke_6;
        v149[3] = &unk_1E7C1BE98;
        v150 = *(a1 + 72);
        dispatch_async(v120, v149);
        v119 = v150;
      }

      else
      {
        v122 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v121 = v156.__r_.__value_.__l.__size_;
        v128 = v156.__r_.__value_.__r.__words[0];
        if (v156.__r_.__value_.__r.__words[0] != v156.__r_.__value_.__l.__size_)
        {
          v123 = 0;
          do
          {
            v135 = objc_alloc_init(MEMORY[0x1E695DF70]);
            obja = objc_alloc_init(MEMORY[0x1E696AD60]);
            v59 = *(v128 + 16);
            v60 = *(v128 + 24);
            while (v59 != v60)
            {
              v61 = v59;
              if (*(v59 + 23) < 0)
              {
                v61 = *v59;
              }

              v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v61];
              v63 = [EMTToken alloc];
              LODWORD(v64) = *(v59 + 14);
              LODWORD(v65) = *(v59 + 15);
              v66 = [(EMTToken *)v63 initWithText:v62 confidence:*(v59 + 25) score:*(v59 + 24) precededBySpace:v64 followedBySpace:v65];
              [v135 addObject:v66];
              if (*(v59 + 25) == 1)
              {
                [obja appendString:@" "];
              }

              [obja appendString:v62];
              if (*(v59 + 24) == 1)
              {
                [obja appendString:@" "];
              }

              v59 += 9;
            }

            v67 = *(v128 + 63);
            if (v67 < 0)
            {
              v68 = *(v128 + 40);
              v67 = *(v128 + 48);
            }

            else
            {
              v68 = v128 + 40;
            }

            v125 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v68, v67}];
            if (*(v128 + 88) == 1)
            {
              v69 = *(v128 + 87);
              if (v69 < 0)
              {
                v70 = *(v128 + 64);
                v69 = *(v128 + 72);
              }

              else
              {
                v70 = v128 + 64;
              }

              v126 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v70, v69}];
            }

            else
            {
              v126 = 0;
            }

            v71 = 0;
            v148[0] = 0;
            v148[1] = 0;
            v147 = v148;
            if (*(v128 + 120) == 1)
            {
              v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v74 = *(v128 + 96);
              v73 = *(v128 + 104);
              v129 = v72;
              v131 = v73;
              while (v74 != v73)
              {
                v75 = v74[1];
                v133 = *v74;
                v77 = v74[2];
                v76 = v74[3];
                v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v80 = *(v74 + 2);
                v79 = *(v74 + 3);
                while (v80 != v79)
                {
                  v81 = [EMTAlternative alloc];
                  v82 = *v80;
                  v83 = *(v80 + 8);
                  v145 = *v80;
                  v146 = v83;
                  if (v83)
                  {
                    atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v84 = v148[0];
                  if (!v148[0])
                  {
                    goto LABEL_104;
                  }

                  v85 = v148;
                  do
                  {
                    v86 = v84[4];
                    v87 = v86 >= v82;
                    v88 = v86 < v82;
                    if (v87)
                    {
                      v85 = v84;
                    }

                    v84 = v84[v88];
                  }

                  while (v84);
                  if (v85 != v148 && v82 >= v85[4])
                  {
                    v90 = v85[6];
                  }

                  else
                  {
LABEL_104:
                    v89 = *(v82 + 24);
                    if (v89 == -1)
                    {
                      std::__throw_bad_variant_access[abi:ne200100]();
                    }

                    __src.__r_.__value_.__r.__words[0] = &v196;
                    p_src = (off_1F2D315E8[v89])(&__src);
                    std::__tree<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::__map_value_compare<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::less<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>,true>,std::allocator<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>>>::__emplace_hint_unique_key_args<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>&,EMTAlternativeDescription * {__strong}&>(&v147, v148, &v145);
                    v90 = p_src;
                  }

                  v91 = [(EMTAlternative *)v81 initWithDescription:v90 translationPhraseIndex:*(v80 + 16) selectionSpanIndex:*(v80 + 20)];

                  if (v146)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v146);
                  }

                  [v78 addObject:v91];

                  v80 += 24;
                }

                if ([v78 count])
                {
                  v92 = [[EMTAlternativeSelectionSpan alloc] initWithSource:v133 projection:v75 alternatives:v77, v76, v78];
                  [v129 addObject:v92];
                }

                v74 += 10;
                v73 = v131;
              }

              v71 = v129;
              if (![v129 count])
              {

                v71 = 0;
              }
            }

            v130 = v71;
            v93 = [*(a1 + 64) stablePrefixState];
            v94 = v93 == 0;

            if ((v94 | v123))
            {
              v134 = 0;
            }

            else
            {
              v134 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v95 = *(v128 + 176);
              v96 = *(v128 + 184);
              while (v95 != v96)
              {
                if (*(v95 + 8) == 1)
                {
                  v97 = [obja substringWithRange:?];
                  [v134 addObject:v97];
                }

                v95 += 64;
              }

              v98 = [*(a1 + 64) stablePrefixState];
              v142 = 0;
              v143 = 0;
              v144 = 0;
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v142, *(v128 + 152), *(v128 + 160), (*(v128 + 160) - *(v128 + 152)) >> 2);
              [v98 setData:&v142];
              if (v142)
              {
                v143 = v142;
                operator delete(v142);
              }

              v99 = [*(a1 + 64) stablePrefixState];
              memset(v141, 0, sizeof(v141));
              std::vector<quasar::TranslationPhrase::SegmentInfo>::__init_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(v141, *(v128 + 176), *(v128 + 184), (*(v128 + 184) - *(v128 + 176)) >> 6);
              [v99 setSourceSideData:v141];
              __src.__r_.__value_.__r.__words[0] = v141;
              std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&__src);

              v100 = *(a1 + 120);
              v101 = [*(a1 + 64) stablePrefixState];
              [v101 setIsFinalReceived:v100];

              v123 = 1;
            }

            v132 = [EMTResult alloc];
            v102 = *(v128 + 4);
            v124 = *(v128 + 8);
            v103 = *(a1 + 48);
            v104 = *(a1 + 56);
            quasar::TranslationPhrase::extractAlignmentProjections(v128, &__src);
            if (v104 && (v105 = [v104 count], v105 == 0xAAAAAAAAAAAAAAABLL * ((__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 3)))
            {
              v106 = objc_alloc_init(MEMORY[0x1E695DF70]);
              for (k = 0; [v104 count] > k; ++k)
              {
                v108 = (__src.__r_.__value_.__r.__words[0] + 24 * k);
                v109 = *v108;
                v110 = v108[1];
                while (v109 != v110)
                {
                  v111 = [EMTProjection alloc];
                  v112 = [v104 objectAtIndexedSubscript:k];
                  v113 = [v112 identifier];
                  v114 = [(EMTProjection *)v111 initWithIdentifier:v113 range:?];
                  [v106 addObject:v114];

                  v109 += 8;
                }
              }

              v115 = v106;
            }

            else
            {
              v115 = 0;
            }

            [v115 sortUsingComparator:&__block_literal_global_3];
            p_src = &__src;
            std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&p_src);

            LODWORD(v116) = v102;
            v117 = [(EMTResult *)v132 initWithLocale:v103 tokens:v135 confidence:v124 lowConfidence:v125 metaInfo:v126 romanization:v130 alternativeSelectionSpans:v116 sourceSpans:v104 targetProjections:v115 stableSegments:v134];

            [v122 addObject:v117];
            std::__tree<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::__map_value_compare<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::less<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>,true>,std::allocator<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>>>::destroy(&v147, v148[0]);

            v128 += 200;
          }

          while (v128 != v121);
        }

        v118 = *(*(a1 + 32) + 112);
        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke_7;
        v138[3] = &unk_1E7C1A578;
        v140 = *(a1 + 72);
        v119 = v122;
        v139 = v119;
        dispatch_async(v118, v138);
      }

      __src.__r_.__value_.__r.__words[0] = &v156;
      std::vector<quasar::TranslationPhrase>::__destroy_vector::operator()[abi:ne200100](&__src);
      __src.__r_.__value_.__r.__words[0] = &v188[1];
      std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&__src);
      if (v187)
      {
        *(&v187 + 1) = v187;
        operator delete(v187);
      }

      if (v180 == 1)
      {
        __src.__r_.__value_.__r.__words[0] = &v179;
        std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&__src);
      }

      if (v178 == 1 && v177 < 0)
      {
        operator delete(v176);
      }

      if (SHIBYTE(v175) < 0)
      {
        operator delete(v174[1]);
      }

      __src.__r_.__value_.__r.__words[0] = &v173;
      std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&__src);
    }

    else
    {
      v52 = *(*(v1 + 32) + 112);
      v189[0] = MEMORY[0x1E69E9820];
      v189[1] = 3221225472;
      v189[2] = __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke_5;
      v189[3] = &unk_1E7C1BE98;
      v190 = *(v1 + 72);
      dispatch_async(v52, v189);
    }
  }
}

void __115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion___block_invoke_4(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  (*(v1 + 16))(v1, v2);
}

- (void)getTranslatorWithCompletion:(id)a3
{
  v4 = a3;
  translationQueue = self->_translationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__EMTTranslator_getTranslatorWithCompletion___block_invoke;
  v7[3] = &unk_1E7C1A578;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(translationQueue, v7);
}

void __45__EMTTranslator_getTranslatorWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end