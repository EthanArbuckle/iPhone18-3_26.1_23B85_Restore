@interface MRUMediaSuggestionsPushDataSource
- (MRUMediaSuggestionsDataSourceDelegate)delegate;
- (MRUMediaSuggestionsPushDataSource)init;
- (void)controller:(id)a3 didFailWithError:(id)a4;
- (void)controller:(id)a3 didUpdateSuggestions:(id)a4;
@end

@implementation MRUMediaSuggestionsPushDataSource

- (MRUMediaSuggestionsPushDataSource)init
{
  v8.receiver = self;
  v8.super_class = MRUMediaSuggestionsPushDataSource;
  v2 = [(MRUMediaSuggestionsPushDataSource *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69B0A60]);
    v4 = [MEMORY[0x1E69B0A70] defaultRequestWithArtwork];
    v5 = [v3 initWithRequest:v4];
    mediaSuggestionsController = v2->_mediaSuggestionsController;
    v2->_mediaSuggestionsController = v5;

    [(MRMediaSuggestionController *)v2->_mediaSuggestionsController setDelegate:v2];
  }

  return v2;
}

- (void)controller:(id)a3 didUpdateSuggestions:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mediaSuggestionsDataSource:self didChangeMediaSuggestions:v5];
}

- (void)controller:(id)a3 didFailWithError:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MCLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [(MRMediaSuggestionController *)self->_mediaSuggestionsController request];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%@ error retrieving media suggestions: %@, error: %@", &v9, 0x20u);
  }
}

- (MRUMediaSuggestionsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end