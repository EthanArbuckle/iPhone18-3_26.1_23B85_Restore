@interface SearchStateCache
- (SearchStateCache)init;
- (id)_cacheQueryForTabDocument:(id)a3;
- (id)cachedCompletionListForTabDocument:(id)a3;
- (int64_t)idOfParsecQueryOriginatingFromSearchSuggestionInTabDocument:(id)a3;
- (void)cacheAcceptanceOfCompletionItem:(id)a3 withCompletionList:(id)a4 forTabDocument:(id)a5;
- (void)cacheSearchQueryID:(int64_t)a3 forTab:(id)a4;
- (void)clearParsecQueryOriginatingFromSearchSuggestionInTabDocument:(id)a3;
@end

@implementation SearchStateCache

- (SearchStateCache)init
{
  v7.receiver = self;
  v7.super_class = SearchStateCache;
  v2 = [(SearchStateCache *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = v2;
  }

  return v2;
}

- (void)cacheAcceptanceOfCompletionItem:(id)a3 withCompletionList:(id)a4 forTabDocument:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v25 originalURLString];
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v25;
      v15 = [v14 url];
      v10 = [v15 absoluteString];

      v16 = [v14 domainName];

      v11 = [v16 isEqualToString:@"web_answer"];
      goto LABEL_4;
    }

    v10 = 0;
LABEL_3:
    v11 = 0;
LABEL_4:
    v12 = 0;
    goto LABEL_12;
  }

  v13 = v25;
  if ([v13 goesToURL])
  {
    v10 = [v13 string];
  }

  else
  {
    v17 = [v13 string];
    v18 = +[SearchQueryBuilder searchQueryBuilderWithQuery:forPrivateBrowsing:](SearchQueryBuilder, "searchQueryBuilderWithQuery:forPrivateBrowsing:", v17, [v9 isPrivateBrowsingEnabled]);
    v19 = [v18 searchURL];
    v10 = [v19 absoluteString];
  }

  v11 = 0;
  v12 = 1;
LABEL_12:
  if ([v10 length] || v11)
  {
    [v8 cacheCurrentCompletionsAfterAcceptanceOfCompletionItem:v25];
    v20 = [(SearchStateCache *)self _cacheQueryForTabDocument:v9];
    [v20 setCompletionList:v8];
    if ([v10 length])
    {
      v21 = [MEMORY[0x277CCACE0] componentsWithString:v10];
      v22 = [v21 host];
      v23 = [v22 safari_domainFromHost];
      [v20 setDestinationTLD:v23];
    }

    else
    {
      [v20 setDestinationTLD:0];
    }

    [v20 setDidOriginateFromSearchSuggestion:v12];
    [v20 setDidOriginateFromMultipartWebAnswer:v11];
    if ([v8 hasParsecResults])
    {
      v24 = [v8 query];
      [v20 setParsecQueryID:{objc_msgSend(v24, "queryID")}];
    }

    else
    {
      [v20 setParsecQueryID:0];
    }
  }
}

- (id)_cacheQueryForTabDocument:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SearchStateItem);
  v6 = [MEMORY[0x277CBEAA8] date];
  [(SearchStateItem *)v5 setCacheDate:v6];

  [(NSMapTable *)self->_cache setObject:v5 forKey:v4];

  return v5;
}

- (void)cacheSearchQueryID:(int64_t)a3 forTab:(id)a4
{
  v5 = [(SearchStateCache *)self _cacheQueryForTabDocument:a4];
  [v5 setParsecQueryID:a3];
  [v5 setDidOriginateFromSearchSuggestion:1];
}

- (void)clearParsecQueryOriginatingFromSearchSuggestionInTabDocument:(id)a3
{
  v3 = [(NSMapTable *)self->_cache objectForKey:a3];
  if (v3)
  {
    v4 = v3;
    [v3 setDidOriginateFromSearchSuggestion:0];
    [v4 setParsecQueryID:0];
    v3 = v4;
  }
}

- (int64_t)idOfParsecQueryOriginatingFromSearchSuggestionInTabDocument:(id)a3
{
  v3 = [(NSMapTable *)self->_cache objectForKey:a3];
  v4 = v3;
  if (v3 && [v3 didOriginateFromSearchSuggestion])
  {
    v5 = [v4 parsecQueryID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cachedCompletionListForTabDocument:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_cache objectForKey:v4];
  v6 = [v4 URL];
  v7 = [v6 host];
  v8 = [v7 safari_domainFromHost];

  v9 = [v5 cacheDate];
  [v9 timeIntervalSinceNow];
  if (v10 <= -480.0)
  {

    goto LABEL_5;
  }

  if (![v5 didOriginateFromMultipartWebAnswer])
  {
    v12 = [v5 destinationTLD];
    v13 = [v8 safari_isCaseInsensitiveEqualToString:v12];

    if (v13)
    {
      goto LABEL_7;
    }

LABEL_5:
    [(SearchStateCache *)self removeCachedSearchStateForTabDocument:v4];
    v11 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v11 = [v5 completionList];
LABEL_8:

  return v11;
}

@end