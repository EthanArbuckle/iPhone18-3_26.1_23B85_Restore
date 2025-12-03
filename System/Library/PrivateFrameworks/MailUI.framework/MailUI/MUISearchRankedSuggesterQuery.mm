@interface MUISearchRankedSuggesterQuery
- (id)_createTopHitsQuery;
- (uint64_t)initWithPhraseManager:(void *)manager handler:(void *)handler suggester:;
- (void)cancel;
@end

@implementation MUISearchRankedSuggesterQuery

- (id)_createTopHitsQuery
{
  if (self)
  {
    if ([*(self + 8) phraseKind] == 1)
    {
      v2 = 4;
    }

    else
    {
      v2 = 10;
    }

    phrase = [*(self + 8) phrase];
    v18 = objc_alloc(MEMORY[0x277D06EA0]);
    v21 = *(self + 8);
    spotlightQueryStrings = [v21 spotlightQueryStrings];
    v3 = *(self + 24);
    v19 = *(self + 8);
    v4 = v3;
    inputLanguages = [v19 inputLanguages];
    firstObject = [inputLanguages firstObject];
    v6 = *(self + 8);
    updatedSuggestion = [v6 updatedSuggestion];
    v8 = *MEMORY[0x277D06C48];
    v9 = *(self + 8);
    customFlags = [v9 customFlags];
    v11 = *(self + 8);
    v16 = v2;
    v12 = v4;
    v13 = [v18 initWithSearchString:phrase filterQueries:spotlightQueryStrings bundleID:v4 keyboardLanguage:firstObject updatedSuggestion:updatedSuggestion generateSuggestions:1 logDescription:@"Ranked Suggestions" resultLimit:v8 suggestionLimit:v16 customFlags:customFlags feedbackQueryID:{objc_msgSend(v11, "feedbackQueryID")}];

    topHitsQuerySuggestionResult = [v13 topHitsQuerySuggestionResult];
    objc_initWeak(location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke;
    v25[3] = &unk_27818AF30;
    objc_copyWeak(&v26, location);
    [topHitsQuerySuggestionResult addSuccessBlock:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__MUISearchRankedSuggesterQuery__createTopHitsQuery__block_invoke_86;
    v23[3] = &unk_27818AF58;
    objc_copyWeak(&v24, location);
    [topHitsQuerySuggestionResult addFailureBlock:v23];
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

- (uint64_t)initWithPhraseManager:(void *)manager handler:(void *)handler suggester:
{
  v8 = a2;
  managerCopy = manager;
  handlerCopy = handler;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = MUISearchRankedSuggesterQuery;
    v11 = objc_msgSendSuper2(&v18, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      v12 = [managerCopy copy];
      v13 = *(self + 16);
      *(self + 16) = v12;

      if (handlerCopy)
      {
        v14 = handlerCopy[1];
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong((self + 24), v14);
      _createTopHitsQuery = [(MUISearchRankedSuggesterQuery *)self _createTopHitsQuery];
      v16 = *(self + 32);
      *(self + 32) = _createTopHitsQuery;
    }
  }

  return self;
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