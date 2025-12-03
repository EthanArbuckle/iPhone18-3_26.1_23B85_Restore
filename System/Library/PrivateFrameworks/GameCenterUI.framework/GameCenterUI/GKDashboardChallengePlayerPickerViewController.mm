@interface GKDashboardChallengePlayerPickerViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (GKDashboardChallengePlayerPickerViewController)initWithChallenge:(id)challenge initiallySelectedPlayers:(id)players;
- (UIEdgeInsets)initialInsets;
- (id)preferredFocusEnvironments;
- (void)_updateButtonEnableState;
- (void)addMessage:(id)message;
- (void)adjustCustomizeMessageConstraint;
- (void)applyInitialContentOffset;
- (void)cancel:(id)cancel;
- (void)clearSelection;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dataUpdated:(BOOL)updated withError:(id)error;
- (void)loadData;
- (void)scrollViewDidScroll:(id)scroll;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)selectPlayersAtIndexPaths:(id)paths;
- (void)send:(id)send;
- (void)setMessage:(id)message;
- (void)setSearchText:(id)text;
- (void)setupNoContentView:(id)view withError:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation GKDashboardChallengePlayerPickerViewController

- (GKDashboardChallengePlayerPickerViewController)initWithChallenge:(id)challenge initiallySelectedPlayers:(id)players
{
  challengeCopy = challenge;
  playersCopy = players;
  _gkPlatformNibName = [objc_opt_class() _gkPlatformNibName];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15.receiver = self;
  v15.super_class = GKDashboardChallengePlayerPickerViewController;
  v10 = [(GKDashboardCollectionViewController *)&v15 initWithNibName:_gkPlatformNibName bundle:v9];

  if (v10)
  {
    [(GKDashboardChallengePlayerPickerViewController *)v10 setChallenge:challengeCopy];
    [(GKDashboardChallengePlayerPickerViewController *)v10 setInitiallySelectedPlayers:playersCopy];
    v11 = [[GKDashboardChallengePlayerPickerDataSource alloc] initWithChallenge:challengeCopy];
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
  detailGoalText = [(GKChallenge *)self->_challenge detailGoalText];
  [(UILabel *)self->_descriptionLabel setText:detailGoalText];

  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [(GKDashboardCollectionViewController *)self setToHorizontalLayout:0];
  [(GKDashboardCollectionViewController *)self setAutoWidthUsesTwoColumnsWhenSpace:1];
  collectionViewLayout = [collectionView collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [collectionViewLayout setCentersItemsInExcessSpace:1];
    [collectionViewLayout setFocusScaleFactor:1.0];
  }

  [collectionView setDelegate:self];
  [collectionView setClipsToBounds:0];
  scrollingHeaderTopConstraint = self->_scrollingHeaderTopConstraint;
  if (scrollingHeaderTopConstraint)
  {
    [(NSLayoutConstraint *)scrollingHeaderTopConstraint constant];
    [(GKDashboardChallengePlayerPickerViewController *)self setScrollingHeaderTopConstraintConstant:?];
    [collectionViewLayout sectionInset];
    [(GKDashboardChallengePlayerPickerViewController *)self setInitialInsets:?];
    [(GKDashboardChallengePlayerPickerViewController *)self setShouldApplyInitialOffset:1];
    [(UIView *)self->_scrollingHeader layoutIfNeeded];
    left = self->_initialInsets.left;
    bottom = self->_initialInsets.bottom;
    right = self->_initialInsets.right;
    [(UIView *)self->_scrollingHeader bounds];
    [collectionViewLayout setSectionInset:{self->_initialInsets.top + v10, left, bottom, right}];
  }

  if (!self->_sendButton)
  {
    v11 = objc_alloc(MEMORY[0x277D751E0]);
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    v14 = [v11 initWithTitle:v13 style:2 target:self action:sel_send_];
    navigationItem = [(GKDashboardChallengePlayerPickerViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v14];
  }

  [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint constant];
  self->_initialCustomizeMessageBottomConstraintConstant = v16;
  [(GKDashboardChallengePlayerPickerViewController *)self adjustCustomizeMessageConstraint];
  [(GKDashboardChallengePlayerPickerViewController *)self _updateButtonEnableState];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v14 viewWillAppear:appear];
  navigationController = [(GKDashboardChallengePlayerPickerViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v6 = [viewControllers count];

  if (v6 == 1)
  {
    navigationItem = [(GKDashboardChallengePlayerPickerViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];

    if (!leftBarButtonItem)
    {
      v9 = objc_alloc(MEMORY[0x277D751E0]);
      v10 = GKGameCenterUIFrameworkBundle();
      v11 = GKGetLocalizedStringFromTableInBundle();
      v12 = [v9 initWithTitle:v11 style:0 target:self action:sel_cancel_];
      navigationItem2 = [(GKDashboardChallengePlayerPickerViewController *)self navigationItem];
      [navigationItem2 setLeftBarButtonItem:v12];
    }
  }

  [(GKDashboardChallengePlayerPickerViewController *)self applyInitialContentOffset];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(GKDashboardChallengePlayerPickerViewController *)self applyInitialContentOffset];
  [(GKDashboardChallengePlayerPickerViewController *)self setShouldIgnoreClearSelection:1];
  v5.receiver = self;
  v5.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 viewDidAppear:appearCopy];
  [(GKDashboardChallengePlayerPickerViewController *)self setShouldIgnoreClearSelection:0];
  [(GKDashboardChallengePlayerPickerViewController *)self setShouldApplyInitialOffset:0];
}

- (void)adjustCustomizeMessageConstraint
{
  if (self->_customizeMessageBottomConstraint)
  {
    if ((*MEMORY[0x277D0C258] & 1) == 0)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
        presentingViewController = [(GKDashboardChallengePlayerPickerViewController *)self presentingViewController];
        if (presentingViewController)
        {
          [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint setConstant:self->_initialCustomizeMessageBottomConstraintConstant];
        }

        else
        {
          tabBarController = [(GKDashboardChallengePlayerPickerViewController *)self tabBarController];
          tabBar = [tabBarController tabBar];
          [tabBar bounds];
          [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint setConstant:v7 + self->_initialCustomizeMessageBottomConstraintConstant];
        }
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = GKDashboardChallengePlayerPickerViewController;
  coordinatorCopy = coordinator;
  [(GKDashboardChallengePlayerPickerViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__GKDashboardChallengePlayerPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27966A690;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&__block_literal_global_3];
}

- (void)applyInitialContentOffset
{
  if (self->_shouldApplyInitialOffset)
  {
    dataSource = [(GKDashboardCollectionViewController *)self dataSource];
    selectedPlayers = [dataSource selectedPlayers];
    v5 = [selectedPlayers count];

    if (!v5)
    {
      collectionView = [(GKDashboardCollectionViewController *)self collectionView];
      [collectionView contentOffset];
      v7 = v6;
      [(UIView *)self->_scrollingHeader bounds];
      v9 = v8;
      [collectionView contentInset];
      [collectionView setContentOffset:0 animated:{v7, v9 - v10}];
    }
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (![(NSString *)self->_message isEqualToString:?])
  {
    v4 = [messageCopy copy];
    message = self->_message;
    self->_message = v4;

    [(UITextField *)self->_messageField setText:messageCopy];
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

- (void)dataUpdated:(BOOL)updated withError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v23 dataUpdated:updated withError:error];
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
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

          v15 = [dataSource indexPathForPlayer:{*(*(&v19 + 1) + 8 * v14), v19}];
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

  else if ([dataSource itemCount] == 1)
  {
    searchText = [dataSource searchText];
    v17 = [searchText length];

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

- (void)selectPlayersAtIndexPaths:(id)paths
{
  v19 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = pathsCopy;
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
        if ([dataSource collectionView:collectionView shouldSelectItemAtIndexPath:{v13, v14}])
        {
          [collectionView selectItemAtIndexPath:v13 animated:0 scrollPosition:18];
          [(GKDashboardChallengePlayerPickerViewController *)self collectionView:collectionView didSelectItemAtIndexPath:v13];
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

- (void)setupNoContentView:(id)view withError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  searchText = [dataSource searchText];
  v10 = [searchText length];

  if (v10)
  {
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    [viewCopy setMessage:v12];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GKDashboardChallengePlayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v13 setupNoContentView:viewCopy withError:errorCopy];
  }
}

- (id)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(UIButton *)self->_sendButton isEnabled]&& (v3 = self->_sendButton) != 0)
  {
    v4 = v3;
    v8[0] = v3;
    preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = GKDashboardChallengePlayerPickerViewController;
    preferredFocusEnvironments = [(GKDashboardCollectionViewController *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (void)clearSelection
{
  if (!self->_shouldIgnoreClearSelection)
  {
    v4.receiver = self;
    v4.super_class = GKDashboardChallengePlayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v4 clearSelection];
    dataSource = [(GKDashboardCollectionViewController *)self dataSource];
    [dataSource clearSelection];

    [(GKDashboardChallengePlayerPickerViewController *)self _updateButtonEnableState];
  }
}

- (void)send:(id)send
{
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  selectedPlayers = [dataSource selectedPlayers];
  if ([selectedPlayers count] < 0xB)
  {
    if ([selectedPlayers count])
    {
      [(GKChallenge *)self->_challenge issueToPlayers:selectedPlayers message:self->_message];
      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, selectedPlayers, self->_message);
      }

      [(UIViewController *)self _gkRemoveViewController:self animated:1];
    }
  }

  else
  {
    tooManyPlayersAlertController = [MEMORY[0x277D0BFF0] tooManyPlayersAlertController];
    [(GKDashboardChallengePlayerPickerViewController *)self presentViewController:tooManyPlayersAlertController animated:1 completion:0];
  }
}

- (void)addMessage:(id)message
{
  messageCopy = message;
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  v6 = [GKChallengeComposeController alloc];
  challenge = self->_challenge;
  message = self->_message;
  selectedPlayers = [dataSource selectedPlayers];
  v10 = [(GKChallengeComposeController *)v6 initWithChallenge:challenge defaultMessage:message players:selectedPlayers];

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

- (void)cancel:(id)cancel
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, 0, 0);
  }

  [(UIViewController *)self _gkRemoveViewController:self animated:1];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  messageField = self->_messageField;
  if (messageField == return)
  {
    text = [(UITextField *)self->_messageField text];
    [(GKDashboardChallengePlayerPickerViewController *)self setMessage:text];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__GKDashboardChallengePlayerPickerViewController_textFieldShouldReturn___block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return messageField != return;
}

- (void)_updateButtonEnableState
{
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  selectedPlayers = [dataSource selectedPlayers];
  v4 = [selectedPlayers count];

  [(UIButton *)self->_sendButton setEnabled:v4 != 0];
  if (v4)
  {
    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    -[UIBarButtonItem setEnabled:](self->_customizeMessageButton, "setEnabled:", [mEMORY[0x277D0C1D8] shouldAllowCustomCommunication]);
  }

  else
  {
    [(UIBarButtonItem *)self->_customizeMessageButton setEnabled:0];
  }

  if (!self->_sendButton)
  {
    navigationItem = [(GKDashboardChallengePlayerPickerViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v4 != 0];
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [clickedCopy setText:0];
  [clickedCopy resignFirstResponder];

  [(GKDashboardChallengePlayerPickerViewController *)self setSearchText:0];
}

- (void)setSearchText:(id)text
{
  v18 = *MEMORY[0x277D85DE8];
  textCopy = text;
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  [dataSource setSearchText:textCopy];
  [(GKDashboardChallengePlayerPickerViewController *)self dataUpdated:1 withError:0];
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  selectedPlayers = [dataSource selectedPlayers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [selectedPlayers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selectedPlayers);
        }

        v12 = [dataSource indexPathForPlayer:*(*(&v13 + 1) + 8 * v11)];
        [collectionView selectItemAtIndexPath:v12 animated:0 scrollPosition:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [selectedPlayers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 collectionView:view didSelectItemAtIndexPath:path];
  [(GKDashboardChallengePlayerPickerViewController *)self _updateButtonEnableState];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = GKDashboardChallengePlayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 collectionView:view didDeselectItemAtIndexPath:path];
  [(GKDashboardChallengePlayerPickerViewController *)self _updateButtonEnableState];
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (self->_scrollingHeaderTopConstraint)
  {
    scrollingHeaderTopConstraintConstant = self->_scrollingHeaderTopConstraintConstant;
    [scroll contentOffset];
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