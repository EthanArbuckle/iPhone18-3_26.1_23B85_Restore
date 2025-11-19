@interface _MUISearchResultsSuggesterDocumentsConfiguration
+ (OS_os_log)log;
+ (id)documentTypeFilterQuery;
- (NSArray)categories;
- (NSArray)fetchAttributes;
- (id)processSuggestionsResults:(id)a3 phraseManager:(id)a4 messageList:(id)a5;
- (id)suggestionFilterQueryWithPhraseManager:(id)a3 senderFilterQuery:(id)a4;
@end

@implementation _MUISearchResultsSuggesterDocumentsConfiguration

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___MUISearchResultsSuggesterDocumentsConfiguration_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_13 != -1)
  {
    dispatch_once(&log_onceToken_13, block);
  }

  v2 = log_log_13;

  return v2;
}

- (NSArray)categories
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = +[MUISearchSuggestionCategory documentCategory];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)documentTypeFilterQuery
{
  objc_opt_self();
  if (documentTypeFilterQuery_onceToken != -1)
  {
    +[_MUISearchResultsSuggesterDocumentsConfiguration documentTypeFilterQuery];
  }

  v0 = documentTypeFilterQuery_documentQueryString;

  return v0;
}

- (id)suggestionFilterQueryWithPhraseManager:(id)a3 senderFilterQuery:(id)a4
{
  v5 = a4;
  v6 = [a3 phrase];
  v7 = MEMORY[0x277CCACA8];
  v8 = +[MUISearchResultsSuggester dateQueryString];
  v9 = +[_MUISearchResultsSuggesterDocumentsConfiguration documentTypeFilterQuery];
  v10 = [v7 stringWithFormat:@"(%@) && (%@) && (%@)", @"(kMDItemAccountIdentifier = '*') && (kMDItemRelatedUniqueIdentifier = '*') && (kMDItemContentURL = '*')", v8, v9];

  if ([v6 length])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) && ((kMDItemDisplayName = '%@*'cdw) || (kMDItemTextContent = '%@*'cdw))", v10, v6, v6];

    v10 = v11;
  }

  if ([v5 length])
  {
    v12 = [v10 stringByAppendingFormat:@" && (%@)", v5];

    v10 = v12;
  }

  return v10;
}

- (NSArray)fetchAttributes
{
  if (fetchAttributes_onceToken != -1)
  {
    [_MUISearchResultsSuggesterDocumentsConfiguration fetchAttributes];
  }

  v3 = fetchAttributes_fetchAttributes;

  return v3;
}

- (id)processSuggestionsResults:(id)a3 phraseManager:(id)a4 messageList:(id)a5
{
  v6 = a5;
  v7 = [MUISearchResultsSuggester suggestionResultsSortedByDate:a3];
  v8 = [v7 ef_prefix:3];

  v9 = [v8 ef_prefix:3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104___MUISearchResultsSuggesterDocumentsConfiguration_processSuggestionsResults_phraseManager_messageList___block_invoke;
  v13[3] = &unk_27818AEE0;
  v14 = v6;
  v10 = v6;
  v11 = [v9 ef_compactMap:v13];

  return v11;
}

@end