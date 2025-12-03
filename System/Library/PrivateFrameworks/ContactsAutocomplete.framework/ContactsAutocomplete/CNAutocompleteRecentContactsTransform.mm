@interface CNAutocompleteRecentContactsTransform
+ (id)autocompleteResultForRecent:(id)recent factory:(id)factory membersFactory:(id)membersFactory chosenAddressHashes:(id)hashes searchString:(id)string library:(id)library;
+ (id)contactAutocompleteResultForRecent:(id)recent factory:(id)factory completesChosenGroup:(BOOL)group;
+ (id)groupAutocompleteResultForRecent:(id)recent factory:(id)factory membersFactory:(id)membersFactory chosenAddressHashes:(id)hashes searchString:(id)string;
+ (id)resultTransformWithFactory:(id)factory membersFactory:(id)membersFactory chosenAddressHashes:(id)hashes searchString:(id)string library:(id)library;
+ (id)transformForRequest:(id)request library:(id)library;
+ (int64_t)addressTypeForRecentContact:(id)contact;
@end

@implementation CNAutocompleteRecentContactsTransform

+ (id)transformForRequest:(id)request library:(id)library
{
  libraryCopy = library;
  requestCopy = request;
  priorityDomainForSorting = [requestCopy priorityDomainForSorting];
  sendingAddress = [requestCopy sendingAddress];
  v10 = [CNAutocompleteResultFactory factoryWithPriorityDomain:priorityDomainForSorting sendingAddress:sendingAddress];

  v11 = [CNAutocompleteResultFactory factoryWithPriorityDomain:0 sendingAddress:0];
  v12 = MEMORY[0x277CBEB98];
  fetchContext = [requestCopy fetchContext];
  otherAddressesAlreadyChosen = [fetchContext otherAddressesAlreadyChosen];
  v15 = [otherAddressesAlreadyChosen _cn_map:CNAutocompleteResultAddressStringForHashingTransform];
  v16 = [v12 setWithArray:v15];

  searchString = [requestCopy searchString];

  v18 = [self resultTransformWithFactory:v10 membersFactory:v11 chosenAddressHashes:v16 searchString:searchString library:libraryCopy];

  return v18;
}

+ (id)resultTransformWithFactory:(id)factory membersFactory:(id)membersFactory chosenAddressHashes:(id)hashes searchString:(id)string library:(id)library
{
  factoryCopy = factory;
  membersFactoryCopy = membersFactory;
  hashesCopy = hashes;
  stringCopy = string;
  libraryCopy = library;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __124__CNAutocompleteRecentContactsTransform_resultTransformWithFactory_membersFactory_chosenAddressHashes_searchString_library___block_invoke;
  v28 = &unk_2781C46F0;
  v29 = factoryCopy;
  v30 = membersFactoryCopy;
  v31 = hashesCopy;
  v32 = stringCopy;
  v33 = libraryCopy;
  selfCopy = self;
  v17 = libraryCopy;
  v18 = stringCopy;
  v19 = hashesCopy;
  v20 = membersFactoryCopy;
  v21 = factoryCopy;
  v22 = _Block_copy(&v25);
  v23 = [v22 copy];

  return v23;
}

+ (id)autocompleteResultForRecent:(id)recent factory:(id)factory membersFactory:(id)membersFactory chosenAddressHashes:(id)hashes searchString:(id)string library:(id)library
{
  recentCopy = recent;
  membersFactoryCopy = membersFactory;
  hashesCopy = hashes;
  stringCopy = string;
  libraryCopy = library;
  factoryCopy = factory;
  kind = [recentCopy kind];
  v21 = [kind isEqual:*MEMORY[0x277D00EC8]];

  if (v21)
  {
    [self groupAutocompleteResultForRecent:recentCopy factory:factoryCopy membersFactory:membersFactoryCopy chosenAddressHashes:hashesCopy searchString:stringCopy];
  }

  else
  {
    [self contactAutocompleteResultForRecent:recentCopy factory:factoryCopy completesChosenGroup:0];
  }
  v22 = ;

  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(recentCopy, "contactID")}];
  [v22 setRecentsIdentifier:v23];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __133__CNAutocompleteRecentContactsTransform_autocompleteResultForRecent_factory_membersFactory_chosenAddressHashes_searchString_library___block_invoke;
  v27[3] = &unk_2781C4718;
  v28 = libraryCopy;
  v29 = recentCopy;
  v24 = recentCopy;
  v25 = libraryCopy;
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

+ (id)groupAutocompleteResultForRecent:(id)recent factory:(id)factory membersFactory:(id)membersFactory chosenAddressHashes:(id)hashes searchString:(id)string
{
  recentCopy = recent;
  factoryCopy = factory;
  membersFactoryCopy = membersFactory;
  hashesCopy = hashes;
  stringCopy = string;
  displayName = [recentCopy displayName];
  countOfRecents = [recentCopy countOfRecents];
  mostRecentDate = [recentCopy mostRecentDate];
  if (![hashesCopy count])
  {
    goto LABEL_12;
  }

  selfCopy = self;
  v37 = factoryCopy;
  v38 = stringCopy;
  members = [recentCopy members];
  v21 = [members _cn_filter:&__block_literal_global_16];
  v22 = [v21 _cn_indexBy:&__block_literal_global_8];

  v23 = MEMORY[0x277CBEB58];
  allKeys = [v22 allKeys];
  v25 = [v23 setWithArray:allKeys];

  if (![hashesCopy isSubsetOfSet:v25])
  {
    v32 = 0;
    factoryCopy = v37;
    goto LABEL_7;
  }

  [v25 minusSet:hashesCopy];
  if ([v25 count] == 1)
  {
    anyObject = [v25 anyObject];
    v27 = [v22 objectForKeyedSubscript:anyObject];

    v28 = v27;
    kind = [v27 kind];
    v30 = [kind isEqual:*MEMORY[0x277D00EC8]];
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

    factoryCopy = v37;
    v32 = [selfCopy contactAutocompleteResultForRecent:v31 factory:v37 completesChosenGroup:1];

LABEL_7:
    stringCopy = v38;
    goto LABEL_13;
  }

LABEL_11:

  factoryCopy = v37;
  stringCopy = v38;
  self = selfCopy;
LABEL_12:
  LOBYTE(v34) = 0;
  v32 = [factoryCopy recentResultWithDisplayName:displayName value:0 lastSendingAddress:0 dateCount:countOfRecents date:mostRecentDate group:1 completesChosenGroup:v34];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __130__CNAutocompleteRecentContactsTransform_groupAutocompleteResultForRecent_factory_membersFactory_chosenAddressHashes_searchString___block_invoke_15;
  v39[3] = &unk_2781C47A8;
  v40 = recentCopy;
  selfCopy2 = self;
  v41 = membersFactoryCopy;
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

+ (id)contactAutocompleteResultForRecent:(id)recent factory:(id)factory completesChosenGroup:(BOOL)group
{
  factoryCopy = factory;
  recentCopy = recent;
  displayName = [recentCopy displayName];
  countOfRecents = [recentCopy countOfRecents];
  mostRecentDate = [recentCopy mostRecentDate];
  lastSendingAddress = [recentCopy lastSendingAddress];
  v13 = objc_alloc_init(CNAutocompleteResultValue);
  address = [recentCopy address];
  [(CNAutocompleteResultValue *)v13 setAddress:address];

  v15 = [objc_opt_class() addressTypeForRecentContact:recentCopy];
  [(CNAutocompleteResultValue *)v13 setAddressType:v15];
  LOBYTE(v18) = group;
  v16 = [factoryCopy recentResultWithDisplayName:displayName value:v13 lastSendingAddress:lastSendingAddress dateCount:countOfRecents date:mostRecentDate group:0 completesChosenGroup:v18];

  return v16;
}

+ (int64_t)addressTypeForRecentContact:(id)contact
{
  v16 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v4 = *MEMORY[0x277D00EC0];
  kind = [contactCopy kind];
  LOBYTE(v4) = [v4 isEqual:kind];

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v7 = *MEMORY[0x277D00EE0];
    kind2 = [contactCopy kind];
    LOBYTE(v7) = [v7 isEqual:kind2];

    if (v7)
    {
      v6 = 2;
    }

    else
    {
      v9 = *MEMORY[0x277D00ED0];
      kind3 = [contactCopy kind];
      LOBYTE(v9) = [v9 isEqual:kind3];

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
          v15 = contactCopy;
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