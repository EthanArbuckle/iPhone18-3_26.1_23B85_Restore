@interface MUISearchSuggestionsOperation
@end

@implementation MUISearchSuggestionsOperation

void __58___MUISearchSuggestionsOperation__startQueryForSuggester___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = signpostLog();
    v7 = v6;
    if (v5)
    {
      if (v4 == -1 || !os_signpost_enabled(v6))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v8 = "com.apple.mail.search.suggestion.zkw.suggester";
    }

    else
    {
      if (v4 == -1 || !os_signpost_enabled(v6))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v8 = "com.apple.mail.search.suggestion.ayt.suggester";
    }

    _os_signpost_emit_with_name_impl(&dword_214A5E000, v7, OS_SIGNPOST_INTERVAL_END, v4, v8, "", buf, 2u);
LABEL_10:
  }

  v9 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___MUISearchSuggestionsOperation__startQueryForSuggester___block_invoke_2;
  block[3] = &unk_27818B0E8;
  objc_copyWeak(&v14, (a1 + 48));
  v12 = *(a1 + 40);
  v13 = v3;
  v10 = v3;
  dispatch_async(v9, block);

  objc_destroyWeak(&v14);
}

void __58___MUISearchSuggestionsOperation__startQueryForSuggester___block_invoke_2(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(_MUISearchSuggestionsOperation *)WeakRetained _suggester:a1[5] didCompleteWithSuggestions:?];
}

id __56___MUISearchSuggestionsOperation__runningSuggesterNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 first];
  v3 = [v2 logIdentifier];

  return v3;
}

BOOL __72___MUISearchSuggestionsOperation__suggester_didCompleteWithSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 first];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __40___MUISearchSuggestionsOperation_cancel__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[6];
  }

  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) second];
        [v7 cancel];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __58___MUISearchSuggestionsOperation__asyncCompleteSuggester___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_MUISearchSuggestionsOperation *)WeakRetained _suggester:0 didCompleteWithSuggestions:?];
}

@end