@interface CNUIMeContactComparisonStrategyIdentifier
- (BOOL)isMeContact:(id)a3;
- (id)meContactIdentifiers;
- (void)meContactChangedInStore:(id)a3;
@end

@implementation CNUIMeContactComparisonStrategyIdentifier

- (void)meContactChangedInStore:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E695C258];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v10 count:1];
  v9 = 0;
  v7 = [v5 _crossPlatformUnifiedMeContactWithKeysToFetch:v6 error:&v9];

  v8 = [v7 identifier];
  [(CNUIMeContactComparisonStrategyIdentifier *)self setMeContactIdentifierFound:v8];
}

- (BOOL)isMeContact:(id)a3
{
  v4 = a3;
  v5 = [(CNUIMeContactComparisonStrategyIdentifier *)self meContactIdentifierFound];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (id)meContactIdentifiers
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6996568];
  v4 = [(CNUIMeContactComparisonStrategyIdentifier *)self meContactIdentifierFound];
  if ((*(v3 + 16))(v3, v4))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [(CNUIMeContactComparisonStrategyIdentifier *)self meContactIdentifierFound];
    v8[0] = v6;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  return v5;
}

@end