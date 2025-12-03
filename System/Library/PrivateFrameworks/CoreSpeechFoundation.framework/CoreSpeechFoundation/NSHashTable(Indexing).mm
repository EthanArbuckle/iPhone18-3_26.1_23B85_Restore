@interface NSHashTable(Indexing)
- (uint64_t)_cs_isHashTableEmpty;
@end

@implementation NSHashTable(Indexing)

- (uint64_t)_cs_isHashTableEmpty
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v2 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (*(*(&v9 + 1) + 8 * v5))
        {
          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end