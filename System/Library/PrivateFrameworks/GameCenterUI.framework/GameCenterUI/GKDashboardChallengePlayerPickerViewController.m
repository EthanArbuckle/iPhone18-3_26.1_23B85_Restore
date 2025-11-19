@interface GKDashboardChallengePlayerPickerViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (GKDashboardChallengePlayerPickerViewController)initWithChallenge:(id)a3 initiallySelectedPlayers:(id)a4;
- (UIEdgeInsets)initialInsets;
- (id)preferredFocusEnvironments;
- (void)_updateButtonEnableState;
- (void)addMessage:(id)a3;
- (void)adjustCustomizeMessageConstraint;
- (void)applyInitialContentOffset;
- (void)cancel:(id)a3;
- (void)clearSelection;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dataUpdated:(BOOL)a3 withError:(id)a4;
- (void)loadData;
- (void)scrollViewDidScroll:(id)a3;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)selectPlayersAtIndexPaths:(id)a3;
- (void)send:(id)a3;
- (void)setMessage:(id)a3;
- (void)setSearchText:(id)a3;
- (void)setupNoContentView:(id)a3 withError:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation GKDashboardChallengePlayerPickerViewController

- (GKDashboardChallengePlayerPickerViewController)initWithChallenge:(id)a3 initiallySelectedPlayers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _gkPlatformNibName];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15.receiver = self;
  v15.super_class = GKDashboardChallengePlayerPickerViewController;
  v10 = [(GKDashboardCollectionViewController *)&v15 initWithNibName:v8 bundle:v9];

  if (v10)
  {
    [(GKDashboardChallengePlayerPickerViewController *)v10 setChallenge:v6];
    [(GKDashboardChallengePlayerPickerViewController *)v10 setInitiallySelectedPlayers:v7];
    v11 = [[GKDashboardChallengePlayerPickerDataSource alloc] initWithChallenge:v6];
    [(GKDashboardCollectionViewController *)v10 setDataSource:v11];
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    [(GKDashboardChallengePlayerPickerViewController *)v10 setTitle:v13];

    [(GKLoadingViewController *)v10 setLoadingIndicatorDelay:0.0];
  }

  return v10;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v17 viewDidLoad];
  v3 = [(GKChallenge *)self->_challenge detailGoalText];
  [(UILabel *)self->_descriptionLabel setText:v3];

  v4 = [(GKDashboardCollectionViewController *)self collectionView];
  [(GKDashboardCollectionViewController *)self setToHorizontalLayout:0];
  [(GKDashboardCollectionViewController *)self setAutoWidthUsesTwoColumnsWhenSpace:1];
  v5 = [v4 collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setCentersItemsInExcessSpace:1];
    [v5 setFocusScaleFactor:1.0];
  }

  [v4 setDelegate:self];
  [v4 setClipsToBounds:0];
  scrollingHeaderTopConstraint = self->_scrollingHeaderTopConstraint;
  if (scrollingHeaderTopConstraint)
  {
    [(NSLayoutConstraint *)scrollingHeaderTopConstraint constant];
    [(GKDashboardChallengePlayerPickerViewController *)self setScrollingHeaderTopConstraintConstant:?];
    [v5 sectionInset];
    [(GKDashboardChallengePlayerPickerViewController *)self setInitialInsets:?];
    [(GKDashboardChallengePlayerPickerViewController *)self setShouldApplyInitialOffset:1];
    [(UIView *)self->_scrollingHeader layoutIfNeeded];
    left = self->_initialInsets.left;
    bottom = self->_initialInsets.bottom;
    right = self->_initialInsets.right;
    [(UIView *)self->_scrollingHeader bounds];
    [v5 setSectionInset:{self->_initialInsets.top + v10, left, bottom, right}];
  }

  if (!self->_sendButton)
  {
    v11 = objc_alloc(MEMORY[0x277D751E0]);
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    v14 = [v11 initWithTitle:v13 style:2 target:self action:sel_send_];
    v15 = [(GKDashboardChallengePlayerPickerViewController *)self navigationItem];
    [v15 setRightBarButtonItem:v14];
  }

  [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint constant];
  self->_initialCustomizeMessageBottomConstraintConstant = v16;
  [(GKDashboardChallengePlayerPickerViewController *)self adjustCustomizeMessageConstraint];
  [(GKDashboardChallengePlayerPickerViewController *)self _updateButtonEnableState];
}

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v14 viewWillAppear:a3];
  v4 = [(GKDashboardChallengePlayerPickerViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(GKDashboardChallengePlayerPickerViewController *)self navigationItem];
    v8 = [v7 leftBarButtonItem];

    if (!v8)
    {
      v9 = objc_alloc(MEMORY[0x277D751E0]);
      v10 = GKGameCenterUIFrameworkBundle();
      v11 = GKGetLocalizedStringFromTableInBundle();
      v12 = [v9 initWithTitle:v11 style:0 target:self action:sel_cancel_];
      v13 = [(GKDashboardChallengePlayerPickerViewController *)self navigationItem];
      [v13 setLeftBarButtonItem:v12];
    }
  }

  [(GKDashboardChallengePlayerPickerViewController *)self applyInitialContentOffset];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(GKDashboardChallengePlayerPickerViewController *)self applyInitialContentOffset];
  [(GKDashboardChallengePlayerPickerViewController *)self setShouldIgnoreClearSelection:1];
  v5.receiver = self;
  v5.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 viewDidAppear:v3];
  [(GKDashboardChallengePlayerPickerViewController *)self setShouldIgnoreClearSelection:0];
  [(GKDashboardChallengePlayerPickerViewController *)self setShouldApplyInitialOffset:0];
}

- (void)adjustCustomizeMessageConstraint
{
  if (self->_customizeMessageBottomConstraint)
  {
    if ((*MEMORY[0x277D0C258] & 1) == 0)
    {
      v3 = [MEMORY[0x277D75418] currentDevice];
      v4 = [v3 userInterfaceIdiom];

      if (v4 == 1)
      {
        v8 = [(GKDashboardChallengePlayerPickerViewController *)self presentingViewController];
        if (v8)
        {
          [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint setConstant:self->_initialCustomizeMessageBottomConstraintConstant];
        }

        else
        {
          v5 = [(GKDashboardChallengePlayerPickerViewController *)self tabBarController];
          v6 = [v5 tabBar];
          [v6 bounds];
          [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint setConstant:v7 + self->_initialCustomizeMessageBottomConstraintConstant];
        }
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = GKDashboardChallengePlayerPickerViewController;
  v7 = a4;
  [(GKDashboardChallengePlayerPickerViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__GKDashboardChallengePlayerPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27966A690;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&__block_literal_global_3];
}

- (void)applyInitialContentOffset
{
  if (self->_shouldApplyInitialOffset)
  {
    v3 = [(GKDashboardCollectionViewController *)self dataSource];
    v4 = [v3 selectedPlayers];
    v5 = [v4 count];

    if (!v5)
    {
      v11 = [(GKDashboardCollectionViewController *)self collectionView];
      [v11 contentOffset];
      v7 = v6;
      [(UIView *)self->_scrollingHeader bounds];
      v9 = v8;
      [v11 contentInset];
      [v11 setContentOffset:0 animated:{v7, v9 - v10}];
    }
  }
}

- (void)setMessage:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_message isEqualToString:?])
  {
    v4 = [v6 copy];
    message = self->_message;
    self->_message = v4;

    [(UITextField *)self->_messageField setText:v6];
  }
}

- (void)loadData
{
  if (([(GKChallenge *)self->_challenge detailsLoaded]& 1) != 0)
  {
    v4.receiver = self;
    v4.super_class = GKDashboardChallengePlayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v4 loadData];
  }

  else
  {
    challenge = self->_challenge;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__GKDashboardChallengePlayerPickerViewController_loadData__block_invoke;
    v5[3] = &unk_2796699A8;
    v5[4] = self;
    [(GKChallenge *)challenge loadDetailsWithCompletionHandler:v5];
  }
}

id __58__GKDashboardChallengePlayerPickerViewController_loadData__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = GKDashboardChallengePlayerPickerViewController;
  return objc_msgSendSuper2(&v2, sel_loadData);
}

- (void)dataUpdated:(BOOL)a3 withError:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v23 dataUpdated:a3 withError:a4];
  v5 = [(GKDashboardCollectionViewController *)self dataSource];
  v6 = MEMORY[0x277CBEB18];
  v7 = [(NSArray *)self->_initiallySelectedPlayers count];
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 arrayWithCapacity:v8];
  if ([(NSArray *)self->_initiallySelectedPlayers count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_initiallySelectedPlayers;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v5 indexPathForPlayer:{*(*(&v19 + 1) + 8 * v14), v19}];
          if (v15)
          {
            [v9 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [(GKDashboardChallengePlayerPickerViewController *)self setInitiallySelectedPlayers:0];
  }

  else if ([v5 itemCount] == 1)
  {
    v16 = [v5 searchText];
    v17 = [v16 length];

    if (!v17)
    {
      v18 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      [v9 addObject:v18];
    }
  }

  if ([v9 count])
  {
    [(GKDashboardChallengePlayerPickerViewController *)self selectPlayersAtIndexPaths:v9];
  }

  [(GKDashboardChallengePlayerPickerViewController *)self _updateButtonEnableState];
}

- (void)selectPlayersAtIndexPaths:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKDashboardCollectionViewController *)self dataSource];
  v6 = [(GKDashboardCollectionViewController *)self collectionView];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v5 collectionView:v6 shouldSelectItemAtIndexPath:{v13, v14}])
        {
          [v6 selectItemAtIndexPath:v13 animated:0 scrollPosition:18];
          [(GKDashboardChallengePlayerPickerViewController *)self collectionView:v6 didSelectItemAtIndexPath:v13];
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);

    if (v10)
    {
      [(GKDashboardChallengePlayerPickerViewController *)self setNeedsFocusUpdate];
    }
  }

  else
  {
  }
}

- (void)setupNoContentView:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKDashboardCollectionViewController *)self dataSource];
  v9 = [v8 searchText];
  v10 = [v9 length];

  if (v10)
  {
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    [v6 setMessage:v12];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GKDashboardChallengePlayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v13 setupNoContentView:v6 withError:v7];
  }
}

- (id)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(UIButton *)self->_sendButton isEnabled]&& (v3 = self->_sendButton) != 0)
  {
    v4 = v3;
    v8[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = GKDashboardChallengePlayerPickerViewController;
    v5 = [(GKDashboardCollectionViewController *)&v7 preferredFocusEnvironments];
  }

  return v5;
}

- (void)clearSelection
{
  if (!self->_shouldIgnoreClearSelection)
  {
    v4.receiver = self;
    v4.super_class = GKDashboardChallengePlayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v4 clearSelection];
    v3 = [(GKDashboardCollectionViewController *)self dataSource];
    [v3 clearSelection];

    [(GKDashboardChallengePlayerPickerViewController *)self _updateButtonEnableState];
  }
}

- (void)send:(id)a3
{
  v7 = [(GKDashboardCollectionViewController *)self dataSource];
  v4 = [v7 selectedPlayers];
  if ([v4 count] < 0xB)
  {
    if ([v4 count])
    {
      [(GKChallenge *)self->_challenge issueToPlayers:v4 message:self->_message];
      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, v4, self->_message);
      }

      [(UIViewController *)self _gkRemoveViewController:self animated:1];
    }
  }

  else
  {
    v5 = [MEMORY[0x277D0BFF0] tooManyPlayersAlertController];
    [(GKDashboardChallengePlayerPickerViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)addMessage:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardCollectionViewController *)self dataSource];
  v6 = [GKChallengeComposeController alloc];
  challenge = self->_challenge;
  message = self->_message;
  v9 = [v5 selectedPlayers];
  v10 = [(GKChallengeComposeController *)v6 initWithChallenge:challenge defaultMessage:message players:v9];

  from = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__GKDashboardChallengePlayerPickerViewController_addMessage___block_invoke;
  v11[3] = &unk_27966A6D8;
  v11[4] = self;
  objc_copyWeak(&v12, &from);
  [(GKSimpleComposeController *)v10 setDoneHandler:v11];
  [(UIViewController *)self _gkShowViewController:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
}

void __61__GKDashboardChallengePlayerPickerViewController_addMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__GKDashboardChallengePlayerPickerViewController_addMessage___block_invoke_2;
    v8[3] = &unk_279669E48;
    v8[4] = *(a1 + 32);
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) _gkRemoveViewController:WeakRetained animated:1];
    [WeakRetained setDoneHandler:0];
  }
}

uint64_t __61__GKDashboardChallengePlayerPickerViewController_addMessage___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMessage:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 send:v2];
}

- (void)cancel:(id)a3
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, 0, 0);
  }

  [(UIViewController *)self _gkRemoveViewController:self animated:1];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  messageField = self->_messageField;
  if (messageField == a3)
  {
    v6 = [(UITextField *)self->_messageField text];
    [(GKDashboardChallengePlayerPickerViewController *)self setMessage:v6];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__GKDashboardChallengePlayerPickerViewController_textFieldShouldReturn___block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return messageField != a3;
}

- (void)_updateButtonEnableState
{
  v8 = [(GKDashboardCollectionViewController *)self dataSource];
  v3 = [v8 selectedPlayers];
  v4 = [v3 count];

  [(UIButton *)self->_sendButton setEnabled:v4 != 0];
  if (v4)
  {
    v5 = [MEMORY[0x277D0C1D8] shared];
    -[UIBarButtonItem setEnabled:](self->_customizeMessageButton, "setEnabled:", [v5 shouldAllowCustomCommunication]);
  }

  else
  {
    [(UIBarButtonItem *)self->_customizeMessageButton setEnabled:0];
  }

  if (!self->_sendButton)
  {
    v6 = [(GKDashboardChallengePlayerPickerViewController *)self navigationItem];
    v7 = [v6 rightBarButtonItem];
    [v7 setEnabled:v4 != 0];
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  [v4 setText:0];
  [v4 resignFirstResponder];

  [(GKDashboardChallengePlayerPickerViewController *)self setSearchText:0];
}

- (void)setSearchText:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKDashboardCollectionViewController *)self dataSource];
  [v5 setSearchText:v4];
  [(GKDashboardChallengePlayerPickerViewController *)self dataUpdated:1 withError:0];
  v6 = [(GKDashboardCollectionViewController *)self collectionView];
  v7 = [v5 selectedPlayers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v5 indexPathForPlayer:*(*(&v13 + 1) + 8 * v11)];
        [v6 selectItemAtIndexPath:v12 animated:0 scrollPosition:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5.receiver = self;
  v5.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 collectionView:a3 didSelectItemAtIndexPath:a4];
  [(GKDashboardChallengePlayerPickerViewController *)self _updateButtonEnableState];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5.receiver = self;
  v5.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 collectionView:a3 didDeselectItemAtIndexPath:a4];
  [(GKDashboardChallengePlayerPickerViewController *)self _updateButtonEnableState];
}

- (void)scrollViewDidScroll:(id)a3
{
  if (self->_scrollingHeaderTopConstraint)
  {
    scrollingHeaderTopConstraintConstant = self->_scrollingHeaderTopConstraintConstant;
    [a3 contentOffset];
    [(NSLayoutConstraint *)self->_scrollingHeaderTopConstraint setConstant:scrollingHeaderTopConstraintConstant - v5];

    [(GKDashboardChallengePlayerPickerViewController *)self applyInitialContentOffset];
  }
}

- (UIEdgeInsets)initialInsets
{
  top = self->_initialInsets.top;
  left = self->_initialInsets.left;
  bottom = self->_initialInsets.bottom;
  right = self->_initialInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end