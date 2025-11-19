@interface IKDSEPrototypeBundle
@end

@implementation IKDSEPrototypeBundle

uint64_t __49___IKDSEPrototypeBundle_prototypeForItemAtIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 range];
  v6 = [v4 range];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __49___IKDSEPrototypeBundle_addPrototype_forIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_new();
  [v6 setRange:{a2, a3}];
  [v6 setPrototypeIndex:*(a1 + 40)];
  [*(a1 + 32) addObject:v6];
}

@end