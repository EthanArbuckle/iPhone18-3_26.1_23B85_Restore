@interface CNAutocompleteLocalContactsFetcher
- (BOOL)doesMatchInfo:(id)a3 matchProperties:(id)a4;
- (id)autocompleteResultsForProperties:(id)a3 contactPredicate:(id)a4 contactStore:(id)a5 resultFactory:(id)a6 error:(id *)a7;
- (id)autocompleteResultsForProperties:(id)a3 fetchResults:(id)a4 resultFactory:(id)a5 contactStore:(id)a6;
- (id)contactsForPredicate:(id)a3 properties:(id)a4 contactStore:(id)a5 error:(id *)a6;
- (id)keysToFetchForProperties:(id)a3;
- (id)resultsForSearchString:(id)a3 terms:(id)a4 properties:(id)a5 contactStore:(id)a6 error:(id *)a7;
- (id)transformWithProperties:(id)a3 factory:(id)a4;
@end

@implementation CNAutocompleteLocalContactsFetcher

- (id)autocompleteResultsForProperties:(id)a3 fetchResults:(id)a4 resultFactory:(id)a5 contactStore:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a4 _cn_filter:&__block_literal_global_9];
  v14 = [(CNAutocompleteLocalContactsFetcher *)self transformWithProperties:v12 factory:v11];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __111__CNAutocompleteLocalContactsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke;
  v24 = &unk_2781C4380;
  v25 = v10;
  v26 = v14;
  v15 = v10;
  v16 = v14;
  v17 = [v13 _cn_map:&v21];
  v18 = [v17 _cn_filter:{*MEMORY[0x277CFBD18], v21, v22, v23, v24}];
  v19 = [v18 _cn_flatten];

  return v19;
}

id __111__CNAutocompleteLocalContactsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __111__CNAutocompleteLocalContactsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke_2;
  v8[3] = &unk_2781C4358;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 _cn_map:v8];

  return v4;
}

id __111__CNAutocompleteLocalContactsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __111__CNAutocompleteLocalContactsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke_3;
  v5[3] = &unk_2781C4330;
  objc_copyWeak(&v8, &location);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v3 setContactProvider:v5];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v3;
}

id __111__CNAutocompleteLocalContactsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = CNALoggingContextDebug();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = *(a1 + 32);
    v15 = 138412546;
    v16 = WeakRetained;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_2155FE000, v6, OS_LOG_TYPE_DEFAULT, "About to fetch full contact for autocomplete result: %@ contact: %@", &v15, 0x16u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) identifier];
  v11 = [v9 unifiedContactWithIdentifier:v10 keysToFetch:v5 error:a3];

  v12 = CNALoggingContextDebug();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Got full contact: %@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)transformWithProperties:(id)a3 factory:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [CNAutocompleteLocalContactResultTransformBuilder localContactBuilderWithResultFactory:a4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addTransformForProperty:{*(*(&v15 + 1) + 8 * i), v15}];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = [v6 build];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)autocompleteResultsForProperties:(id)a3 contactPredicate:(id)a4 contactStore:(id)a5 resultFactory:(id)a6 error:(id *)a7
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [(CNAutocompleteLocalContactsFetcher *)self contactsForPredicate:a4 properties:v12 contactStore:v13 error:a7];
  if (v15)
  {
    v16 = [(CNAutocompleteLocalContactsFetcher *)self autocompleteResultsForProperties:v12 fetchResults:v15 resultFactory:v14 contactStore:v13];
  }

  else
  {
    v17 = CNALoggingContextDebug();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (a7)
      {
        v18 = *a7;
      }

      else
      {
        v18 = 0;
      }

      v21 = 138412290;
      v22 = v18;
      _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "Got nil contacts from Contacts, error: %@", &v21, 0xCu);
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)contactsForPredicate:(id)a3 properties:(id)a4 contactStore:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(CNAutocompleteLocalContactsFetcher *)self keysToFetchForProperties:a4];
  v13 = [v10 unifiedContactsMatchingPredicate:v11 keysToFetch:v12 error:a6];

  return v13;
}

- (id)keysToFetchForProperties:(id)a3
{
  v3 = MEMORY[0x277CBEB58];
  v4 = MEMORY[0x277CBDA78];
  v5 = a3;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  v7 = [v3 setWithObject:v6];

  [v7 addObjectsFromArray:v5];
  [v7 addObject:*MEMORY[0x277CBD048]];
  v8 = +[CNAutocompleteNameComponents contactKeys];
  [v7 addObjectsFromArray:v8];

  v9 = [v7 allObjects];

  return v9;
}

- (id)resultsForSearchString:(id)a3 terms:(id)a4 properties:(id)a5 contactStore:(id)a6 error:(id *)a7
{
  v39[11] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CBDA70];
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [v11 alloc];
  v16 = [(CNAutocompleteLocalContactsFetcher *)self keysToFetchForProperties:v13];
  v17 = [v15 initWithKeysToFetch:v16];

  v18 = [MEMORY[0x277CBDA58] predicateForContactsMatchingFullTextSearch:v14 containerIdentifiers:0 groupIdentifiers:0];

  [v17 setPredicate:v18];
  [v17 setUnifyResults:0];
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = *MEMORY[0x277CBD058];
  v39[0] = *MEMORY[0x277CBD000];
  v39[1] = v20;
  v21 = *MEMORY[0x277CBD0B0];
  v39[2] = *MEMORY[0x277CBCFF8];
  v39[3] = v21;
  v22 = *MEMORY[0x277CBD0A8];
  v39[4] = *MEMORY[0x277CBD0B8];
  v39[5] = v22;
  v23 = *MEMORY[0x277CBD090];
  v39[6] = *MEMORY[0x277CBD078];
  v39[7] = v23;
  v24 = *MEMORY[0x277CBD068];
  v39[8] = *MEMORY[0x277CBD0E0];
  v39[9] = v24;
  v39[10] = *MEMORY[0x277CBD070];
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:11];
  v26 = [MEMORY[0x277CBEB98] setWithArray:v13];

  v27 = [v26 setByAddingObjectsFromArray:v25];

  v28 = objc_alloc_init(MEMORY[0x277CFBEE0]);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __97__CNAutocompleteLocalContactsFetcher_resultsForSearchString_terms_properties_contactStore_error___block_invoke;
  v35[3] = &unk_2781C43C8;
  v35[4] = self;
  v36 = v27;
  v37 = v28;
  v29 = v19;
  v38 = v29;
  v30 = v28;
  v31 = v27;
  LODWORD(v26) = [v12 enumerateContactsAndMatchInfoWithFetchRequest:v17 error:a7 usingBlock:v35];

  v32 = 0;
  if (v26)
  {
    v32 = [v29 copy];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

void __97__CNAutocompleteLocalContactsFetcher_resultsForSearchString_terms_properties_contactStore_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) doesMatchInfo:a3 matchProperties:*(a1 + 40)])
  {
    [*(a1 + 48) lock];
    [*(a1 + 56) addObject:v5];
    [*(a1 + 48) unlock];
  }
}

- (BOOL)doesMatchInfo:(id)a3 matchProperties:(id)a4
{
  v5 = a4;
  v6 = a3;
  LOBYTE(a3) = [v6 matchedNameProperty];
  v7 = [v6 matchedProperties];

  v8 = [v7 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CNAutocompleteLocalContactsFetcher_doesMatchInfo_matchProperties___block_invoke;
  v12[3] = &unk_2781C3FD8;
  v13 = v5;
  v9 = v5;
  v10 = [v8 _cn_any:v12];

  return a3 | v10;
}

@end