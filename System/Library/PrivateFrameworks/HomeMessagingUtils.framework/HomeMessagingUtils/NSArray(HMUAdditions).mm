@interface NSArray(HMUAdditions)
- (id)hmu_compactMap:()HMUAdditions;
@end

@implementation NSArray(HMUAdditions)

- (id)hmu_compactMap:()HMUAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __40__NSArray_HMUAdditions__hmu_compactMap___block_invoke;
  v13 = &unk_279772668;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

@end