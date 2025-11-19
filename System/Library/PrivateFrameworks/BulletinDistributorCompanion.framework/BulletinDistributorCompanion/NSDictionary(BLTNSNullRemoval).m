@interface NSDictionary(BLTNSNullRemoval)
- (id)objectWithNSNulls:()BLTNSNullRemoval;
- (id)objectWithNoNSNulls:()BLTNSNullRemoval;
@end

@implementation NSDictionary(BLTNSNullRemoval)

- (id)objectWithNoNSNulls:()BLTNSNullRemoval
{
  if (a3)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    *a3 = v5;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __54__NSDictionary_BLTNSNullRemoval__objectWithNoNSNulls___block_invoke;
  v16 = &unk_278D33100;
  v7 = v6;
  v17 = v7;
  v8 = v5;
  v18 = v8;
  [a1 enumerateKeysAndObjectsUsingBlock:&v13];
  v9 = [v8 count];
  if (a3 && !v9)
  {
    *a3 = 0;
  }

  v10 = v18;
  v11 = v7;

  return v7;
}

- (id)objectWithNSNulls:()BLTNSNullRemoval
{
  v4 = a3;
  v5 = a1;
  if ([v4 count])
  {
    v6 = [v5 mutableCopy];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__NSDictionary_BLTNSNullRemoval__objectWithNSNulls___block_invoke;
    v8[3] = &unk_278D31E60;
    v9 = v6;
    v5 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v5;
}

@end