@interface CNFRegRegionChooserController
- (CNFRegRegionChooserController)initWithRegionList:(id)list selectedRegionID:(id)d;
- (CNFRegRegionChooserController)initWithStyle:(int64_t)style;
- (id)drillDownControllerList;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_drillDownControllersWithArray:(id)array;
- (void)_hideTableViewCells;
- (void)_selectRegionID:(id)d;
- (void)_selectRegionList:(id)list;
- (void)_showTableViewCells;
- (void)dealloc;
- (void)didPresentSearchController:(id)controller;
- (void)loadView;
- (void)regionChooser:(id)chooser selectedRegionID:(id)d;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)willPresentSearchController:(id)controller;
@end

@implementation CNFRegRegionChooserController

- (CNFRegRegionChooserController)initWithStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = CNFRegRegionChooserController;
  v3 = [(CNFRegRegionChooserController *)&v8 initWithStyle:style];
  if (v3)
  {
    v4 = CommunicationsSetupUIBundle();
    v5 = CNFRegStringTableName();
    v6 = [v4 localizedStringForKey:@"FACETIME_LOCALE_COUNTRY_SELECT_LABEL" value:&stru_2856D3978 table:v5];
    [(CNFRegRegionChooserController *)v3 setTitle:v6];
  }

  return v3;
}

- (CNFRegRegionChooserController)initWithRegionList:(id)list selectedRegionID:(id)d
{
  listCopy = list;
  dCopy = d;
  v8 = [(CNFRegRegionChooserController *)self initWithStyle:0];
  v9 = v8;
  if (v8)
  {
    [(CNFRegRegionChooserController *)v8 setRegionList:listCopy];
    [(CNFRegRegionChooserController *)v9 setSelectedRegionID:dCopy];
    if (listCopy)
    {
      if ([listCopy count])
      {
        v10 = [listCopy objectAtIndex:0];
        parentRegion = [v10 parentRegion];
        v12 = parentRegion;
        if (parentRegion)
        {
          label = [parentRegion label];
          [(CNFRegRegionChooserController *)v9 setTitle:label];
        }
      }
    }
  }

  return v9;
}

- (void)viewDidUnload
{
  v7.receiver = self;
  v7.super_class = CNFRegRegionChooserController;
  [(CNFRegRegionChooserController *)&v7 viewDidUnload];
  searchController = [(CNFRegRegionChooserController *)self searchController];
  [searchController setDelegate:0];

  searchController2 = [(CNFRegRegionChooserController *)self searchController];
  [searchController2 setSearchResultsUpdater:0];

  searchController3 = [(CNFRegRegionChooserController *)self searchController];
  searchBar = [searchController3 searchBar];
  [searchBar setDelegate:0];

  [(CNFRegRegionChooserController *)self setSearchController:0];
  [(CNFRegRegionChooserController *)self setFilteredRegionList:0];
}

- (void)dealloc
{
  self->_delegate = 0;
  [(UISearchController *)self->_searchController setDelegate:0];
  [(UISearchController *)self->_searchController setSearchResultsUpdater:0];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar setDelegate:0];

  v4.receiver = self;
  v4.super_class = CNFRegRegionChooserController;
  [(CNFRegRegionChooserController *)&v4 dealloc];
}

- (void)loadView
{
  v23.receiver = self;
  v23.super_class = CNFRegRegionChooserController;
  [(CNFRegRegionChooserController *)&v23 loadView];
  v3 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v3 styleUsesCustomTableStyle])
  {
    tableBackgroundColor = [v3 tableBackgroundColor];

    if (tableBackgroundColor)
    {
      tableBackgroundColor2 = [v3 tableBackgroundColor];
      tableView = [(CNFRegRegionChooserController *)self tableView];
      [tableView setBackgroundColor:tableBackgroundColor2];

      tableView2 = [(CNFRegRegionChooserController *)self tableView];
      [tableView2 setBackgroundView:0];
    }

    if ([v3 styleUsesCustomSeparatorStyle])
    {
      tableView3 = [(CNFRegRegionChooserController *)self tableView];
      [tableView3 _setDrawsTopShadowInGroupedSections:0];

      tableSeparatorStyle = [v3 tableSeparatorStyle];
      tableView4 = [(CNFRegRegionChooserController *)self tableView];
      [tableView4 setSeparatorStyle:tableSeparatorStyle];

      tableSeparatorColor = [v3 tableSeparatorColor];

      if (tableSeparatorColor)
      {
        tableSeparatorColor2 = [v3 tableSeparatorColor];
        tableView5 = [(CNFRegRegionChooserController *)self tableView];
        [tableView5 setSeparatorColor:tableSeparatorColor2];
      }

      tableSeparatorTopShadowColor = [v3 tableSeparatorTopShadowColor];

      if (tableSeparatorTopShadowColor)
      {
        tableSeparatorTopShadowColor2 = [v3 tableSeparatorTopShadowColor];
        tableView6 = [(CNFRegRegionChooserController *)self tableView];
        [tableView6 setSeparatorTopShadowColor:tableSeparatorTopShadowColor2];
      }

      tableSeparatorBottomShadowColor = [v3 tableSeparatorBottomShadowColor];

      if (tableSeparatorBottomShadowColor)
      {
        tableSeparatorBottomShadowColor2 = [v3 tableSeparatorBottomShadowColor];
        tableView7 = [(CNFRegRegionChooserController *)self tableView];
        [tableView7 setSeparatorBottomShadowColor:tableSeparatorBottomShadowColor2];
      }
    }

    tableSectionBorderColor = [v3 tableSectionBorderColor];

    if (tableSectionBorderColor)
    {
      tableSectionBorderColor2 = [v3 tableSectionBorderColor];
      tableView8 = [(CNFRegRegionChooserController *)self tableView];
      [tableView8 setSectionBorderColor:tableSectionBorderColor2];
    }
  }
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = CNFRegRegionChooserController;
  [(CNFRegRegionChooserController *)&v20 viewDidLoad];
  v3 = +[CNFRegAppearanceController globalAppearanceController];
  v4 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [(CNFRegRegionChooserController *)self setSearchController:v4];

  searchController = [(CNFRegRegionChooserController *)self searchController];
  [searchController setDimsBackgroundDuringPresentation:0];

  searchController2 = [(CNFRegRegionChooserController *)self searchController];
  [searchController2 setHidesNavigationBarDuringPresentation:0];

  searchController3 = [(CNFRegRegionChooserController *)self searchController];
  [searchController3 setSearchResultsUpdater:self];

  searchController4 = [(CNFRegRegionChooserController *)self searchController];
  searchBar = [searchController4 searchBar];
  [searchBar setAutocapitalizationType:0];

  navigationBarStyle = [v3 navigationBarStyle];
  searchController5 = [(CNFRegRegionChooserController *)self searchController];
  searchBar2 = [searchController5 searchBar];
  [searchBar2 setBarStyle:navigationBarStyle];

  searchController6 = [(CNFRegRegionChooserController *)self searchController];
  searchBar3 = [searchController6 searchBar];
  [searchBar3 setDelegate:self];

  searchController7 = [(CNFRegRegionChooserController *)self searchController];
  searchBar4 = [searchController7 searchBar];
  tableView = [(CNFRegRegionChooserController *)self tableView];
  [tableView setTableHeaderView:searchBar4];

  searchController8 = [(CNFRegRegionChooserController *)self searchController];
  searchBar5 = [searchController8 searchBar];
  [searchBar5 sizeToFit];

  [(CNFRegRegionChooserController *)self setDefinesPresentationContext:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(UISearchController *)self->_searchController isActive:view])
  {
    [(CNFRegRegionChooserController *)self filteredRegionList];
  }

  else
  {
    [(CNFRegRegionChooserController *)self regionList];
  }
  v5 = ;
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"RegionCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"RegionCell"];
  }

  if ([(UISearchController *)self->_searchController isActive])
  {
    [(CNFRegRegionChooserController *)self filteredRegionList];
  }

  else
  {
    [(CNFRegRegionChooserController *)self regionList];
  }
  v8 = ;
  v9 = [v8 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  label = [v9 label];
  if ([v9 isLeafNode])
  {
    regionID = [v9 regionID];
    selectedRegionID = [(CNFRegRegionChooserController *)self selectedRegionID];
    v13 = [regionID isEqualToString:selectedRegionID];

    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  textLabel = [v7 textLabel];
  [textLabel setText:label];

  [v7 setAccessoryType:v14];
  v16 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v16 styleUsesCustomTableStyle])
  {
    tableCellBackgroundColor = [v16 tableCellBackgroundColor];

    if (tableCellBackgroundColor)
    {
      tableCellBackgroundColor2 = [v16 tableCellBackgroundColor];
      [v7 setBackgroundColor:tableCellBackgroundColor2];
    }

    tableCellTextLabelColor = [v16 tableCellTextLabelColor];

    if (tableCellTextLabelColor)
    {
      tableCellTextLabelColor2 = [v16 tableCellTextLabelColor];
      textLabel2 = [v7 textLabel];
      [textLabel2 setTextColor:tableCellTextLabelColor2];
    }

    tableCellTextLabelBackgroundColor = [v16 tableCellTextLabelBackgroundColor];

    if (tableCellTextLabelBackgroundColor)
    {
      tableCellTextLabelBackgroundColor2 = [v16 tableCellTextLabelBackgroundColor];
      textLabel3 = [v7 textLabel];
      [textLabel3 setBackgroundColor:tableCellTextLabelBackgroundColor2];
    }

    tableCellDetailLabelColor = [v16 tableCellDetailLabelColor];

    if (tableCellDetailLabelColor)
    {
      tableCellDetailLabelColor2 = [v16 tableCellDetailLabelColor];
      detailTextLabel = [v7 detailTextLabel];
      [detailTextLabel setTextColor:tableCellDetailLabelColor2];
    }

    tableCellDetailLabelBackgroundColor = [v16 tableCellDetailLabelBackgroundColor];

    if (tableCellDetailLabelBackgroundColor)
    {
      tableCellDetailLabelBackgroundColor2 = [v16 tableCellDetailLabelBackgroundColor];
      detailTextLabel2 = [v7 detailTextLabel];
      [detailTextLabel2 setBackgroundColor:tableCellDetailLabelBackgroundColor2];
    }
  }

  return v7;
}

- (void)_drillDownControllersWithArray:(id)array
{
  v26 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  [arrayCopy addObject:self];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  regionList = [(CNFRegRegionChooserController *)self regionList];
  v6 = [regionList countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(regionList);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        selectedRegionID = [(CNFRegRegionChooserController *)self selectedRegionID];
        v12 = [v10 regionWithID:selectedRegionID];

        if (v12)
        {
          if (([v10 isLeafNode] & 1) == 0)
          {
            v13 = [CNFRegRegionChooserController alloc];
            subRegions = [v10 subRegions];
            selectedRegionID2 = [(CNFRegRegionChooserController *)self selectedRegionID];
            v16 = [(CNFRegRegionChooserController *)v13 initWithRegionList:subRegions selectedRegionID:selectedRegionID2];

            [(CNFRegRegionChooserController *)v16 setDelegate:self];
            parentController = [(CNFRegRegionChooserController *)self parentController];
            [(CNFRegRegionChooserController *)v16 setParentController:parentController];

            rootController = [(CNFRegRegionChooserController *)self rootController];
            [(CNFRegRegionChooserController *)v16 setRootController:rootController];

            specifier = [(CNFRegRegionChooserController *)self specifier];
            [(CNFRegRegionChooserController *)v16 setSpecifier:specifier];

            [(CNFRegRegionChooserController *)v16 _drillDownControllersWithArray:arrayCopy];
          }

          goto LABEL_12;
        }
      }

      v7 = [regionList countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
}

- (id)drillDownControllerList
{
  array = [MEMORY[0x277CBEB18] array];
  [(CNFRegRegionChooserController *)self _drillDownControllersWithArray:array];
  v4 = [array copy];

  return v4;
}

- (void)_selectRegionList:(id)list
{
  listCopy = list;
  if (listCopy)
  {
    v11 = listCopy;
    if ([listCopy count])
    {
      v5 = [CNFRegRegionChooserController alloc];
      selectedRegionID = [(CNFRegRegionChooserController *)self selectedRegionID];
      v7 = [(CNFRegRegionChooserController *)v5 initWithRegionList:v11 selectedRegionID:selectedRegionID];

      [(CNFRegRegionChooserController *)v7 setDelegate:self];
      parentController = [(CNFRegRegionChooserController *)self parentController];
      [(CNFRegRegionChooserController *)v7 setParentController:parentController];

      rootController = [(CNFRegRegionChooserController *)self rootController];
      [(CNFRegRegionChooserController *)v7 setRootController:rootController];

      specifier = [(CNFRegRegionChooserController *)self specifier];
      [(CNFRegRegionChooserController *)v7 setSpecifier:specifier];

      [(CNFRegRegionChooserController *)self showController:v7];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_selectRegionID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v10 = dCopy;
    if ([dCopy length])
    {
      [(CNFRegRegionChooserController *)self setSelectedRegionID:v10];
      delegate = [(CNFRegRegionChooserController *)self delegate];
      if (delegate)
      {
        v6 = delegate;
        delegate2 = [(CNFRegRegionChooserController *)self delegate];
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          delegate3 = [(CNFRegRegionChooserController *)self delegate];
          [delegate3 regionChooser:self selectedRegionID:v10];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  searchController = self->_searchController;
  pathCopy = path;
  if ([(UISearchController *)searchController isActive])
  {
    [(CNFRegRegionChooserController *)self filteredRegionList];
  }

  else
  {
    [(CNFRegRegionChooserController *)self regionList];
  }
  v7 = ;
  v8 = [pathCopy row];

  v10 = [v7 objectAtIndex:v8];

  if ([v10 isLeafNode])
  {
    regionID = [v10 regionID];
    [(CNFRegRegionChooserController *)self _selectRegionID:regionID];
  }

  else
  {
    regionID = [v10 subRegions];
    [(CNFRegRegionChooserController *)self _selectRegionList:regionID];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  searchBar = [controllerCopy searchBar];
  text = [searchBar text];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  regionList = [(CNFRegRegionChooserController *)self regionList];
  v9 = [regionList countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(regionList);
        }

        [*(*(&v17 + 1) + 8 * v11++) search:text withResults:v7];
      }

      while (v9 != v11);
      v9 = [regionList countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  [v7 sortUsingComparator:&__block_literal_global_13];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v22 = text;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEBUG, "Search results for {%@} : %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v15 = text;
    v16 = v7;
    IMLogString();
  }

  [(CNFRegRegionChooserController *)self setFilteredRegionList:v7, v15, v16];
  tableView = [(CNFRegRegionChooserController *)self tableView];
  [tableView reloadData];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __72__CNFRegRegionChooserController_updateSearchResultsForSearchController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = [v4 label];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)_hideTableViewCells
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tableView = [(CNFRegRegionChooserController *)self tableView];
  visibleCells = [tableView visibleCells];

  v4 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v9 + 1) + 8 * v7++) setAlpha:0.0];
      }

      while (v5 != v7);
      v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_showTableViewCells
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tableView = [(CNFRegRegionChooserController *)self tableView];
  visibleCells = [tableView visibleCells];

  v4 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v9 + 1) + 8 * v7++) setAlpha:1.0];
      }

      while (v5 != v7);
      v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)willPresentSearchController:(id)controller
{
  v23 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v23 styleUsesCustomTableStyle])
  {
    tableBackgroundColor = [v23 tableBackgroundColor];

    if (tableBackgroundColor)
    {
      tableBackgroundColor2 = [v23 tableBackgroundColor];
      tableView = [(CNFRegRegionChooserController *)self tableView];
      [tableView setBackgroundColor:tableBackgroundColor2];

      tableView2 = [(CNFRegRegionChooserController *)self tableView];
      [tableView2 setBackgroundView:0];
    }

    if ([v23 styleUsesCustomSearchResultsStyle])
    {
      tableView3 = [(CNFRegRegionChooserController *)self tableView];
      [tableView3 _setDrawsTopShadowInGroupedSections:0];

      searchResultsTableSeparatorStyle = [v23 searchResultsTableSeparatorStyle];
      tableView4 = [(CNFRegRegionChooserController *)self tableView];
      [tableView4 setSeparatorStyle:searchResultsTableSeparatorStyle];

      searchResultsTableSeparatorColor = [v23 searchResultsTableSeparatorColor];

      if (searchResultsTableSeparatorColor)
      {
        searchResultsTableSeparatorColor2 = [v23 searchResultsTableSeparatorColor];
        tableView5 = [(CNFRegRegionChooserController *)self tableView];
        [tableView5 setSeparatorColor:searchResultsTableSeparatorColor2];
      }

      searchResultsTableSeparatorTopShadowColor = [v23 searchResultsTableSeparatorTopShadowColor];

      if (searchResultsTableSeparatorTopShadowColor)
      {
        searchResultsTableSeparatorTopShadowColor2 = [v23 searchResultsTableSeparatorTopShadowColor];
        tableView6 = [(CNFRegRegionChooserController *)self tableView];
        [tableView6 setSeparatorTopShadowColor:searchResultsTableSeparatorTopShadowColor2];
      }

      searchResultsTableSeparatorBottomShadowColor = [v23 searchResultsTableSeparatorBottomShadowColor];

      if (searchResultsTableSeparatorBottomShadowColor)
      {
        searchResultsTableSeparatorBottomShadowColor2 = [v23 searchResultsTableSeparatorBottomShadowColor];
        tableView7 = [(CNFRegRegionChooserController *)self tableView];
        [tableView7 setSeparatorBottomShadowColor:searchResultsTableSeparatorBottomShadowColor2];
      }
    }

    tableSectionBorderColor = [v23 tableSectionBorderColor];

    if (tableSectionBorderColor)
    {
      tableSectionBorderColor2 = [v23 tableSectionBorderColor];
      tableView8 = [(CNFRegRegionChooserController *)self tableView];
      [tableView8 setSectionBorderColor:tableSectionBorderColor2];
    }

    [(CNFRegRegionChooserController *)self _hideTableViewCells];
  }
}

- (void)didPresentSearchController:(id)controller
{
  v4 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v4 styleUsesCustomTableStyle])
  {
    [(CNFRegRegionChooserController *)self _showTableViewCells];
  }
}

- (void)regionChooser:(id)chooser selectedRegionID:(id)d
{
  chooserCopy = chooser;
  dCopy = d;
  v7 = dCopy;
  if (dCopy && [dCopy length])
  {
    [(CNFRegRegionChooserController *)self _selectRegionID:v7];
  }
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_specifier != specifierCopy)
  {
    v6 = specifierCopy;
    objc_storeStrong(&self->_specifier, specifier);
    specifierCopy = v6;
  }
}

@end