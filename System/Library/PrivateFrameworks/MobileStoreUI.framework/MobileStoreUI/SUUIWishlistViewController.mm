@interface SUUIWishlistViewController
+ (id)wishlistBarButtonItemWithClientContext:(id)a3;
- (BOOL)_isEditingEnabled;
- (SUUIWishlistDelegate)delegate;
- (SUUIWishlistViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_emptyWishlistView;
- (id)_itemListViewController;
- (id)_wishlist;
- (id)contentScrollView;
- (int64_t)_wishlistState;
- (void)_deleteAction:(id)a3;
- (void)_deleteItemsAtIndexPaths:(id)a3;
- (void)_destroyEmptyWishlistView;
- (void)_finishSignInWithResponse:(id)a3 error:(id)a4;
- (void)_finishSyncWithResult:(BOOL)a3 didChange:(BOOL)a4 error:(id)a5;
- (void)_reloadChildView;
- (void)_reloadForAccountsChanged;
- (void)_reloadNavigationBarAnimated:(BOOL)a3;
- (void)_reloadWishlist;
- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)_signInAction:(id)a3;
- (void)_syncWishlist;
- (void)_updateDeleteButton;
- (void)_wishlistDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)itemList:(id)a3 didDeselectItem:(id)a4 atIndexPath:(id)a5;
- (void)itemList:(id)a3 didRemoveItemAtIndexPath:(id)a4;
- (void)itemList:(id)a3 didSelectItem:(id)a4 atIndexPath:(id)a5;
- (void)loadView;
- (void)setClientContext:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIWishlistViewController

- (SUUIWishlistViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUUIWishlistViewController;
  v4 = [(SUUIWishlistViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
    {
      [(SUUIWishlistViewController *)v4 setTitle:@"Wish List"];
    }

    v4->_wishlistState = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, __AccountsChanged, *MEMORY[0x277D6A6C8], 0, CFNotificationSuspensionBehaviorCoalesce);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel__wishlistDidChangeNotification_ name:0x286B01B60 object:0];
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6C8], 0);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:0x286B01B60 object:0];
  [(SUUIItemListTableViewController *)self->_itemListViewController setDelegate:0];

  v5.receiver = self;
  v5.super_class = SUUIWishlistViewController;
  [(SUUIViewController *)&v5 dealloc];
}

+ (id)wishlistBarButtonItemWithClientContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D751E0]);
  if (v3)
  {
    [v3 localizedStringForKey:@"WISH_LIST_BUTTON"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"WISH_LIST_BUTTON" inBundles:0];
  }
  v5 = ;
  [v4 setAccessibilityLabel:v5];

  v6 = [MEMORY[0x277D755B8] kitImageNamed:@"UIButtonBarListIcon.png"];
  v7 = [v6 imageFlippedForRightToLeftLayoutDirection];
  [v4 setImage:v7];

  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = 2.0;
  if (v9 == 1)
  {
    v10 = 3.0;
  }

  [v4 setImageInsets:{v10, 0.0, 0.0, 0.0}];

  return v4;
}

- (void)setClientContext:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    if (v4)
    {
      [v4 localizedStringForKey:@"WISH_LIST_TAB_TITLE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"WISH_LIST_TAB_TITLE" inBundles:0];
    }
    v5 = ;
    [(SUUIWishlistViewController *)self setTitle:v5];
  }

  v6.receiver = self;
  v6.super_class = SUUIWishlistViewController;
  [(SUUIViewController *)&v6 setClientContext:v4];
}

- (id)contentScrollView
{
  v2 = [(SUUIWishlistViewController *)self _itemListViewController];
  v3 = [v2 tableView];

  return v3;
}

- (void)loadView
{
  v13 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [MEMORY[0x277D75348] clearColor];
  [v13 setBackgroundColor:v3];

  v4 = [MEMORY[0x277D75418] currentDevice];
  if ([v4 userInterfaceIdiom])
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [v5 keyWindow];
    [v6 bounds];
    v8 = v7;
    v9 = SUUICompactThreshold();

    if (v8 > v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  backdropView = self->_backdropView;
  if (!backdropView)
  {
    v11 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
    v12 = self->_backdropView;
    self->_backdropView = v11;

    backdropView = self->_backdropView;
  }

  [v13 addSubview:backdropView];
LABEL_8:
  [(SUUIWishlistViewController *)self setView:v13];
  [(SUUIWishlistViewController *)self _reloadChildView];
}

- (void)viewDidLayoutSubviews
{
  if (!self->_backdropView)
  {
    v3 = [(SUUIWishlistViewController *)self view];
    v4 = SUUIPopoverBackdropViewForView(v3);
    backdropView = self->_backdropView;
    self->_backdropView = v4;
  }

  v6.receiver = self;
  v6.super_class = SUUIWishlistViewController;
  [(SUUIWishlistViewController *)&v6 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (([(SUUIWishlistViewController *)self _wishlistState]- 3) <= 1)
  {
    [(SUUIWishlistViewController *)self _syncWishlist];
  }

  if (self->_reloadOnNextAppear)
  {
    self->_reloadOnNextAppear = 0;
    [(SUUIWishlistViewController *)self _reloadWishlist];
  }

  [(SUUIWishlistViewController *)self _reloadNavigationBarAnimated:0];
  v5.receiver = self;
  v5.super_class = SUUIWishlistViewController;
  [(SUUIViewController *)&v5 viewWillAppear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x277D75348];
  v8 = a4;
  v9 = [v7 whiteColor];
  v10 = [(SUUIWishlistViewController *)self view];
  [v10 setBackgroundColor:v9];

  [(_UIBackdropView *)self->_backdropView setHidden:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__SUUIWishlistViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &unk_2798F5A88;
  v12[4] = self;
  [v8 animateAlongsideTransition:&__block_literal_global_68 completion:v12];
  v11.receiver = self;
  v11.super_class = SUUIWishlistViewController;
  [(SUUIWishlistViewController *)&v11 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
}

void __81__SUUIWishlistViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1064) setHidden:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:v3];
}

- (void)itemList:(id)a3 didDeselectItem:(id)a4 atIndexPath:(id)a5
{
  if (self->_editing)
  {
    [(SUUIWishlistViewController *)self _updateDeleteButton:a3];
  }
}

- (void)itemList:(id)a3 didRemoveItemAtIndexPath:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v5 = MEMORY[0x277CBEA60];
  v6 = a4;
  v7 = [v5 arrayWithObjects:&v8 count:1];

  [(SUUIWishlistViewController *)self _deleteItemsAtIndexPaths:v7, v8, v9];
}

- (void)itemList:(id)a3 didSelectItem:(id)a4 atIndexPath:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_editing)
  {
    [(SUUIWishlistViewController *)self _updateDeleteButton];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [(SUUIViewController *)v12 wishlist:self didSelectItem:v8 atIndexPath:v9];
    }

    else
    {
      v12 = [[SUUIIPhoneProductPageViewController alloc] initWithItem:v8];
      v13 = [(SUUIViewController *)self clientContext];
      [(SUUIViewController *)v12 setClientContext:v13];

      v14 = [(SUUIWishlistViewController *)self navigationController];
      [v14 pushViewController:v12 animated:1];
    }
  }
}

- (void)_wishlistDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(SUUIWishlistViewController *)self _wishlist];
  v6 = [v4 object];

  if (v5 == v6)
  {
    if (SUUIViewControllerIsVisible(self))
    {

      [(SUUIWishlistViewController *)self _reloadWishlist];
    }

    else
    {
      if (self->_reloadOnNextAppear)
      {
        v7 = 1;
      }

      else
      {
        v7 = [(SUUIWishlistViewController *)self isViewLoaded];
      }

      self->_reloadOnNextAppear = v7;
    }
  }
}

- (void)_deleteAction:(id)a3
{
  v4 = [(SUUIItemListTableViewController *)self->_itemListViewController tableView];
  v5 = [v4 indexPathsForSelectedRows];

  [(SUUIWishlistViewController *)self _deleteItemsAtIndexPaths:v5];
  [(SUUIWishlistViewController *)self _setEditing:0 animated:1];
}

- (void)_signInAction:(id)a3
{
  v4 = a3;
  [v4 setEnabled:0];
  v5 = objc_alloc(MEMORY[0x277D69BC8]);
  v6 = [MEMORY[0x277D69A20] defaultStore];
  v7 = [v6 activeAccount];
  v8 = [v5 initWithAccount:v7];

  [v8 setPromptStyle:1];
  objc_initWeak(&location, self);
  v9 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SUUIWishlistViewController__signInAction___block_invoke;
  v10[3] = &unk_2798FB2C0;
  objc_copyWeak(&v11, &location);
  [v9 startWithAuthenticateResponseBlock:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void __44__SUUIWishlistViewController__signInAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUUIWishlistViewController__signInAction___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __44__SUUIWishlistViewController__signInAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishSignInWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_deleteItemsAtIndexPaths:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = self;
  v5 = [(SUUIWishlist *)self->_wishlist items];
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) row];
        [v6 addIndex:v13];
        v14 = [v5 objectAtIndex:v13];
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "itemIdentifier")}];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [(SUUIWishlist *)v18->_wishlist removeItemsWithItemIdentifiers:v7];
  [(SUUIItemListTableViewController *)v18->_itemListViewController deleteRowsAtIndexPaths:v8];
  v16 = [(SUUIWishlist *)v18->_wishlist items];
  v17 = [v16 count];

  if (!v17)
  {
    [(SUUIWishlistViewController *)v18 _reloadChildView];
  }
}

- (void)_destroyEmptyWishlistView
{
  [(_UIContentUnavailableView *)self->_emptyWishlistView removeFromSuperview];
  emptyWishlistView = self->_emptyWishlistView;
  self->_emptyWishlistView = 0;
}

- (id)_emptyWishlistView
{
  emptyWishlistView = self->_emptyWishlistView;
  if (!emptyWishlistView)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D75E78]);
    v5 = [v4 initWithFrame:0 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_emptyWishlistView;
    self->_emptyWishlistView = v5;

    v7 = self->_emptyWishlistView;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__SUUIWishlistViewController__emptyWishlistView__block_invoke;
    v9[3] = &unk_2798F67A0;
    objc_copyWeak(&v10, &location);
    [(_UIContentUnavailableView *)v7 setButtonAction:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    emptyWishlistView = self->_emptyWishlistView;
  }

  return emptyWishlistView;
}

void __48__SUUIWishlistViewController__emptyWishlistView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signInAction:0];
}

- (void)_finishSignInWithResponse:(id)a3 error:(id)a4
{
  if ([a3 authenticateResponseType] == 4)
  {
    self->_wishlistState = 4;
    [(SUUIWishlistViewController *)self _reloadChildView];

    [(SUUIWishlistViewController *)self _syncWishlist];
  }
}

- (void)_finishSyncWithResult:(BOOL)a3 didChange:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v6 = a3;
  v11 = a5;
  [(SUUISyncWishlistOperation *)self->_syncOperation setResultBlock:0];
  syncOperation = self->_syncOperation;
  self->_syncOperation = 0;

  if (v6)
  {
    self->_wishlistState = 2;
    if (v5)
    {
      [(SUUIWishlist *)self->_wishlist postChangeNotification];
    }

    goto LABEL_4;
  }

  if (self->_wishlistState == 4)
  {
    if ([v11 code] == 1)
    {
      v9 = [v11 domain];
      v10 = [v9 isEqualToString:*MEMORY[0x277D6A678]];

      if (v10)
      {
        self->_wishlistState = 1;
LABEL_4:
        [(SUUIWishlistViewController *)self _reloadChildView];
        goto LABEL_10;
      }
    }

    [(SUUIViewController *)self showError:v11];
  }

LABEL_10:
}

- (BOOL)_isEditingEnabled
{
  v2 = [(SUUIWishlistViewController *)self _wishlist];
  v3 = [v2 items];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_itemListViewController
{
  itemListViewController = self->_itemListViewController;
  if (!itemListViewController)
  {
    v4 = objc_alloc_init(SUUIItemListTableViewController);
    v5 = self->_itemListViewController;
    self->_itemListViewController = v4;

    v6 = self->_itemListViewController;
    v7 = [(SUUIViewController *)self clientContext];
    [(SUUIItemListTableViewController *)v6 setClientContext:v7];

    [(SUUIItemListTableViewController *)self->_itemListViewController setDelegate:self];
    [(SUUIItemListTableViewController *)self->_itemListViewController setRowHeight:84.0];
    [(SUUIItemListTableViewController *)self->_itemListViewController setSelectionStyle:1];
    v8 = +[SUUIItemArtworkContext wishlistContext];
    [(SUUIItemListTableViewController *)self->_itemListViewController setArtworkContext:v8];
    v9 = self->_itemListViewController;
    [v8 imageSizeForItem:0];
    [(SUUIItemListTableViewController *)v9 setImageBoundingSize:?];
    [(SUUIItemListTableViewController *)self->_itemListViewController setItemCellClass:objc_opt_class()];
    [(SUUIWishlistViewController *)self addChildViewController:self->_itemListViewController];
    v10 = [(SUUIItemListTableViewController *)self->_itemListViewController tableView];
    [v10 setAllowsMultipleSelectionDuringEditing:0];
    v11 = [MEMORY[0x277D75348] clearColor];
    [v10 setBackgroundColor:v11];

    [v10 setSeparatorStyle:0];
    itemListViewController = self->_itemListViewController;
  }

  return itemListViewController;
}

- (void)_reloadChildView
{
  v3 = [(SUUIWishlistViewController *)self _wishlistState];
  if ((v3 - 2) >= 2)
  {
    if (v3 != 1)
    {
      v9 = 0;
      goto LABEL_25;
    }

    v5 = [(SUUIViewController *)self clientContext];
    v20 = [(SUUIWishlistViewController *)self _emptyWishlistView];
    if (v5)
    {
      [v5 localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_TITLE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_TITLE" inBundles:0];
    }
    v12 = ;
    [v20 setTitle:v12];

    if (v5)
    {
      [v5 localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_MESSAGE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_MESSAGE" inBundles:0];
    }
    v13 = ;
    [v20 setMessage:v13];

    if (v5)
    {
      [v5 localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_SIGN_IN_BUTTON" inBundles:0];
    }
    v6 = ;
    [v20 setButtonTitle:v6];
  }

  else
  {
    v4 = [(SUUIWishlistViewController *)self _wishlist];
    v5 = [v4 items];

    if (![v5 count])
    {
      v20 = [(SUUIWishlistViewController *)self _emptyWishlistView];
      v10 = [(SUUIViewController *)self clientContext];
      v11 = v10;
      if (v10)
      {
        [v10 localizedStringForKey:@"EMPTY_WISHLIST_TITLE"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_TITLE" inBundles:0];
      }
      v14 = ;
      [v20 setTitle:v14];

      v15 = [(SUUIViewController *)self clientContext];
      v16 = v15;
      if (v15)
      {
        [v15 localizedStringForKey:@"EMPTY_WISHLIST_MESSAGE"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"EMPTY_WISHLIST_MESSAGE" inBundles:0];
      }
      v17 = ;
      [v20 setMessage:v17];

      [v20 setButtonTitle:0];
      goto LABEL_24;
    }

    v6 = [(SUUIWishlistViewController *)self _itemListViewController];
    v7 = objc_alloc_init(SUUIItemList);
    [(SUUIItemList *)v7 setItems:v5];
    v8 = [v6 artworkContext];
    [v8 largestImageSizeForItems:v5];
    [v6 setImageBoundingSize:?];

    [v6 setItemList:v7];
    v20 = [v6 view];
  }

LABEL_24:
  v9 = v20;
LABEL_25:
  v21 = v9;
  if (v9 != self->_emptyWishlistView)
  {
    [(SUUIWishlistViewController *)self _destroyEmptyWishlistView];
    v9 = v21;
  }

  if (v9)
  {
    v18 = [(SUUIWishlistViewController *)self view];
    [(_UIContentUnavailableView *)v21 setAutoresizingMask:18];
    v19 = [v18 backgroundColor];
    [(_UIContentUnavailableView *)v21 setBackgroundColor:v19];

    [v18 bounds];
    [(_UIContentUnavailableView *)v21 setFrame:?];
    [v18 addSubview:v21];

    v9 = v21;
  }
}

- (void)_reloadForAccountsChanged
{
  v3 = +[SUUIWishlist activeWishlist];
  wishlist = self->_wishlist;
  if (wishlist != v3)
  {
    obj = v3;
    wishlist = [wishlist isEqual:v3];
    v3 = obj;
    if ((wishlist & 1) == 0)
    {
      objc_storeStrong(&self->_wishlist, obj);
      [(SUUIWishlistViewController *)self _destroyEmptyWishlistView];
      self->_wishlistState = 0;
      [(SUUIWishlistViewController *)self _reloadWishlist];
      wishlist = [(SUUIWishlistViewController *)self _wishlistState];
      v3 = obj;
      if ((wishlist - 3) <= 1)
      {
        wishlist = [(SUUIWishlistViewController *)self _syncWishlist];
        v3 = obj;
      }
    }
  }

  MEMORY[0x2821F96F8](wishlist, v3);
}

- (void)_reloadNavigationBarAnimated:(BOOL)a3
{
  v3 = a3;
  v33 = [(SUUIViewController *)self clientContext];
  v5 = [(SUUIWishlistViewController *)self navigationItem];
  if (([(SUUIWishlistViewController *)self _wishlistState]- 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (self->_editing)
    {
      if (!self->_deleteButton)
      {
        v6 = objc_alloc_init(MEMORY[0x277D751E0]);
        deleteButton = self->_deleteButton;
        self->_deleteButton = v6;

        [(UIBarButtonItem *)self->_deleteButton setAction:sel__deleteAction_];
        [(UIBarButtonItem *)self->_deleteButton setEnabled:0];
        [(UIBarButtonItem *)self->_deleteButton setTarget:self];
        v8 = self->_deleteButton;
        if (v33)
        {
          [v33 localizedStringForKey:@"WISH_LIST_DELETE_BUTTON"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"WISH_LIST_DELETE_BUTTON" inBundles:0];
        }
        v12 = ;
        [(UIBarButtonItem *)v8 setTitle:v12];

        v13 = objc_alloc(MEMORY[0x277CBEAC0]);
        v14 = [MEMORY[0x277D75348] systemRedColor];
        v15 = *MEMORY[0x277D740C0];
        v16 = [v13 initWithObjectsAndKeys:{v14, *MEMORY[0x277D740C0], 0}];

        [(UIBarButtonItem *)self->_deleteButton setTitleTextAttributes:v16 forState:0];
        v17 = objc_alloc(MEMORY[0x277CBEAC0]);
        v18 = [MEMORY[0x277D75348] systemGrayColor];
        v19 = [v17 initWithObjectsAndKeys:{v18, v15, 0}];

        [(UIBarButtonItem *)self->_deleteButton setTitleTextAttributes:v19 forState:2];
      }

      v9 = objc_alloc_init(MEMORY[0x277D751E0]);
      [v9 setAction:sel__toggleEditAction_];
      [v9 setStyle:2];
      [v9 setTarget:self];
      if (v33)
      {
        [v33 localizedStringForKey:@"WISH_LIST_CANCEL_BUTTON"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"WISH_LIST_CANCEL_BUTTON" inBundles:0];
      }
      v20 = ;
      [v9 setTitle:v20];

      [v5 setLeftBarButtonItem:self->_deleteButton animated:v3];
      [v5 setRightBarButtonItem:v9 animated:v3];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277D751E0]);
      [v9 setAction:sel__toggleEditAction_];
      [v9 setEnabled:{-[SUUIWishlistViewController _isEditingEnabled](self, "_isEditingEnabled")}];
      [v9 setTarget:self];
      if (v33)
      {
        [v33 localizedStringForKey:@"WISH_LIST_EDIT_BUTTON"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"WISH_LIST_EDIT_BUTTON" inBundles:0];
      }
      v10 = ;
      [v9 setTitle:v10];

      [v5 setLeftBarButtonItem:v9 animated:v3];
      [v5 setRightBarButtonItem:0 animated:v3];
      v11 = self->_deleteButton;
      self->_deleteButton = 0;
    }
  }

  else
  {
    [v5 setLeftBarButtonItem:0];
    [v5 setRightBarButtonItem:0];
  }

  if (!self->_editing)
  {
    v21 = [MEMORY[0x277D75418] currentDevice];
    if ([v21 userInterfaceIdiom])
    {
      v22 = [MEMORY[0x277D75128] sharedApplication];
      v23 = [v22 keyWindow];
      [v23 bounds];
      v25 = v24;
      v26 = SUUICompactThreshold();

      if (v25 > v26)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    v27 = objc_alloc_init(MEMORY[0x277D751E0]);
    [v27 setAction:sel__doneAction_];
    [v27 setStyle:2];
    [v27 setTarget:self];
    if (v33)
    {
      [v33 localizedStringForKey:@"WISH_LIST_DONE_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"WISH_LIST_DONE_BUTTON" inBundles:0];
    }
    v28 = ;
    [v27 setTitle:v28];

    [v5 setRightBarButtonItem:v27 animated:v3];
  }

LABEL_27:
  v29 = [(SUUIWishlistViewController *)self navigationController];
  v30 = [v29 view];
  [v30 setSemanticContentAttribute:storeSemanticContentAttribute()];

  v31 = [(SUUIWishlistViewController *)self navigationController];
  v32 = [v31 navigationBar];
  [v32 setSemanticContentAttribute:storeSemanticContentAttribute()];
}

- (void)_reloadWishlist
{
  [(SUUIWishlistViewController *)self _reloadChildView];

  [(SUUIWishlistViewController *)self _reloadNavigationBarAnimated:0];
}

- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_editing = a3;
    v9 = [(SUUIWishlistViewController *)self _itemListViewController];
    v8 = [v9 tableView];
    [v8 setAllowsMultipleSelectionDuringEditing:v6];

    [v9 setEditing:v6 animated:v5];
    [(SUUIWishlistViewController *)self _reloadNavigationBarAnimated:v5];
  }
}

- (void)_syncWishlist
{
  if (!self->_syncOperation)
  {
    v3 = [SUUISyncWishlistOperation alloc];
    v4 = [(SUUIViewController *)self clientContext];
    v5 = [(SUUISyncWishlistOperation *)v3 initWithClientContext:v4];
    syncOperation = self->_syncOperation;
    self->_syncOperation = v5;

    objc_initWeak(&location, self);
    v7 = self->_syncOperation;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __43__SUUIWishlistViewController__syncWishlist__block_invoke;
    v12 = &unk_2798F8BE8;
    objc_copyWeak(&v13, &location);
    [(SUUISyncWishlistOperation *)v7 setResultBlock:&v9];
    v8 = SUUIWishlistOperationQueue();
    [v8 addOperation:{self->_syncOperation, v9, v10, v11, v12}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __43__SUUIWishlistViewController__syncWishlist__block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUUIWishlistViewController__syncWishlist__block_invoke_2;
  block[3] = &unk_2798F8350;
  objc_copyWeak(&v11, (a1 + 32));
  v12 = a2;
  v13 = a3;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v11);
}

void __43__SUUIWishlistViewController__syncWishlist__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishSyncWithResult:*(a1 + 48) didChange:*(a1 + 49) error:*(a1 + 32)];
}

- (void)_updateDeleteButton
{
  v3 = [(SUUIItemListTableViewController *)self->_itemListViewController tableView];
  v4 = [v3 indexPathsForSelectedRows];
  v5 = [v4 count];

  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v6 setNumberStyle:1];
    v7 = [(SUUIViewController *)self clientContext];
    v8 = v7;
    if (v7)
    {
      [v7 localizedStringForKey:@"WISH_LIST_DELETE_BUTTON_SELECTED"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"WISH_LIST_DELETE_BUTTON_SELECTED" inBundles:0];
    }
    v11 = ;

    [(UIBarButtonItem *)self->_deleteButton setEnabled:1];
    deleteButton = self->_deleteButton;
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v15 = [v6 stringFromNumber:v14];
    v16 = [v13 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v15];
    [(UIBarButtonItem *)deleteButton setTitle:v16];
  }

  else
  {
    [(UIBarButtonItem *)self->_deleteButton setEnabled:0];
    v9 = self->_deleteButton;
    v10 = [(SUUIViewController *)self clientContext];
    v6 = v10;
    if (v10)
    {
      [v10 localizedStringForKey:@"WISH_LIST_DELETE_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"WISH_LIST_DELETE_BUTTON" inBundles:0];
    }
    v11 = ;
    [(UIBarButtonItem *)v9 setTitle:v11];
  }

  v17 = MEMORY[0x277D75D18];

  [v17 setAnimationsEnabled:1];
}

- (id)_wishlist
{
  wishlist = self->_wishlist;
  if (!wishlist)
  {
    v4 = +[SUUIWishlist activeWishlist];
    v5 = self->_wishlist;
    self->_wishlist = v4;

    wishlist = self->_wishlist;
  }

  return wishlist;
}

- (int64_t)_wishlistState
{
  result = self->_wishlistState;
  if (!result)
  {
    v4 = [MEMORY[0x277D69A20] defaultStore];
    v5 = [v4 activeAccount];

    if (v5)
    {
      v6 = [v5 uniqueIdentifier];
      v7 = [v6 longLongValue];

      if ([MEMORY[0x277D69D58] existsForAccountIdentifier:v7])
      {
        v8 = [objc_alloc(MEMORY[0x277D69D58]) initWithAccountIdentifier:v7];
        v9 = [v8 lastSyncTime];

        v10 = 3;
        if (!v9)
        {
          v10 = 4;
        }

        self->_wishlistState = v10;

        goto LABEL_10;
      }

      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    self->_wishlistState = v11;
LABEL_10:

    return self->_wishlistState;
  }

  return result;
}

- (SUUIWishlistDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end