@interface NSArray(MapsSuggestionsEntry)
- (uint64_t)containsEntryWithIdentifier:()MapsSuggestionsEntry;
@end

@implementation NSArray(MapsSuggestionsEntry)

- (uint64_t)containsEntryWithIdentifier:()MapsSuggestionsEntry
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 uniqueIdentifier];
          v12 = [v4 isEqualToString:v11];

          if (v12)
          {
            v7 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

@end