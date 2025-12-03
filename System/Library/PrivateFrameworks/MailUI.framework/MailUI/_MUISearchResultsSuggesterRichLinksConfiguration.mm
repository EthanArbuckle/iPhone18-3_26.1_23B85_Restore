@interface _MUISearchResultsSuggesterRichLinksConfiguration
+ (OS_os_log)log;
- (NSArray)categories;
- (NSArray)fetchAttributes;
- (id)processSuggestionsResults:(id)results phraseManager:(id)manager messageList:(id)list;
- (id)suggestionFilterQueryWithPhraseManager:(id)manager senderFilterQuery:(id)query;
@end

@implementation _MUISearchResultsSuggesterRichLinksConfiguration

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___MUISearchResultsSuggesterRichLinksConfiguration_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_17 != -1)
  {
    dispatch_once(&log_onceToken_17, block);
  }

  v2 = log_log_17;

  return v2;
}

- (NSArray)categories
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = +[MUISearchSuggestionCategory linkCategory];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)suggestionFilterQueryWithPhraseManager:(id)manager senderFilterQuery:(id)query
{
  queryCopy = query;
  phrase = [manager phrase];
  if ([phrase length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@*'cdw", phrase];
  }

  else
  {
    v7 = @"'*'";
  }

  v8 = MEMORY[0x277CCACA8];
  idAttributeKey = [MEMORY[0x277D070F8] idAttributeKey];
  v10 = [v8 stringWithFormat:@"(%@ = %@)", idAttributeKey, v7];

  v11 = MEMORY[0x277CCACA8];
  v12 = +[MUISearchResultsSuggester dateQueryString];
  v13 = [v11 stringWithFormat:@"(%@) && (%@)", v10, v12];

  if ([queryCopy length])
  {
    queryCopy = [v13 stringByAppendingFormat:@" && (%@)", queryCopy];

    v13 = queryCopy;
  }

  return v13;
}

- (NSArray)fetchAttributes
{
  if (fetchAttributes_onceToken_0 != -1)
  {
    [_MUISearchResultsSuggesterRichLinksConfiguration fetchAttributes];
  }

  v3 = fetchAttributes_fetchAttributes_0;

  return v3;
}

- (id)processSuggestionsResults:(id)results phraseManager:(id)manager messageList:(id)list
{
  resultsCopy = results;
  managerCopy = manager;
  listCopy = list;
  v10 = [MUISearchResultsSuggester suggestionResultsSortedByDate:resultsCopy];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__5;
  v24[4] = __Block_byref_object_dispose__5;
  v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104___MUISearchResultsSuggesterRichLinksConfiguration_processSuggestionsResults_phraseManager_messageList___block_invoke;
  v14[3] = &unk_27818B048;
  v16 = v24;
  v17 = &v18;
  v11 = listCopy;
  v15 = v11;
  [v10 enumerateObjectsUsingBlock:v14];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v24, 8);

  return v12;
}

@end