@interface GKDashboardMultiplayerPickerSearchDataSource
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (GKDashboardMultiplayerPickerSearchDataSource)initWithSearchPlayers:(id)players maxSelectable:(int64_t)selectable;
- (NSArray)selectedPlayers;
- (UISearchBar)searchBar;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)itemCount;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchTextHasChanged;
- (void)setupCollectionView:(id)view;
@end

@implementation GKDashboardMultiplayerPickerSearchDataSource

- (GKDashboardMultiplayerPickerSearchDataSource)initWithSearchPlayers:(id)players maxSelectable:(int64_t)selectable
{
  playersCopy = players;
  v11.receiver = self;
  v11.super_class = GKDashboardMultiplayerPickerSearchDataSource;
  v7 = [(GKCollectionDataSource *)&v11 init];
  if (v7)
  {
    v8 = [playersCopy copy];
    allPlayers = v7->_allPlayers;
    v7->_allPlayers = v8;

    v7->_maxSelectable = selectable;
  }

  return v7;
}

- (void)setupCollectionView:(id)view
{
  v5.receiver = self;
  v5.super_class = GKDashboardMultiplayerPickerSearchDataSource;
  viewCopy = view;
  [(GKCollectionDataSource *)&v5 setupCollectionView:viewCopy];
  v4 = [GKDashboardPlayerPickerCell _gkNib:v5.receiver];
  [viewCopy registerNib:v4 forCellWithReuseIdentifier:@"playerCell"];
}

- (NSArray)selectedPlayers
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allPlayers = [(GKDashboardMultiplayerPickerSearchDataSource *)self allPlayers];
  v4 = [allPlayers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(allPlayers);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        playerStates = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
        referenceKey = [v8 referenceKey];
        v11 = [playerStates objectForKeyedSubscript:referenceKey];
        integerValue = [v11 integerValue];

        if (integerValue == 1)
        {
          [v15 addObject:v8];
        }
      }

      v5 = [allPlayers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  allObjects = [v15 allObjects];

  return allObjects;
}

- (void)searchTextHasChanged
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(GKDashboardMultiplayerPickerSearchDataSource *)self isSearching])
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allPlayers = [(GKDashboardMultiplayerPickerSearchDataSource *)self allPlayers];
    v5 = [allPlayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(allPlayers);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([(GKCollectionDataSource *)self searchMatchesItem:v9 inSection:0])
          {
            [orderedSet addObject:v9];
          }
        }

        v6 = [allPlayers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v10 = [orderedSet sortedArrayUsingComparator:&__block_literal_global_10];
    [(GKDashboardMultiplayerPickerSearchDataSource *)self setSearchPlayers:v10];
  }

  else
  {

    [(GKDashboardMultiplayerPickerSearchDataSource *)self setSearchPlayers:0];
  }
}

uint64_t __68__GKDashboardMultiplayerPickerSearchDataSource_searchTextHasChanged__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayNameWithOptions:0];
  v6 = [v4 displayNameWithOptions:0];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

- (int64_t)itemCount
{
  searchPlayers = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchPlayers];
  v3 = [searchPlayers count];

  return v3;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"playerCell" forIndexPath:pathCopy];
  searchPlayers = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchPlayers];
  v9 = [pathCopy row];

  v10 = [searchPlayers objectAtIndexedSubscript:v9];

  [v7 setPlayer:v10];
  playerStates = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
  referenceKey = [v10 referenceKey];
  v13 = [playerStates objectForKey:referenceKey];
  integerValue = [v13 integerValue];

  if ((integerValue - 1) > 1)
  {
    selectedPlayers = [(GKDashboardMultiplayerPickerSearchDataSource *)self selectedPlayers];
    [v7 setSelectable:{objc_msgSend(selectedPlayers, "count") < -[GKDashboardMultiplayerPickerSearchDataSource maxSelectable](self, "maxSelectable")}];
  }

  else
  {
    [v7 setSelectable:integerValue == 1];
  }

  [v7 setSelected:integerValue == 1];
  lastPlayedDate = [v10 lastPlayedDate];
  [v7 setShowsPlayerSubtitle:lastPlayedDate != 0];

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [GKDashboardPlayerPickerCell defaultSize:view];
  v6 = 0.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  searchPlayers = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchPlayers];
  v7 = [pathCopy row];

  v8 = [searchPlayers objectAtIndexedSubscript:v7];

  playerStates = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
  referenceKey = [v8 referenceKey];
  v11 = [playerStates objectForKey:referenceKey];
  integerValue = [v11 integerValue];

  return integerValue != 2;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v22[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  searchPlayers = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchPlayers];
  v9 = [searchPlayers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if (v9)
  {
    playerStates = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
    referenceKey = [v9 referenceKey];
    v12 = [playerStates objectForKey:referenceKey];
    integerValue = [v12 integerValue];

    if (integerValue == 1)
    {
      playerStates2 = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
      referenceKey2 = [v9 referenceKey];
      [playerStates2 setObject:&unk_286188E20 forKeyedSubscript:referenceKey2];
    }

    else if (!integerValue)
    {
      playerStates3 = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
      referenceKey3 = [v9 referenceKey];
      [playerStates3 setObject:&unk_286188E08 forKeyedSubscript:referenceKey3];

      if ([(GKDashboardMultiplayerPickerSearchDataSource *)self maxSelectable]>= 1)
      {
        selectedPlayers = [(GKDashboardMultiplayerPickerSearchDataSource *)self selectedPlayers];
        v17 = [selectedPlayers count];
        maxSelectable = [(GKDashboardMultiplayerPickerSearchDataSource *)self maxSelectable];

        if (v17 > maxSelectable)
        {
          [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
        }
      }
    }

    v22[0] = pathCopy;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [viewCopy reloadItemsAtIndexPaths:v21];
  }

  else
  {
    [viewCopy deselectItemAtIndexPath:pathCopy animated:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  searchBar = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchBar];
  isFirstResponder = [searchBar isFirstResponder];

  if (isFirstResponder)
  {
    searchBar2 = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchBar];
    [searchBar2 resignFirstResponder];
  }
}

- (UISearchBar)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

@end