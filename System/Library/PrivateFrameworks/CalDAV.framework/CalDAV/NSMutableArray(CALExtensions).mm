@interface NSMutableArray(CALExtensions)
+ (CFMutableArrayRef)nonRetainingArray;
- (void)removeAllObjectsWithClass:()CALExtensions;
@end

@implementation NSMutableArray(CALExtensions)

- (void)removeAllObjectsWithClass:()CALExtensions
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [v3 removeObjectsInArray:v2];
  v9 = *MEMORY[0x277D85DE8];
}

+ (CFMutableArrayRef)nonRetainingArray
{
  v0 = *(MEMORY[0x277CBF128] + 16);
  *&v3.version = *MEMORY[0x277CBF128];
  *&v3.release = v0;
  v3.equal = *(MEMORY[0x277CBF128] + 32);
  v3.retain = 0;
  v3.release = 0;
  v1 = CFArrayCreateMutable(0, 0, &v3);

  return v1;
}

@end