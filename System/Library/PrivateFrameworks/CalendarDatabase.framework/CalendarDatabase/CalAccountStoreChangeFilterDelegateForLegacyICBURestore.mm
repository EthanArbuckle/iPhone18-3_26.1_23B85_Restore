@interface CalAccountStoreChangeFilterDelegateForLegacyICBURestore
- (BOOL)allowChangesToExistingTopLevelAccount:(id)a3;
@end

@implementation CalAccountStoreChangeFilterDelegateForLegacyICBURestore

- (BOOL)allowChangesToExistingTopLevelAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountTypeIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69598F8]];

  if (v5)
  {
    v6 = [v3 accountPropertyForKey:*MEMORY[0x1E6959728]];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end