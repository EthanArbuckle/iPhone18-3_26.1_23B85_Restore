@interface _CNAutocompleteCachingSearchProvider
- (_CNAutocompleteCachingSearchProvider)initWithSearchProvider:(id)provider;
@end

@implementation _CNAutocompleteCachingSearchProvider

- (_CNAutocompleteCachingSearchProvider)initWithSearchProvider:(id)provider
{
  providerCopy = provider;
  v55.receiver = self;
  v55.super_class = _CNAutocompleteCachingSearchProvider;
  v5 = [(_CNAutocompleteCachingSearchProvider *)&v55 init];
  if (v5)
  {
    v6 = MEMORY[0x277CFBE28];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __63___CNAutocompleteCachingSearchProvider_initWithSearchProvider___block_invoke;
    v53[3] = &unk_2781C47D0;
    v7 = providerCopy;
    v54 = v7;
    v8 = [v6 lazyFutureWithBlock:v53];
    localSearchFuture = v5->_localSearchFuture;
    v5->_localSearchFuture = v8;

    v10 = MEMORY[0x277CFBE28];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __63___CNAutocompleteCachingSearchProvider_initWithSearchProvider___block_invoke_2;
    v51[3] = &unk_2781C47D0;
    v11 = v7;
    v52 = v11;
    v12 = [v10 lazyFutureWithBlock:v51];
    recentsSearchFuture = v5->_recentsSearchFuture;
    v5->_recentsSearchFuture = v12;

    v14 = MEMORY[0x277CFBE28];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __63___CNAutocompleteCachingSearchProvider_initWithSearchProvider___block_invoke_3;
    v49[3] = &unk_2781C47D0;
    v15 = v11;
    v50 = v15;
    v16 = [v14 lazyFutureWithBlock:v49];
    stewieSearchFuture = v5->_stewieSearchFuture;
    v5->_stewieSearchFuture = v16;

    v18 = MEMORY[0x277CFBE28];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __63___CNAutocompleteCachingSearchProvider_initWithSearchProvider___block_invoke_4;
    v47[3] = &unk_2781C47D0;
    v19 = v15;
    v48 = v19;
    v20 = [v18 lazyFutureWithBlock:v47];
    suggestionsSearchFuture = v5->_suggestionsSearchFuture;
    v5->_suggestionsSearchFuture = v20;

    v22 = MEMORY[0x277CFBE28];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __63___CNAutocompleteCachingSearchProvider_initWithSearchProvider___block_invoke_5;
    v45[3] = &unk_2781C47D0;
    v23 = v19;
    v46 = v23;
    v24 = [v22 lazyFutureWithBlock:v45];
    predictionSearchFuture = v5->_predictionSearchFuture;
    v5->_predictionSearchFuture = v24;

    v26 = MEMORY[0x277CFBE28];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __63___CNAutocompleteCachingSearchProvider_initWithSearchProvider___block_invoke_6;
    v43[3] = &unk_2781C47F8;
    v27 = v23;
    v44 = v27;
    v28 = [v26 lazyFutureWithBlock:v43];
    localExtensionSearchesFuture = v5->_localExtensionSearchesFuture;
    v5->_localExtensionSearchesFuture = v28;

    v30 = MEMORY[0x277CFBE28];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __63___CNAutocompleteCachingSearchProvider_initWithSearchProvider___block_invoke_7;
    v41[3] = &unk_2781C47D0;
    v31 = v27;
    v42 = v31;
    v32 = [v30 lazyFutureWithBlock:v41];
    directoryServerSearchFuture = v5->_directoryServerSearchFuture;
    v5->_directoryServerSearchFuture = v32;

    v34 = MEMORY[0x277CFBE28];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __63___CNAutocompleteCachingSearchProvider_initWithSearchProvider___block_invoke_8;
    v39[3] = &unk_2781C47D0;
    v40 = v31;
    v35 = [v34 lazyFutureWithBlock:v39];
    calendarServerSearchFuture = v5->_calendarServerSearchFuture;
    v5->_calendarServerSearchFuture = v35;

    v37 = v5;
  }

  return v5;
}

@end