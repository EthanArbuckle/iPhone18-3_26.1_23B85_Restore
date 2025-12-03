@interface MRUMediaSuggestionsPushDataSource
- (MRUMediaSuggestionsDataSourceDelegate)delegate;
- (MRUMediaSuggestionsPushDataSource)init;
- (void)controller:(id)controller didFailWithError:(id)error;
- (void)controller:(id)controller didUpdateSuggestions:(id)suggestions;
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
    defaultRequestWithArtwork = [MEMORY[0x1E69B0A70] defaultRequestWithArtwork];
    v5 = [v3 initWithRequest:defaultRequestWithArtwork];
    mediaSuggestionsController = v2->_mediaSuggestionsController;
    v2->_mediaSuggestionsController = v5;

    [(MRMediaSuggestionController *)v2->_mediaSuggestionsController setDelegate:v2];
  }

  return v2;
}

- (void)controller:(id)controller didUpdateSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mediaSuggestionsDataSource:self didChangeMediaSuggestions:suggestionsCopy];
}

- (void)controller:(id)controller didFailWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = MCLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    request = [(MRMediaSuggestionController *)self->_mediaSuggestionsController request];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = request;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%@ error retrieving media suggestions: %@, error: %@", &v9, 0x20u);
  }
}

- (MRUMediaSuggestionsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end