@interface CPSSectionedDataSource
- (BOOL)showingAssistantInLastPosition;
- (CPSSectionedDataSource)initWithSections:(id)sections templateEnvironment:(id)environment;
- (id)_sanitizedSectionIndexTitleForTitle:(id)title;
- (id)firstItemIndexPath;
- (id)indexPathForItemWithIdentifier:(id)identifier;
- (id)itemAtIndexPath:(id)path;
- (id)sectionAtIndex:(int64_t)index;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)sectionWithIdentifier:(id)identifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_filteredNumberOfItemsGivenSection:(int64_t)section numberOfItems:(int64_t)items;
- (int64_t)numberOfEnhancedSections;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)_updateLimitingLists;
- (void)reloadItems:(id)items;
- (void)sessionConfiguration:(id)configuration limitedUserInterfacesChanged:(unint64_t)changed;
- (void)setAssistantCellPosition:(int64_t)position;
- (void)setAssistantCellTitle:(id)title;
- (void)setAssistantCellVisibility:(int64_t)visibility;
- (void)updateIndexPathForAssistantItem;
- (void)updateSections:(id)sections;
@end

@implementation CPSSectionedDataSource

- (int64_t)numberOfSections
{
  sections = [(CPSSectionedDataSource *)self sections];
  v6 = [(NSMutableArray *)sections count];
  MEMORY[0x277D82BD8](sections);
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
      items = [v10 items];
      v7 = 1;
      v4 = [items count];
    }

    if (v7)
    {
      MEMORY[0x277D82BD8](items);
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

- (CPSSectionedDataSource)initWithSections:(id)sections templateEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, sections);
  v15 = 0;
  objc_storeStrong(&v15, environment);
  v4 = selfCopy;
  selfCopy = 0;
  v14.receiver = v4;
  v14.super_class = CPSSectionedDataSource;
  v13 = [(CPSDataSource *)&v14 init];
  selfCopy = v13;
  objc_storeStrong(&selfCopy, v13);
  if (v13)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:location[0]];
    sections = selfCopy->_sections;
    selfCopy->_sections = v5;
    MEMORY[0x277D82BD8](sections);
    v7 = objc_alloc(MEMORY[0x277CBB170]);
    v8 = [v7 initWithDelegate:selfCopy templateEnvironment:v15];
    sessionConfiguration = selfCopy->_sessionConfiguration;
    selfCopy->_sessionConfiguration = v8;
    MEMORY[0x277D82BD8](sessionConfiguration);
    objc_storeStrong(&selfCopy->_templateEnvironment, v15);
    [(CPSSectionedDataSource *)selfCopy _updateLimitingLists];
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (id)sectionAtIndex:(int64_t)index
{
  selfCopy = self;
  v15 = a2;
  indexCopy = index;
  if (self->_assistantCellIndexPath && ![(NSIndexPath *)selfCopy->_assistantCellIndexPath section])
  {
    --indexCopy;
  }

  v12 = 0;
  v8 = 1;
  if ((indexCopy & 0x8000000000000000) == 0)
  {
    sections = [(CPSSectionedDataSource *)selfCopy sections];
    v12 = 1;
    v8 = indexCopy > [(NSMutableArray *)sections count];
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](sections);
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
    sections2 = [(CPSSectionedDataSource *)selfCopy sections];
    v17 = [(NSMutableArray *)sections2 objectAtIndexedSubscript:indexCopy];
    MEMORY[0x277D82BD8](sections2);
  }

  v3 = v17;

  return v3;
}

- (id)sectionWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  for (i = 0; ; ++i)
  {
    v10 = i;
    if (v10 >= [(CPSSectionedDataSource *)selfCopy numberOfSections])
    {
      break;
    }

    v6 = objc_opt_class();
    v7 = [(NSMutableArray *)selfCopy->_sections objectAtIndexedSubscript:i];
    v12 = CPSSafeCast_20(v6, v7);
    *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    identifier = [v12 identifier];
    v9 = [identifier isEqual:location[0]];
    MEMORY[0x277D82BD8](identifier);
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
  selfCopy = self;
  v10 = a2;
  v9 = 0;
  for (i = 0; ; ++i)
  {
    v6 = i;
    if (v6 >= [(CPSSectionedDataSource *)selfCopy numberOfSections])
    {
      break;
    }

    v4 = objc_opt_class();
    v5 = [(NSMutableArray *)selfCopy->_sections objectAtIndexedSubscript:i];
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

- (int64_t)_filteredNumberOfItemsGivenSection:(int64_t)section numberOfItems:(int64_t)items
{
  if (self->_assistantCellIndexPath && [(NSIndexPath *)self->_assistantCellIndexPath section]== section)
  {
    return 1;
  }

  if (self->_limitingWithSections)
  {
    if (section >= self->_maxVisibleSection)
    {
      if (section == self->_maxVisibleSection)
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
      return items;
    }
  }

  else
  {
    if ([(CPSSectionedDataSource *)self isLimitingLists])
    {
      itemsCopy = 12;
    }

    else
    {
      itemsCopy = items;
    }

    if (items >= itemsCopy)
    {
      return itemsCopy;
    }

    else
    {
      return items;
    }
  }
}

- (int64_t)numberOfItems
{
  numberOfSections = [(CPSSectionedDataSource *)self numberOfSections];
  v4 = 0;
  for (i = 0; i < numberOfSections; ++i)
  {
    v4 += [(CPSSectionedDataSource *)self numberOfItemsInSection:i];
  }

  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  selfCopy = self;
  v9 = a2;
  sectionCopy = section;
  if (self->_assistantCellIndexPath && [(NSIndexPath *)selfCopy->_assistantCellIndexPath section]== sectionCopy)
  {
    return 1;
  }

  if (sectionCopy >= [(CPSSectionedDataSource *)selfCopy numberOfSections])
  {
    return 0;
  }

  v7 = [(CPSSectionedDataSource *)selfCopy sectionAtIndex:sectionCopy];
  items = [v7 items];
  v6 = [items count];
  *&v3 = MEMORY[0x277D82BD8](items).n128_u64[0];
  v11 = [(CPSSectionedDataSource *)selfCopy _filteredNumberOfItemsGivenSection:sectionCopy numberOfItems:v6, v3];
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

- (id)itemAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  if (selfCopy->_assistantCellIndexPath && ([(NSIndexPath *)selfCopy->_assistantCellIndexPath isEqual:location[0]]& 1) != 0)
  {
    v11 = 0;
    v8 = 1;
  }

  else
  {
    section = [location[0] section];
    if (section >= -[CPSSectionedDataSource numberOfSections](selfCopy, "numberOfSections") || (v5 = [location[0] row], v5 >= -[CPSSectionedDataSource numberOfItemsInSection:](selfCopy, "numberOfItemsInSection:", objc_msgSend(location[0], "section"))))
    {
      v11 = 0;
      v8 = 1;
    }

    else
    {
      v7 = -[CPSSectionedDataSource sectionAtIndex:](selfCopy, "sectionAtIndex:", [location[0] section]);
      v11 = [v7 itemAtIndex:{objc_msgSend(location[0], "row")}];
      v8 = 1;
      objc_storeStrong(&v7, 0);
    }
  }

  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
}

- (id)indexPathForItemWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  for (i = 0; ; ++i)
  {
    v11 = i;
    if (v11 >= [(CPSSectionedDataSource *)selfCopy numberOfSections])
    {
      break;
    }

    if (selfCopy->_assistantCellIndexPath)
    {
      section = [(NSIndexPath *)selfCopy->_assistantCellIndexPath section];
      if (section == i)
      {
        continue;
      }
    }

    v14 = [(CPSSectionedDataSource *)selfCopy sectionAtIndex:i];
    for (j = 0; j < [(CPSSectionedDataSource *)selfCopy numberOfItemsInSection:i]; ++j)
    {
      items = [v14 items];
      v8 = [items objectAtIndexedSubscript:j];
      v7 = CPListItemIdentifier_0(v8);
      v10 = [v7 isEqual:location[0]];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      *&v4 = MEMORY[0x277D82BD8](items).n128_u64[0];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v13 = 0;
  objc_storeStrong(&v13, path);
  if ([v13 isEqual:selfCopy->_assistantCellIndexPath])
  {
    v7 = MEMORY[0x277CF90B8];
    tableView = [(CPSDataSource *)selfCopy tableView];
    v12 = [v7 cellForTableView:?];
    *&v4 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
    [v12 configureWithText:{selfCopy->_assistantCellTitle, v4}];
    v16 = MEMORY[0x277D82BE0](v12);
    v11 = 1;
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = CPSSectionedDataSource;
    v16 = [(CPSDataSource *)&v10 tableView:location[0] cellForRowAtIndexPath:v13];
    v11 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  v5 = v16;

  return v5;
}

- (id)_sanitizedSectionIndexTitleForTitle:(id)title
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
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

- (id)sectionIndexTitlesForTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  array = [MEMORY[0x277CBEB18] array];
  numberOfSections = [(CPSSectionedDataSource *)selfCopy numberOfSections];
  for (i = 0; i < numberOfSections; ++i)
  {
    if (selfCopy->_assistantCellIndexPath)
    {
      section = [(NSIndexPath *)selfCopy->_assistantCellIndexPath section];
      if (section == i)
      {
        continue;
      }
    }

    v10 = [(CPSSectionedDataSource *)selfCopy sectionAtIndex:i];
    v7 = selfCopy;
    sectionIndexTitle = [v10 sectionIndexTitle];
    v9 = [(CPSSectionedDataSource *)v7 _sanitizedSectionIndexTitleForTitle:?];
    *&v4 = MEMORY[0x277D82BD8](sectionIndexTitle).n128_u64[0];
    if (v9)
    {
      [array addObject:{v9, v4}];
    }

    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  v6 = MEMORY[0x277D82BE0](array);
  objc_storeStrong(&array, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v21 = 0;
  objc_storeStrong(&v21, title);
  indexCopy = index;
  numberOfSections = [(CPSSectionedDataSource *)selfCopy numberOfSections];
  sections = [(CPSSectionedDataSource *)selfCopy sections];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __72__CPSSectionedDataSource_tableView_sectionForSectionIndexTitle_atIndex___block_invoke;
  v16 = &unk_278D93CC8;
  v17[1] = numberOfSections;
  v17[0] = MEMORY[0x277D82BE0](v21);
  v11 = [(NSMutableArray *)sections indexOfObjectPassingTest:&v12];
  *&v5 = MEMORY[0x277D82BD8](sections).n128_u64[0];
  v18 = v11;
  if (selfCopy->_assistantCellIndexPath && ![(NSIndexPath *)selfCopy->_assistantCellIndexPath section])
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

- (void)updateSections:(id)sections
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, sections);
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:location[0]];
  sections = selfCopy->_sections;
  selfCopy->_sections = v3;
  *&v5 = MEMORY[0x277D82BD8](sections).n128_u64[0];
  [(CPSDataSource *)selfCopy reloadData];
  objc_storeStrong(location, 0);
}

- (void)reloadItems:(id)items
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, items);
  array = [MEMORY[0x277CBEB18] array];
  v4 = location[0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__CPSSectionedDataSource_reloadItems___block_invoke;
  v12[3] = &unk_278D93CF0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](array);
  [v4 enumerateObjectsUsingBlock:v12];
  if ([array count])
  {
    v3 = MEMORY[0x277D75D18];
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __38__CPSSectionedDataSource_reloadItems___block_invoke_43;
    v9 = &unk_278D910D8;
    v10 = MEMORY[0x277D82BE0](selfCopy);
    v11 = MEMORY[0x277D82BE0](array);
    [v3 performWithoutAnimation:&v5];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&array, 0);
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
  selfCopy = self;
  v9 = a2;
  sessionConfiguration = [(CPSSectionedDataSource *)self sessionConfiguration];
  v6 = ([(CPSessionConfiguration *)sessionConfiguration limitedUserInterfaces]& 2) == 2;
  v8 = v6;
  if (v6 != [(CPSSectionedDataSource *)selfCopy isLimitingLists])
  {
    location = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v2 = MEMORY[0x277CCABB0];
      sessionConfiguration2 = [(CPSSectionedDataSource *)selfCopy sessionConfiguration];
      v3 = [v2 numberWithUnsignedInteger:{-[CPSessionConfiguration limitedUserInterfaces](sessionConfiguration2, "limitedUserInterfaces")}];
      __os_log_helper_16_2_1_8_66(v11, v3);
      _os_log_impl(&dword_242FE8000, location, OS_LOG_TYPE_DEFAULT, "Limited user interface changed to %{public}@", v11, 0xCu);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](sessionConfiguration2);
    }

    objc_storeStrong(&location, 0);
    selfCopy->_isLimitingLists = v8;
    [(CPSSectionedDataSource *)selfCopy updateIndexPathForAssistantItem];
    [(CPSDataSource *)selfCopy reloadData];
  }
}

- (void)sessionConfiguration:(id)configuration limitedUserInterfacesChanged:(unint64_t)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  [(CPSSectionedDataSource *)selfCopy _updateLimitingLists];
  objc_storeStrong(location, 0);
}

- (void)setAssistantCellPosition:(int64_t)position
{
  if (self->_assistantCellPosition != position)
  {
    self->_assistantCellPosition = position;
    [(CPSSectionedDataSource *)self updateIndexPathForAssistantItem];
  }
}

- (void)setAssistantCellVisibility:(int64_t)visibility
{
  if (self->_assistantCellVisibility != visibility)
  {
    self->_assistantCellVisibility = visibility;
    [(CPSSectionedDataSource *)self updateIndexPathForAssistantItem];
  }
}

- (void)setAssistantCellTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  if (![(NSString *)selfCopy->_assistantCellTitle isEqualToString:location[0]])
  {
    objc_storeStrong(&selfCopy->_assistantCellTitle, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)updateIndexPathForAssistantItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(NSIndexPath *)self->_assistantCellIndexPath copy];
  if (([(CPSTemplateEnvironment *)selfCopy->_templateEnvironment hasAudioEntitlement]|| [(CPSTemplateEnvironment *)selfCopy->_templateEnvironment hasCommunicationEntitlement]|| [(CPSTemplateEnvironment *)selfCopy->_templateEnvironment hasVideoEntitlement]) && (selfCopy->_assistantCellVisibility == 2 || selfCopy->_assistantCellVisibility == 1 && [(CPSSectionedDataSource *)selfCopy isLimitingLists]))
  {
    if (selfCopy->_assistantCellPosition)
    {
      objc_storeStrong(&selfCopy->_assistantCellIndexPath, 0);
      v2 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:{-[CPSSectionedDataSource numberOfSections](selfCopy, "numberOfSections")}];
    }

    else
    {
      v2 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:?];
    }

    assistantCellIndexPath = selfCopy->_assistantCellIndexPath;
    selfCopy->_assistantCellIndexPath = v2;
    MEMORY[0x277D82BD8](assistantCellIndexPath);
  }

  else
  {
    objc_storeStrong(&selfCopy->_assistantCellIndexPath, 0);
  }

  if (([(NSIndexPath *)selfCopy->_assistantCellIndexPath isEqual:location[0]]& 1) == 0)
  {
    [(CPSDataSource *)selfCopy reloadData];
  }

  objc_storeStrong(location, 0);
}

@end