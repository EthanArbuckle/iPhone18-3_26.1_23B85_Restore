@interface CNAutocompleteSuggestionsProbe
+ (id)contactIdentifierForAutocompleteResult:(id)a3;
+ (id)suggestionIdentifierForAutocompleteResult:(id)a3;
+ (int)suggestionSourcesForAutocompleteResult:(id)a3;
- (CNAutocompleteSuggestionsProbe)init;
- (CNAutocompleteSuggestionsProbe)initWithSuggestionsService:(id)a3 schedulerProvider:(id)a4 bundleIdentifier:(id)a5;
- (void)recordSGServiceMessage:(id)a3;
- (void)recordUserSelectedAutocompleteResult:(id)a3;
- (void)sendData;
@end

@implementation CNAutocompleteSuggestionsProbe

+ (id)suggestionIdentifierForAutocompleteResult:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([v3 sourceType] & 4) != 0)
  {
    v9[0] = *MEMORY[0x277CBD018];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [v3 contactWithKeysToFetch:v5 error:0];

    v4 = 0;
    if ([v6 isSuggested])
    {
      v4 = [v6 suggestionRecordId];
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)contactIdentifierForAutocompleteResult:(id)a3
{
  v3 = a3;
  if (([v3 sourceType] & 2) != 0)
  {
    v4 = [v3 identifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)suggestionSourcesForAutocompleteResult:(id)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v16[0] = &unk_282793478;
  v16[1] = &unk_2827934A8;
  v17[0] = &unk_282793490;
  v17[1] = &unk_2827934C0;
  v16[2] = &unk_2827934D8;
  v16[3] = &unk_282793508;
  v17[2] = &unk_2827934F0;
  v17[3] = &unk_282793520;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__CNAutocompleteSuggestionsProbe_suggestionSourcesForAutocompleteResult___block_invoke;
  v9[3] = &unk_2781C3EF0;
  v5 = v3;
  v10 = v5;
  v11 = &v12;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void __73__CNAutocompleteSuggestionsProbe_suggestionSourcesForAutocompleteResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 sourceType];
  v8 = [v6 unsignedIntegerValue];

  if ((v8 & v7) != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) |= [v9 intValue];
  }
}

- (CNAutocompleteSuggestionsProbe)init
{
  v3 = [(objc_class *)getSGSuggestionsServiceClass() serviceForContacts];
  [v3 setSyncTimeout:0.2];
  v4 = [MEMORY[0x277CFBEB0] defaultProvider];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [(CNAutocompleteSuggestionsProbe *)self initWithSuggestionsService:v3 schedulerProvider:v4 bundleIdentifier:v6];

  return v7;
}

- (CNAutocompleteSuggestionsProbe)initWithSuggestionsService:(id)a3 schedulerProvider:(id)a4 bundleIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = CNAutocompleteSuggestionsProbe;
  v12 = [(CNAutocompleteSuggestionsProbe *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sgService, a3);
    v14 = [v10 newSerialSchedulerWithName:@"com.apple.contacts.ContactsAutocomplete.CNAutocompleteSuggestionsProbe"];
    workScheduler = v13->_workScheduler;
    v13->_workScheduler = v14;

    v16 = [v11 copy];
    bundleID = v13->_bundleID;
    v13->_bundleID = v16;

    v18 = [MEMORY[0x277CBEB18] array];
    pendingBlocks = v13->_pendingBlocks;
    v13->_pendingBlocks = v18;

    v20 = v13;
  }

  return v13;
}

- (void)recordUserSelectedAutocompleteResult:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() suggestionSourcesForAutocompleteResult:v4];
  v6 = [objc_opt_class() suggestionIdentifierForAutocompleteResult:v4];
  v7 = [objc_opt_class() contactIdentifierForAutocompleteResult:v4];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__CNAutocompleteSuggestionsProbe_recordUserSelectedAutocompleteResult___block_invoke;
  v10[3] = &unk_2781C3F18;
  v13 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CNAutocompleteSuggestionsProbe *)self recordSGServiceMessage:v10];
}

- (void)recordSGServiceMessage:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteSuggestionsProbe *)self pendingBlocks];
  v6 = [(CNAutocompleteSuggestionsProbe *)self sgService];
  v7 = [(CNAutocompleteSuggestionsProbe *)self bundleID];
  v8 = [(CNAutocompleteSuggestionsProbe *)self workScheduler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__CNAutocompleteSuggestionsProbe_recordSGServiceMessage___block_invoke;
  v13[3] = &unk_2781C3F88;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v4;
  v9 = v7;
  v10 = v6;
  v11 = v4;
  v12 = v5;
  [v8 performBlock:v13];
}

void __57__CNAutocompleteSuggestionsProbe_recordSGServiceMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__CNAutocompleteSuggestionsProbe_recordSGServiceMessage___block_invoke_2;
  v5[3] = &unk_2781C3F60;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v3 = [v5 copy];
  v4 = _Block_copy(v3);
  [v2 addObject:v4];
}

- (void)sendData
{
  v3 = [(CNAutocompleteSuggestionsProbe *)self pendingBlocks];
  v4 = [(CNAutocompleteSuggestionsProbe *)self workScheduler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CNAutocompleteSuggestionsProbe_sendData__block_invoke;
  v6[3] = &unk_2781C3FB0;
  v7 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

uint64_t __42__CNAutocompleteSuggestionsProbe_sendData__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end