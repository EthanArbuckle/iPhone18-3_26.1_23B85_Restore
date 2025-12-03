@interface NSHTTPURLResponse(PKAdditions)
- (id)pk_valueForHTTPHeaderField:()PKAdditions;
@end

@implementation NSHTTPURLResponse(PKAdditions)

- (id)pk_valueForHTTPHeaderField:()PKAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  allHeaderFields = [self allHeaderFields];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [allHeaderFields allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (![v10 caseInsensitiveCompare:v4])
        {
          v7 = [allHeaderFields valueForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end