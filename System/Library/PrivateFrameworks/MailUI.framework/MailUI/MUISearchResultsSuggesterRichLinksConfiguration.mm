@interface MUISearchResultsSuggesterRichLinksConfiguration
@end

@implementation MUISearchResultsSuggesterRichLinksConfiguration

void __55___MUISearchResultsSuggesterRichLinksConfiguration_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_17;
  log_log_17 = v2;
}

void __67___MUISearchResultsSuggesterRichLinksConfiguration_fetchAttributes__block_invoke()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v0 = +[MUISearchResultsSuggester dateAttributes];
  v1 = [MEMORY[0x277D070F8] idAttributeKey];
  v2 = [MEMORY[0x277D070F8] titleAttributeKey];
  v8[1] = v2;
  v3 = [MEMORY[0x277D070F8] urlAttributeKey];
  v4 = *MEMORY[0x277CC24E0];
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = *MEMORY[0x277CC24C8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v6 = [v0 arrayByAddingObjectsFromArray:v5];
  v7 = fetchAttributes_fetchAttributes_0;
  fetchAttributes_fetchAttributes_0 = v6;
}

void __104___MUISearchResultsSuggesterRichLinksConfiguration_processSuggestionsResults_phraseManager_messageList___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 searchableItem];
  v8 = [v7 attributeSet];
  v9 = [MEMORY[0x277D070F8] idAttributeKey];
  v10 = [v8 attributeForKey:v9];

  if (v10 && ([*(*(a1[5] + 8) + 40) containsObject:v10] & 1) == 0)
  {
    v27 = a4;
    [*(*(a1[5] + 8) + 40) addObject:v10];
    v28 = [v6 objectID];
    v11 = objc_alloc(MEMORY[0x277CBEBC0]);
    v12 = [v7 attributeSet];
    v13 = [MEMORY[0x277D070F8] urlAttributeKey];
    v14 = [v12 attributeForKey:v13];
    v29 = [v11 initWithString:v14];

    v15 = [v7 attributeSet];
    v16 = [MEMORY[0x277D070F8] titleAttributeKey];
    v31 = [v15 attributeForKey:v16];

    v17 = [v7 attributeSet];
    v18 = [v17 relatedUniqueIdentifier];

    v19 = [v7 attributeSet];
    v30 = [v19 attributeForKey:*MEMORY[0x277CC24E0]];

    v20 = [v7 attributeSet];
    v21 = [v20 attributeForKey:*MEMORY[0x277CC24C8]];

    v22 = +[_MUISearchResultsSuggesterRichLinksConfiguration log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v7 attributeSet];
      v24 = [v23 relatedUniqueIdentifier];
      *buf = 138412802;
      v33 = v24;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v29;
      _os_log_impl(&dword_214A5E000, v22, OS_LOG_TYPE_DEFAULT, "Creating rich link suggestion messageID: %@, richLinkID: %@ URL: %@", buf, 0x20u);
    }

    v25 = *(*(a1[6] + 8) + 40);
    v26 = [MUILinkSuggestion suggestionWithURL:"suggestionWithURL:title:richLinkID:authors:authorEmailAddresses:objectID:messageID:messageList:" title:v18 richLinkID:a1[4] authors:? authorEmailAddresses:? objectID:? messageID:? messageList:?];
    [v25 addObject:v26];

    if ([*(*(a1[6] + 8) + 40) count] >= 4)
    {
      *v27 = 1;
    }
  }
}

@end