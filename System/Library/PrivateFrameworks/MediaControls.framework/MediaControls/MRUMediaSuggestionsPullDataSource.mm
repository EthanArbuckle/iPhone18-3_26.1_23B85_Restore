@interface MRUMediaSuggestionsPullDataSource
- (MRUMediaSuggestionsDataSourceDelegate)delegate;
- (MRUMediaSuggestionsPullDataSource)init;
- (NSDictionary)mediaSuggestions;
- (void)refreshMediaSuggestions;
@end

@implementation MRUMediaSuggestionsPullDataSource

- (MRUMediaSuggestionsPullDataSource)init
{
  v13.receiver = self;
  v13.super_class = MRUMediaSuggestionsPullDataSource;
  v2 = [(MRUMediaSuggestionsPullDataSource *)&v13 init];
  if (v2)
  {
    defaultRequestWithArtwork = [MEMORY[0x1E69B0A70] defaultRequestWithArtwork];
    request = v2->_request;
    v2->_request = defaultRequestWithArtwork;

    v5 = dispatch_queue_create("com.apple.MediaControls.MRUMediaSuggestionsPullDataSource/requestQueue", 0);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69B0A68]);
    preferences = v2->_preferences;
    v2->_preferences = v7;

    objc_initWeak(&location, v2);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MRUMediaSuggestionsPullDataSource_init__block_invoke;
    v10[3] = &unk_1E7663AE8;
    objc_copyWeak(&v11, &location);
    [(MRMediaSuggestionPreferences *)v2->_preferences setUserDisplayPreferencesDidChangeCallback:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__MRUMediaSuggestionsPullDataSource_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshMediaSuggestions];
}

- (NSDictionary)mediaSuggestions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_mediaSuggestions copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)refreshMediaSuggestions
{
  objc_initWeak(&location, self);
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MRUMediaSuggestionsPullDataSource_refreshMediaSuggestions__block_invoke;
  block[3] = &unk_1E7665DD0;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(requestQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __60__MRUMediaSuggestionsPullDataSource_refreshMediaSuggestions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    [v3 timeIntervalSinceNow];
    v5 = -v4 < 60.0;
    v2 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  if ((*(v2 + 8) & 1) == 0 && !v5)
  {
    *(v2 + 8) = 1;
    v6 = [MEMORY[0x1E695DF00] now];
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    v11 = *(v9 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__MRUMediaSuggestionsPullDataSource_refreshMediaSuggestions__block_invoke_2;
    v12[3] = &unk_1E7665DA8;
    v12[4] = v9;
    objc_copyWeak(&v13, (a1 + 40));
    [v10 performWithPreferences:v11 completion:v12];
    objc_destroyWeak(&v13);
  }
}

void __60__MRUMediaSuggestionsPullDataSource_refreshMediaSuggestions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MRUMediaSuggestionsPullDataSource_refreshMediaSuggestions__block_invoke_3;
  v11[3] = &unk_1E7665D80;
  v11[4] = v7;
  objc_copyWeak(&v14, (a1 + 40));
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
}

void __60__MRUMediaSuggestionsPullDataSource_refreshMediaSuggestions__block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 8) = 0;
  v2 = objc_loadWeakRetained((a1 + 56));
  objc_sync_enter(v2);
  [v2 setMediaSuggestions:*(a1 + 40)];
  objc_sync_exit(v2);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MRUMediaSuggestionsPullDataSource_refreshMediaSuggestions__block_invoke_4;
  v8[3] = &unk_1E76639D0;
  v8[4] = v2;
  v9 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v8);
  v3 = MCLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = *(*(a1 + 32) + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 138413058;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "%@, %@ request retrieved media suggestions: %@, error: %@", buf, 0x2Au);
  }
}

void __60__MRUMediaSuggestionsPullDataSource_refreshMediaSuggestions__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 mediaSuggestionsDataSource:*(a1 + 32) didChangeMediaSuggestions:*(a1 + 40)];
}

- (MRUMediaSuggestionsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end