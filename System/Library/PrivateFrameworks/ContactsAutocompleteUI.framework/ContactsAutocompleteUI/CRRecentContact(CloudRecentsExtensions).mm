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
  kind = [self kind];
  v2 = CNAutocompleteContactKeyForRecentsKind(kind);

  return v2;
}

- (id)existingContactWithKeysToFetch:()CloudRecentsExtensions
{
  v4 = a3;
  v5 = CNAutocompleteSharedContactStore();
  v6 = [self existingContactWithKeysToFetch:v4 contactStore:v5];

  return v6;
}

- (id)existingContactWithKeysToFetch:()CloudRecentsExtensions contactStore:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  _contactContext = [self _contactContext];
  existingContact = [(_CNAUICRRecentContactCNContext *)_contactContext existingContact];

  if (existingContact)
  {
    existingContact2 = [(_CNAUICRRecentContactCNContext *)_contactContext existingContact];
    v11 = [existingContact2 areKeysAvailable:v6];

    if (v11)
    {
      goto LABEL_12;
    }

    existingContact3 = [(_CNAUICRRecentContactCNContext *)_contactContext existingContact];
    availableKeyDescriptor = [existingContact3 availableKeyDescriptor];
    v32 = availableKeyDescriptor;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];

    if (v6)
    {
      v15 = [v14 arrayByAddingObjectsFromArray:v6];

      v14 = v15;
    }

    v16 = MEMORY[0x1E695CD58];
    existingContact4 = [(_CNAUICRRecentContactCNContext *)_contactContext existingContact];
    identifier = [existingContact4 identifier];
    v31 = identifier;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v20 = [v16 predicateForContactsWithIdentifiers:v19];
    v21 = CNAutocompleteFetchNonUnifiedContactsForPredicate(v7, v20, v14, 0);

    firstObject = [v21 firstObject];
    [(_CNAUICRRecentContactCNContext *)_contactContext setExistingContact:firstObject];
  }

  else
  {
    mEMORY[0x1E6996648] = [MEMORY[0x1E6996648] sharedInstance];
    isAccessGranted = [mEMORY[0x1E6996648] isAccessGranted];

    if (!isAccessGranted)
    {
      goto LABEL_12;
    }

    address = [self address];
    v33[0] = address;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    contactKey = [self contactKey];
    displayName = [self displayName];
    v14 = CNAutocompleteCopyClosestMatchingExistingContactUsingAddressesAndDisplayName(v7, v26, contactKey, displayName, v6);

    if (v14)
    {
      if (!_contactContext)
      {
        _contactContext = objc_alloc_init(_CNAUICRRecentContactCNContext);
        [self _setContactContext:_contactContext];
      }

      [(_CNAUICRRecentContactCNContext *)_contactContext setExistingContact:v14];
    }
  }

LABEL_12:
  existingContact5 = [(_CNAUICRRecentContactCNContext *)_contactContext existingContact];

  return existingContact5;
}

- (id)contactWithKeysToFetch:()CloudRecentsExtensions
{
  v4 = a3;
  v5 = CNAutocompleteSharedContactStore();
  v6 = [self contactWithKeysToFetch:v4 contactStore:v5];

  return v6;
}

- (id)contactWithKeysToFetch:()CloudRecentsExtensions contactStore:
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  _contactContext = [self _contactContext];
  interimContact = [_contactContext interimContact];
  if (interimContact || ([self existingContactWithKeysToFetch:v6 contactStore:v7], (interimContact = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = interimContact;
    goto LABEL_4;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695CF18]);
  kind = [self kind];
  v13 = [kind isEqualToString:*MEMORY[0x1E6998F60]];

  displayName = [self displayName];
  v15 = displayName;
  if (v13)
  {
    [v10 setGivenName:displayName];
  }

  else
  {
    ea_personNameComponents = [displayName ea_personNameComponents];

    namePrefix = [ea_personNameComponents namePrefix];
    [v10 setNamePrefix:namePrefix];

    givenName = [ea_personNameComponents givenName];
    [v10 setGivenName:givenName];

    middleName = [ea_personNameComponents middleName];
    [v10 setMiddleName:middleName];

    familyName = [ea_personNameComponents familyName];
    [v10 setFamilyName:familyName];

    nameSuffix = [ea_personNameComponents nameSuffix];
    [v10 setNameSuffix:nameSuffix];

    v15 = ea_personNameComponents;
  }

  contactKey = [self contactKey];
  if ([contactKey isEqualToString:*MEMORY[0x1E695C208]])
  {
    address = [self address];
    if (!address)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (![contactKey isEqualToString:*MEMORY[0x1E695C330]])
    {
      goto LABEL_16;
    }

    v24 = MEMORY[0x1E695CF50];
    address2 = [self address];
    address = [v24 phoneNumberWithStringValue:address2];

    if (!address)
    {
      goto LABEL_16;
    }
  }

  v26 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CB68] value:address];
  v29[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v10 setValue:v27 forKey:contactKey];

LABEL_16:
  v28 = objc_alloc_init(_CNAUICRRecentContactCNContext);

  [(_CNAUICRRecentContactCNContext *)v28 setInterimContact:v10];
  [self _setContactContext:v28];

  _contactContext = v28;
LABEL_4:

  return v10;
}

@end