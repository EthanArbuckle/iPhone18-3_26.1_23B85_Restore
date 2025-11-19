@interface CRRecentContact(CloudRecentsExtensions)
- (id)contactKey;
- (id)contactWithKeysToFetch:()CloudRecentsExtensions;
- (id)contactWithKeysToFetch:()CloudRecentsExtensions contactStore:;
- (id)existingContactWithKeysToFetch:()CloudRecentsExtensions;
- (id)existingContactWithKeysToFetch:()CloudRecentsExtensions contactStore:;
@end

@implementation CRRecentContact(CloudRecentsExtensions)

- (id)contactKey
{
  v1 = [a1 kind];
  v2 = CNAutocompleteContactKeyForRecentsKind(v1);

  return v2;
}

- (id)existingContactWithKeysToFetch:()CloudRecentsExtensions
{
  v4 = a3;
  v5 = CNAutocompleteSharedContactStore();
  v6 = [a1 existingContactWithKeysToFetch:v4 contactStore:v5];

  return v6;
}

- (id)existingContactWithKeysToFetch:()CloudRecentsExtensions contactStore:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _contactContext];
  v9 = [(_CNAUICRRecentContactCNContext *)v8 existingContact];

  if (v9)
  {
    v10 = [(_CNAUICRRecentContactCNContext *)v8 existingContact];
    v11 = [v10 areKeysAvailable:v6];

    if (v11)
    {
      goto LABEL_12;
    }

    v12 = [(_CNAUICRRecentContactCNContext *)v8 existingContact];
    v13 = [v12 availableKeyDescriptor];
    v32 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];

    if (v6)
    {
      v15 = [v14 arrayByAddingObjectsFromArray:v6];

      v14 = v15;
    }

    v16 = MEMORY[0x1E695CD58];
    v17 = [(_CNAUICRRecentContactCNContext *)v8 existingContact];
    v18 = [v17 identifier];
    v31 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v20 = [v16 predicateForContactsWithIdentifiers:v19];
    v21 = CNAutocompleteFetchNonUnifiedContactsForPredicate(v7, v20, v14, 0);

    v22 = [v21 firstObject];
    [(_CNAUICRRecentContactCNContext *)v8 setExistingContact:v22];
  }

  else
  {
    v23 = [MEMORY[0x1E6996648] sharedInstance];
    v24 = [v23 isAccessGranted];

    if (!v24)
    {
      goto LABEL_12;
    }

    v25 = [a1 address];
    v33[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v27 = [a1 contactKey];
    v28 = [a1 displayName];
    v14 = CNAutocompleteCopyClosestMatchingExistingContactUsingAddressesAndDisplayName(v7, v26, v27, v28, v6);

    if (v14)
    {
      if (!v8)
      {
        v8 = objc_alloc_init(_CNAUICRRecentContactCNContext);
        [a1 _setContactContext:v8];
      }

      [(_CNAUICRRecentContactCNContext *)v8 setExistingContact:v14];
    }
  }

LABEL_12:
  v29 = [(_CNAUICRRecentContactCNContext *)v8 existingContact];

  return v29;
}

- (id)contactWithKeysToFetch:()CloudRecentsExtensions
{
  v4 = a3;
  v5 = CNAutocompleteSharedContactStore();
  v6 = [a1 contactWithKeysToFetch:v4 contactStore:v5];

  return v6;
}

- (id)contactWithKeysToFetch:()CloudRecentsExtensions contactStore:
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _contactContext];
  v9 = [v8 interimContact];
  if (v9 || ([a1 existingContactWithKeysToFetch:v6 contactStore:v7], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    goto LABEL_4;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v12 = [a1 kind];
  v13 = [v12 isEqualToString:*MEMORY[0x1E6998F60]];

  v14 = [a1 displayName];
  v15 = v14;
  if (v13)
  {
    [v10 setGivenName:v14];
  }

  else
  {
    v16 = [v14 ea_personNameComponents];

    v17 = [v16 namePrefix];
    [v10 setNamePrefix:v17];

    v18 = [v16 givenName];
    [v10 setGivenName:v18];

    v19 = [v16 middleName];
    [v10 setMiddleName:v19];

    v20 = [v16 familyName];
    [v10 setFamilyName:v20];

    v21 = [v16 nameSuffix];
    [v10 setNameSuffix:v21];

    v15 = v16;
  }

  v22 = [a1 contactKey];
  if ([v22 isEqualToString:*MEMORY[0x1E695C208]])
  {
    v23 = [a1 address];
    if (!v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (![v22 isEqualToString:*MEMORY[0x1E695C330]])
    {
      goto LABEL_16;
    }

    v24 = MEMORY[0x1E695CF50];
    v25 = [a1 address];
    v23 = [v24 phoneNumberWithStringValue:v25];

    if (!v23)
    {
      goto LABEL_16;
    }
  }

  v26 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CB68] value:v23];
  v29[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v10 setValue:v27 forKey:v22];

LABEL_16:
  v28 = objc_alloc_init(_CNAUICRRecentContactCNContext);

  [(_CNAUICRRecentContactCNContext *)v28 setInterimContact:v10];
  [a1 _setContactContext:v28];

  v8 = v28;
LABEL_4:

  return v10;
}

@end