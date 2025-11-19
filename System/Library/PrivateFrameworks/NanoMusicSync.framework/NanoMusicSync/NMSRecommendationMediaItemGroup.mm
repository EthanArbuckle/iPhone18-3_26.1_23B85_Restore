@interface NMSRecommendationMediaItemGroup
- (id)identifiersForContainerType:(unint64_t)a3;
- (id)itemList;
@end

@implementation NMSRecommendationMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v4 = 0x277CD5E40;
    goto LABEL_5;
  }

  if (!a3)
  {
    v4 = 0x277CD5EF0;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(NMSRecommendationMediaItemGroup *)self recommendation];
  v9 = [v8 items];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (v6)
        {
          v15 = *(*(&v21 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v16 = [v14 identifiers];
        v17 = [v16 copy];
        [v7 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v18 = [v7 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)itemList
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (![(NMSMediaItemGroup *)self type]|| [(NMSMediaItemGroup *)self type]== 1)
  {
    v4 = [NMSDownloadableItem alloc];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random()];
    if ([(NMSMediaItemGroup *)self type])
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    v7 = [(NMSDownloadableItem *)v4 initWithMediaLibraryIdentifier:v5 externalLibraryIdentifier:0 size:175000000 itemType:v6 manuallyAdded:[(NMSMediaItemGroup *)self manuallyAdded]];
    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

@end