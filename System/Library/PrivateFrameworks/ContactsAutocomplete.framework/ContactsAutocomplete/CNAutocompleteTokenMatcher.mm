@interface CNAutocompleteTokenMatcher
+ (BOOL)doSearchTokens:(id)tokens matchNameTokens:(id)nameTokens;
+ (id)indexesOfNameTokens:(id)tokens matchingSearchToken:(id)token;
+ (id)tokensForNameString:(id)string;
@end

@implementation CNAutocompleteTokenMatcher

+ (BOOL)doSearchTokens:(id)tokens matchNameTokens:(id)nameTokens
{
  tokensCopy = tokens;
  nameTokensCopy = nameTokens;
  v8 = [tokensCopy count];
  if (v8 <= [nameTokensCopy count])
  {
    if ((*(*MEMORY[0x277CFBCF8] + 16))())
    {
      v9 = 1;
    }

    else
    {
      firstObject = [tokensCopy firstObject];
      v11 = [self indexesOfNameTokens:nameTokensCopy matchingSearchToken:firstObject];
      if ((*(*MEMORY[0x277CFBD10] + 16))())
      {
        v9 = 0;
      }

      else
      {
        _cn_tail = [tokensCopy _cn_tail];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __61__CNAutocompleteTokenMatcher_doSearchTokens_matchNameTokens___block_invoke;
        v15[3] = &unk_2781C41C8;
        v17 = _cn_tail;
        selfCopy = self;
        v16 = nameTokensCopy;
        v13 = _cn_tail;
        v9 = [v11 _cn_any:v15];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __61__CNAutocompleteTokenMatcher_doSearchTokens_matchNameTokens___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) mutableCopy];
  [v4 removeObjectAtIndex:a2];
  v5 = [*(a1 + 48) doSearchTokens:*(a1 + 40) matchNameTokens:v4];

  return v5;
}

+ (id)indexesOfNameTokens:(id)tokens matchingSearchToken:(id)token
{
  tokenCopy = token;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__CNAutocompleteTokenMatcher_indexesOfNameTokens_matchingSearchToken___block_invoke;
  v9[3] = &unk_2781C41F0;
  v10 = tokenCopy;
  v6 = tokenCopy;
  v7 = [tokens indexesOfObjectsPassingTest:v9];

  return v7;
}

+ (id)tokensForNameString:(id)string
{
  stringCopy = string;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (tokensForNameString__cn_once_token_0 != -1)
    {
      +[CNAutocompleteTokenMatcher tokensForNameString:];
    }

    v4 = [tokensForNameString__cn_once_object_0 tokenizeNameString:stringCopy inferredNameOrder:0];
  }

  return v4;
}

void __50__CNAutocompleteTokenMatcher_tokensForNameString___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CFBE58]);
  v3 = +[CNAutocompleteResult localeForHashing];
  v1 = [v0 initWithLocale:v3];
  v2 = tokensForNameString__cn_once_object_0;
  tokensForNameString__cn_once_object_0 = v1;
}

@end