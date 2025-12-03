@interface SearchStateCache
- (SearchStateCache)init;
- (id)_cacheQueryForTabDocument:(id)document;
- (id)cachedCompletionListForTabDocument:(id)document;
- (int64_t)idOfParsecQueryOriginatingFromSearchSuggestionInTabDocument:(id)document;
- (void)cacheAcceptanceOfCompletionItem:(id)item withCompletionList:(id)list forTabDocument:(id)document;
- (void)cacheSearchQueryID:(int64_t)d forTab:(id)tab;
- (void)clearParsecQueryOriginatingFromSearchSuggestionInTabDocument:(id)document;
@end

@implementation SearchStateCache

- (SearchStateCache)init
{
  v7.receiver = self;
  v7.super_class = SearchStateCache;
  v2 = [(SearchStateCache *)&v7 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    cache = v2->_cache;
    v2->_cache = weakToStrongObjectsMapTable;

    v5 = v2;
  }

  return v2;
}

- (void)cacheAcceptanceOfCompletionItem:(id)item withCompletionList:(id)list forTabDocument:(id)document
{
  itemCopy = item;
  listCopy = list;
  documentCopy = document;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    originalURLString = [itemCopy originalURLString];
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = itemCopy;
      v15 = [v14 url];
      originalURLString = [v15 absoluteString];

      domainName = [v14 domainName];

      v11 = [domainName isEqualToString:@"web_answer"];
      goto LABEL_4;
    }

    originalURLString = 0;
LABEL_3:
    v11 = 0;
LABEL_4:
    v12 = 0;
    goto LABEL_12;
  }

  v13 = itemCopy;
  if ([v13 goesToURL])
  {
    originalURLString = [v13 string];
  }

  else
  {
    string = [v13 string];
    v18 = +[SearchQueryBuilder searchQueryBuilderWithQuery:forPrivateBrowsing:](SearchQueryBuilder, "searchQueryBuilderWithQuery:forPrivateBrowsing:", string, [documentCopy isPrivateBrowsingEnabled]);
    searchURL = [v18 searchURL];
    originalURLString = [searchURL absoluteString];
  }

  v11 = 0;
  v12 = 1;
LABEL_12:
  if ([originalURLString length] || v11)
  {
    [listCopy cacheCurrentCompletionsAfterAcceptanceOfCompletionItem:itemCopy];
    v20 = [(SearchStateCache *)self _cacheQueryForTabDocument:documentCopy];
    [v20 setCompletionList:listCopy];
    if ([originalURLString length])
    {
      v21 = [MEMORY[0x277CCACE0] componentsWithString:originalURLString];
      host = [v21 host];
      safari_domainFromHost = [host safari_domainFromHost];
      [v20 setDestinationTLD:safari_domainFromHost];
    }

    else
    {
      [v20 setDestinationTLD:0];
    }

    [v20 setDidOriginateFromSearchSuggestion:v12];
    [v20 setDidOriginateFromMultipartWebAnswer:v11];
    if ([listCopy hasParsecResults])
    {
      query = [listCopy query];
      [v20 setParsecQueryID:{objc_msgSend(query, "queryID")}];
    }

    else
    {
      [v20 setParsecQueryID:0];
    }
  }
}

- (id)_cacheQueryForTabDocument:(id)document
{
  documentCopy = document;
  v5 = objc_alloc_init(SearchStateItem);
  date = [MEMORY[0x277CBEAA8] date];
  [(SearchStateItem *)v5 setCacheDate:date];

  [(NSMapTable *)self->_cache setObject:v5 forKey:documentCopy];

  return v5;
}

- (void)cacheSearchQueryID:(int64_t)d forTab:(id)tab
{
  v5 = [(SearchStateCache *)self _cacheQueryForTabDocument:tab];
  [v5 setParsecQueryID:d];
  [v5 setDidOriginateFromSearchSuggestion:1];
}

- (void)clearParsecQueryOriginatingFromSearchSuggestionInTabDocument:(id)document
{
  v3 = [(NSMapTable *)self->_cache objectForKey:document];
  if (v3)
  {
    v4 = v3;
    [v3 setDidOriginateFromSearchSuggestion:0];
    [v4 setParsecQueryID:0];
    v3 = v4;
  }
}

- (int64_t)idOfParsecQueryOriginatingFromSearchSuggestionInTabDocument:(id)document
{
  v3 = [(NSMapTable *)self->_cache objectForKey:document];
  v4 = v3;
  if (v3 && [v3 didOriginateFromSearchSuggestion])
  {
    parsecQueryID = [v4 parsecQueryID];
  }

  else
  {
    parsecQueryID = 0;
  }

  return parsecQueryID;
}

- (id)cachedCompletionListForTabDocument:(id)document
{
  documentCopy = document;
  v5 = [(NSMapTable *)self->_cache objectForKey:documentCopy];
  v6 = [documentCopy URL];
  host = [v6 host];
  safari_domainFromHost = [host safari_domainFromHost];

  cacheDate = [v5 cacheDate];
  [cacheDate timeIntervalSinceNow];
  if (v10 <= -480.0)
  {

    goto LABEL_5;
  }

  if (![v5 didOriginateFromMultipartWebAnswer])
  {
    destinationTLD = [v5 destinationTLD];
    v13 = [safari_domainFromHost safari_isCaseInsensitiveEqualToString:destinationTLD];

    if (v13)
    {
      goto LABEL_7;
    }

LABEL_5:
    [(SearchStateCache *)self removeCachedSearchStateForTabDocument:documentCopy];
    completionList = 0;
    goto LABEL_8;
  }

LABEL_7:
  completionList = [v5 completionList];
LABEL_8:

  return completionList;
}

@end