@interface CalAccountStoreChangeFilterDelegateForLegacyICBURestore
- (BOOL)allowChangesToExistingTopLevelAccount:(id)account;
@end

@implementation CalAccountStoreChangeFilterDelegateForLegacyICBURestore

- (BOOL)allowChangesToExistingTopLevelAccount:(id)account
{
  accountCopy = account;
  accountTypeIdentifier = [accountCopy accountTypeIdentifier];
  v5 = [accountTypeIdentifier isEqualToString:*MEMORY[0x1E69598F8]];

  if (v5)
  {
    v6 = [accountCopy accountPropertyForKey:*MEMORY[0x1E6959728]];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end