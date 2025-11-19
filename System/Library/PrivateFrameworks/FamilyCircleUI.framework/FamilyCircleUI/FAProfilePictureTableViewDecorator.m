@interface FAProfilePictureTableViewDecorator
+ (BOOL)_shouldShowPictureInSection:(id)a3;
+ (BOOL)shouldShowPicturesInPage:(id)a3;
- (FAProfilePictureTableViewDecorator)initWithTableView:(id)a3 ruiTableView:(id)a4 pictureStore:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_profilePictureStoreDidReload;
- (void)dealloc;
@end

@implementation FAProfilePictureTableViewDecorator

- (FAProfilePictureTableViewDecorator)initWithTableView:(id)a3 ruiTableView:(id)a4 pictureStore:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FAProfilePictureTableViewDecorator;
  v11 = [(FATableViewDecorator *)&v15 initWithTableView:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pictureStore, a5);
    objc_storeStrong(&v12->_remoteTableViewController, a4);
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v12 selector:sel__profilePictureStoreDidReload name:FAProfilePictureStoreDidReloadImagesNotification object:v10];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FAProfilePictureTableViewDecorator;
  [(FAProfilePictureTableViewDecorator *)&v4 dealloc];
}

+ (BOOL)shouldShowPicturesInPage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasTableView])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 tableViewOM];
    v6 = [v5 sections];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          if ([a1 _shouldShowPictureInSection:*(*(&v14 + 1) + 8 * i)])
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (BOOL)_shouldShowPictureInSection:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 rows];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) attributes];
        v9 = [v8 objectForKeyedSubscript:@"familyAction"];
        v10 = [v9 isEqual:@"InjectMemberImage"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FATableViewDecorator *)self dataSource];
  v9 = [v8 tableView:v7 cellForRowAtIndexPath:v6];

  v10 = [(RUITableView *)self->_remoteTableViewController objectModelRowForIndexPath:v6];

  v11 = [v10 attributes];
  v12 = [v11 objectForKeyedSubscript:@"altDSID"];

  v13 = [v10 attributes];
  v14 = [v13 objectForKeyedSubscript:@"familyAction"];

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
      v18 = [MEMORY[0x277D759A0] mainScreen];
      [v18 scale];
      v19 = [v17 imageWithData:v16 scale:?];
      v20 = [v9 imageView];
      [v20 setImage:v19];

      v21 = [v9 imageView];
      [v21 setContentMode:4];
    }

    else
    {
      v21 = [v9 imageView];
      [v21 setImage:0];
    }
  }

  return v9;
}

@end