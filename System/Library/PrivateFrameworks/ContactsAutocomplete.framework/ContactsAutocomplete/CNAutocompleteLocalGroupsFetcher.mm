@interface CNAutocompleteLocalGroupsFetcher
- (id)autocompleteResultsForProperties:(id)properties fetchResults:(id)results resultFactory:(id)factory contactStore:(id)store;
- (id)resultsForSearchString:(id)string terms:(id)terms properties:(id)properties contactStore:(id)store error:(id *)error;
@end

@implementation CNAutocompleteLocalGroupsFetcher

- (id)autocompleteResultsForProperties:(id)properties fetchResults:(id)results resultFactory:(id)factory contactStore:(id)store
{
  propertiesCopy = properties;
  factoryCopy = factory;
  storeCopy = store;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__CNAutocompleteLocalGroupsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke;
  v17[3] = &unk_2781C4590;
  v18 = factoryCopy;
  v19 = propertiesCopy;
  v20 = storeCopy;
  v12 = storeCopy;
  v13 = propertiesCopy;
  v14 = factoryCopy;
  v15 = [results _cn_compactMap:v17];

  return v15;
}

id __109__CNAutocompleteLocalGroupsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = a1[4];
  v8 = [v6 name];
  v9 = [v6 identifier];
  v10 = [v7 localGroupResultWithDisplayName:v8 groupIdentifier:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__CNAutocompleteLocalGroupsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke_2;
  v13[3] = &unk_2781C4568;
  v14 = v6;
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[4];
  v11 = v6;
  [v10 setMembersProvider:v13];

  return v10;
}

id __109__CNAutocompleteLocalGroupsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDA58];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 predicateForContactsInGroupWithIdentifier:v5];

  v7 = objc_alloc_init(CNAutocompleteLocalContactsFetcher);
  v8 = CNALoggingContextDebug();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "About to fetch members for group: %@", &v14, 0xCu);
  }

  v10 = [(CNAutocompleteLocalContactsFetcher *)v7 autocompleteResultsForProperties:*(a1 + 40) contactPredicate:v6 contactStore:*(a1 + 48) resultFactory:*(a1 + 56) error:a2];
  v11 = CNALoggingContextDebug();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "Did get members: %@", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)resultsForSearchString:(id)string terms:(id)terms properties:(id)properties contactStore:(id)store error:(id *)error
{
  v9 = MEMORY[0x277CBDB10];
  storeCopy = store;
  v11 = [v9 predicateForGroupsWithNameMatching:string];
  v12 = [storeCopy groupsMatchingPredicate:v11 error:error];

  return v12;
}

@end