@interface SUUIIPadDownloadsViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (SUUIDownloadsChildViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_deleteAction:(id)a3;
- (void)_reload;
- (void)_reloadLayout;
- (void)_reloadNavigationItem;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)reloadDownloadsAtIndexes:(id)a3;
- (void)setDownloads:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation SUUIIPadDownloadsViewController

- (void)setDownloads:(id)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_downloads != v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    if (self->_editing)
    {
      v18 = v3;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [*(*(&v19 + 1) + 8 * i) item]);
            v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "persistentIdentifier")}];
            [v6 addObject:v13];
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      v3 = v18;
    }

    objc_storeStrong(&self->_downloads, v3);
    [(SUUIIPadDownloadsViewController *)self _reload];
    if ([(NSArray *)self->_downloads count])
    {
      v14 = 0;
      while (1)
      {
        v15 = [(NSArray *)self->_downloads objectAtIndex:v14];
        v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "persistentIdentifier")}];
        if (![v6 containsObject:v16])
        {
          goto LABEL_16;
        }

        v17 = [v15 isCancelable];

        if (v17)
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

- (void)reloadDownloadsAtIndexes:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__SUUIIPadDownloadsViewController_reloadDownloadsAtIndexes___block_invoke;
  v3[3] = &unk_2798F6230;
  v3[4] = self;
  [a3 enumerateIndexesUsingBlock:v3];
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
  v8 = [MEMORY[0x277D75348] whiteColor];
  [(UICollectionView *)v7 setBackgroundColor:v8];

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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  downloads = self->_downloads;
  v7 = a4;
  v8 = a3;
  v9 = -[NSArray objectAtIndex:](downloads, "objectAtIndex:", [v7 item]);
  v10 = [v8 dequeueReusableCellWithReuseIdentifier:@"a" forIndexPath:v7];

  v11 = [v10 cellView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained childViewController:self artworkForDownload:v9];
  SUUIConfigureDownloadsCellView(v11, v9, v13, 1u, self->_clientContext);

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

    v15 = [v10 cellView];
    [v15 setButtonType:0];
  }

  else
  {
    v14 = 0;
  }

  [v10 setCellState:v14];

  return v10;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [a4 item]);
  v5 = [v4 isCancelable];

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = a4;
  if (self->_editing)
  {
    [(SUUIIPadDownloadsViewController *)self _reloadNavigationItem];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [v7 item]);
    [WeakRetained childViewController:self performActionForDownload:v6];
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v7 = a4;
  if (self->_editing)
  {
    [(SUUIIPadDownloadsViewController *)self _reloadNavigationItem];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [v7 item]);
    [WeakRetained childViewController:self performActionForDownload:v6];
  }
}

- (void)_deleteAction:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [*(*(&v12 + 1) + 8 * v9) item]);
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained childViewController:self removeDownloads:v4];

  self->_editing = 0;
  [(SUUIIPadDownloadsViewController *)self _reload];
}

- (void)_reload
{
  if ([(NSArray *)self->_downloads count])
  {
    [(UICollectionView *)self->_collectionView reloadData];
    v3 = [(SUUIIPadDownloadsViewController *)self view];
    [v3 setOverlayView:0];
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
      v12 = [MEMORY[0x277D75348] whiteColor];
      [(_UIContentUnavailableView *)v11 setBackgroundColor:v12];

      [(_UIContentUnavailableView *)self->_noContentView setMessage:v7];
    }

    v13 = [(SUUIIPadDownloadsViewController *)self view];
    [v13 setOverlayView:self->_noContentView];

    [(UICollectionView *)self->_collectionView reloadData];
  }

  [(SUUIIPadDownloadsViewController *)self _reloadNavigationItem];
}

- (void)_reloadLayout
{
  collectionView = self->_collectionView;
  v4 = SUUILayoutGuideInsets(self);
  SUUIScrollViewSetDefaultContentInsets(collectionView, v4, v5, v6, v7);
  v8 = [(SUUIIPadDownloadsViewController *)self view];
  [v8 frame];
  v10 = v9;

  v11 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v13 = v11;
  v12 = 2.0;
  if (v10 > 1000.0)
  {
    v12 = 3.0;
  }

  [v11 setItemSize:{v10 / v12, 100.0}];
  [v13 invalidateLayout];
}

- (void)_reloadNavigationItem
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(SUUIIPadDownloadsViewController *)self navigationItem];
  [v3 setLeftItemsSupplementBackButton:1];

  if ([(NSArray *)self->_downloads count])
  {
    if (self->_editing)
    {
      v4 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
      v5 = [v4 count];

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
      v17 = [MEMORY[0x277D75348] systemRedColor];
      [v16 setTintColor:v17];

      [v16 setEnabled:v5 > 0];
      v18 = [(SUUIIPadDownloadsViewController *)self navigationItem];
      v21[0] = v15;
      v21[1] = v16;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      [v18 setLeftBarButtonItems:v19];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel__editAction_];
      v8 = [(SUUIIPadDownloadsViewController *)self navigationItem];
      v22[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      [v8 setLeftBarButtonItems:v9];
    }
  }

  else
  {
    v20 = [(SUUIIPadDownloadsViewController *)self navigationItem];
    [v20 setLeftBarButtonItems:0];
  }
}

- (SUUIDownloadsChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end