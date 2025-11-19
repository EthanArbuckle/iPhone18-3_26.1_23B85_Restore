@interface MUISearchResultsSuggesterDocumentsConfiguration
@end

@implementation MUISearchResultsSuggesterDocumentsConfiguration

void __55___MUISearchResultsSuggesterDocumentsConfiguration_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_13;
  log_log_13 = v2;
}

void __75___MUISearchResultsSuggesterDocumentsConfiguration_documentTypeFilterQuery__block_invoke()
{
  v14[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CE1E30];
  v14[0] = *MEMORY[0x277CE1E08];
  v14[1] = v0;
  v14[2] = *MEMORY[0x277CE1E78];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75___MUISearchResultsSuggesterDocumentsConfiguration_documentTypeFilterQuery__block_invoke_2;
  v12[3] = &unk_27818AE90;
  v3 = v2;
  v13 = v3;
  [v1 enumerateObjectsUsingBlock:v12];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __75___MUISearchResultsSuggesterDocumentsConfiguration_documentTypeFilterQuery__block_invoke_3;
  v10 = &unk_27818AEB8;
  v11 = v3;
  v4 = v3;
  [&unk_282705B18 enumerateObjectsUsingBlock:&v7];
  v5 = [v4 componentsJoinedByString:{@" || ", v7, v8, v9, v10}];
  v6 = documentTypeFilterQuery_documentQueryString;
  documentTypeFilterQuery_documentQueryString = v5;
}

void __75___MUISearchResultsSuggesterDocumentsConfiguration_documentTypeFilterQuery__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [a2 identifier];
  v4 = [v3 stringWithFormat:@"(kMDItemContentTypeTree = '%@*')", v5];
  [v2 addObject:v4];
}

void __75___MUISearchResultsSuggesterDocumentsConfiguration_documentTypeFilterQuery__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemContentTypeTree = '%@*')", a2];
  [v2 addObject:v3];
}

void __67___MUISearchResultsSuggesterDocumentsConfiguration_fetchAttributes__block_invoke()
{
  v6[5] = *MEMORY[0x277D85DE8];
  v0 = +[MUISearchResultsSuggester dateAttributes];
  v1 = *MEMORY[0x277CC2760];
  v6[0] = *MEMORY[0x277CC2688];
  v6[1] = v1;
  v2 = *MEMORY[0x277CC24C8];
  v6[2] = *MEMORY[0x277CC24E0];
  v6[3] = v2;
  v6[4] = *MEMORY[0x277CC3140];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];
  v4 = [v0 arrayByAddingObjectsFromArray:v3];
  v5 = fetchAttributes_fetchAttributes;
  fetchAttributes_fetchAttributes = v4;
}

id __104___MUISearchResultsSuggesterDocumentsConfiguration_processSuggestionsResults_phraseManager_messageList___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v36 = [v3 searchableItem];
  v4 = [v36 attributeSet];
  v5 = [v4 displayName];
  v6 = [v5 lastPathComponent];
  v7 = [v6 stringByDeletingPathExtension];

  v8 = [MUISearchResultsSuggester dateForSuggestionResult:v3];
  v9 = [v4 subject];
  v10 = v9;
  v11 = &stru_2826EE5B8;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [v4 contentURL];
  v14 = +[_MUISearchResultsSuggesterDocumentsConfiguration log];
  v15 = v14;
  if (v13)
  {
    v33 = v12;
    v35 = v8;
    v16 = v7;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v3 searchableItem];
      [v17 uniqueIdentifier];
      v18 = v31 = a1;
      v19 = [v4 userSharedReceivedDate];
      v20 = [v19 firstObject];
      v21 = [v4 subject];
      *buf = 138413314;
      v38 = v18;
      v39 = 2112;
      v40 = v13;
      v41 = 2112;
      v42 = v16;
      v43 = 2112;
      v44 = v20;
      v45 = 2112;
      v46 = v21;
      _os_log_impl(&dword_214A5E000, v15, OS_LOG_TYPE_DEFAULT, "Creating Document suggestion ID: %@ fileURL: %@ name: %@ date: %@ subject: %@", buf, 0x34u);

      a1 = v31;
    }

    v15 = [v4 authorNames];
    v22 = [v4 authorEmailAddresses];
    [v3 objectID];
    v24 = v23 = v3;
    v7 = v16;
    v25 = v16;
    v12 = v33;
    v8 = v35;
    v26 = [MUIDocumentSuggestion suggestionWithFileURL:v13 name:v25 date:v35 subject:v33 authors:v15 authorEmailAddresses:v22 objectID:v24 messageList:*(a1 + 32)];

    v3 = v23;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v34 = [v3 searchableItem];
      v28 = [v34 uniqueIdentifier];
      v32 = [v4 userSharedReceivedDate];
      v29 = [v32 firstObject];
      v30 = [v4 subject];
      *buf = 138413058;
      v38 = v28;
      v39 = 2112;
      v40 = v7;
      v41 = 2112;
      v42 = v29;
      v43 = 2112;
      v44 = v30;
      _os_log_error_impl(&dword_214A5E000, v15, OS_LOG_TYPE_ERROR, "Skipping  document suggestion with ID: %@ name: %@ date: %@ subject: %@ because there is no file URL.", buf, 0x2Au);
    }

    v26 = 0;
  }

  return v26;
}

@end