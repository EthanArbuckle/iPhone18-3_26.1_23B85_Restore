@interface HUCollectionViewController
- (HUCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)didUpdateRequiredHeightForCell:(id)cell;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation HUCollectionViewController

- (HUCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = HUCollectionViewController;
  v3 = [(HUCollectionViewController *)&v7 initWithCollectionViewLayout:layout];
  if (v3)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    installedChildViewControllersKeyedByCell = v3->_installedChildViewControllersKeyedByCell;
    v3->_installedChildViewControllersKeyedByCell = weakToWeakObjectsMapTable;
  }

  return v3;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HUCollectionViewController;
  [HUCollectionViewController setEditing:sel_setEditing_animated_ animated:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  installedChildViewControllersKeyedByCell = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
  objectEnumerator = [installedChildViewControllersKeyedByCell objectEnumerator];

  v9 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v13 + 1) + 8 * v12++) setEditing:editingCopy animated:animatedCopy];
      }

      while (v10 != v12);
      v10 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container
{
  v27 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v24.receiver = self;
  v24.super_class = HUCollectionViewController;
  [(HUCollectionViewController *)&v24 systemLayoutFittingSizeDidChangeForChildContentContainer:containerCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  installedChildViewControllersKeyedByCell = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
  keyEnumerator = [installedChildViewControllersKeyedByCell keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        viewController = [v11 viewController];
        v13 = viewController;
        if (viewController == containerCopy)
        {
          if ([v11 allowSelfSizing])
          {
            collectionView = [(HUCollectionViewController *)self collectionView];
            v15 = [collectionView indexPathForCell:v11];

            collectionViewLayout = [(HUCollectionViewController *)self collectionViewLayout];
            v17 = objc_alloc_init([objc_opt_class() invalidationContextClass]);

            v25 = v15;
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
            [v17 invalidateItemsAtIndexPaths:v18];

            collectionViewLayout2 = [(HUCollectionViewController *)self collectionViewLayout];
            [collectionViewLayout2 invalidateLayoutWithContext:v17];
          }

          goto LABEL_13;
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = cellCopy;
    viewController = [v7 viewController];
    if (viewController)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      installedChildViewControllersKeyedByCell = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
      v10 = [installedChildViewControllersKeyedByCell copy];

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v22 = v7;
        v23 = cellCopy;
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
            installedChildViewControllersKeyedByCell2 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
            v18 = [installedChildViewControllersKeyedByCell2 objectForKey:v16];

            if (v18 == viewController)
            {
              installedChildViewControllersKeyedByCell3 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
              [installedChildViewControllersKeyedByCell3 removeObjectForKey:v16];

              [v16 setViewController:0];
              v13 = 1;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);

        v7 = v22;
        cellCopy = v23;
        if (v13)
        {
          [v22 addToParentViewController:self];
          installedChildViewControllersKeyedByCell4 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
          [installedChildViewControllersKeyedByCell4 setObject:viewController forKey:v22];

          goto LABEL_16;
        }
      }

      else
      {
      }

      [viewController beginAppearanceTransition:1 animated:0];
      [v7 addToParentViewController:self];
      installedChildViewControllersKeyedByCell5 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
      [installedChildViewControllersKeyedByCell5 setObject:viewController forKey:v7];

      [viewController endAppearanceTransition];
      [viewController setEditing:-[HUCollectionViewController isEditing](self animated:{"isEditing"), 0}];
    }

LABEL_16:
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = cellCopy;
  if (isKindOfClass)
  {
    v8 = cellCopy;
    viewController = [v8 viewController];
    parentViewController = [viewController parentViewController];
    v11 = parentViewController;
    if (parentViewController == self)
    {
      installedChildViewControllersKeyedByCell = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
      v13 = [installedChildViewControllersKeyedByCell objectForKey:v8];

      if (v13 == viewController)
      {
        [viewController beginAppearanceTransition:0 animated:0];
        [v8 removeFromParentViewController];
        installedChildViewControllersKeyedByCell2 = [(HUCollectionViewController *)self installedChildViewControllersKeyedByCell];
        [installedChildViewControllersKeyedByCell2 removeObjectForKey:v8];

        [viewController endAppearanceTransition];
      }
    }

    else
    {
    }

    v7 = cellCopy;
  }
}

- (void)didUpdateRequiredHeightForCell:(id)cell
{
  collectionView = [(HUCollectionViewController *)self collectionView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__HUCollectionViewController_didUpdateRequiredHeightForCell___block_invoke;
  v5[3] = &unk_277DB8488;
  v5[4] = self;
  [collectionView performBatchUpdates:v5 completion:0];
}

void __61__HUCollectionViewController_didUpdateRequiredHeightForCell___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

@end