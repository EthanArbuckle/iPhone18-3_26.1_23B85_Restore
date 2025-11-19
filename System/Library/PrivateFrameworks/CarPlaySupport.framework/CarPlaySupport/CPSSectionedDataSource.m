@interface CPSSectionedDataSource
- (BOOL)showingAssistantInLastPosition;
- (CPSSectionedDataSource)initWithSections:(id)a3 templateEnvironment:(id)a4;
- (id)_sanitizedSectionIndexTitleForTitle:(id)a3;
- (id)firstItemIndexPath;
- (id)indexPathForItemWithIdentifier:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionAtIndex:(int64_t)a3;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)sectionWithIdentifier:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_filteredNumberOfItemsGivenSection:(int64_t)a3 numberOfItems:(int64_t)a4;
- (int64_t)numberOfEnhancedSections;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)_updateLimitingLists;
- (void)reloadItems:(id)a3;
- (void)sessionConfiguration:(id)a3 limitedUserInterfacesChanged:(unint64_t)a4;
- (void)setAssistantCellPosition:(int64_t)a3;
- (void)setAssistantCellTitle:(id)a3;
- (void)setAssistantCellVisibility:(int64_t)a3;
- (void)updateIndexPathForAssistantItem;
- (void)updateSections:(id)a3;
@end

@implementation CPSSectionedDataSource

- (int64_t)numberOfSections
{
  v5 = [(CPSSectionedDataSource *)self sections];
  v6 = [(NSMutableArray *)v5 count];
  MEMORY[0x277D82BD8](v5);
  v13 = v6;
  self->_limitingWithSections = 0;
  if (self->_assistantCellIndexPath)
  {
    v13 = v6 + 1;
  }

  if (![(CPSSectionedDataSource *)self isLimitingLists])
  {
    return v13;
  }

  if (v13 <= 1)
  {
    return v13;
  }

  self->_limitingWithSections = 1;
  self->_maxVisibleSection = 0;
  v12 = 0;
  for (i = 0; ; ++i)
  {
    if (i >= v13)
    {
      self->_maxVisibleSection = 0x7FFFFFFFFFFFFFFFLL;
      return v13;
    }

    v9 = 0;
    v7 = 0;
    if (self->_assistantCellIndexPath && [(NSIndexPath *)self->_assistantCellIndexPath section]== i)
    {
      v4 = 1;
    }

    else
    {
      v10 = [(CPSSectionedDataSource *)self sectionAtIndex:i];
      v9 = 1;
      v8 = [v10 items];
      v7 = 1;
      v4 = [v8 count];
    }

    if (v7)
    {
      MEMORY[0x277D82BD8](v8);
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v12 + v4 == 12)
    {
      self->_maxVisibleSection = i;
      if ([(CPSSectionedDataSource *)self showingAssistantInLastPosition])
      {
        v3 = 11 - v12;
      }

      else
      {
        v3 = v4;
      }

      self->_numberOfVisibleItemsInLastSection = v3;
      if ([(CPSSectionedDataSource *)self showingAssistantInLastPosition])
      {
        return i + 2;
      }

      else
      {
        return i + 1;
      }
    }

    if ((v12 + v4) > 0xC)
    {
      break;
    }

    v12 += v4;
  }

  self->_maxVisibleSection = i;
  self->_numberOfVisibleItemsInLastSection = 12 - v12;
  if ([(CPSSectionedDataSource *)self showingAssistantInLastPosition])
  {
    --self->_numberOfVisibleItemsInLastSection;
  }

  if ([(CPSSectionedDataSource *)self showingAssistantInLastPosition])
  {
    return i + 2;
  }

  else
  {
    return i + 1;
  }
}

- (CPSSectionedDataSource)initWithSections:(id)a3 templateEnvironment:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v4 = v17;
  v17 = 0;
  v14.receiver = v4;
  v14.super_class = CPSSectionedDataSource;
  v13 = [(CPSDataSource *)&v14 init];
  v17 = v13;
  objc_storeStrong(&v17, v13);
  if (v13)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:location[0]];
    sections = v17->_sections;
    v17->_sections = v5;
    MEMORY[0x277D82BD8](sections);
    v7 = objc_alloc(MEMORY[0x277CBB170]);
    v8 = [v7 initWithDelegate:v17 templateEnvironment:v15];
    sessionConfiguration = v17->_sessionConfiguration;
    v17->_sessionConfiguration = v8;
    MEMORY[0x277D82BD8](sessionConfiguration);
    objc_storeStrong(&v17->_templateEnvironment, v15);
    [(CPSSectionedDataSource *)v17 _updateLimitingLists];
  }

  v11 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v11;
}

- (id)sectionAtIndex:(int64_t)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  if (self->_assistantCellIndexPath && ![(NSIndexPath *)v16->_assistantCellIndexPath section])
  {
    --v14;
  }

  v12 = 0;
  v8 = 1;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v13 = [(CPSSectionedDataSource *)v16 sections];
    v12 = 1;
    v8 = v14 > [(NSMutableArray *)v13 count];
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v8)
  {
    location = CarPlaySupportGeneralLogging();
    v10 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_242FE8000, log, type, "Section index out of bounds", v9, 2u);
    }

    objc_storeStrong(&location, 0);
    v17 = 0;
  }

  else
  {
    v5 = [(CPSSectionedDataSource *)v16 sections];
    v17 = [(NSMutableArray *)v5 objectAtIndexedSubscript:v14];
    MEMORY[0x277D82BD8](v5);
  }

  v3 = v17;

  return v3;
}

- (id)sectionWithIdentifier:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  for (i = 0; ; ++i)
  {
    v10 = i;
    if (v10 >= [(CPSSectionedDataSource *)v15 numberOfSections])
    {
      break;
    }

    v6 = objc_opt_class();
    v7 = [(NSMutableArray *)v15->_sections objectAtIndexedSubscript:i];
    v12 = CPSSafeCast_20(v6, v7);
    *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    v8 = [v12 identifier];
    v9 = [v8 isEqual:location[0]];
    MEMORY[0x277D82BD8](v8);
    if (v9)
    {
      v16 = MEMORY[0x277D82BE0](v12);
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v12, 0);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_9:
  objc_storeStrong(location, 0);
  v4 = v16;

  return v4;
}

- (BOOL)showingAssistantInLastPosition
{
  v3 = 0;
  if (self->_assistantCellIndexPath)
  {
    return [(NSIndexPath *)self->_assistantCellIndexPath section]!= 0;
  }

  return v3;
}

- (int64_t)numberOfEnhancedSections
{
  v11 = self;
  v10 = a2;
  v9 = 0;
  for (i = 0; ; ++i)
  {
    v6 = i;
    if (v6 >= [(CPSSectionedDataSource *)v11 numberOfSections])
    {
      break;
    }

    v4 = objc_opt_class();
    v5 = [(NSMutableArray *)v11->_sections objectAtIndexedSubscript:i];
    location = CPSSafeCast_20(v4, v5);
    *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if ([location sectionHeaderStyle] == 2)
    {
      ++v9;
    }

    objc_storeStrong(&location, 0);
  }

  return v9;
}

- (int64_t)_filteredNumberOfItemsGivenSection:(int64_t)a3 numberOfItems:(int64_t)a4
{
  if (self->_assistantCellIndexPath && [(NSIndexPath *)self->_assistantCellIndexPath section]== a3)
  {
    return 1;
  }

  if (self->_limitingWithSections)
  {
    if (a3 >= self->_maxVisibleSection)
    {
      if (a3 == self->_maxVisibleSection)
      {
        return self->_numberOfVisibleItemsInLastSection;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return a4;
    }
  }

  else
  {
    if ([(CPSSectionedDataSource *)self isLimitingLists])
    {
      v6 = 12;
    }

    else
    {
      v6 = a4;
    }

    if (a4 >= v6)
    {
      return v6;
    }

    else
    {
      return a4;
    }
  }
}

- (int64_t)numberOfItems
{
  v5 = [(CPSSectionedDataSource *)self numberOfSections];
  v4 = 0;
  for (i = 0; i < v5; ++i)
  {
    v4 += [(CPSSectionedDataSource *)self numberOfItemsInSection:i];
  }

  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  if (self->_assistantCellIndexPath && [(NSIndexPath *)v10->_assistantCellIndexPath section]== v8)
  {
    return 1;
  }

  if (v8 >= [(CPSSectionedDataSource *)v10 numberOfSections])
  {
    return 0;
  }

  v7 = [(CPSSectionedDataSource *)v10 sectionAtIndex:v8];
  v5 = [v7 items];
  v6 = [v5 count];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v11 = [(CPSSectionedDataSource *)v10 _filteredNumberOfItemsGivenSection:v8 numberOfItems:v6, v3];
  objc_storeStrong(&v7, 0);
  return v11;
}

- (id)firstItemIndexPath
{
  for (i = 0; i < [(CPSSectionedDataSource *)self numberOfSections]; ++i)
  {
    if ([(CPSSectionedDataSource *)self numberOfItemsInSection:i]> 0)
    {
      v5 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:i];
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)itemAtIndexPath:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v10->_assistantCellIndexPath && ([(NSIndexPath *)v10->_assistantCellIndexPath isEqual:location[0]]& 1) != 0)
  {
    v11 = 0;
    v8 = 1;
  }

  else
  {
    v6 = [location[0] section];
    if (v6 >= -[CPSSectionedDataSource numberOfSections](v10, "numberOfSections") || (v5 = [location[0] row], v5 >= -[CPSSectionedDataSource numberOfItemsInSection:](v10, "numberOfItemsInSection:", objc_msgSend(location[0], "section"))))
    {
      v11 = 0;
      v8 = 1;
    }

    else
    {
      v7 = -[CPSSectionedDataSource sectionAtIndex:](v10, "sectionAtIndex:", [location[0] section]);
      v11 = [v7 itemAtIndex:{objc_msgSend(location[0], "row")}];
      v8 = 1;
      objc_storeStrong(&v7, 0);
    }
  }

  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
}

- (id)indexPathForItemWithIdentifier:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  for (i = 0; ; ++i)
  {
    v11 = i;
    if (v11 >= [(CPSSectionedDataSource *)v17 numberOfSections])
    {
      break;
    }

    if (v17->_assistantCellIndexPath)
    {
      v3 = [(NSIndexPath *)v17->_assistantCellIndexPath section];
      if (v3 == i)
      {
        continue;
      }
    }

    v14 = [(CPSSectionedDataSource *)v17 sectionAtIndex:i];
    for (j = 0; j < [(CPSSectionedDataSource *)v17 numberOfItemsInSection:i]; ++j)
    {
      v9 = [v14 items];
      v8 = [v9 objectAtIndexedSubscript:j];
      v7 = CPListItemIdentifier_0(v8);
      v10 = [v7 isEqual:location[0]];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      if (v10)
      {
        v18 = [MEMORY[0x277CCAA70] indexPathForRow:j inSection:{i, v4}];
        v12 = 1;
        goto LABEL_11;
      }
    }

    v12 = 0;
LABEL_11:
    objc_storeStrong(&v14, 0);
    if (v12)
    {
      goto LABEL_14;
    }
  }

  v18 = 0;
LABEL_14:
  objc_storeStrong(location, 0);
  v5 = v18;

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  if ([v13 isEqual:v15->_assistantCellIndexPath])
  {
    v7 = MEMORY[0x277CF90B8];
    v8 = [(CPSDataSource *)v15 tableView];
    v12 = [v7 cellForTableView:?];
    *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    [v12 configureWithText:{v15->_assistantCellTitle, v4}];
    v16 = MEMORY[0x277D82BE0](v12);
    v11 = 1;
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v10.receiver = v15;
    v10.super_class = CPSSectionedDataSource;
    v16 = [(CPSDataSource *)&v10 tableView:location[0] cellForRowAtIndexPath:v13];
    v11 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  v5 = v16;

  return v5;
}

- (id)_sanitizedSectionIndexTitleForTitle:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] length])
  {
    v3 = [location[0] rangeOfComposedCharacterSequenceAtIndex:0];
    v8 = [location[0] substringWithRange:{v3, v4}];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  v5 = v8;

  return v5;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [MEMORY[0x277CBEB18] array];
  v12 = [(CPSSectionedDataSource *)v15 numberOfSections];
  for (i = 0; i < v12; ++i)
  {
    if (v15->_assistantCellIndexPath)
    {
      v3 = [(NSIndexPath *)v15->_assistantCellIndexPath section];
      if (v3 == i)
      {
        continue;
      }
    }

    v10 = [(CPSSectionedDataSource *)v15 sectionAtIndex:i];
    v7 = v15;
    v8 = [v10 sectionIndexTitle];
    v9 = [(CPSSectionedDataSource *)v7 _sanitizedSectionIndexTitleForTitle:?];
    *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    if (v9)
    {
      [v13 addObject:{v9, v4}];
    }

    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  v6 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = a5;
  v19 = [(CPSSectionedDataSource *)v23 numberOfSections];
  v10 = [(CPSSectionedDataSource *)v23 sections];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __72__CPSSectionedDataSource_tableView_sectionForSectionIndexTitle_atIndex___block_invoke;
  v16 = &unk_278D93CC8;
  v17[1] = v19;
  v17[0] = MEMORY[0x277D82BE0](v21);
  v11 = [(NSMutableArray *)v10 indexOfObjectPassingTest:&v12];
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v18 = v11;
  if (v23->_assistantCellIndexPath && ![(NSIndexPath *)v23->_assistantCellIndexPath section])
  {
    ++v18;
  }

  v7 = v18;
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  return v7;
}

uint64_t __72__CPSSectionedDataSource_tableView_sectionForSectionIndexTitle_atIndex___block_invoke(void *a1, void *a2, unint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  v6 = 0;
  if (a3 < a1[5])
  {
    v8 = [location[0] sectionIndexTitle];
    v7 = 1;
    v6 = [v8 isEqualToString:a1[4]];
  }

  v10 = v6 & 1;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (void)updateSections:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:location[0]];
  sections = v7->_sections;
  v7->_sections = v3;
  *&v5 = MEMORY[0x277D82BD8](sections).n128_u64[0];
  [(CPSDataSource *)v7 reloadData];
  objc_storeStrong(location, 0);
}

- (void)reloadItems:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [MEMORY[0x277CBEB18] array];
  v4 = location[0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__CPSSectionedDataSource_reloadItems___block_invoke;
  v12[3] = &unk_278D93CF0;
  v13 = MEMORY[0x277D82BE0](v17);
  v14 = MEMORY[0x277D82BE0](v15);
  [v4 enumerateObjectsUsingBlock:v12];
  if ([v15 count])
  {
    v3 = MEMORY[0x277D75D18];
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __38__CPSSectionedDataSource_reloadItems___block_invoke_43;
    v9 = &unk_278D910D8;
    v10 = MEMORY[0x277D82BE0](v17);
    v11 = MEMORY[0x277D82BE0](v15);
    [v3 performWithoutAnimation:&v5];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __38__CPSSectionedDataSource_reloadItems___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[3] = a3;
  v12[2] = a4;
  v12[1] = a1;
  v12[0] = CPListItemIdentifier_0(location[0]);
  v11 = [a1[4] indexPathForItemWithIdentifier:v12[0]];
  if (v11)
  {
    v10 = [a1[4] sectionAtIndex:{objc_msgSend(v11, "section")}];
    v5 = v10;
    v4 = [v11 row];
    [v5 replaceItemAtIndex:v4 withItem:location[0]];
    [a1[5] addObject:v11];
    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v14, location[0]);
      _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Unable to match an index path for %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
}

double __38__CPSSectionedDataSource_reloadItems___block_invoke_43(uint64_t a1)
{
  v3 = [*(a1 + 32) tableView];
  [v3 reconfigureRowsAtIndexPaths:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_updateLimitingLists
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  v9 = a2;
  v5 = [(CPSSectionedDataSource *)self sessionConfiguration];
  v6 = ([(CPSessionConfiguration *)v5 limitedUserInterfaces]& 2) == 2;
  v8 = v6;
  if (v6 != [(CPSSectionedDataSource *)v10 isLimitingLists])
  {
    location = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v2 = MEMORY[0x277CCABB0];
      v4 = [(CPSSectionedDataSource *)v10 sessionConfiguration];
      v3 = [v2 numberWithUnsignedInteger:{-[CPSessionConfiguration limitedUserInterfaces](v4, "limitedUserInterfaces")}];
      __os_log_helper_16_2_1_8_66(v11, v3);
      _os_log_impl(&dword_242FE8000, location, OS_LOG_TYPE_DEFAULT, "Limited user interface changed to %{public}@", v11, 0xCu);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
    }

    objc_storeStrong(&location, 0);
    v10->_isLimitingLists = v8;
    [(CPSSectionedDataSource *)v10 updateIndexPathForAssistantItem];
    [(CPSDataSource *)v10 reloadData];
  }
}

- (void)sessionConfiguration:(id)a3 limitedUserInterfacesChanged:(unint64_t)a4
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSSectionedDataSource *)v5 _updateLimitingLists];
  objc_storeStrong(location, 0);
}

- (void)setAssistantCellPosition:(int64_t)a3
{
  if (self->_assistantCellPosition != a3)
  {
    self->_assistantCellPosition = a3;
    [(CPSSectionedDataSource *)self updateIndexPathForAssistantItem];
  }
}

- (void)setAssistantCellVisibility:(int64_t)a3
{
  if (self->_assistantCellVisibility != a3)
  {
    self->_assistantCellVisibility = a3;
    [(CPSSectionedDataSource *)self updateIndexPathForAssistantItem];
  }
}

- (void)setAssistantCellTitle:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(NSString *)v4->_assistantCellTitle isEqualToString:location[0]])
  {
    objc_storeStrong(&v4->_assistantCellTitle, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)updateIndexPathForAssistantItem
{
  v5 = self;
  location[1] = a2;
  location[0] = [(NSIndexPath *)self->_assistantCellIndexPath copy];
  if (([(CPSTemplateEnvironment *)v5->_templateEnvironment hasAudioEntitlement]|| [(CPSTemplateEnvironment *)v5->_templateEnvironment hasCommunicationEntitlement]|| [(CPSTemplateEnvironment *)v5->_templateEnvironment hasVideoEntitlement]) && (v5->_assistantCellVisibility == 2 || v5->_assistantCellVisibility == 1 && [(CPSSectionedDataSource *)v5 isLimitingLists]))
  {
    if (v5->_assistantCellPosition)
    {
      objc_storeStrong(&v5->_assistantCellIndexPath, 0);
      v2 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:{-[CPSSectionedDataSource numberOfSections](v5, "numberOfSections")}];
    }

    else
    {
      v2 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:?];
    }

    assistantCellIndexPath = v5->_assistantCellIndexPath;
    v5->_assistantCellIndexPath = v2;
    MEMORY[0x277D82BD8](assistantCellIndexPath);
  }

  else
  {
    objc_storeStrong(&v5->_assistantCellIndexPath, 0);
  }

  if (([(NSIndexPath *)v5->_assistantCellIndexPath isEqual:location[0]]& 1) == 0)
  {
    [(CPSDataSource *)v5 reloadData];
  }

  objc_storeStrong(location, 0);
}

@end