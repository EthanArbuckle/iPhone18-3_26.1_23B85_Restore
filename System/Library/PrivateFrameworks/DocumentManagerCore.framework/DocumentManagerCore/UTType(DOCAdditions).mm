@interface UTType(DOCAdditions)
+ (id)doc_contentTypesForIdentifiers:()DOCAdditions;
+ (id)doc_identifiersForContentTypes:()DOCAdditions;
- (uint64_t)doc_conformsToAnyInContentTypes:()DOCAdditions;
@end

@implementation UTType(DOCAdditions)

+ (id)doc_contentTypesForIdentifiers:()DOCAdditions
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = MEMORY[0x277CE1CB8];
    v5 = [MEMORY[0x277CBEB98] setWithArray:v3];
    v6 = [v4 _typesWithIdentifiers:v5];

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__UTType_DOCAdditions__doc_contentTypesForIdentifiers___block_invoke;
    v13[3] = &unk_278F9B950;
    v14 = v6;
    v8 = v7;
    v15 = v8;
    v9 = v6;
    [v3 enumerateObjectsUsingBlock:v13];
    v10 = v15;
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

+ (id)doc_identifiersForContentTypes:()DOCAdditions
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__UTType_DOCAdditions__doc_identifiersForContentTypes___block_invoke;
  v8[3] = &unk_278F9B978;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

- (uint64_t)doc_conformsToAnyInContentTypes:()DOCAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([a1 conformsToType:{*(*(&v12 + 1) + 8 * v8), v12}])
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end