@interface CPSDataSource
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (CPSDataSource)init;
- (UITableView)tableView;
- (id)indexPathForItemWithIdentifier:(id)identifier;
- (id)itemAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)deleteItemsAtIndexPaths:(id)paths;
- (void)deleteSectionsAtIndexes:(id)indexes;
- (void)insertItemsAtIndexPaths:(id)paths;
- (void)insertSectionsAtIndexes:(id)indexes;
- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)reloadData;
- (void)reloadItemsAtIndexPaths:(id)paths;
- (void)setTableView:(id)view;
@end

@implementation CPSDataSource

- (CPSDataSource)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = CPSDataSource;
  v4 = [(CPSDataSource *)&v5 init];
  v7 = v4;
  objc_storeStrong(&v7, v4);
  if (v4)
  {
    v7->_rowAnimation = 5;
  }

  v3 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

- (void)setTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeWeak(&selfCopy->_tableView, location[0]);
  if (location[0])
  {
    [location[0] setDataSource:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (id)itemAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, path);
  [(CPSDataSource *)selfCopy doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  return 0;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  numberOfSections = [(CPSDataSource *)selfCopy numberOfSections];
  objc_storeStrong(location, 0);
  return numberOfSections;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = [(CPSDataSource *)selfCopy numberOfItemsInSection:section];
  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v14 = 0;
  objc_storeStrong(&v14, path);
  v13 = [(CPSDataSource *)selfCopy itemAtIndexPath:v14];
  cellCreateBlock = [(CPSDataSource *)selfCopy cellCreateBlock];
  v12 = cellCreateBlock[2](cellCreateBlock, v13, v14, location[0]);
  *&v4 = MEMORY[0x277D82BD8](cellCreateBlock).n128_u64[0];
  cellConfigureBlock = [(CPSDataSource *)selfCopy cellConfigureBlock];
  *&v5 = MEMORY[0x277D82BD8](cellConfigureBlock).n128_u64[0];
  if (cellConfigureBlock)
  {
    cellConfigureBlock2 = [(CPSDataSource *)selfCopy cellConfigureBlock];
    cellConfigureBlock2[2](cellConfigureBlock2, v12, v13, v14);
    MEMORY[0x277D82BD8](cellConfigureBlock2);
  }

  v7 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)indexPathForItemWithIdentifier:(id)identifier
{
  selfCopy = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, identifier);
  [(CPSDataSource *)selfCopy doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  return 0;
}

- (void)insertItemsAtIndexPaths:(id)paths
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, paths);
  tableView = [(CPSDataSource *)selfCopy tableView];
  [(UITableView *)tableView insertRowsAtIndexPaths:location[0] withRowAnimation:[(CPSDataSource *)selfCopy rowAnimation]];
  MEMORY[0x277D82BD8](tableView);
  objc_storeStrong(location, 0);
}

- (void)deleteItemsAtIndexPaths:(id)paths
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, paths);
  tableView = [(CPSDataSource *)selfCopy tableView];
  [(UITableView *)tableView deleteRowsAtIndexPaths:location[0] withRowAnimation:[(CPSDataSource *)selfCopy rowAnimation]];
  MEMORY[0x277D82BD8](tableView);
  objc_storeStrong(location, 0);
}

- (void)reloadItemsAtIndexPaths:(id)paths
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, paths);
  tableView = [(CPSDataSource *)selfCopy tableView];
  [(UITableView *)tableView reloadRowsAtIndexPaths:location[0] withRowAnimation:[(CPSDataSource *)selfCopy rowAnimation]];
  MEMORY[0x277D82BD8](tableView);
  objc_storeStrong(location, 0);
}

- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v6 = 0;
  objc_storeStrong(&v6, indexPath);
  tableView = [(CPSDataSource *)selfCopy tableView];
  [(UITableView *)tableView moveRowAtIndexPath:location[0] toIndexPath:v6];
  MEMORY[0x277D82BD8](tableView);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)insertSectionsAtIndexes:(id)indexes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indexes);
  tableView = [(CPSDataSource *)selfCopy tableView];
  [(UITableView *)tableView insertSections:location[0] withRowAnimation:[(CPSDataSource *)selfCopy rowAnimation]];
  MEMORY[0x277D82BD8](tableView);
  objc_storeStrong(location, 0);
}

- (void)deleteSectionsAtIndexes:(id)indexes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indexes);
  tableView = [(CPSDataSource *)selfCopy tableView];
  [(UITableView *)tableView deleteSections:location[0] withRowAnimation:[(CPSDataSource *)selfCopy rowAnimation]];
  MEMORY[0x277D82BD8](tableView);
  objc_storeStrong(location, 0);
}

- (void)reloadData
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  tableView = [(CPSDataSource *)self tableView];
  location[0] = [(UITableView *)tableView visibleCells];
  if ([location[0] count])
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location[0]);
    v9 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(__b[1] + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v12 removeFromSuperview];
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    *&v2 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  }

  tableView2 = [(CPSDataSource *)selfCopy tableView];
  [(UITableView *)tableView2 reloadData];
  MEMORY[0x277D82BD8](tableView2);
  objc_storeStrong(location, 0);
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end