@interface CNAutocompleteRecentContactsTransform
+ (id)autocompleteResultForRecent:(id)a3 factory:(id)a4 membersFactory:(id)a5 chosenAddressHashes:(id)a6 searchString:(id)a7 library:(id)a8;
+ (id)contactAutocompleteResultForRecent:(id)a3 factory:(id)a4 completesChosenGroup:(BOOL)a5;
+ (id)groupAutocompleteResultForRecent:(id)a3 factory:(id)a4 membersFactory:(id)a5 chosenAddressHashes:(id)a6 searchString:(id)a7;
+ (id)resultTransformWithFactory:(id)a3 membersFactory:(id)a4 chosenAddressHashes:(id)a5 searchString:(id)a6 library:(id)a7;
+ (id)transformForRequest:(id)a3 library:(id)a4;
+ (int64_t)addressTypeForRecentContact:(id)a3;
@end

@implementation CNAutocompleteRecentContactsTransform

+ (id)transformForRequest:(id)a3 library:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 priorityDomainForSorting];
  v9 = [v7 sendingAddress];
  v10 = [CNAutocompleteResultFactory factoryWithPriorityDomain:v8 sendingAddress:v9];

  v11 = [CNAutocompleteResultFactory factoryWithPriorityDomain:0 sendingAddress:0];
  v12 = MEMORY[0x277CBEB98];
  v13 = [v7 fetchContext];
  v14 = [v13 otherAddressesAlreadyChosen];
  v15 = [v14 _cn_map:CNAutocompleteResultAddressStringForHashingTransform];
  v16 = [v12 setWithArray:v15];

  v17 = [v7 searchString];

  v18 = [a1 resultTransformWithFactory:v10 membersFactory:v11 chosenAddressHashes:v16 searchString:v17 library:v6];

  return v18;
}

+ (id)resultTransformWithFactory:(id)a3 membersFactory:(id)a4 chosenAddressHashes:(id)a5 searchString:(id)a6 library:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __124__CNAutocompleteRecentContactsTransform_resultTransformWithFactory_membersFactory_chosenAddressHashes_searchString_library___block_invoke;
  v28 = &unk_2781C46F0;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v34 = a1;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = _Block_copy(&v25);
  v23 = [v22 copy];

  return v23;
}

+ (id)autocompleteResultForRecent:(id)a3 factory:(id)a4 membersFactory:(id)a5 chosenAddressHashes:(id)a6 searchString:(id)a7 library:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a4;
  v20 = [v14 kind];
  v21 = [v20 isEqual:*MEMORY[0x277D00EC8]];

  if (v21)
  {
    [a1 groupAutocompleteResultForRecent:v14 factory:v19 membersFactory:v15 chosenAddressHashes:v16 searchString:v17];
  }

  else
  {
    [a1 contactAutocompleteResultForRecent:v14 factory:v19 completesChosenGroup:0];
  }
  v22 = ;

  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "contactID")}];
  [v22 setRecentsIdentifier:v23];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __133__CNAutocompleteRecentContactsTransform_autocompleteResultForRecent_factory_membersFactory_chosenAddressHashes_searchString_library___block_invoke;
  v27[3] = &unk_2781C4718;
  v28 = v18;
  v29 = v14;
  v24 = v14;
  v25 = v18;
  [v22 setIgnoreResultBlock:v27];

  return v22;
}

uint64_t __133__CNAutocompleteRecentContactsTransform_autocompleteResultForRecent_factory_membersFactory_chosenAddressHashes_searchString_library___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v18[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v13 = 0;
  v6 = [v4 removeRecentContacts:v5 error:&v13];
  v7 = v13;

  if ((v6 & 1) == 0)
  {
    v8 = CNALoggingContextDebug();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Can't ignore recent: %@, with error: %@", buf, 0x16u);
    }

    if (a2)
    {
      v10 = v7;
      *a2 = v7;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)groupAutocompleteResultForRecent:(id)a3 factory:(id)a4 membersFactory:(id)a5 chosenAddressHashes:(id)a6 searchString:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 displayName];
  v18 = [v12 countOfRecents];
  v19 = [v12 mostRecentDate];
  if (![v15 count])
  {
    goto LABEL_12;
  }

  v36 = a1;
  v37 = v13;
  v38 = v16;
  v20 = [v12 members];
  v21 = [v20 _cn_filter:&__block_literal_global_16];
  v22 = [v21 _cn_indexBy:&__block_literal_global_8];

  v23 = MEMORY[0x277CBEB58];
  v24 = [v22 allKeys];
  v25 = [v23 setWithArray:v24];

  if (![v15 isSubsetOfSet:v25])
  {
    v32 = 0;
    v13 = v37;
    goto LABEL_7;
  }

  [v25 minusSet:v15];
  if ([v25 count] == 1)
  {
    v26 = [v25 anyObject];
    v27 = [v22 objectForKeyedSubscript:v26];

    v28 = v27;
    v29 = [v27 kind];
    v30 = [v29 isEqual:*MEMORY[0x277D00EC8]];
    if (v30)
    {

      v31 = v28;
LABEL_10:

      goto LABEL_11;
    }

    v35 = _block_invoke(v30, v28, v38);

    v31 = v28;
    if (!v35)
    {
      goto LABEL_10;
    }

    v13 = v37;
    v32 = [v36 contactAutocompleteResultForRecent:v31 factory:v37 completesChosenGroup:1];

LABEL_7:
    v16 = v38;
    goto LABEL_13;
  }

LABEL_11:

  v13 = v37;
  v16 = v38;
  a1 = v36;
LABEL_12:
  LOBYTE(v34) = 0;
  v32 = [v13 recentResultWithDisplayName:v17 value:0 lastSendingAddress:0 dateCount:v18 date:v19 group:1 completesChosenGroup:v34];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __130__CNAutocompleteRecentContactsTransform_groupAutocompleteResultForRecent_factory_membersFactory_chosenAddressHashes_searchString___block_invoke_15;
  v39[3] = &unk_2781C47A8;
  v40 = v12;
  v42 = a1;
  v41 = v14;
  [v32 setMembersProvider:v39];

LABEL_13:

  return v32;
}

BOOL __130__CNAutocompleteRecentContactsTransform_groupAutocompleteResultForRecent_factory_membersFactory_chosenAddressHashes_searchString___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 address];
  v3 = v2 != 0;

  return v3;
}

id __130__CNAutocompleteRecentContactsTransform_groupAutocompleteResultForRecent_factory_membersFactory_chosenAddressHashes_searchString___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = CNAutocompleteResultAddressStringForHashingTransform;
  v3 = [a2 address];
  v4 = v2[2](v2, v3);

  return v4;
}

id __130__CNAutocompleteRecentContactsTransform_groupAutocompleteResultForRecent_factory_membersFactory_chosenAddressHashes_searchString___block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) members];
  v3 = [v2 _cn_filter:&__block_literal_global_17];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __130__CNAutocompleteRecentContactsTransform_groupAutocompleteResultForRecent_factory_membersFactory_chosenAddressHashes_searchString___block_invoke_18;
  v8[3] = &unk_2781C4780;
  v7 = *(a1 + 40);
  v4 = v7;
  v9 = v7;
  v5 = [v3 _cn_map:v8];

  if (!v5)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

+ (id)contactAutocompleteResultForRecent:(id)a3 factory:(id)a4 completesChosenGroup:(BOOL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 displayName];
  v10 = [v8 countOfRecents];
  v11 = [v8 mostRecentDate];
  v12 = [v8 lastSendingAddress];
  v13 = objc_alloc_init(CNAutocompleteResultValue);
  v14 = [v8 address];
  [(CNAutocompleteResultValue *)v13 setAddress:v14];

  v15 = [objc_opt_class() addressTypeForRecentContact:v8];
  [(CNAutocompleteResultValue *)v13 setAddressType:v15];
  LOBYTE(v18) = a5;
  v16 = [v7 recentResultWithDisplayName:v9 value:v13 lastSendingAddress:v12 dateCount:v10 date:v11 group:0 completesChosenGroup:v18];

  return v16;
}

+ (int64_t)addressTypeForRecentContact:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D00EC0];
  v5 = [v3 kind];
  LOBYTE(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v7 = *MEMORY[0x277D00EE0];
    v8 = [v3 kind];
    LOBYTE(v7) = [v7 isEqual:v8];

    if (v7)
    {
      v6 = 2;
    }

    else
    {
      v9 = *MEMORY[0x277D00ED0];
      v10 = [v3 kind];
      LOBYTE(v9) = [v9 isEqual:v10];

      if (v9)
      {
        v6 = 3;
      }

      else
      {
        v11 = CNALoggingContextDebug();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v3;
          _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "Unknown address type for recent contact: %@ ", &v14, 0xCu);
        }

        v6 = 0;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

@end