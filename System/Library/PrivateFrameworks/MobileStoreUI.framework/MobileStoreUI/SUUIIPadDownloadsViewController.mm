@interface SUUIIPadDownloadsViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (SUUIDownloadsChildViewControllerDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_deleteAction:(id)action;
- (void)_reload;
- (void)_reloadLayout;
- (void)_reloadNavigationItem;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)reloadDownloadsAtIndexes:(id)indexes;
- (void)setDownloads:(id)downloads;
- (void)viewDidLayoutSubviews;
@end

@implementation SUUIIPadDownloadsViewController

- (void)setDownloads:(id)downloads
{
  downloadsCopy = downloads;
  v24 = *MEMORY[0x277D85DE8];
  downloadsCopy2 = downloads;
  if (self->_downloads != downloadsCopy2)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (self->_editing)
    {
      v18 = downloadsCopy;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
      v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(indexPathsForSelectedItems);
            }

            v12 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [*(*(&v19 + 1) + 8 * i) item]);
            v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "persistentIdentifier")}];
            [array addObject:v13];
          }

          v9 = [indexPathsForSelectedItems countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      downloadsCopy = v18;
    }

    objc_storeStrong(&self->_downloads, downloadsCopy);
    [(SUUIIPadDownloadsViewController *)self _reload];
    if ([(NSArray *)self->_downloads count])
    {
      v14 = 0;
      while (1)
      {
        v15 = [(NSArray *)self->_downloads objectAtIndex:v14];
        v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "persistentIdentifier")}];
        if (![array containsObject:v16])
        {
          goto LABEL_16;
        }

        isCancelable = [v15 isCancelable];

        if (isCancelable)
        {
          break;
        }

LABEL_17:

        if (++v14 >= [(NSArray *)self->_downloads count])
        {
          goto LABEL_18;
        }
      }

      v16 = [MEMORY[0x277CCAA70] indexPathForItem:v14 inSection:0];
      [(UICollectionView *)self->_collectionView selectItemAtIndexPath:v16 animated:0 scrollPosition:0];
LABEL_16:

      goto LABEL_17;
    }

LABEL_18:
  }
}

- (void)reloadDownloadsAtIndexes:(id)indexes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__SUUIIPadDownloadsViewController_reloadDownloadsAtIndexes___block_invoke;
  v3[3] = &unk_2798F6230;
  v3[4] = self;
  [indexes enumerateIndexesUsingBlock:v3];
}

void __60__SUUIIPadDownloadsViewController_reloadDownloadsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 992);
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v12 = [v4 cellForItemAtIndexPath:v5];

  v6 = [*(*(a1 + 32) + 1000) objectAtIndex:a2];
  v7 = [v12 cellView];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1016));
  v9 = [WeakRetained childViewController:*(a1 + 32) artworkForDownload:v6];
  SUUIConfigureDownloadsCellView(v7, v6, v9, 1u, *(*(a1 + 32) + 1032));

  v10 = 0;
  if (*(*(a1 + 32) + 1024) == 1)
  {
    if ([v6 isCancelable])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = [v12 cellView];
    [v11 setButtonType:0];
  }

  [v12 setCellState:v10];
}

- (void)loadView
{
  v9 = objc_alloc_init(SUUIDownloadsView);
  [(SUUIIPadDownloadsViewController *)self setView:v9];
  v3 = objc_alloc_init(SUUISearchCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
  [(SUUISearchCollectionViewFlowLayout *)v3 setBackfills:0];
  v4 = objc_alloc(MEMORY[0x277D752A0]);
  [(SUUIDownloadsView *)v9 bounds];
  v5 = [v4 initWithFrame:v3 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v5;

  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"a"];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  v7 = self->_collectionView;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UICollectionView *)v7 setBackgroundColor:whiteColor];

  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
  [(UICollectionView *)self->_collectionView setAllowsMultipleSelection:1];
  [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];
  [(SUUIDownloadsView *)v9 setContentView:self->_collectionView];
  [(SUUIIPadDownloadsViewController *)self _reload];
}

- (void)viewDidLayoutSubviews
{
  [(SUUIIPadDownloadsViewController *)self _reloadLayout];
  v3.receiver = self;
  v3.super_class = SUUIIPadDownloadsViewController;
  [(SUUIIPadDownloadsViewController *)&v3 viewDidLayoutSubviews];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  downloads = self->_downloads;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSArray objectAtIndex:](downloads, "objectAtIndex:", [pathCopy item]);
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:pathCopy];

  cellView = [v10 cellView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained childViewController:self artworkForDownload:v9];
  SUUIConfigureDownloadsCellView(cellView, v9, v13, 1u, self->_clientContext);

  if (self->_editing)
  {
    if ([v9 isCancelable])
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    cellView2 = [v10 cellView];
    [cellView2 setButtonType:0];
  }

  else
  {
    v14 = 0;
  }

  [v10 setCellState:v14];

  return v10;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v4 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [path item]);
  isCancelable = [v4 isCancelable];

  return isCancelable;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_editing)
  {
    [(SUUIIPadDownloadsViewController *)self _reloadNavigationItem];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [pathCopy item]);
    [WeakRetained childViewController:self performActionForDownload:v6];
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_editing)
  {
    [(SUUIIPadDownloadsViewController *)self _reloadNavigationItem];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [pathCopy item]);
    [WeakRetained childViewController:self performActionForDownload:v6];
  }
}

- (void)_deleteAction:(id)action
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v10 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [*(*(&v12 + 1) + 8 * v9) item]);
        [array addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained childViewController:self removeDownloads:array];

  self->_editing = 0;
  [(SUUIIPadDownloadsViewController *)self _reload];
}

- (void)_reload
{
  if ([(NSArray *)self->_downloads count])
  {
    [(UICollectionView *)self->_collectionView reloadData];
    view = [(SUUIIPadDownloadsViewController *)self view];
    [view setOverlayView:0];
  }

  else
  {
    if (!self->_noContentView)
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"NO_CONTENT_TITLE" inTable:@"Download"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"NO_CONTENT_TITLE" inBundles:0 inTable:@"Download"];
      }
      v5 = ;
      v6 = self->_clientContext;
      if (v6)
      {
        [(SUUIClientContext *)v6 localizedStringForKey:@"NO_CONTENT_MESSAGE" inTable:@"Download"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"NO_CONTENT_MESSAGE" inBundles:0 inTable:@"Download"];
      }
      v7 = ;
      v8 = objc_alloc(MEMORY[0x277D75E78]);
      v9 = [v8 initWithFrame:v5 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      noContentView = self->_noContentView;
      self->_noContentView = v9;

      v11 = self->_noContentView;
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(_UIContentUnavailableView *)v11 setBackgroundColor:whiteColor];

      [(_UIContentUnavailableView *)self->_noContentView setMessage:v7];
    }

    view2 = [(SUUIIPadDownloadsViewController *)self view];
    [view2 setOverlayView:self->_noContentView];

    [(UICollectionView *)self->_collectionView reloadData];
  }

  [(SUUIIPadDownloadsViewController *)self _reloadNavigationItem];
}

- (void)_reloadLayout
{
  collectionView = self->_collectionView;
  v4 = SUUILayoutGuideInsets(self);
  SUUIScrollViewSetDefaultContentInsets(collectionView, v4, v5, v6, v7);
  view = [(SUUIIPadDownloadsViewController *)self view];
  [view frame];
  v10 = v9;

  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v13 = collectionViewLayout;
  v12 = 2.0;
  if (v10 > 1000.0)
  {
    v12 = 3.0;
  }

  [collectionViewLayout setItemSize:{v10 / v12, 100.0}];
  [v13 invalidateLayout];
}

- (void)_reloadNavigationItem
{
  v22[1] = *MEMORY[0x277D85DE8];
  navigationItem = [(SUUIIPadDownloadsViewController *)self navigationItem];
  [navigationItem setLeftItemsSupplementBackButton:1];

  if ([(NSArray *)self->_downloads count])
  {
    if (self->_editing)
    {
      indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
      v5 = [indexPathsForSelectedItems count];

      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"CANCEL" inTable:@"Download"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"CANCEL" inBundles:0 inTable:@"Download"];
      }
      v7 = ;
      v10 = self->_clientContext;
      if (v5)
      {
        if (v10)
        {
          [(SUUIClientContext *)v10 localizedStringForKey:@"DELETE_FORMAT" inTable:@"Download"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"DELETE_FORMAT" inBundles:0 inTable:@"Download"];
        }
        v11 = ;
        v12 = MEMORY[0x277CCACA8];
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
        v14 = [v12 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v13];
      }

      else
      {
        if (v10)
        {
          [(SUUIClientContext *)v10 localizedStringForKey:@"DELETE" inTable:@"Download"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"DELETE" inBundles:0 inTable:@"Download"];
        }
        v14 = ;
      }

      v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v7 style:2 target:self action:sel__cancelAction_];
      v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v14 style:0 target:self action:sel__deleteAction_];
      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
      [v16 setTintColor:systemRedColor];

      [v16 setEnabled:v5 > 0];
      navigationItem2 = [(SUUIIPadDownloadsViewController *)self navigationItem];
      v21[0] = v15;
      v21[1] = v16;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      [navigationItem2 setLeftBarButtonItems:v19];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel__editAction_];
      navigationItem3 = [(SUUIIPadDownloadsViewController *)self navigationItem];
      v22[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      [navigationItem3 setLeftBarButtonItems:v9];
    }
  }

  else
  {
    navigationItem4 = [(SUUIIPadDownloadsViewController *)self navigationItem];
    [navigationItem4 setLeftBarButtonItems:0];
  }
}

- (SUUIDownloadsChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end