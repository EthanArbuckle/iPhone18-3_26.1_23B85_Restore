@interface HUCollectionViewController
- (HUCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)didUpdateRequiredHeightForCell:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3;
@end

@implementation HUCollectionViewController

- (HUCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  v7.receiver = self;
  v7.super_class = HUCollectionViewController;
  v3 = [(HUCollectionViewController *)&v7 initWithCollectionViewLayout:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    installedChildViewControllersKeyedByCell = v3->_installedChildViewControllersKeyedByCell;
    v3->_installedChildViewControllersKeyedByCell = v4;
  }

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HUCollectionViewController;
  [HUCollectionViewController setEditing:sel_setEditing_animated_ animated:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
  v8 = [v7 objectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setEditing:v5 animated:v4];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HUCollectionViewController;
  [(HUCollectionViewController *)&v24 systemLayoutFittingSizeDidChangeForChildContentContainer:v4];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 viewController];
        v13 = v12;
        if (v12 == v4)
        {
          if ([v11 allowSelfSizing])
          {
            v14 = [(HUCollectionViewController *)self collectionView];
            v15 = [v14 indexPathForCell:v11];

            v16 = [(HUCollectionViewController *)self collectionViewLayout];
            v17 = objc_alloc_init([objc_opt_class() invalidationContextClass]);

            v25 = v15;
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
            [v17 invalidateItemsAtIndexPaths:v18];

            v19 = [(HUCollectionViewController *)self collectionViewLayout];
            [v19 invalidateLayoutWithContext:v17];
          }

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 viewController];
    if (v8)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
      v10 = [v9 copy];

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v22 = v7;
        v23 = v6;
        v13 = 0;
        v14 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            v17 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
            v18 = [v17 objectForKey:v16];

            if (v18 == v8)
            {
              v19 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
              [v19 removeObjectForKey:v16];

              [v16 setViewController:0];
              v13 = 1;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);

        v7 = v22;
        v6 = v23;
        if (v13)
        {
          [v22 addToParentViewController:self];
          v20 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
          [v20 setObject:v8 forKey:v22];

          goto LABEL_16;
        }
      }

      else
      {
      }

      [v8 beginAppearanceTransition:1 animated:0];
      [v7 addToParentViewController:self];
      v21 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
      [v21 setObject:v8 forKey:v7];

      [v8 endAppearanceTransition];
      [v8 setEditing:-[HUCollectionViewController isEditing](self animated:{"isEditing"), 0}];
    }

LABEL_16:
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v15 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v15;
  if (isKindOfClass)
  {
    v8 = v15;
    v9 = [v8 viewController];
    v10 = [v9 parentViewController];
    v11 = v10;
    if (v10 == self)
    {
      v12 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
      v13 = [v12 objectForKey:v8];

      if (v13 == v9)
      {
        [v9 beginAppearanceTransition:0 animated:0];
        [v8 removeFromParentViewController];
        v14 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
        [v14 removeObjectForKey:v8];

        [v9 endAppearanceTransition];
      }
    }

    else
    {
    }

    v7 = v15;
  }
}

- (void)didUpdateRequiredHeightForCell:(id)a3
{
  v4 = [(HUCollectionViewController *)self collectionView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__HUCollectionViewController_didUpdateRequiredHeightForCell___block_invoke;
  v5[3] = &unk_277DB8488;
  v5[4] = self;
  [v4 performBatchUpdates:v5 completion:0];
}

void __61__HUCollectionViewController_didUpdateRequiredHeightForCell___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

@end