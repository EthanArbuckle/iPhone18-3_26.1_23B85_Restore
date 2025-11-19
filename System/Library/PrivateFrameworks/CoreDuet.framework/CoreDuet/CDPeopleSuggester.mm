@interface CDPeopleSuggester
@end

@implementation CDPeopleSuggester

void __38___CDPeopleSuggester_initWithAdvisor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSettings];
}

void __57___CDPeopleSuggester_suggestPeopleWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 suggestPeopleWithError:&v7];
  v4 = v7;
  v5 = +[_CDLogging interactionSignpost];
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_191750000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SuggestPeopleAsync", &unk_19191A712, v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

@end