@interface NSManagedObject(TIUserDictionaryWordServer)
- (void)_copyAttributeValuesFromObject:()TIUserDictionaryWordServer;
@end

@implementation NSManagedObject(TIUserDictionaryWordServer)

- (void)_copyAttributeValuesFromObject:()TIUserDictionaryWordServer
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 entity];
  v6 = [a1 entity];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [a1 entity];
    v9 = [v8 attributesByName];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          [v4 willAccessValueForKey:{v15, v18}];
          v16 = [v4 valueForKey:v15];
          [v4 didAccessValueForKey:v15];
          [a1 willChangeValueForKey:v15];
          [a1 setValue:v16 forKey:v15];
          [a1 didChangeValueForKey:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end