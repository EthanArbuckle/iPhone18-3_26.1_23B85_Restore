@interface WFContactContentItemChangeTransaction
- (WFContactContentItemChangeTransaction)initWithContentItem:(id)item;
- (void)saveWithCompletionHandler:(id)handler isNew:(BOOL)new;
- (void)updateEmailAddresses:(id)addresses;
- (void)updatePhoneNumbers:(id)numbers;
- (void)updateStreetAddresses:(id)addresses;
- (void)updateURLs:(id)ls;
@end

@implementation WFContactContentItemChangeTransaction

- (void)updateURLs:(id)ls
{
  lsCopy = ls;
  mode = [(WFContentItemChangeTransaction *)self mode];
  v6 = [mode isEqualToString:@"Append"];

  if (v6)
  {
    mutableContact = [(WFContactContentItemChangeTransaction *)self mutableContact];
    urlAddresses = [mutableContact urlAddresses];
    v9 = [lsCopy if_map:&__block_literal_global_223_14289];
    v10 = [urlAddresses arrayByAddingObjectsFromArray:v9];
    mutableContact2 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [mutableContact2 setUrlAddresses:v10];
  }

  else
  {
    mode2 = [(WFContentItemChangeTransaction *)self mode];
    v13 = [mode2 isEqualToString:@"Remove"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [lsCopy valueForKey:@"absoluteString"];
      v16 = [v14 setWithArray:v15];

      mutableContact3 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      urlAddresses2 = [mutableContact3 urlAddresses];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __52__WFContactContentItemChangeTransaction_updateURLs___block_invoke;
      v26[3] = &unk_278347920;
      v27 = v16;
      v19 = v16;
      v20 = [urlAddresses2 if_objectsPassingTest:v26];
      mutableContact4 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [mutableContact4 setUrlAddresses:v20];

      goto LABEL_8;
    }

    mode3 = [(WFContentItemChangeTransaction *)self mode];
    v23 = [mode3 isEqualToString:@"RemoveAll"];

    if (v23)
    {
      mutableContact5 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [mutableContact5 setUrlAddresses:MEMORY[0x277CBEBF8]];

      goto LABEL_8;
    }

    mutableContact = [lsCopy if_map:&__block_literal_global_223_14289];
    mutableContact6 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [mutableContact6 setUrlAddresses:mutableContact];
  }

LABEL_8:
}

uint64_t __52__WFContactContentItemChangeTransaction_updateURLs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)updateStreetAddresses:(id)addresses
{
  addressesCopy = addresses;
  mode = [(WFContentItemChangeTransaction *)self mode];
  v6 = [mode isEqualToString:@"Append"];

  if (v6)
  {
    mutableContact = [(WFContactContentItemChangeTransaction *)self mutableContact];
    postalAddresses = [mutableContact postalAddresses];
    v9 = [addressesCopy if_map:&__block_literal_global_220];
    v10 = [postalAddresses arrayByAddingObjectsFromArray:v9];
    mutableContact2 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [mutableContact2 setPostalAddresses:v10];
  }

  else
  {
    mode2 = [(WFContentItemChangeTransaction *)self mode];
    v13 = [mode2 isEqualToString:@"Remove"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [addressesCopy valueForKey:@"postalAddress"];
      v16 = [v14 setWithArray:v15];

      mutableContact3 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      postalAddresses2 = [mutableContact3 postalAddresses];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__WFContactContentItemChangeTransaction_updateStreetAddresses___block_invoke;
      v26[3] = &unk_278347920;
      v27 = v16;
      v19 = v16;
      v20 = [postalAddresses2 if_objectsPassingTest:v26];
      mutableContact4 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [mutableContact4 setPostalAddresses:v20];

      goto LABEL_8;
    }

    mode3 = [(WFContentItemChangeTransaction *)self mode];
    v23 = [mode3 isEqualToString:@"RemoveAll"];

    if (v23)
    {
      mutableContact5 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [mutableContact5 setPostalAddresses:MEMORY[0x277CBEBF8]];

      goto LABEL_8;
    }

    mutableContact = [addressesCopy if_map:&__block_literal_global_220];
    mutableContact6 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [mutableContact6 setPostalAddresses:mutableContact];
  }

LABEL_8:
}

uint64_t __63__WFContactContentItemChangeTransaction_updateStreetAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)updateEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  mode = [(WFContentItemChangeTransaction *)self mode];
  v6 = [mode isEqualToString:@"Append"];

  if (v6)
  {
    mutableContact = [(WFContactContentItemChangeTransaction *)self mutableContact];
    emailAddresses = [mutableContact emailAddresses];
    v9 = [addressesCopy if_map:&__block_literal_global_217_14322];
    v10 = [emailAddresses arrayByAddingObjectsFromArray:v9];
    mutableContact2 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [mutableContact2 setEmailAddresses:v10];
  }

  else
  {
    mode2 = [(WFContentItemChangeTransaction *)self mode];
    v13 = [mode2 isEqualToString:@"Remove"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [addressesCopy valueForKey:@"address"];
      v16 = [v14 setWithArray:v15];

      mutableContact3 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      emailAddresses2 = [mutableContact3 emailAddresses];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __62__WFContactContentItemChangeTransaction_updateEmailAddresses___block_invoke;
      v26[3] = &unk_278347920;
      v27 = v16;
      v19 = v16;
      v20 = [emailAddresses2 if_objectsPassingTest:v26];
      mutableContact4 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [mutableContact4 setEmailAddresses:v20];

      goto LABEL_8;
    }

    mode3 = [(WFContentItemChangeTransaction *)self mode];
    v23 = [mode3 isEqualToString:@"RemoveAll"];

    if (v23)
    {
      mutableContact5 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [mutableContact5 setEmailAddresses:MEMORY[0x277CBEBF8]];

      goto LABEL_8;
    }

    mutableContact = [addressesCopy if_map:&__block_literal_global_217_14322];
    mutableContact6 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [mutableContact6 setEmailAddresses:mutableContact];
  }

LABEL_8:
}

uint64_t __62__WFContactContentItemChangeTransaction_updateEmailAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)updatePhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  mode = [(WFContentItemChangeTransaction *)self mode];
  v6 = [mode isEqualToString:@"Append"];

  if (v6)
  {
    mutableContact = [(WFContactContentItemChangeTransaction *)self mutableContact];
    phoneNumbers = [mutableContact phoneNumbers];
    v9 = [numbersCopy if_map:&__block_literal_global_14328];
    v10 = [phoneNumbers arrayByAddingObjectsFromArray:v9];
    mutableContact2 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [mutableContact2 setPhoneNumbers:v10];
  }

  else
  {
    mode2 = [(WFContentItemChangeTransaction *)self mode];
    v13 = [mode2 isEqualToString:@"Remove"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [numbersCopy valueForKey:@"normalizedPhoneNumber"];
      v16 = [v14 setWithArray:v15];

      mutableContact3 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      phoneNumbers2 = [mutableContact3 phoneNumbers];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __60__WFContactContentItemChangeTransaction_updatePhoneNumbers___block_invoke;
      v26[3] = &unk_278347920;
      v27 = v16;
      v19 = v16;
      v20 = [phoneNumbers2 if_objectsPassingTest:v26];
      mutableContact4 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [mutableContact4 setPhoneNumbers:v20];

      goto LABEL_8;
    }

    mode3 = [(WFContentItemChangeTransaction *)self mode];
    v23 = [mode3 isEqualToString:@"RemoveAll"];

    if (v23)
    {
      mutableContact5 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [mutableContact5 setPhoneNumbers:MEMORY[0x277CBEBF8]];

      goto LABEL_8;
    }

    mutableContact = [numbersCopy if_map:&__block_literal_global_14328];
    mutableContact6 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [mutableContact6 setPhoneNumbers:mutableContact];
  }

LABEL_8:
}

uint64_t __60__WFContactContentItemChangeTransaction_updatePhoneNumbers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  v4 = [v3 unformattedInternationalStringValue];
  LODWORD(v2) = [v2 containsObject:v4];

  return v2 ^ 1;
}

- (void)saveWithCompletionHandler:(id)handler isNew:(BOOL)new
{
  newCopy = new;
  v51 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2050000000;
  v7 = getCNSaveRequestClass_softClass_14338;
  v49 = getCNSaveRequestClass_softClass_14338;
  if (!getCNSaveRequestClass_softClass_14338)
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __getCNSaveRequestClass_block_invoke_14339;
    v45[3] = &unk_27834A178;
    v45[4] = &v46;
    __getCNSaveRequestClass_block_invoke_14339(v45);
    v7 = v47[3];
  }

  v36 = handlerCopy;
  v8 = v7;
  _Block_object_dispose(&v46, 8);
  v9 = objc_alloc_init(v7);
  v38 = objc_alloc_init(getCNContactStoreClass_14340());
  mutableContact = [(WFContactContentItemChangeTransaction *)self mutableContact];
  if (newCopy)
  {
    [v9 addContact:mutableContact toContainerWithIdentifier:0];
  }

  else
  {
    [v9 updateContact:mutableContact];
  }

  groupChangeRequest = [(WFContactContentItemChangeTransaction *)self groupChangeRequest];

  if (groupChangeRequest)
  {
    v12 = +[WFCNContactGroup allContactGroups];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v13)
    {
      v14 = *v42;
      do
      {
        v15 = 0;
        do
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v41 + 1) + 8 * v15);
          contentItem = [(WFContentItemChangeTransaction *)self contentItem];
          contact = [contentItem contact];
          v19 = [v16 containsContact:contact];

          if (v19)
          {
            mutableContact2 = [(WFContactContentItemChangeTransaction *)self mutableContact];
            group = [v16 group];
            [v9 removeMember:mutableContact2 fromGroup:group];
          }

          groupChangeRequest2 = [(WFContactContentItemChangeTransaction *)self groupChangeRequest];
          name = [v16 name];
          v24 = [groupChangeRequest2 containsObject:name];

          if (v24)
          {
            mutableContact3 = [(WFContactContentItemChangeTransaction *)self mutableContact];
            group2 = [v16 group];
            [v9 addMember:mutableContact3 toGroup:group2];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v13);
    }
  }

  v40 = 0;
  v27 = [v38 executeSaveRequest:v9 error:{&v40, v36}];
  v28 = v40;
  if (v27)
  {
    v29 = +[WFCNContact requiredKeysToFetch];
    mutableContact4 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    identifier = [mutableContact4 identifier];
    v39 = v28;
    v32 = [v38 unifiedContactWithIdentifier:identifier keysToFetch:v29 error:&v39];
    v33 = v39;

    if (v32)
    {
      v34 = [WFCNContact contactWithCNContact:v32];
      v35 = [(WFContentItem *)WFContactContentItem itemWithObject:v34];
      (v37)[2](v37, v35, 0);
    }

    else
    {
      (v37[2])();
    }

    v28 = v33;
  }

  else
  {
    (v37)[2](v37, 0, v28);
  }
}

- (WFContactContentItemChangeTransaction)initWithContentItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = WFContactContentItemChangeTransaction;
  v5 = [(WFContentItemChangeTransaction *)&v17 initWithContentItem:itemCopy];
  if (v5)
  {
    contact = [itemCopy contact];
    if (contact && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = objc_alloc_init(getCNContactStoreClass_14340());
      contactIdentifier = [contact contactIdentifier];
      v9 = +[WFCNContact requiredKeysToFetch];
      v16 = 0;
      v10 = [v7 unifiedContactWithIdentifier:contactIdentifier keysToFetch:v9 error:&v16];
      v11 = v16;

      if (v10)
      {
        v12 = [v10 mutableCopy];
        mutableContact = v5->_mutableContact;
        v5->_mutableContact = v12;

        v14 = v5;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end