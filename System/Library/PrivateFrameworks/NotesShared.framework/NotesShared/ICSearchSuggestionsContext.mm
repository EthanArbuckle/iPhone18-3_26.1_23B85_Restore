@interface ICSearchSuggestionsContext
- (BOOL)isEmpty;
- (ICSearchSuggestionsContext)init;
- (ICSearchSuggestionsContext)initWithSearchSuggestion:(id)suggestion;
- (id)copyWithZone:(_NSZone *)zone;
- (void)changeScopeOfToken:(id)token toScopeAtIndex:(unint64_t)index;
- (void)updateSearchSuggestion:(id)suggestion interaction:(int64_t)interaction;
- (void)updateTypedString:(id)string tokens:(id)tokens;
@end

@implementation ICSearchSuggestionsContext

- (ICSearchSuggestionsContext)init
{
  emptySuggestion = [MEMORY[0x277CC34D8] emptySuggestion];
  v4 = [(ICSearchSuggestionsContext *)self initWithSearchSuggestion:emptySuggestion];

  return v4;
}

- (ICSearchSuggestionsContext)initWithSearchSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v9.receiver = self;
  v9.super_class = ICSearchSuggestionsContext;
  v6 = [(ICSearchSuggestionsContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchSuggestion, suggestion);
  }

  return v7;
}

- (BOOL)isEmpty
{
  suggestionTokens = [(CSSuggestion *)self->_searchSuggestion suggestionTokens];
  if ([suggestionTokens count])
  {
    v4 = 0;
  }

  else
  {
    userQueryString = [(CSSuggestion *)self->_searchSuggestion userQueryString];
    v4 = [userQueryString length] == 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ICSearchSuggestionsContext allocWithZone:?];
  searchSuggestion = [(ICSearchSuggestionsContext *)self searchSuggestion];
  v7 = [searchSuggestion copyWithZone:zone];
  v8 = [(ICSearchSuggestionsContext *)v5 initWithSearchSuggestion:v7];

  return v8;
}

- (void)updateTypedString:(id)string tokens:(id)tokens
{
  stringCopy = string;
  tokensCopy = tokens;
  if ([stringCopy length] || objc_msgSend(tokensCopy, "count"))
  {
    v7 = MEMORY[0x277CC34D8];
    searchSuggestion = [(ICSearchSuggestionsContext *)self searchSuggestion];
    v9 = [tokensCopy ic_compactMap:&__block_literal_global_30];
    v10 = [v7 updatedSuggestionWithCurrentSuggestion:searchSuggestion userString:stringCopy tokens:v9];
    [(ICSearchSuggestionsContext *)self setSearchSuggestion:v10];
  }

  else
  {
    searchSuggestion = [MEMORY[0x277CC34D8] emptySuggestion];
    [(ICSearchSuggestionsContext *)self setSearchSuggestion:searchSuggestion];
  }
}

- (void)updateSearchSuggestion:(id)suggestion interaction:(int64_t)interaction
{
  suggestionCopy = suggestion;
  v7 = suggestionCopy;
  v13 = suggestionCopy;
  switch(interaction)
  {
    case 2:
      v9 = MEMORY[0x277CC34D8];
      v10 = v7;
      v11 = 9;
      goto LABEL_7;
    case 1:
      v9 = MEMORY[0x277CC34D8];
      v10 = v7;
      v11 = 0;
LABEL_7:
      v8 = [v9 updatedSuggestionWithCurrentSuggestion:v10 interaction:v11];
      goto LABEL_8;
    case 0:
      v8 = suggestionCopy;
LABEL_8:
      v12 = v8;
      goto LABEL_10;
  }

  v12 = 0;
LABEL_10:
  [(ICSearchSuggestionsContext *)self setSearchSuggestion:v12];
}

- (void)changeScopeOfToken:(id)token toScopeAtIndex:(unint64_t)index
{
  v6 = MEMORY[0x277CC34D8];
  tokenCopy = token;
  searchSuggestion = [(ICSearchSuggestionsContext *)self searchSuggestion];
  csToken = [tokenCopy csToken];

  v10 = [v6 updatedSuggestionWithCurrentSuggestion:searchSuggestion token:csToken scopeSelection:index];

  [(ICSearchSuggestionsContext *)self setSearchSuggestion:v10];
}

@end