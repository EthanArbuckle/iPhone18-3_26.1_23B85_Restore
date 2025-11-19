@interface GKDashboardMultiplayerPickerSearchDataSource
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardMultiplayerPickerSearchDataSource)initWithSearchPlayers:(id)a3 maxSelectable:(int64_t)a4;
- (NSArray)selectedPlayers;
- (UISearchBar)searchBar;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)itemCount;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchTextHasChanged;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKDashboardMultiplayerPickerSearchDataSource

- (GKDashboardMultiplayerPickerSearchDataSource)initWithSearchPlayers:(id)a3 maxSelectable:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = GKDashboardMultiplayerPickerSearchDataSource;
  v7 = [(GKCollectionDataSource *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    allPlayers = v7->_allPlayers;
    v7->_allPlayers = v8;

    v7->_maxSelectable = a4;
  }

  return v7;
}

- (void)setupCollectionView:(id)a3
{
  v5.receiver = self;
  v5.super_class = GKDashboardMultiplayerPickerSearchDataSource;
  v3 = a3;
  [(GKCollectionDataSource *)&v5 setupCollectionView:v3];
  v4 = [GKDashboardPlayerPickerCell _gkNib:v5.receiver];
  [v3 registerNib:v4 forCellWithReuseIdentifier:@"playerCell"];
}

- (NSArray)selectedPlayers
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(GKDashboardMultiplayerPickerSearchDataSource *)self allPlayers];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
        v10 = [v8 referenceKey];
        v11 = [v9 objectForKeyedSubscript:v10];
        v12 = [v11 integerValue];

        if (v12 == 1)
        {
          [v15 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v15 allObjects];

  return v13;
}

- (void)searchTextHasChanged
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(GKDashboardMultiplayerPickerSearchDataSource *)self isSearching])
  {
    v3 = [MEMORY[0x277CBEB40] orderedSet];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(GKDashboardMultiplayerPickerSearchDataSource *)self allPlayers];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([(GKCollectionDataSource *)self searchMatchesItem:v9 inSection:0])
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v10 = [v3 sortedArrayUsingComparator:&__block_literal_global_10];
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
  v2 = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchPlayers];
  v3 = [v2 count];

  return v3;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"playerCell" forIndexPath:v6];
  v8 = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchPlayers];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  [v7 setPlayer:v10];
  v11 = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
  v12 = [v10 referenceKey];
  v13 = [v11 objectForKey:v12];
  v14 = [v13 integerValue];

  if ((v14 - 1) > 1)
  {
    v15 = [(GKDashboardMultiplayerPickerSearchDataSource *)self selectedPlayers];
    [v7 setSelectable:{objc_msgSend(v15, "count") < -[GKDashboardMultiplayerPickerSearchDataSource maxSelectable](self, "maxSelectable")}];
  }

  else
  {
    [v7 setSelectable:v14 == 1];
  }

  [v7 setSelected:v14 == 1];
  v16 = [v10 lastPlayedDate];
  [v7 setShowsPlayerSubtitle:v16 != 0];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [GKDashboardPlayerPickerCell defaultSize:a3];
  v6 = 0.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchPlayers];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
  v10 = [v8 referenceKey];
  v11 = [v9 objectForKey:v10];
  v12 = [v11 integerValue];

  return v12 != 2;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchPlayers];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  if (v9)
  {
    v10 = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
    v11 = [v9 referenceKey];
    v12 = [v10 objectForKey:v11];
    v13 = [v12 integerValue];

    if (v13 == 1)
    {
      v19 = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
      v20 = [v9 referenceKey];
      [v19 setObject:&unk_286188E20 forKeyedSubscript:v20];
    }

    else if (!v13)
    {
      v14 = [(GKDashboardMultiplayerPickerSearchDataSource *)self playerStates];
      v15 = [v9 referenceKey];
      [v14 setObject:&unk_286188E08 forKeyedSubscript:v15];

      if ([(GKDashboardMultiplayerPickerSearchDataSource *)self maxSelectable]>= 1)
      {
        v16 = [(GKDashboardMultiplayerPickerSearchDataSource *)self selectedPlayers];
        v17 = [v16 count];
        v18 = [(GKDashboardMultiplayerPickerSearchDataSource *)self maxSelectable];

        if (v17 > v18)
        {
          [v6 deselectItemAtIndexPath:v7 animated:1];
        }
      }
    }

    v22[0] = v7;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v6 reloadItemsAtIndexPaths:v21];
  }

  else
  {
    [v6 deselectItemAtIndexPath:v7 animated:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchBar];
  v5 = [v4 isFirstResponder];

  if (v5)
  {
    v6 = [(GKDashboardMultiplayerPickerSearchDataSource *)self searchBar];
    [v6 resignFirstResponder];
  }
}

- (UISearchBar)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

@end