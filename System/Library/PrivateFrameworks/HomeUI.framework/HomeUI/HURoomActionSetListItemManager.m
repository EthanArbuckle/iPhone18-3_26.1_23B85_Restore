@interface HURoomActionSetListItemManager
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_currentSectionIdentifiers;
- (id)_identifierForSection:(unint64_t)a3;
- (id)_sectionIdentifierForItem:(id)a3;
- (id)_sortedRooms;
- (id)_titleForSectionWithIdentifier:(id)a3;
- (int64_t)sectionIndexForRoomIdentifier:(id)a3;
- (unint64_t)_numberOfSections;
@end

@implementation HURoomActionSetListItemManager

- (int64_t)sectionIndexForRoomIdentifier:(id)a3
{
  v4 = [a3 UUIDString];
  v5 = [(HFItemManager *)self sectionIndexForDisplayedSectionIdentifier:v4];

  return v5;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 rooms];
  v6 = [v3 roomForEntireHome];
  v7 = [v5 arrayByAddingObject:v6];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [objc_alloc(MEMORY[0x277D143B0]) initWithHome:v3 room:*(*(&v18 + 1) + 8 * i)];
        [v4 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  v13 = objc_alloc(MEMORY[0x277D14B40]);
  v14 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v15 = [v13 initWithItems:v14];

  v22 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

  return v16;
}

- (unint64_t)_numberOfSections
{
  v2 = [(HURoomActionSetListItemManager *)self _currentSectionIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)a3
{
  v4 = [(HURoomActionSetListItemManager *)self _currentSectionIdentifiers];
  if ([v4 count] <= a3)
  {
    NSLog(&cfstr_ReceivedIdenti.isa, a3, [v4 count]);
  }

  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)_titleForSectionWithIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  v7 = [(HFItemManager *)self home];
  v8 = [v7 hf_roomWithIdentifier:v6];

  v9 = [v8 name];
  v10 = [v9 localizedUppercaseString];

  return v10;
}

- (id)_sectionIdentifierForItem:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 room], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HURoomActionSetListItemManager.m" lineNumber:74 description:{@"We don't have a room for this item: %@", v5}];

    v6 = 0;
  }

  v8 = [v6 uniqueIdentifier];
  v9 = [v8 UUIDString];

  return v9;
}

- (id)_currentSectionIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HURoomActionSetListItemManager *)self _sortedRooms];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) uniqueIdentifier];
        v10 = [v9 UUIDString];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)_sortedRooms
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HURoomActionSetListItemManager *)self cachedSortedRooms];

  if (!v3)
  {
    v4 = [(HFItemManager *)self allItems];
    v5 = [(HFItemManager *)self allItems];
    v6 = [(HFItemManager *)self _itemsToHideInSet:v5];
    v7 = [v4 na_setByRemovingObjectsFromSet:v6];

    v8 = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v7 allObjects];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 room];
            [v8 addObject:v15];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v16 = [(HURoomActionSetListItemManager *)self _roomComparator];
    v17 = [v8 sortedArrayUsingComparator:v16];
    [(HURoomActionSetListItemManager *)self setCachedSortedRooms:v17];
  }

  v18 = [(HURoomActionSetListItemManager *)self cachedSortedRooms];

  return v18;
}

uint64_t __49__HURoomActionSetListItemManager__roomComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  if (v5)
  {
    if (v6)
    {
      v7 = [v5 localizedStandardCompare:v6];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end