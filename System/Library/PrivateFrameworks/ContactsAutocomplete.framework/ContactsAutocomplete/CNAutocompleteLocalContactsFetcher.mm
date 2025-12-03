@interface CNAutocompleteLocalContactsFetcher
- (BOOL)doesMatchInfo:(id)info matchProperties:(id)properties;
- (id)autocompleteResultsForProperties:(id)properties contactPredicate:(id)predicate contactStore:(id)store resultFactory:(id)factory error:(id *)error;
- (id)autocompleteResultsForProperties:(id)properties fetchResults:(id)results resultFactory:(id)factory contactStore:(id)store;
- (id)contactsForPredicate:(id)predicate properties:(id)properties contactStore:(id)store error:(id *)error;
- (id)keysToFetchForProperties:(id)properties;
- (id)resultsForSearchString:(id)string terms:(id)terms properties:(id)properties contactStore:(id)store error:(id *)error;
- (id)transformWithProperties:(id)properties factory:(id)factory;
@end

@implementation CNAutocompleteLocalContactsFetcher

- (id)autocompleteResultsForProperties:(id)properties fetchResults:(id)results resultFactory:(id)factory contactStore:(id)store
{
  storeCopy = store;
  factoryCopy = factory;
  propertiesCopy = properties;
  v13 = [results _cn_filter:&__block_literal_global_9];
  v14 = [(CNAutocompleteLocalContactsFetcher *)self transformWithProperties:propertiesCopy factory:factoryCopy];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __111__CNAutocompleteLocalContactsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke;
  v24 = &unk_2781C4380;
  v25 = storeCopy;
  v26 = v14;
  v15 = storeCopy;
  v16 = v14;
  v17 = [v13 _cn_map:&v21];
  v18 = [v17 _cn_filter:{*MEMORY[0x277CFBD18], v21, v22, v23, v24}];
  _cn_flatten = [v18 _cn_flatten];

  return _cn_flatten;
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

- (id)transformWithProperties:(id)properties factory:(id)factory
{
  v20 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v6 = [CNAutocompleteLocalContactResultTransformBuilder localContactBuilderWithResultFactory:factory];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = propertiesCopy;
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

  build = [v6 build];

  v13 = *MEMORY[0x277D85DE8];

  return build;
}

- (id)autocompleteResultsForProperties:(id)properties contactPredicate:(id)predicate contactStore:(id)store resultFactory:(id)factory error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  storeCopy = store;
  factoryCopy = factory;
  v15 = [(CNAutocompleteLocalContactsFetcher *)self contactsForPredicate:predicate properties:propertiesCopy contactStore:storeCopy error:error];
  if (v15)
  {
    v16 = [(CNAutocompleteLocalContactsFetcher *)self autocompleteResultsForProperties:propertiesCopy fetchResults:v15 resultFactory:factoryCopy contactStore:storeCopy];
  }

  else
  {
    v17 = CNALoggingContextDebug();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v18 = *error;
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

- (id)contactsForPredicate:(id)predicate properties:(id)properties contactStore:(id)store error:(id *)error
{
  storeCopy = store;
  predicateCopy = predicate;
  v12 = [(CNAutocompleteLocalContactsFetcher *)self keysToFetchForProperties:properties];
  v13 = [storeCopy unifiedContactsMatchingPredicate:predicateCopy keysToFetch:v12 error:error];

  return v13;
}

- (id)keysToFetchForProperties:(id)properties
{
  v3 = MEMORY[0x277CBEB58];
  v4 = MEMORY[0x277CBDA78];
  propertiesCopy = properties;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  v7 = [v3 setWithObject:v6];

  [v7 addObjectsFromArray:propertiesCopy];
  [v7 addObject:*MEMORY[0x277CBD048]];
  v8 = +[CNAutocompleteNameComponents contactKeys];
  [v7 addObjectsFromArray:v8];

  allObjects = [v7 allObjects];

  return allObjects;
}

- (id)resultsForSearchString:(id)string terms:(id)terms properties:(id)properties contactStore:(id)store error:(id *)error
{
  v39[11] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CBDA70];
  storeCopy = store;
  propertiesCopy = properties;
  stringCopy = string;
  v15 = [v11 alloc];
  v16 = [(CNAutocompleteLocalContactsFetcher *)self keysToFetchForProperties:propertiesCopy];
  v17 = [v15 initWithKeysToFetch:v16];

  v18 = [MEMORY[0x277CBDA58] predicateForContactsMatchingFullTextSearch:stringCopy containerIdentifiers:0 groupIdentifiers:0];

  [v17 setPredicate:v18];
  [v17 setUnifyResults:0];
  array = [MEMORY[0x277CBEB18] array];
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
  v26 = [MEMORY[0x277CBEB98] setWithArray:propertiesCopy];

  v27 = [v26 setByAddingObjectsFromArray:v25];

  v28 = objc_alloc_init(MEMORY[0x277CFBEE0]);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __97__CNAutocompleteLocalContactsFetcher_resultsForSearchString_terms_properties_contactStore_error___block_invoke;
  v35[3] = &unk_2781C43C8;
  v35[4] = self;
  v36 = v27;
  v37 = v28;
  v29 = array;
  v38 = v29;
  v30 = v28;
  v31 = v27;
  LODWORD(v26) = [storeCopy enumerateContactsAndMatchInfoWithFetchRequest:v17 error:error usingBlock:v35];

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

- (BOOL)doesMatchInfo:(id)info matchProperties:(id)properties
{
  propertiesCopy = properties;
  infoCopy = info;
  LOBYTE(info) = [infoCopy matchedNameProperty];
  matchedProperties = [infoCopy matchedProperties];

  allKeys = [matchedProperties allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CNAutocompleteLocalContactsFetcher_doesMatchInfo_matchProperties___block_invoke;
  v12[3] = &unk_2781C3FD8;
  v13 = propertiesCopy;
  v9 = propertiesCopy;
  v10 = [allKeys _cn_any:v12];

  return info | v10;
}

@end