@interface CNUIMeContactComparisonStrategyUnified
- (BOOL)isMeContact:(id)a3;
- (id)identifierAndLinkIdentifierAndLinkedContactIdentifiersFromContact:(id)a3;
- (id)meContactIdentifiers;
- (void)meContactChangedInStore:(id)a3;
@end

@implementation CNUIMeContactComparisonStrategyUnified

- (void)meContactChangedInStore:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695C2D8];
  v17[0] = *MEMORY[0x1E695C258];
  v17[1] = v4;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = [v5 arrayWithObjects:v17 count:2];
  v16 = 0;
  v8 = [v6 _crossPlatformUnifiedMeContactWithKeysToFetch:v7 error:&v16];
  v9 = v16;

  v15 = v9;
  v10 = [v6 meContactIdentifiers:&v15];

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
  v2 = [(CNUIMeContactComparisonStrategyUnified *)self meContactIdentifiersFound];
  v3 = [v2 allObjects];

  return v3;
}

- (BOOL)isMeContact:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(CNUIMeContactComparisonStrategyUnified *)self identifierAndLinkIdentifierAndLinkedContactIdentifiersFromContact:?];
  v5 = [(CNUIMeContactComparisonStrategyUnified *)self meContactIdentifiersFound];
  v6 = [v4 intersectsSet:v5];

  return v6;
}

- (id)identifierAndLinkIdentifierAndLinkedContactIdentifiersFromContact:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_14;
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = *MEMORY[0x1E6996568];
  v6 = [v3 identifier];
  v7 = (*(v5 + 16))(v5, v6);

  if ((v7 & 1) == 0)
  {
    v8 = [v3 identifier];
    [v4 addObject:v8];
  }

  if (![v3 isUnified])
  {
    v15 = +[CNUIMeContactMonitor log];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      goto LABEL_14;
    }

    v16 = [v3 identifier];
    v18 = 138543362;
    v19 = v16;
    _os_log_impl(&dword_1A31E6000, v15, OS_LOG_TYPE_DEFAULT, "*** WARNING *** contact %{public}@ is not unified. This may result in the contact not being correctly identified as the me contact.", &v18, 0xCu);
LABEL_12:

    goto LABEL_13;
  }

  v9 = [v3 linkIdentifier];
  v10 = (*(v5 + 16))(v5, v9);

  if ((v10 & 1) == 0)
  {
    v11 = [v3 linkIdentifier];
    [v4 addObject:v11];
  }

  v12 = *MEMORY[0x1E6996530];
  v13 = [v3 linkedContacts];
  v14 = [v13 _cn_map:&__block_literal_global_139];
  LOBYTE(v12) = (*(v12 + 16))(v12, v14);

  if ((v12 & 1) == 0)
  {
    v15 = [v3 linkedContacts];
    v16 = [v15 _cn_map:&__block_literal_global_139];
    [v4 addObjectsFromArray:v16];
    goto LABEL_12;
  }

LABEL_14:

  return v4;
}

@end