@interface ICSearchSuggestionsContext
- (BOOL)isEmpty;
- (ICSearchSuggestionsContext)init;
- (ICSearchSuggestionsContext)initWithSearchSuggestion:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)changeScopeOfToken:(id)a3 toScopeAtIndex:(unint64_t)a4;
- (void)updateSearchSuggestion:(id)a3 interaction:(int64_t)a4;
- (void)updateTypedString:(id)a3 tokens:(id)a4;
@end

@implementation ICSearchSuggestionsContext

- (ICSearchSuggestionsContext)init
{
  v3 = [MEMORY[0x277CC34D8] emptySuggestion];
  v4 = [(ICSearchSuggestionsContext *)self initWithSearchSuggestion:v3];

  return v4;
}

- (ICSearchSuggestionsContext)initWithSearchSuggestion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSearchSuggestionsContext;
  v6 = [(ICSearchSuggestionsContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchSuggestion, a3);
  }

  return v7;
}

- (BOOL)isEmpty
{
  v3 = [(CSSuggestion *)self->_searchSuggestion suggestionTokens];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CSSuggestion *)self->_searchSuggestion userQueryString];
    v4 = [v5 length] == 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [ICSearchSuggestionsContext allocWithZone:?];
  v6 = [(ICSearchSuggestionsContext *)self searchSuggestion];
  v7 = [v6 copyWithZone:a3];
  v8 = [(ICSearchSuggestionsContext *)v5 initWithSearchSuggestion:v7];

  return v8;
}

- (void)updateTypedString:(id)a3 tokens:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 length] || objc_msgSend(v6, "count"))
  {
    v7 = MEMORY[0x277CC34D8];
    v8 = [(ICSearchSuggestionsContext *)self searchSuggestion];
    v9 = [v6 ic_compactMap:&__block_literal_global_30];
    v10 = [v7 updatedSuggestionWithCurrentSuggestion:v8 userString:v11 tokens:v9];
    [(ICSearchSuggestionsContext *)self setSearchSuggestion:v10];
  }

  else
  {
    v8 = [MEMORY[0x277CC34D8] emptySuggestion];
    [(ICSearchSuggestionsContext *)self setSearchSuggestion:v8];
  }
}

- (void)updateSearchSuggestion:(id)a3 interaction:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  v13 = v6;
  switch(a4)
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
      v8 = v6;
LABEL_8:
      v12 = v8;
      goto LABEL_10;
  }

  v12 = 0;
LABEL_10:
  [(ICSearchSuggestionsContext *)self setSearchSuggestion:v12];
}

- (void)changeScopeOfToken:(id)a3 toScopeAtIndex:(unint64_t)a4
{
  v6 = MEMORY[0x277CC34D8];
  v7 = a3;
  v8 = [(ICSearchSuggestionsContext *)self searchSuggestion];
  v9 = [v7 csToken];

  v10 = [v6 updatedSuggestionWithCurrentSuggestion:v8 token:v9 scopeSelection:a4];

  [(ICSearchSuggestionsContext *)self setSearchSuggestion:v10];
}

@end