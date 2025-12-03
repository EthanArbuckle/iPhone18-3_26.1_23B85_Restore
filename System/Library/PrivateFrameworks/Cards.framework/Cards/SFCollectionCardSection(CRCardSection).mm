@interface SFCollectionCardSection(CRCardSection)
- (id)resolvedCardSections;
@end

@implementation SFCollectionCardSection(CRCardSection)

- (id)resolvedCardSections
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  cardSections = [self cardSections];
  v4 = [cardSections countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(cardSections);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        [v2 addObject:v8];
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        resolvedCardSections = [v8 resolvedCardSections];
        v10 = [resolvedCardSections countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(resolvedCardSections);
              }

              [v2 addObject:*(*(&v17 + 1) + 8 * j)];
            }

            v11 = [resolvedCardSections countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }
      }

      v5 = [cardSections countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end