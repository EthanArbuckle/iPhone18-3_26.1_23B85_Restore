@interface FAProfilePictureTableViewDecorator
+ (BOOL)_shouldShowPictureInSection:(id)section;
+ (BOOL)shouldShowPicturesInPage:(id)page;
- (FAProfilePictureTableViewDecorator)initWithTableView:(id)view ruiTableView:(id)tableView pictureStore:(id)store;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_profilePictureStoreDidReload;
- (void)dealloc;
@end

@implementation FAProfilePictureTableViewDecorator

- (FAProfilePictureTableViewDecorator)initWithTableView:(id)view ruiTableView:(id)tableView pictureStore:(id)store
{
  tableViewCopy = tableView;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = FAProfilePictureTableViewDecorator;
  v11 = [(FATableViewDecorator *)&v15 initWithTableView:view];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pictureStore, store);
    objc_storeStrong(&v12->_remoteTableViewController, tableView);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__profilePictureStoreDidReload name:FAProfilePictureStoreDidReloadImagesNotification object:storeCopy];
  }

  return v12;
}

- (void)_profilePictureStoreDidReload
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__FAProfilePictureTableViewDecorator__profilePictureStoreDidReload__block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__FAProfilePictureTableViewDecorator__profilePictureStoreDidReload__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FAProfilePictureTableViewDecorator;
  [(FAProfilePictureTableViewDecorator *)&v4 dealloc];
}

+ (BOOL)shouldShowPicturesInPage:(id)page
{
  v19 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  if ([pageCopy hasTableView])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    tableViewOM = [pageCopy tableViewOM];
    sections = [tableViewOM sections];

    v7 = [sections countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(sections);
          }

          if ([self _shouldShowPictureInSection:*(*(&v14 + 1) + 8 * i)])
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        v8 = [sections countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)_shouldShowPictureInSection:(id)section
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  rows = [section rows];
  v4 = [rows countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(rows);
        }

        attributes = [*(*(&v14 + 1) + 8 * i) attributes];
        v9 = [attributes objectForKeyedSubscript:@"familyAction"];
        v10 = [v9 isEqual:@"InjectMemberImage"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [rows countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(FATableViewDecorator *)self dataSource];
  v9 = [dataSource tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  v10 = [(RUITableView *)self->_remoteTableViewController objectModelRowForIndexPath:pathCopy];

  attributes = [v10 attributes];
  v12 = [attributes objectForKeyedSubscript:@"altDSID"];

  attributes2 = [v10 attributes];
  v14 = [attributes2 objectForKeyedSubscript:@"familyAction"];

  if ([v14 isEqualToString:@"InjectMemberImage"])
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = [(FAProfilePictureStore *)self->_pictureStore profilePictureForFamilyMemberWithAltDSID:v12 pictureDiameter:36.0];
    if (v16)
    {
      v17 = MEMORY[0x277D755B8];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v19 = [v17 imageWithData:v16 scale:?];
      imageView = [v9 imageView];
      [imageView setImage:v19];

      imageView2 = [v9 imageView];
      [imageView2 setContentMode:4];
    }

    else
    {
      imageView2 = [v9 imageView];
      [imageView2 setImage:0];
    }
  }

  return v9;
}

@end