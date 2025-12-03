@interface CNUIMeContactComparisonStrategyIdentifier
- (BOOL)isMeContact:(id)contact;
- (id)meContactIdentifiers;
- (void)meContactChangedInStore:(id)store;
@end

@implementation CNUIMeContactComparisonStrategyIdentifier

- (void)meContactChangedInStore:(id)store
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E695C258];
  v4 = MEMORY[0x1E695DEC8];
  storeCopy = store;
  v6 = [v4 arrayWithObjects:v10 count:1];
  v9 = 0;
  v7 = [storeCopy _crossPlatformUnifiedMeContactWithKeysToFetch:v6 error:&v9];

  identifier = [v7 identifier];
  [(CNUIMeContactComparisonStrategyIdentifier *)self setMeContactIdentifierFound:identifier];
}

- (BOOL)isMeContact:(id)contact
{
  contactCopy = contact;
  meContactIdentifierFound = [(CNUIMeContactComparisonStrategyIdentifier *)self meContactIdentifierFound];
  identifier = [contactCopy identifier];

  LOBYTE(contactCopy) = [meContactIdentifierFound isEqualToString:identifier];
  return contactCopy;
}

- (id)meContactIdentifiers
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6996568];
  meContactIdentifierFound = [(CNUIMeContactComparisonStrategyIdentifier *)self meContactIdentifierFound];
  if ((*(v3 + 16))(v3, meContactIdentifierFound))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    meContactIdentifierFound2 = [(CNUIMeContactComparisonStrategyIdentifier *)self meContactIdentifierFound];
    v8[0] = meContactIdentifierFound2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  return v5;
}

@end