@interface WFContactContentItemChangeTransaction
- (WFContactContentItemChangeTransaction)initWithContentItem:(id)a3;
- (void)saveWithCompletionHandler:(id)a3 isNew:(BOOL)a4;
- (void)updateEmailAddresses:(id)a3;
- (void)updatePhoneNumbers:(id)a3;
- (void)updateStreetAddresses:(id)a3;
- (void)updateURLs:(id)a3;
@end

@implementation WFContactContentItemChangeTransaction

- (void)updateURLs:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItemChangeTransaction *)self mode];
  v6 = [v5 isEqualToString:@"Append"];

  if (v6)
  {
    v7 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    v8 = [v7 urlAddresses];
    v9 = [v4 if_map:&__block_literal_global_223_14289];
    v10 = [v8 arrayByAddingObjectsFromArray:v9];
    v11 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [v11 setUrlAddresses:v10];
  }

  else
  {
    v12 = [(WFContentItemChangeTransaction *)self mode];
    v13 = [v12 isEqualToString:@"Remove"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [v4 valueForKey:@"absoluteString"];
      v16 = [v14 setWithArray:v15];

      v17 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      v18 = [v17 urlAddresses];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __52__WFContactContentItemChangeTransaction_updateURLs___block_invoke;
      v26[3] = &unk_278347920;
      v27 = v16;
      v19 = v16;
      v20 = [v18 if_objectsPassingTest:v26];
      v21 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [v21 setUrlAddresses:v20];

      goto LABEL_8;
    }

    v22 = [(WFContentItemChangeTransaction *)self mode];
    v23 = [v22 isEqualToString:@"RemoveAll"];

    if (v23)
    {
      v24 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [v24 setUrlAddresses:MEMORY[0x277CBEBF8]];

      goto LABEL_8;
    }

    v7 = [v4 if_map:&__block_literal_global_223_14289];
    v25 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [v25 setUrlAddresses:v7];
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

- (void)updateStreetAddresses:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItemChangeTransaction *)self mode];
  v6 = [v5 isEqualToString:@"Append"];

  if (v6)
  {
    v7 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    v8 = [v7 postalAddresses];
    v9 = [v4 if_map:&__block_literal_global_220];
    v10 = [v8 arrayByAddingObjectsFromArray:v9];
    v11 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [v11 setPostalAddresses:v10];
  }

  else
  {
    v12 = [(WFContentItemChangeTransaction *)self mode];
    v13 = [v12 isEqualToString:@"Remove"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [v4 valueForKey:@"postalAddress"];
      v16 = [v14 setWithArray:v15];

      v17 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      v18 = [v17 postalAddresses];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__WFContactContentItemChangeTransaction_updateStreetAddresses___block_invoke;
      v26[3] = &unk_278347920;
      v27 = v16;
      v19 = v16;
      v20 = [v18 if_objectsPassingTest:v26];
      v21 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [v21 setPostalAddresses:v20];

      goto LABEL_8;
    }

    v22 = [(WFContentItemChangeTransaction *)self mode];
    v23 = [v22 isEqualToString:@"RemoveAll"];

    if (v23)
    {
      v24 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [v24 setPostalAddresses:MEMORY[0x277CBEBF8]];

      goto LABEL_8;
    }

    v7 = [v4 if_map:&__block_literal_global_220];
    v25 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [v25 setPostalAddresses:v7];
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

- (void)updateEmailAddresses:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItemChangeTransaction *)self mode];
  v6 = [v5 isEqualToString:@"Append"];

  if (v6)
  {
    v7 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    v8 = [v7 emailAddresses];
    v9 = [v4 if_map:&__block_literal_global_217_14322];
    v10 = [v8 arrayByAddingObjectsFromArray:v9];
    v11 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [v11 setEmailAddresses:v10];
  }

  else
  {
    v12 = [(WFContentItemChangeTransaction *)self mode];
    v13 = [v12 isEqualToString:@"Remove"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [v4 valueForKey:@"address"];
      v16 = [v14 setWithArray:v15];

      v17 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      v18 = [v17 emailAddresses];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __62__WFContactContentItemChangeTransaction_updateEmailAddresses___block_invoke;
      v26[3] = &unk_278347920;
      v27 = v16;
      v19 = v16;
      v20 = [v18 if_objectsPassingTest:v26];
      v21 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [v21 setEmailAddresses:v20];

      goto LABEL_8;
    }

    v22 = [(WFContentItemChangeTransaction *)self mode];
    v23 = [v22 isEqualToString:@"RemoveAll"];

    if (v23)
    {
      v24 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [v24 setEmailAddresses:MEMORY[0x277CBEBF8]];

      goto LABEL_8;
    }

    v7 = [v4 if_map:&__block_literal_global_217_14322];
    v25 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [v25 setEmailAddresses:v7];
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

- (void)updatePhoneNumbers:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItemChangeTransaction *)self mode];
  v6 = [v5 isEqualToString:@"Append"];

  if (v6)
  {
    v7 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    v8 = [v7 phoneNumbers];
    v9 = [v4 if_map:&__block_literal_global_14328];
    v10 = [v8 arrayByAddingObjectsFromArray:v9];
    v11 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [v11 setPhoneNumbers:v10];
  }

  else
  {
    v12 = [(WFContentItemChangeTransaction *)self mode];
    v13 = [v12 isEqualToString:@"Remove"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [v4 valueForKey:@"normalizedPhoneNumber"];
      v16 = [v14 setWithArray:v15];

      v17 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      v18 = [v17 phoneNumbers];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __60__WFContactContentItemChangeTransaction_updatePhoneNumbers___block_invoke;
      v26[3] = &unk_278347920;
      v27 = v16;
      v19 = v16;
      v20 = [v18 if_objectsPassingTest:v26];
      v21 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [v21 setPhoneNumbers:v20];

      goto LABEL_8;
    }

    v22 = [(WFContentItemChangeTransaction *)self mode];
    v23 = [v22 isEqualToString:@"RemoveAll"];

    if (v23)
    {
      v24 = [(WFContactContentItemChangeTransaction *)self mutableContact];
      [v24 setPhoneNumbers:MEMORY[0x277CBEBF8]];

      goto LABEL_8;
    }

    v7 = [v4 if_map:&__block_literal_global_14328];
    v25 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    [v25 setPhoneNumbers:v7];
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

- (void)saveWithCompletionHandler:(id)a3 isNew:(BOOL)a4
{
  v4 = a4;
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
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

  v36 = v6;
  v8 = v7;
  _Block_object_dispose(&v46, 8);
  v9 = objc_alloc_init(v7);
  v38 = objc_alloc_init(getCNContactStoreClass_14340());
  v10 = [(WFContactContentItemChangeTransaction *)self mutableContact];
  if (v4)
  {
    [v9 addContact:v10 toContainerWithIdentifier:0];
  }

  else
  {
    [v9 updateContact:v10];
  }

  v11 = [(WFContactContentItemChangeTransaction *)self groupChangeRequest];

  if (v11)
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
          v17 = [(WFContentItemChangeTransaction *)self contentItem];
          v18 = [v17 contact];
          v19 = [v16 containsContact:v18];

          if (v19)
          {
            v20 = [(WFContactContentItemChangeTransaction *)self mutableContact];
            v21 = [v16 group];
            [v9 removeMember:v20 fromGroup:v21];
          }

          v22 = [(WFContactContentItemChangeTransaction *)self groupChangeRequest];
          v23 = [v16 name];
          v24 = [v22 containsObject:v23];

          if (v24)
          {
            v25 = [(WFContactContentItemChangeTransaction *)self mutableContact];
            v26 = [v16 group];
            [v9 addMember:v25 toGroup:v26];
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
    v30 = [(WFContactContentItemChangeTransaction *)self mutableContact];
    v31 = [v30 identifier];
    v39 = v28;
    v32 = [v38 unifiedContactWithIdentifier:v31 keysToFetch:v29 error:&v39];
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

- (WFContactContentItemChangeTransaction)initWithContentItem:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFContactContentItemChangeTransaction;
  v5 = [(WFContentItemChangeTransaction *)&v17 initWithContentItem:v4];
  if (v5)
  {
    v6 = [v4 contact];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = objc_alloc_init(getCNContactStoreClass_14340());
      v8 = [v6 contactIdentifier];
      v9 = +[WFCNContact requiredKeysToFetch];
      v16 = 0;
      v10 = [v7 unifiedContactWithIdentifier:v8 keysToFetch:v9 error:&v16];
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