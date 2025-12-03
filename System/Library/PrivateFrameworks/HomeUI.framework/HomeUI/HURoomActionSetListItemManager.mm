@interface HURoomActionSetListItemManager
- (id)_buildItemProvidersForHome:(id)home;
- (id)_currentSectionIdentifiers;
- (id)_identifierForSection:(unint64_t)section;
- (id)_sectionIdentifierForItem:(id)item;
- (id)_sortedRooms;
- (id)_titleForSectionWithIdentifier:(id)identifier;
- (int64_t)sectionIndexForRoomIdentifier:(id)identifier;
- (unint64_t)_numberOfSections;
@end

@implementation HURoomActionSetListItemManager

- (int64_t)sectionIndexForRoomIdentifier:(id)identifier
{
  uUIDString = [identifier UUIDString];
  v5 = [(HFItemManager *)self sectionIndexForDisplayedSectionIdentifier:uUIDString];

  return v5;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v24 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  rooms = [homeCopy rooms];
  roomForEntireHome = [homeCopy roomForEntireHome];
  v7 = [rooms arrayByAddingObject:roomForEntireHome];

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

        v12 = [objc_alloc(MEMORY[0x277D143B0]) initWithHome:homeCopy room:*(*(&v18 + 1) + 8 * i)];
        [array addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  v13 = objc_alloc(MEMORY[0x277D14B40]);
  v14 = [MEMORY[0x277CBEB98] setWithArray:array];
  v15 = [v13 initWithItems:v14];

  v22 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

  return v16;
}

- (unint64_t)_numberOfSections
{
  _currentSectionIdentifiers = [(HURoomActionSetListItemManager *)self _currentSectionIdentifiers];
  v3 = [_currentSectionIdentifiers count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)section
{
  _currentSectionIdentifiers = [(HURoomActionSetListItemManager *)self _currentSectionIdentifiers];
  if ([_currentSectionIdentifiers count] <= section)
  {
    NSLog(&cfstr_ReceivedIdenti.isa, section, [_currentSectionIdentifiers count]);
  }

  if ([_currentSectionIdentifiers count] <= section)
  {
    v5 = 0;
  }

  else
  {
    v5 = [_currentSectionIdentifiers objectAtIndexedSubscript:section];
  }

  return v5;
}

- (id)_titleForSectionWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  v6 = [[v4 alloc] initWithUUIDString:identifierCopy];

  home = [(HFItemManager *)self home];
  v8 = [home hf_roomWithIdentifier:v6];

  name = [v8 name];
  localizedUppercaseString = [name localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)_sectionIdentifierForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([itemCopy room], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HURoomActionSetListItemManager.m" lineNumber:74 description:{@"We don't have a room for this item: %@", itemCopy}];

    v6 = 0;
  }

  uniqueIdentifier = [v6 uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (id)_currentSectionIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _sortedRooms = [(HURoomActionSetListItemManager *)self _sortedRooms];
  v5 = [_sortedRooms countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_sortedRooms);
        }

        uniqueIdentifier = [*(*(&v13 + 1) + 8 * i) uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];
        [array addObject:uUIDString];
      }

      v6 = [_sortedRooms countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [array copy];

  return v11;
}

- (id)_sortedRooms
{
  v25 = *MEMORY[0x277D85DE8];
  cachedSortedRooms = [(HURoomActionSetListItemManager *)self cachedSortedRooms];

  if (!cachedSortedRooms)
  {
    allItems = [(HFItemManager *)self allItems];
    allItems2 = [(HFItemManager *)self allItems];
    v6 = [(HFItemManager *)self _itemsToHideInSet:allItems2];
    v7 = [allItems na_setByRemovingObjectsFromSet:v6];

    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    allObjects = [v7 allObjects];
    v10 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            room = [v14 room];
            [array addObject:room];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    _roomComparator = [(HURoomActionSetListItemManager *)self _roomComparator];
    v17 = [array sortedArrayUsingComparator:_roomComparator];
    [(HURoomActionSetListItemManager *)self setCachedSortedRooms:v17];
  }

  cachedSortedRooms2 = [(HURoomActionSetListItemManager *)self cachedSortedRooms];

  return cachedSortedRooms2;
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