@interface NSArray(CARMutableDeepCopy)
- (id)carMutableDeepCopy;
@end

@implementation NSArray(CARMutableDeepCopy)

- (id)carMutableDeepCopy
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 conformsToProtocol:{&unk_1F48001E0, v12}])
        {
          carMutableDeepCopy = [v8 carMutableDeepCopy];
        }

        else if ([v8 conformsToProtocol:&unk_1F47FFEA0])
        {
          carMutableDeepCopy = [v8 mutableCopy];
        }

        else if ([v8 conformsToProtocol:&unk_1F47F6708])
        {
          carMutableDeepCopy = [v8 copy];
        }

        else
        {
          carMutableDeepCopy = v8;
        }

        v10 = carMutableDeepCopy;
        [v2 addObject:carMutableDeepCopy];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

@end