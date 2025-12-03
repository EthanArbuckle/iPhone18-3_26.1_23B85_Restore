@interface CNUIMeContactComparisonStrategyUnified
- (BOOL)isMeContact:(id)contact;
- (id)identifierAndLinkIdentifierAndLinkedContactIdentifiersFromContact:(id)contact;
- (id)meContactIdentifiers;
- (void)meContactChangedInStore:(id)store;
@end

@implementation CNUIMeContactComparisonStrategyUnified

- (void)meContactChangedInStore:(id)store
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695C2D8];
  v17[0] = *MEMORY[0x1E695C258];
  v17[1] = v4;
  v5 = MEMORY[0x1E695DEC8];
  storeCopy = store;
  v7 = [v5 arrayWithObjects:v17 count:2];
  v16 = 0;
  v8 = [storeCopy _crossPlatformUnifiedMeContactWithKeysToFetch:v7 error:&v16];
  v9 = v16;

  v15 = v9;
  v10 = [storeCopy meContactIdentifiers:&v15];

  v11 = v15;
  v12 = [(CNUIMeContactComparisonStrategyUnified *)self identifierAndLinkIdentifierAndLinkedContactIdentifiersFromContact:v8];
  v13 = [v12 mutableCopy];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [v13 addObjectsFromArray:v10];
  }

  v14 = [v13 copy];
  [(CNUIMeContactComparisonStrategyUnified *)self setMeContactIdentifiersFound:v14];
}

- (id)meContactIdentifiers
{
  meContactIdentifiersFound = [(CNUIMeContactComparisonStrategyUnified *)self meContactIdentifiersFound];
  allObjects = [meContactIdentifiersFound allObjects];

  return allObjects;
}

- (BOOL)isMeContact:(id)contact
{
  if (!contact)
  {
    return 0;
  }

  v4 = [(CNUIMeContactComparisonStrategyUnified *)self identifierAndLinkIdentifierAndLinkedContactIdentifiersFromContact:?];
  meContactIdentifiersFound = [(CNUIMeContactComparisonStrategyUnified *)self meContactIdentifiersFound];
  v6 = [v4 intersectsSet:meContactIdentifiersFound];

  return v6;
}

- (id)identifierAndLinkIdentifierAndLinkedContactIdentifiersFromContact:(id)contact
{
  v20 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (!contactCopy)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_14;
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = *MEMORY[0x1E6996568];
  identifier = [contactCopy identifier];
  v7 = (*(v5 + 16))(v5, identifier);

  if ((v7 & 1) == 0)
  {
    identifier2 = [contactCopy identifier];
    [v4 addObject:identifier2];
  }

  if (![contactCopy isUnified])
  {
    linkedContacts2 = +[CNUIMeContactMonitor log];
    if (!os_log_type_enabled(linkedContacts2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      goto LABEL_14;
    }

    identifier3 = [contactCopy identifier];
    v18 = 138543362;
    v19 = identifier3;
    _os_log_impl(&dword_1A31E6000, linkedContacts2, OS_LOG_TYPE_DEFAULT, "*** WARNING *** contact %{public}@ is not unified. This may result in the contact not being correctly identified as the me contact.", &v18, 0xCu);
LABEL_12:

    goto LABEL_13;
  }

  linkIdentifier = [contactCopy linkIdentifier];
  v10 = (*(v5 + 16))(v5, linkIdentifier);

  if ((v10 & 1) == 0)
  {
    linkIdentifier2 = [contactCopy linkIdentifier];
    [v4 addObject:linkIdentifier2];
  }

  v12 = *MEMORY[0x1E6996530];
  linkedContacts = [contactCopy linkedContacts];
  v14 = [linkedContacts _cn_map:&__block_literal_global_139];
  LOBYTE(v12) = (*(v12 + 16))(v12, v14);

  if ((v12 & 1) == 0)
  {
    linkedContacts2 = [contactCopy linkedContacts];
    identifier3 = [linkedContacts2 _cn_map:&__block_literal_global_139];
    [v4 addObjectsFromArray:identifier3];
    goto LABEL_12;
  }

LABEL_14:

  return v4;
}

@end