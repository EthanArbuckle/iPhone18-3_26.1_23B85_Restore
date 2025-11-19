@interface CNAutocompleteLocalGroupsFetcher
- (id)autocompleteResultsForProperties:(id)a3 fetchResults:(id)a4 resultFactory:(id)a5 contactStore:(id)a6;
- (id)resultsForSearchString:(id)a3 terms:(id)a4 properties:(id)a5 contactStore:(id)a6 error:(id *)a7;
@end

@implementation CNAutocompleteLocalGroupsFetcher

- (id)autocompleteResultsForProperties:(id)a3 fetchResults:(id)a4 resultFactory:(id)a5 contactStore:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__CNAutocompleteLocalGroupsFetcher_autocompleteResultsForProperties_fetchResults_resultFactory_contactStore___block_invoke;
  v17[3] = &unk_2781C4590;
  v18 = v10;
  v19 = v9;
  v20 = v11;
  v12 = v11;
  v13 = v9;
  v14 = v10;
  v15 = [a4 _cn_compactMap:v17];

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

- (id)resultsForSearchString:(id)a3 terms:(id)a4 properties:(id)a5 contactStore:(id)a6 error:(id *)a7
{
  v9 = MEMORY[0x277CBDB10];
  v10 = a6;
  v11 = [v9 predicateForGroupsWithNameMatching:a3];
  v12 = [v10 groupsMatchingPredicate:v11 error:a7];

  return v12;
}

@end