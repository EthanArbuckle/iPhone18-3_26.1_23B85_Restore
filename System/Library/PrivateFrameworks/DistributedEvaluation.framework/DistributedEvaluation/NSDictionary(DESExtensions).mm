@interface NSDictionary(DESExtensions)
- (id)_fides_objectByReplacingValue:()DESExtensions withValue:;
@end

@implementation NSDictionary(DESExtensions)

- (id)_fides_objectByReplacingValue:()DESExtensions withValue:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__NSDictionary_DESExtensions___fides_objectByReplacingValue_withValue___block_invoke;
  v15[3] = &unk_278F83D40;
  v9 = v8;
  v16 = v9;
  v17 = v6;
  v18 = v7;
  v10 = v7;
  v11 = v6;
  [self enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v18;
  v13 = v9;

  return v9;
}

@end