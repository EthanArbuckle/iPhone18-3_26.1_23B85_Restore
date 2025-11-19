@interface NSSet(PKEnhancedMerchantAdditions)
- (id)deepCopyWithZone:()PKEnhancedMerchantAdditions;
- (id)jsonString;
@end

@implementation NSSet(PKEnhancedMerchantAdditions)

- (id)jsonString
{
  v1 = [a1 allObjects];
  v2 = [v1 jsonString];

  return v2;
}

- (id)deepCopyWithZone:()PKEnhancedMerchantAdditions
{
  v4 = [a1 allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NSSet_PKEnhancedMerchantAdditions__deepCopyWithZone___block_invoke;
  v8[3] = &__block_descriptor_40_e8__16__0_8l;
  v8[4] = a3;
  v5 = [v4 pk_arrayBySafelyApplyingBlock:v8];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];

  return v6;
}

@end