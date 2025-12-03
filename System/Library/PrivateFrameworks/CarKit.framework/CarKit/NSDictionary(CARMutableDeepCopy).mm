@interface NSDictionary(CARMutableDeepCopy)
- (id)carMutableDeepCopy;
@end

@implementation NSDictionary(CARMutableDeepCopy)

- (id)carMutableDeepCopy
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  allKeys = [self allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [self objectForKey:v8];
        if ([v9 conformsToProtocol:&unk_1F48001E0])
        {
          carMutableDeepCopy = [v9 carMutableDeepCopy];
        }

        else if ([v9 conformsToProtocol:&unk_1F47FFEA0])
        {
          carMutableDeepCopy = [v9 mutableCopy];
        }

        else if ([v9 conformsToProtocol:&unk_1F47F6708])
        {
          carMutableDeepCopy = [v9 copy];
        }

        else
        {
          carMutableDeepCopy = v9;
        }

        v11 = carMutableDeepCopy;
        [v2 setValue:carMutableDeepCopy forKey:v8];
      }

      v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

@end