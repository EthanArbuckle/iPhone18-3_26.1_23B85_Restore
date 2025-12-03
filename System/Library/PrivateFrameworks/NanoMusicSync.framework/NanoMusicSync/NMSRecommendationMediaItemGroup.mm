@interface NMSRecommendationMediaItemGroup
- (id)identifiersForContainerType:(unint64_t)type;
- (id)itemList;
@end

@implementation NMSRecommendationMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    v4 = 0x277CD5E40;
    goto LABEL_5;
  }

  if (!type)
  {
    v4 = 0x277CD5EF0;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  recommendation = [(NMSRecommendationMediaItemGroup *)self recommendation];
  items = [recommendation items];

  v10 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(items);
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

        identifiers = [v14 identifiers];
        v17 = [identifiers copy];
        [array addObject:v17];
      }

      v11 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v18 = [array copy];
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