@interface CPSDataSource
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (CPSDataSource)init;
- (UITableView)tableView;
- (id)indexPathForItemWithIdentifier:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)deleteItemsAtIndexPaths:(id)a3;
- (void)deleteSectionsAtIndexes:(id)a3;
- (void)insertItemsAtIndexPaths:(id)a3;
- (void)insertSectionsAtIndexes:(id)a3;
- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)reloadData;
- (void)reloadItemsAtIndexPaths:(id)a3;
- (void)setTableView:(id)a3;
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

- (void)setTableView:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_tableView, location[0]);
  if (location[0])
  {
    [location[0] setDataSource:v4];
  }

  objc_storeStrong(location, 0);
}

- (id)itemAtIndexPath:(id)a3
{
  v6 = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  [(CPSDataSource *)v6 doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  return 0;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSDataSource *)v6 numberOfSections];
  objc_storeStrong(location, 0);
  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(CPSDataSource *)v8 numberOfItemsInSection:a4];
  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [(CPSDataSource *)v16 itemAtIndexPath:v14];
  v9 = [(CPSDataSource *)v16 cellCreateBlock];
  v12 = v9[2](v9, v13, v14, location[0]);
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = [(CPSDataSource *)v16 cellConfigureBlock];
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v10)
  {
    v8 = [(CPSDataSource *)v16 cellConfigureBlock];
    v8[2](v8, v12, v13, v14);
    MEMORY[0x277D82BD8](v8);
  }

  v7 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)indexPathForItemWithIdentifier:(id)a3
{
  v6 = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  [(CPSDataSource *)v6 doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  return 0;
}

- (void)insertItemsAtIndexPaths:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSDataSource *)v5 tableView];
  [(UITableView *)v3 insertRowsAtIndexPaths:location[0] withRowAnimation:[(CPSDataSource *)v5 rowAnimation]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)deleteItemsAtIndexPaths:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSDataSource *)v5 tableView];
  [(UITableView *)v3 deleteRowsAtIndexPaths:location[0] withRowAnimation:[(CPSDataSource *)v5 rowAnimation]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)reloadItemsAtIndexPaths:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSDataSource *)v5 tableView];
  [(UITableView *)v3 reloadRowsAtIndexPaths:location[0] withRowAnimation:[(CPSDataSource *)v5 rowAnimation]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(CPSDataSource *)v8 tableView];
  [(UITableView *)v5 moveRowAtIndexPath:location[0] toIndexPath:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)insertSectionsAtIndexes:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSDataSource *)v5 tableView];
  [(UITableView *)v3 insertSections:location[0] withRowAnimation:[(CPSDataSource *)v5 rowAnimation]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)deleteSectionsAtIndexes:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSDataSource *)v5 tableView];
  [(UITableView *)v3 deleteSections:location[0] withRowAnimation:[(CPSDataSource *)v5 rowAnimation]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)reloadData
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  location[1] = a2;
  v10 = [(CPSDataSource *)self tableView];
  location[0] = [(UITableView *)v10 visibleCells];
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

  v3 = [(CPSDataSource *)v14 tableView];
  [(UITableView *)v3 reloadData];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end