@interface MUISearchRankedSuggesterQuery
- (id)_createTopHitsQuery;
- (uint64_t)initWithPhraseManager:(void *)a3 handler:(void *)a4 suggester:;
- (void)cancel;
@end

@implementation MUISearchRankedSuggesterQuery

- (id)_createTopHitsQuery
{
  if (a1)
  {
    if ([*(a1 + 8) phraseKind] == 1)
    {
      v2 = 4;
    }

    else
    {
      v2 = 10;
    }

    v22 = [*(a1 + 8) phrase];
    v18 = objc_alloc(MEMORY[0x277D06EA0]);
    v21 = *(a1 + 8);
    v17 = [v21 spotlightQueryStrings];
    v3 = *(a1 + 24);
    v19 = *(a1 + 8);
    v4 = v3;
    v20 = [v19 inputLanguages];
    v5 = [v20 firstObject];
    v6 = *(a1 + 8);
    v7 = [v6 updatedSuggestion];
    v8 = *MEMORY[0x277D06C48];
    v9 = *(a1 + 8);
    v10 = [v9 customFlags];
    v11 = *(a1 + 8);
    v16 = v2;
    v12 = v4;
    v13 = [v18 initWithSearchString:v22 filterQueries:v17 bundleID:v4 keyboardLanguage:v5 updatedSuggestion:v7 generateSuggestions:1 logDescription:@"Ranked Suggestions" resultLimit:v8 suggestionLimit:v16 customFlags:v10 feedbackQueryID:{objc_msgSend(v11, "feedbackQueryID")}];

    v14 = [v13 topHitsQuerySuggestionResult];
    objc_initWeak(location, a1);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke;
    v25[3] = &unk_27818AF30;
    objc_copyWeak(&v26, location);
    [v14 addSuccessBlock:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke_86;
    v23[3] = &unk_27818AF58;
    objc_copyWeak(&v24, location);
    [v14 addFailureBlock:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 suggestions];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke_2;
    v9[3] = &unk_27818AF08;
    v9[4] = WeakRetained;
    v6 = [v5 ef_compactMap:v9];

    v7 = +[MUISearchRankedSuggester log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 ef_mapSelector:sel_ef_publicDescription];
      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&dword_214A5E000, v7, OS_LOG_TYPE_DEFAULT, "Generated suggestions %@", buf, 0xCu);
    }

    (*(WeakRetained[2] + 16))();
  }
}

void __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MUISearchRankedSuggester log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke_86_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    (*(WeakRetained[2] + 16))();
  }
}

- (uint64_t)initWithPhraseManager:(void *)a3 handler:(void *)a4 suggester:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = MUISearchRankedSuggesterQuery;
    v11 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      v12 = [v9 copy];
      v13 = *(a1 + 16);
      *(a1 + 16) = v12;

      if (v10)
      {
        v14 = v10[1];
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong((a1 + 24), v14);
      v15 = [(MUISearchRankedSuggesterQuery *)a1 _createTopHitsQuery];
      v16 = *(a1 + 32);
      *(a1 + 32) = v15;
    }
  }

  return a1;
}

id __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [*(v4 + 8) phraseKind] == 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MUISearchAtomSuggestion suggestionFromSpotlightSuggestion:v3 shouldShowAvaters:v5];

  return v6;
}

- (void)cancel
{
  if (self)
  {
    self = self->_topHitsQuery;
  }

  [(MUISearchRankedSuggesterQuery *)self cancel];
}

void __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke_86_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 ef_publicDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_214A5E000, a2, OS_LOG_TYPE_ERROR, "Failed to generate suggestions %@", &v4, 0xCu);
}

@end