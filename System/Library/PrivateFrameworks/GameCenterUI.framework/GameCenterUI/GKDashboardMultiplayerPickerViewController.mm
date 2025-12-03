@interface GKDashboardMultiplayerPickerViewController
- (BOOL)nearbyOnly;
- (BOOL)supportsNearby;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (GKDashboardMultiplayerPickerDelegate)multiplayerPickerDelegate;
- (GKDashboardMultiplayerPickerViewController)initWithMaxSelectable:(int64_t)selectable hiddenPlayers:(id)players nearbyOnly:(BOOL)only pickerOrigin:(int64_t)origin;
- (NSLayoutConstraint)composeTextViewContainerBackgroundHeightConstraint;
- (NSLayoutConstraint)navigationHeaderHeightConstraint;
- (UIButton)customizeMessageButton;
- (UIButton)sendButton;
- (UIEdgeInsets)collectionSectionInset;
- (UILabel)collapsedSubtitle;
- (UILabel)collapsedTitle;
- (UILabel)descriptionLabel;
- (UILabel)headerSubtitle;
- (UILabel)headerTitle;
- (UIStackView)headerContentView;
- (UITextField)messageField;
- (UIView)collapsedTitleContainer;
- (UIView)composeTextViewContainer;
- (UIView)composeTextViewContainerBackground;
- (UIView)dividerLine;
- (UIVisualEffectView)backgroundEffectView;
- (UIVisualEffectView)navigationVisualEffectBackground;
- (id)blurEffectForTraitCollection:(id)collection;
- (id)composedNameForSuggestedMessageGroup:(id)group;
- (id)createSortPickerMenu;
- (id)preferredFocusEnvironments;
- (id)searchFieldPlaceHolderText;
- (void)_updateButtonEnableState;
- (void)_updateCollectionView;
- (void)addMessage:(id)message;
- (void)addRecipientForPlayers:(id)players withName:(id)name;
- (void)adjustCustomizeMessageConstraint;
- (void)cancel:(id)cancel;
- (void)clearSelection;
- (void)collapseHeaderView;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didSelectRecipients:(id)recipients;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder;
- (void)composeRecipientViewReturnPressed:(id)pressed;
- (void)configureComposeTextView;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)customInviteViewController:(id)controller didFinishWithMessage:(id)message;
- (void)dataUpdated:(BOOL)updated withError:(id)error;
- (void)didBeginSearchTextEditing;
- (void)didEndSearchTextEditing;
- (void)didPressShowContactPickerButton:(id)button;
- (void)dockHeaderViewIfNeeded;
- (void)handleSearchTextFieldReturn:(id)return;
- (void)highlightAlreadySelectedPlayers:(id)players inGroup:(id)group;
- (void)highlightRecipients:(id)recipients;
- (void)pickerDatasource:(id)datasource didDeselectPlayers:(id)players inGroup:(id)group;
- (void)pickerDatasource:(id)datasource didPickPlayers:(id)players;
- (void)pickerDatasource:(id)datasource didSelectPlayers:(id)players inGroup:(id)group;
- (void)pickerDatasourceDidSelectAddFriend:(id)friend;
- (void)removeRecipientWithName:(id)name;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)send:(id)send;
- (void)setMessage:(id)message;
- (void)setNearbyDelegate:(id)delegate;
- (void)setSearchText:(id)text;
- (void)setSupportsNearby:(BOOL)nearby;
- (void)setupNoContentView:(id)view withError:(id)error;
- (void)showCollapsedTitleAndSubtitleInNavBar;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAddMessageButtonVisibility;
- (void)updateCollectionViewContentInsets;
- (void)updateNavHeaderHeightAndOpacity;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willShowKeyboard:(id)keyboard;
@end

@implementation GKDashboardMultiplayerPickerViewController

- (GKDashboardMultiplayerPickerViewController)initWithMaxSelectable:(int64_t)selectable hiddenPlayers:(id)players nearbyOnly:(BOOL)only pickerOrigin:(int64_t)origin
{
  onlyCopy = only;
  playersCopy = players;
  _gkPlatformNibName = [objc_opt_class() _gkPlatformNibName];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17.receiver = self;
  v17.super_class = GKDashboardMultiplayerPickerViewController;
  v13 = [(GKDashboardCollectionViewController *)&v17 initWithNibName:_gkPlatformNibName bundle:v12];

  if (v13)
  {
    v14 = [[GKDashboardMultiplayerPickerDataSource alloc] initWithMaxSelectable:selectable previouslyInvitedPlayers:playersCopy nearbyOnly:onlyCopy pickerOrigin:origin];
    [(GKDashboardMultiplayerPickerDataSource *)v14 setDelegate:v13];
    [(GKCollectionDataSource *)v14 setBreakSearchInputTextIntoMultipleTerms:0];
    [(GKCollectionDataSource *)v14 setPresentationViewController:v13];
    [(GKDashboardCollectionViewController *)v13 setDataSource:v14];
    [(GKLoadingViewController *)v13 setLoadingIndicatorDelay:0.0];
    if ([playersCopy count])
    {
      reporter = [MEMORY[0x277D0C1F8] reporter];
      [reporter reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BBD0]];
    }

    [(GKDashboardMultiplayerPickerViewController *)v13 setPickerOrigin:origin];
  }

  return v13;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardMultiplayerPickerViewController *)&v8 viewWillDisappear:disappear];
  searchTextField = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [searchTextField setDelegate:0];

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, 0, 0);
    [(GKDashboardMultiplayerPickerViewController *)self setCompletionHandler:0];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardMultiplayerPickerViewController *)&v5 viewDidDisappear:disappear];
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  [pickerDataSource setNearbyPlayersChangedHandler:0];

  [(GKDashboardCollectionViewController *)self setDataSource:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardMultiplayerPickerViewController *)&v3 viewDidLayoutSubviews];
  [(GKDashboardMultiplayerPickerViewController *)self updateCollectionViewContentInsets];
}

- (void)viewDidLoad
{
  v92[2] = *MEMORY[0x277D85DE8];
  v91.receiver = self;
  v91.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v91 viewDidLoad];
  val = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  [val setOnDarkBackground:1];
  local = [MEMORY[0x277D0C138] local];
  v4 = ([local isMultiplayerGamingRestricted] & 1) != 0 || -[GKDashboardMultiplayerPickerViewController pickerOrigin](self, "pickerOrigin") != 1;
  [(GKDashboardMultiplayerPickerViewController *)self setExcludesContacts:v4];

  objc_initWeak(&location, self);
  searchFieldPlaceHolderText = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
  searchTextField = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [searchTextField setPlaceholder:searchFieldPlaceHolderText];

  searchTextField2 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [searchTextField2 setDelegate:self];

  [(GKDashboardMultiplayerPickerViewController *)self configureComposeTextView];
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [(GKDashboardCollectionViewController *)self setAutoWidthUsesTwoColumnsWhenSpace:0];
  [collectionView setPrefetchingEnabled:0];
  navigationController = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:0];

  v11 = objc_alloc(MEMORY[0x277D75788]);
  navigationController2 = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  standardAppearance = [navigationBar2 standardAppearance];
  v15 = [v11 initWithBarAppearance:standardAppearance];

  [v15 configureWithTransparentBackground];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v15 setShadowColor:clearColor];

  v17 = objc_alloc_init(MEMORY[0x277D755B8]);
  [v15 setShadowImage:v17];

  navigationItem = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
  [navigationItem setStandardAppearance:v15];

  navigationItem2 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
  [navigationItem2 setScrollEdgeAppearance:v15];

  v20 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v20 setSpacing:28.0];
  [v20 setAxis:0];
  [v20 setDistribution:3];
  [v20 setAlignment:3];
  v79 = v20;
  v21 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20]];
  v83 = [v21 fontDescriptorWithSymbolicTraits:2];

  v22 = MEMORY[0x277D755D0];
  v23 = [MEMORY[0x277D74300] fontWithDescriptor:v83 size:0.0];
  v82 = [v22 configurationWithFont:v23];

  v24 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.circle.fill" withConfiguration:v82];
  v81 = [v24 imageWithRenderingMode:2];

  v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v81 style:0 target:self action:sel_send_];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v25 setTintColor:labelColor];

  v27 = GKGameCenterUIFrameworkBundle();
  v28 = GKGetLocalizedStringFromTableInBundle();
  [v25 setAccessibilityLabel:v28];

  [(GKDashboardMultiplayerPickerViewController *)self setNavBarSendButton:v25];
  v78 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769C0]];
  v29 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.bubble" withConfiguration:?];
  v80 = [v29 imageWithRenderingMode:2];

  v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v80 style:0 target:self action:sel_addMessage_];
  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [v30 setTintColor:labelColor2];

  v32 = GKGameCenterUIFrameworkBundle();
  v33 = GKGetLocalizedStringFromTableInBundle();
  [v30 setAccessibilityLabel:v33];

  [(GKDashboardMultiplayerPickerViewController *)self setNavBarMessageButton:v30];
  v92[0] = v25;
  v92[1] = v30;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
  navigationItem3 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItems:v34];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  navigationController3 = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  [navigationBar3 setTintColor:whiteColor];

  headerTitle = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  v40 = *MEMORY[0x277D76808];
  [headerTitle setMaximumContentSizeCategory:*MEMORY[0x277D76808]];

  headerSubtitle = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  [headerSubtitle setMaximumContentSizeCategory:v40];

  objc_initWeak(&from, val);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __57__GKDashboardMultiplayerPickerViewController_viewDidLoad__block_invoke;
  v85[3] = &unk_27966ACD8;
  objc_copyWeak(&v87, &location);
  objc_copyWeak(&v88, &from);
  v77 = collectionView;
  v86 = v77;
  [val setNearbyPlayersChangedHandler:v85];
  [(GKDashboardMultiplayerPickerViewController *)self _updateCollectionView];
  [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint constant];
  self->_initialCustomizeMessageBottomConstraintConstant = v42;
  [(GKDashboardMultiplayerPickerViewController *)self adjustCustomizeMessageConstraint];
  dataSource = [(GKDashboardCollectionViewController *)self dataSource];
  maxSelectable = [dataSource maxSelectable];

  v45 = MEMORY[0x277CCACA8];
  v46 = GKGameCenterUIFrameworkBundle();
  v47 = GKGetLocalizedStringFromTableInBundle();
  selectedPlayers = [val selectedPlayers];
  v49 = [v45 localizedStringWithFormat:v47, objc_msgSend(selectedPlayers, "count"), maxSelectable];

  [(GKDashboardMultiplayerPickerViewController *)self pickerOrigin];
  v50 = GKGameCenterUIFrameworkBundle();
  v51 = GKGetLocalizedStringFromTableInBundle();

  navigationVisualEffectBackground = [(GKDashboardMultiplayerPickerViewController *)self navigationVisualEffectBackground];
  layer = [navigationVisualEffectBackground layer];
  [layer setAllowsGroupBlending:0];

  headerTitle2 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [headerTitle2 setText:v51];

  headerTitle3 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [headerTitle3 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.HeaderTitle"];

  headerTitle4 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [headerTitle4 setNumberOfLines:1];

  headerTitle5 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [headerTitle5 setAdjustsFontSizeToFitWidth:1];

  headerSubtitle2 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  [headerSubtitle2 setText:v49];

  headerSubtitle3 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  [headerSubtitle3 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.HeaderSubtitle"];

  headerSubtitle4 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  text = [headerSubtitle4 text];
  collapsedSubtitle = [(GKDashboardMultiplayerPickerViewController *)self collapsedSubtitle];
  [collapsedSubtitle setText:text];

  collapsedSubtitle2 = [(GKDashboardMultiplayerPickerViewController *)self collapsedSubtitle];
  [collapsedSubtitle2 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.CollapsedSubtitle"];

  v64 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08]];
  v65 = [v64 fontDescriptorWithSymbolicTraits:2];

  v66 = [MEMORY[0x277D74300] fontWithDescriptor:v65 size:0.0];
  headerTitle6 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [headerTitle6 setFont:v66];

  headerSubtitle5 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  layer2 = [headerSubtitle5 layer];
  [layer2 setCompositingFilter:*MEMORY[0x277CDA5E8]];

  [(GKDashboardMultiplayerPickerViewController *)self setTitle:0];
  showContactPickerButton = [(GKDashboardMultiplayerPickerViewController *)self showContactPickerButton];
  [showContactPickerButton setHidden:1];

  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
  v71 = GKGameCenterUIFrameworkBundle();
  v72 = GKGetLocalizedStringFromTableInBundle();
  customizeMessageButton = [(GKDashboardMultiplayerPickerViewController *)self customizeMessageButton];
  [customizeMessageButton setAccessibilityLabel:v72];

  v74 = GKGameCenterUIFrameworkBundle();
  v75 = GKGetLocalizedStringFromTableInBundle();
  sendButton = [(GKDashboardMultiplayerPickerViewController *)self sendButton];
  [sendButton setAccessibilityLabel:v75];

  [(GKDashboardMultiplayerPickerViewController *)self setUsePreferredFocusCell:1];
  objc_destroyWeak(&v88);
  objc_destroyWeak(&v87);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

void __57__GKDashboardMultiplayerPickerViewController_viewDidLoad__block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v8 = objc_loadWeakRetained(a1 + 6);
  v9 = v8;
  if (WeakRetained && v8)
  {
    v10 = [a1[4] cellForItemAtIndexPath:v5];
    v11 = [v10 isSelected];

    v12 = [v9 itemCount] == 0;
    v13 = [WeakRetained noContentView];
    [v13 setLoading:v12];

    v14 = a1[4];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__GKDashboardMultiplayerPickerViewController_viewDidLoad__block_invoke_2;
    v19[3] = &unk_27966A9A8;
    v20 = v5;
    v21 = a1[4];
    v22 = v6;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__GKDashboardMultiplayerPickerViewController_viewDidLoad__block_invoke_3;
    v15[3] = &unk_27966ACB0;
    v16 = WeakRetained;
    v18 = v11;
    v17 = v22;
    [v14 performBatchUpdates:v19 completion:v15];
  }
}

void __57__GKDashboardMultiplayerPickerViewController_viewDidLoad__block_invoke_2(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = a1[5];
    v8[0] = a1[4];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v2 deleteItemsAtIndexPaths:v3];
  }

  v4 = a1[6];
  if (v4)
  {
    v5 = a1[5];
    v7 = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
    [v5 insertItemsAtIndexPaths:v6];
  }
}

void __57__GKDashboardMultiplayerPickerViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateButtonEnableState];
  if (*(a1 + 48) == 1 && *(a1 + 40))
  {
    v2 = [*(a1 + 32) pickerDataSource];
    [v2 selectItemAtIndexPath:*(a1 + 40) animated:0 scrollPosition:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v47.receiver = self;
  v47.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v47 viewWillAppear:appear];
  backgroundEffectView = [(GKDashboardMultiplayerPickerViewController *)self backgroundEffectView];
  if (backgroundEffectView)
  {
    goto LABEL_4;
  }

  if ([(GKDashboardMultiplayerPickerViewController *)self pickerOrigin]== 1)
  {
    v5 = objc_alloc(MEMORY[0x277D75D68]);
    traitCollection = [(GKDashboardMultiplayerPickerViewController *)self traitCollection];
    v7 = [(GKDashboardMultiplayerPickerViewController *)self blurEffectForTraitCollection:traitCollection];
    backgroundEffectView = [v5 initWithEffect:v7];

    _gkGameLayerBackgroundVisualEffect = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
    [backgroundEffectView setBackgroundEffects:_gkGameLayerBackgroundVisualEffect];

    [backgroundEffectView _setGroupName:@"gameLayerGroup"];
    view = [(GKDashboardMultiplayerPickerViewController *)self view];
    [view bounds];
    [backgroundEffectView setFrame:?];

    [backgroundEffectView setAutoresizingMask:18];
    view2 = [(GKDashboardMultiplayerPickerViewController *)self view];
    [view2 insertSubview:backgroundEffectView atIndex:0];

    [(GKDashboardMultiplayerPickerViewController *)self setBackgroundEffectView:backgroundEffectView];
LABEL_4:
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_willShowKeyboard_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_willHideKeyboard_ name:*MEMORY[0x277D76C50] object:0];

  navigationController = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v15 = [viewControllers count];

  if (v15 == 1)
  {
    navigationItem = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];

    if (!leftBarButtonItem)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v19 = [mEMORY[0x277D75128] statusBarOrientation] - 1;

      v20 = objc_alloc_init(MEMORY[0x277D75D18]);
      v21 = [GKFocusableButton buttonWithType:1];
      v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      [v21 setFont:v22];

      v23 = GKGameCenterUIFrameworkBundle();
      v24 = GKGetLocalizedStringFromTableInBundle();
      [v21 setTitle:v24 forState:0];

      [v21 addTarget:self action:sel_cancel_ forEvents:0x2000];
      labelColor = [MEMORY[0x277D75348] labelColor];
      [v21 setTintColor:labelColor];

      v26 = *MEMORY[0x277CDA5E8];
      layer = [v21 layer];
      [layer setCompositingFilter:v26];

      titleLabel = [v21 titleLabel];
      [titleLabel setAdjustsFontForContentSizeCategory:1];

      [v21 setMaximumContentSizeCategory:*MEMORY[0x277D76828]];
      [v20 addSubview:v21];
      [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor = [v21 leadingAnchor];
      leadingAnchor2 = [v20 leadingAnchor];
      v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v31 setActive:1];

      trailingAnchor = [v21 trailingAnchor];
      trailingAnchor2 = [v20 trailingAnchor];
      v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v34 setActive:1];

      bottomAnchor = [v21 bottomAnchor];
      bottomAnchor2 = [v20 bottomAnchor];
      v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v37 setActive:1];

      topAnchor = [v21 topAnchor];
      topAnchor2 = [v20 topAnchor];
      v40 = 0.0;
      if (v19 >= 2)
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        v40 = 3.0;
        if (userInterfaceIdiom == 1)
        {
          v40 = 0.0;
        }
      }

      v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v40];
      [(GKDashboardMultiplayerPickerViewController *)self setLeftBarButtonTopConstraint:v43];

      leftBarButtonTopConstraint = [(GKDashboardMultiplayerPickerViewController *)self leftBarButtonTopConstraint];
      [leftBarButtonTopConstraint setActive:1];

      v45 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v20];
      navigationItem2 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
      [navigationItem2 setLeftBarButtonItem:v45];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v15[2] = *MEMORY[0x277D85DE8];
  [(GKDashboardMultiplayerPickerViewController *)self setShouldIgnoreClearSelection:1];
  v13.receiver = self;
  v13.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v13 viewDidAppear:appearCopy];
  navigationController = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [(GKDashboardMultiplayerPickerViewController *)self _gkConfigureFocusGuidesForNavigationBar:navigationBar];

  reporter = [MEMORY[0x277D0C1F8] reporter];
  v8 = *MEMORY[0x277D0BEA0];
  v9 = *MEMORY[0x277D0BC28];
  v10 = *MEMORY[0x277D0BC38];
  v14[0] = *MEMORY[0x277D0BC40];
  v14[1] = v10;
  v11 = *MEMORY[0x277D0BC70];
  v15[0] = *MEMORY[0x277D0BC78];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [reporter reportEvent:v8 type:v9 payload:v12];
}

- (void)updateCollectionViewContentInsets
{
  headerContentView = [(GKDashboardMultiplayerPickerViewController *)self headerContentView];
  [headerContentView frame];
  v4 = v3 + 16.0;
  [(GKDashboardMultiplayerPickerViewController *)self keyboardHeight];
  v6 = v5 + 16.0;
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView setContentInset:{v4, 0.0, v6, 0.0}];
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
        presentingViewController = [(GKDashboardMultiplayerPickerViewController *)self presentingViewController];
        if (presentingViewController)
        {
          [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint setConstant:self->_initialCustomizeMessageBottomConstraintConstant];
        }

        else
        {
          tabBarController = [(GKDashboardMultiplayerPickerViewController *)self tabBarController];
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
  v9.super_class = GKDashboardMultiplayerPickerViewController;
  coordinatorCopy = coordinator;
  [(GKDashboardMultiplayerPickerViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__GKDashboardMultiplayerPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27966AD00;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&__block_literal_global_12];
}

void __97__GKDashboardMultiplayerPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) adjustCustomizeMessageConstraint];
  if (*(a1 + 40) >= *(a1 + 48))
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 3.0;
    }

    v7 = [*(a1 + 32) rightBarButtonTopConstraint];
    [v7 setConstant:v6];

    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 3.0;
    }
  }

  else
  {
    v2 = [*(a1 + 32) rightBarButtonTopConstraint];
    v3 = 0.0;
    [v2 setConstant:0.0];
  }

  v10 = [*(a1 + 32) leftBarButtonTopConstraint];
  [v10 setConstant:v3];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v12 traitCollectionDidChange:changeCopy];
  if (![(GKDashboardCollectionViewController *)self isLoading])
  {
    [(GKDashboardMultiplayerPickerViewController *)self _updateCollectionView];
    [(GKDashboardMultiplayerPickerViewController *)self updateNavHeaderHeightAndOpacity];
    traitCollection = [(GKDashboardMultiplayerPickerViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

    if (preferredContentSizeCategory2 != preferredContentSizeCategory)
    {
      v8 = MEMORY[0x277CCAA78];
      collectionView = [(GKDashboardCollectionViewController *)self collectionView];
      v10 = [v8 indexSetWithIndexesInRange:{0, objc_msgSend(collectionView, "numberOfSections")}];

      collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
      [collectionView2 reloadSections:v10];
    }
  }
}

- (id)blurEffectForTraitCollection:(id)collection
{
  v3 = [collection userInterfaceStyle] == 2;
  v4 = [MEMORY[0x277D75210] effectWithStyle:2 * v3];

  return v4;
}

- (void)configureComposeTextView
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(GKDashboardMultiplayerPickerViewController *)self setRecipientMap:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(GKDashboardMultiplayerPickerViewController *)self setRecipientPlayerMap:dictionary2];

  [MEMORY[0x277CFBCB0] preferredHeight];
  v6 = v5;
  composeTextViewHeightConstraint = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
  [composeTextViewHeightConstraint setConstant:v6];

  v28 = objc_alloc_init(MEMORY[0x277CFBCB0]);
  [v28 setDelegate:self];
  v8 = MEMORY[0x277CCACA8];
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = GKGetLocalizedStringFromTableInBundle();
  v11 = [v8 stringWithFormat:v10, &stru_28612D290];
  [v28 setLabel:v11];

  textView = [v28 textView];
  [textView setTextAlignment:4];

  [v28 setSeparatorHidden:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v28 setBackgroundColor:clearColor];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v28 setTintColor:labelColor];

  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  textView2 = [v28 textView];
  [textView2 setTextColor:tertiaryLabelColor];

  searchFieldPlaceHolderText = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
  textView3 = [v28 textView];
  [textView3 setText:searchFieldPlaceHolderText];

  [(GKDashboardMultiplayerPickerViewController *)self setComposeTextViewShowingPlaceholderText:1];
  [v28 setShowsAddButtonWhenExpanded:0];
  composeTextViewContainer = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewContainer];
  [composeTextViewContainer addSubview:v28];

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  composeTextViewContainerBackground = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewContainerBackground];
  [composeTextViewContainerBackground removeFromSuperview];

  v21 = MEMORY[0x277CCAAD0];
  composeTextViewContainer2 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewContainer];
  [v21 _gkInstallEdgeConstraintsForView:v28 containedWithinParentView:composeTextViewContainer2 edgeInsets:{5.0, -6.0, 0.0, 6.0}];

  [(GKDashboardMultiplayerPickerViewController *)self setComposeTextView:v28];
  composeTextView = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  label = [composeTextView label];
  [label setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.composeSection.label"];

  composeTextView2 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  [composeTextView2 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.composeSection"];

  composeTextView3 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  textView4 = [composeTextView3 textView];
  [textView4 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.composeSection.placeHolderText"];
}

- (void)addRecipientForPlayers:(id)players withName:(id)name
{
  nameCopy = name;
  playersCopy = players;
  v20 = [[GKComposeRecipient alloc] initWithContact:0 address:nameCopy kind:5];
  recipientMap = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
  [recipientMap setObject:v20 forKeyedSubscript:nameCopy];

  recipientPlayerMap = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
  [recipientPlayerMap setObject:playersCopy forKeyedSubscript:v20];

  composeTextView = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  [composeTextView addRecipient:v20];

  composeTextView2 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  v12 = [composeTextView2 atomViewForRecipient:v20];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v14 = [whiteColor colorWithAlphaComponent:0.1];
  [v12 setBackgroundColor:v14];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v12 setTintColor:systemGrayColor];

  labelColor = [MEMORY[0x277D75348] labelColor];
  titleLabel = [v12 titleLabel];
  [titleLabel setTextColor:labelColor];

  v18 = *MEMORY[0x277CDA5E8];
  layer = [v12 layer];
  [layer setCompositingFilter:v18];
}

- (void)removeRecipientWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v10 = nameCopy;
    recipientMap = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    v6 = [recipientMap objectForKeyedSubscript:v10];

    [(GKDashboardMultiplayerPickerViewController *)self setRecipientRemovedImplicitly:1];
    composeTextView = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
    [composeTextView removeRecipient:v6];

    [(GKDashboardMultiplayerPickerViewController *)self setRecipientRemovedImplicitly:0];
    if (v6)
    {
      recipientPlayerMap = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
      [recipientPlayerMap removeObjectForKey:v6];
    }

    recipientMap2 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    [recipientMap2 removeObjectForKey:v10];
  }

  MEMORY[0x2821F96F8]();
}

- (void)highlightRecipients:(id)recipients
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = recipients;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        composeTextView = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
        v10 = [composeTextView atomViewForRecipient:v8];

        v11 = MEMORY[0x277D75D18];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __66__GKDashboardMultiplayerPickerViewController_highlightRecipients___block_invoke;
        v16[3] = &unk_2796699A8;
        v17 = v10;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __66__GKDashboardMultiplayerPickerViewController_highlightRecipients___block_invoke_2;
        v14[3] = &unk_279669C90;
        v15 = v17;
        v12 = v17;
        [v11 animateWithDuration:v16 animations:v14 completion:0.25];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

void __66__GKDashboardMultiplayerPickerViewController_highlightRecipients___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v3 colorWithAlphaComponent:0.4];
  [*(a1 + 32) setBackgroundColor:v2];
}

void __66__GKDashboardMultiplayerPickerViewController_highlightRecipients___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __66__GKDashboardMultiplayerPickerViewController_highlightRecipients___block_invoke_3;
  v2[3] = &unk_2796699A8;
  v3 = *(a1 + 32);
  [v1 animateWithDuration:v2 animations:0.25];
}

void __66__GKDashboardMultiplayerPickerViewController_highlightRecipients___block_invoke_3(uint64_t a1)
{
  v3 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v3 colorWithAlphaComponent:0.12];
  [*(a1 + 32) setBackgroundColor:v2];
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (![(NSString *)self->_message isEqualToString:?])
  {
    v4 = [messageCopy copy];
    message = self->_message;
    self->_message = v4;

    WeakRetained = objc_loadWeakRetained(&self->_messageField);
    [WeakRetained setText:messageCopy];
  }
}

- (BOOL)supportsNearby
{
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  supportsNearby = [pickerDataSource supportsNearby];

  return supportsNearby;
}

- (void)setSupportsNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  [pickerDataSource setSupportsNearby:nearbyCopy];

  searchFieldPlaceHolderText = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
  searchTextField = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [searchTextField setPlaceholder:searchFieldPlaceHolderText];
}

- (BOOL)nearbyOnly
{
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  nearbyOnly = [pickerDataSource nearbyOnly];

  return nearbyOnly;
}

- (void)setNearbyDelegate:(id)delegate
{
  delegateCopy = delegate;
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  [pickerDataSource setNearbyDelegate:delegateCopy];
}

- (id)searchFieldPlaceHolderText
{
  [(GKDashboardMultiplayerPickerViewController *)self excludesContacts];
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  return v3;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  composeTextView = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  textView = [composeTextView textView];
  isFirstResponder = [textView isFirstResponder];

  if (isFirstResponder)
  {
    [(GKDashboardMultiplayerPickerViewController *)self setSkipAddressTokenization:1];
    composeTextView2 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
    textView2 = [composeTextView2 textView];
    [textView2 resignFirstResponder];

    [(GKDashboardMultiplayerPickerViewController *)self setSkipAddressTokenization:0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];

  if (collectionView == scrollCopy)
  {
    isAnimatingComposeTextViewSizeChange = [(GKDashboardMultiplayerPickerViewController *)self isAnimatingComposeTextViewSizeChange];

    if (!isAnimatingComposeTextViewSizeChange)
    {

      [(GKDashboardMultiplayerPickerViewController *)self updateNavHeaderHeightAndOpacity];
    }
  }

  else
  {
  }
}

- (void)updateNavHeaderHeightAndOpacity
{
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([currentTraitCollection horizontalSizeClass] == 1)
  {
    currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
    v8 = [currentTraitCollection2 verticalSizeClass] != 2;
  }

  else
  {
    v8 = 1;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 || v8)
  {
    composeTextViewHeightConstraint = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
    [composeTextViewHeightConstraint constant];
    v13 = v14;
  }

  else
  {
    composeTextViewHeightConstraint = [(GKDashboardMultiplayerPickerViewController *)self headerContentView];
    [composeTextViewHeightConstraint frame];
    v13 = v12;
  }

  view = [(GKDashboardMultiplayerPickerViewController *)self view];
  [view safeAreaInsets];
  v17 = v13 + v16 + 16.0;

  view2 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [view2 safeAreaInsets];
  v20 = -v5 - v19 + -16.0;

  if (v13 >= v20)
  {
    v20 = v13;
  }

  navigationHeaderHeightConstraint = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
  [navigationHeaderHeightConstraint setConstant:v20];

  v22 = (v5 + v17) / 24.0;
  if (v22 > 1.0)
  {
    v22 = 1.0;
  }

  v23 = fmax(v22, 0.0);
  navigationVisualEffectBackground = [(GKDashboardMultiplayerPickerViewController *)self navigationVisualEffectBackground];
  layer = [navigationVisualEffectBackground layer];
  *&v26 = v23;
  [layer setOpacity:v26];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 == 1 || v8) && (-[GKDashboardMultiplayerPickerViewController navigationHeaderHeightConstraint](self, "navigationHeaderHeightConstraint"), v29 = objc_claimAutoreleasedReturnValue(), [v29 constant], v31 = v30, v29, v31 <= v13))
  {

    [(GKDashboardMultiplayerPickerViewController *)self showCollapsedTitleAndSubtitleInNavBar];
  }

  else
  {
    navigationItem = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
    [navigationItem setTitleView:0];
  }
}

- (void)showCollapsedTitleAndSubtitleInNavBar
{
  v33 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v3 setAxis:1];
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  headerTitle = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  text = [headerTitle text];
  [v4 setText:text];

  [v4 sizeToFit];
  v7 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D76988] symbolicTraits:2];
  [v4 setFont:v7];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v4 setTextColor:labelColor];

  [v4 setAdjustsFontForContentSizeCategory:1];
  v9 = *MEMORY[0x277D76828];
  [v4 setMaximumContentSizeCategory:*MEMORY[0x277D76828]];
  [v3 addArrangedSubview:v4];
  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  headerSubtitle = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  text2 = [headerSubtitle text];
  [v10 setText:text2];

  [v10 sizeToFit];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v10 setFont:v13];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v10 setTextColor:secondaryLabelColor];

  v15 = *MEMORY[0x277CDA5E8];
  layer = [v10 layer];
  [layer setCompositingFilter:v15];

  [v10 setAdjustsFontForContentSizeCategory:1];
  [v10 setMaximumContentSizeCategory:v9];
  [(GKDashboardMultiplayerPickerViewController *)self setCollapsedSubtitle:v10];
  [v3 addArrangedSubview:v10];
  [v3 setAlignment:3];
  [v3 setDistribution:0];
  [v33 addSubview:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [v3 heightAnchor];
  v18 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
  [v18 setActive:1];

  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [v33 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  LODWORD(v22) = 1144750080;
  [v21 setPriority:v22];
  [v21 setActive:1];
  topAnchor = [v3 topAnchor];
  topAnchor2 = [v33 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v25 setActive:1];

  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [v33 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v28 setActive:1];

  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [v33 trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v31 setActive:1];

  navigationItem = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
  [navigationItem setTitleView:v33];
}

- (void)dockHeaderViewIfNeeded
{
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  v7 = v6;

  navigationHeaderHeightConstraint = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
  [navigationHeaderHeightConstraint constant];
  v9 = v8;
  composeTextViewHeightConstraint = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
  [composeTextViewHeightConstraint constant];
  if (v9 <= v11)
  {
  }

  else
  {
    navigationHeaderHeightConstraint2 = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
    [navigationHeaderHeightConstraint2 constant];
    v14 = v13;
    headerContentView = [(GKDashboardMultiplayerPickerViewController *)self headerContentView];
    [headerContentView frame];
    v17 = v16;

    if (v14 >= v17)
    {
      return;
    }

    navigationHeaderHeightConstraint3 = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
    [navigationHeaderHeightConstraint3 constant];
    v20 = v19;
    composeTextViewHeightConstraint2 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
    [composeTextViewHeightConstraint2 constant];
    v23 = v20 - v22;

    headerContentView2 = [(GKDashboardMultiplayerPickerViewController *)self headerContentView];
    [headerContentView2 frame];
    v26 = v25;
    composeTextViewHeightConstraint3 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
    [composeTextViewHeightConstraint3 constant];
    v29 = v26 - v28;

    if (v23 >= v29 * 0.5)
    {
      v30 = -(v29 - v23);
    }

    else
    {
      v30 = v23;
    }

    v31 = v7 + v30;
    collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
    [collectionView2 setScrollEnabled:0];

    navigationHeaderHeightConstraint = [(GKDashboardCollectionViewController *)self collectionView];
    [navigationHeaderHeightConstraint setContentOffset:1 animated:{v5, v31}];
  }
}

- (void)collapseHeaderView
{
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  v7 = v6;

  navigationHeaderHeightConstraint = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
  [navigationHeaderHeightConstraint constant];
  v10 = v9;
  composeTextViewHeightConstraint = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
  [composeTextViewHeightConstraint constant];
  v13 = v12;

  if (v10 > v13)
  {
    navigationHeaderHeightConstraint2 = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
    [navigationHeaderHeightConstraint2 constant];
    v16 = v15;
    composeTextViewHeightConstraint2 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
    [composeTextViewHeightConstraint2 constant];
    v19 = v16 - v18;

    collectionView2 = [(GKDashboardCollectionViewController *)self collectionView];
    [collectionView2 setScrollEnabled:0];

    collectionView3 = [(GKDashboardCollectionViewController *)self collectionView];
    [collectionView3 setContentOffset:1 animated:{v5, v7 + v19}];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];

  if (collectionView == draggingCopy)
  {

    [(GKDashboardMultiplayerPickerViewController *)self dockHeaderViewIfNeeded];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];

  if (collectionView == deceleratingCopy)
  {

    [(GKDashboardMultiplayerPickerViewController *)self dockHeaderViewIfNeeded];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView setScrollEnabled:1];
}

- (void)setupNoContentView:(id)view withError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  searchText = [pickerDataSource searchText];
  v10 = [searchText length];

  if (v10)
  {
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    [viewCopy setTitle:v12];

    [viewCopy setMessage:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GKDashboardMultiplayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v13 setupNoContentView:viewCopy withError:errorCopy];
  }
}

- (void)dataUpdated:(BOOL)updated withError:(id)error
{
  v5.receiver = self;
  v5.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 dataUpdated:updated withError:error];
  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
}

- (id)preferredFocusEnvironments
{
  v15[1] = *MEMORY[0x277D85DE8];
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  showsAllFriends = [pickerDataSource showsAllFriends];

  if (showsAllFriends)
  {
    v5 = MEMORY[0x277CCAA70];
    pickerDataSource2 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
    v7 = [v5 indexPathForItem:objc_msgSend(pickerDataSource2 inSection:{"numberOfFriendsToShowInitially"), 1}];

    collectionView = [(GKDashboardCollectionViewController *)self collectionView];
    v9 = [collectionView cellForItemAtIndexPath:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15[0] = v9;
      preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

LABEL_8:
      goto LABEL_11;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_sendButton);
  if ([WeakRetained isEnabled])
  {
    v7 = objc_loadWeakRetained(&self->_sendButton);

    if (v7)
    {
      v14 = v7;
      preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = GKDashboardMultiplayerPickerViewController;
  preferredFocusEnvironments = [(GKDashboardCollectionViewController *)&v13 preferredFocusEnvironments];
LABEL_11:

  return preferredFocusEnvironments;
}

- (id)createSortPickerMenu
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  friendSortFilterScope = [pickerDataSource friendSortFilterScope];

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D750C8];
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __66__GKDashboardMultiplayerPickerViewController_createSortPickerMenu__block_invoke;
  v25[3] = &unk_27966AD28;
  objc_copyWeak(&v26, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:0 handler:v25];

  [v9 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.Sort.Recents"];
  [v9 setState:friendSortFilterScope == 0];
  v10 = MEMORY[0x277D750C8];
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __66__GKDashboardMultiplayerPickerViewController_createSortPickerMenu__block_invoke_2;
  v23 = &unk_27966AD28;
  objc_copyWeak(&v24, &location);
  v13 = [v10 actionWithTitle:v12 image:0 identifier:0 handler:&v20];

  [v13 setAccessibilityIdentifier:{@"GKDashBoardMultiplayerPickerView.Sort.ABC", v20, v21, v22, v23}];
  [v13 setState:friendSortFilterScope == 1];
  v14 = MEMORY[0x277D75710];
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();
  v28[0] = v9;
  v28[1] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v18 = [v14 menuWithTitle:v16 children:v17];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v18;
}

void __66__GKDashboardMultiplayerPickerViewController_createSortPickerMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);
  v5 = [v4 pickerDataSource];
  v6 = [v5 friendSortFilterScope];

  v7 = objc_loadWeakRetained(&to);
  v8 = [v7 pickerDataSource];
  [v8 setFriendSortFilterScope:0];

  if (v6)
  {
    v9 = objc_loadWeakRetained(&to);
    v10 = [v9 collectionView];
    v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [v10 reloadSections:v11];
  }

  objc_destroyWeak(&to);
}

void __66__GKDashboardMultiplayerPickerViewController_createSortPickerMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);
  v5 = [v4 pickerDataSource];
  v6 = [v5 friendSortFilterScope];

  v7 = objc_loadWeakRetained(&to);
  v8 = [v7 pickerDataSource];
  [v8 setFriendSortFilterScope:1];

  if (v6 != 1)
  {
    v9 = objc_loadWeakRetained(&to);
    v10 = [v9 collectionView];
    v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [v10 reloadSections:v11];
  }

  objc_destroyWeak(&to);
}

- (void)pickerDatasource:(id)datasource didPickPlayers:(id)players
{
  playersCopy = players;
  multiplayerPickerDelegate = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    multiplayerPickerDelegate2 = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
    pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
    selectedMessageGroups = [pickerDataSource selectedMessageGroups];
    message = [(GKDashboardMultiplayerPickerViewController *)self message];
    [multiplayerPickerDelegate2 multiplayerPicker:self didPickPlayers:playersCopy messageGroups:selectedMessageGroups customMessage:message];
  }
}

- (void)pickerDatasourceDidSelectAddFriend:(id)friend
{
  if (_os_feature_enabled_impl())
  {
    [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:2 pageType:@"multiplayer" pageId:@"friendSelect"];
    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    isAddingFriendsRestricted = [mEMORY[0x277D0C1D8] isAddingFriendsRestricted];

    if (isAddingFriendsRestricted)
    {
      v6 = MEMORY[0x277D75110];
      v7 = GKGameCenterUIFrameworkBundle();
      v8 = GKGetLocalizedStringFromTableInBundle();
      v9 = GKGameCenterUIFrameworkBundle();
      v10 = GKGetLocalizedStringFromTableInBundle();
      v18 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

      v11 = MEMORY[0x277D750F8];
      v12 = GKGameCenterUIFrameworkBundle();
      v13 = GKGetLocalizedStringFromTableInBundle();
      v14 = [v11 actionWithTitle:v13 style:0 handler:0];
      [v18 addAction:v14];

      selfCopy2 = self;
      v16 = v18;
    }

    else
    {
      v16 = [GKFriendingViewControllers inviteFriendsWithContainerViewController:self];
      v18 = v16;
      selfCopy2 = self;
    }

    [(GKDashboardMultiplayerPickerViewController *)selfCopy2 presentViewController:v16 animated:1 completion:0, v18];
  }

  else
  {
    reporter = [MEMORY[0x277D0BFA8] reporter];
    [reporter recordClickWithAction:@"navigate" targetId:@"invite" targetType:@"button" pageId:@"friendSelect" pageType:@"multiplayer"];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__GKDashboardMultiplayerPickerViewController_pickerDatasourceDidSelectAddFriend___block_invoke;
    v20[3] = &unk_27966AD50;
    v20[4] = self;
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerWithRecipients:MEMORY[0x277CBEBF8] chatGUID:0 completionHandler:v20];
  }
}

- (void)pickerDatasource:(id)datasource didSelectPlayers:(id)players inGroup:(id)group
{
  v34 = *MEMORY[0x277D85DE8];
  datasourceCopy = datasource;
  playersCopy = players;
  groupCopy = group;
  v11 = groupCopy;
  if (groupCopy && [groupCopy fromPeopleSuggester])
  {
    v12 = [(GKDashboardMultiplayerPickerViewController *)self composedNameForSuggestedMessageGroup:v11];
    [(GKDashboardMultiplayerPickerViewController *)self addRecipientForPlayers:playersCopy withName:v12];
  }

  else
  {
    v26 = playersCopy;
    v27 = datasourceCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = playersCopy;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          displayName = [v18 displayName];
          v20 = displayName;
          if (displayName)
          {
            v21 = displayName;
          }

          else
          {
            v21 = [v18 displayNameWithOptions:0];
          }

          v22 = v21;

          v32 = v18;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
          [(GKDashboardMultiplayerPickerViewController *)self addRecipientForPlayers:v23 withName:v22];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v15);
    }

    playersCopy = v26;
    datasourceCopy = v27;
  }

  v24 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource:v26];
  isSearching = [v24 isSearching];

  if (isSearching)
  {
    [(GKDashboardMultiplayerPickerViewController *)self didEndSearchTextEditing];
  }

  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
}

- (void)highlightAlreadySelectedPlayers:(id)players inGroup:(id)group
{
  v31[1] = *MEMORY[0x277D85DE8];
  playersCopy = players;
  groupCopy = group;
  v8 = groupCopy;
  if (groupCopy && [groupCopy fromPeopleSuggester])
  {
    v9 = [(GKDashboardMultiplayerPickerViewController *)self composedNameForSuggestedMessageGroup:v8];
    recipientMap = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    v11 = [recipientMap objectForKeyedSubscript:v9];

    if (v11)
    {
      v31[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      [(GKDashboardMultiplayerPickerViewController *)self highlightRecipients:v12];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(playersCopy, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = playersCopy;
    v13 = playersCopy;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          displayName = [v18 displayName];
          v20 = displayName;
          if (displayName)
          {
            v21 = displayName;
          }

          else
          {
            v21 = [v18 displayNameWithOptions:0];
          }

          v22 = v21;

          recipientMap2 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
          v24 = [recipientMap2 objectForKeyedSubscript:v22];

          if (v24)
          {
            [v9 addObject:v24];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    [(GKDashboardMultiplayerPickerViewController *)self highlightRecipients:v9];
    playersCopy = v25;
  }
}

- (void)pickerDatasource:(id)datasource didDeselectPlayers:(id)players inGroup:(id)group
{
  v42 = *MEMORY[0x277D85DE8];
  datasourceCopy = datasource;
  playersCopy = players;
  groupCopy = group;
  v11 = groupCopy;
  if (groupCopy && [groupCopy fromPeopleSuggester])
  {
    v12 = [(GKDashboardMultiplayerPickerViewController *)self composedNameForSuggestedMessageGroup:v11];
    recipientMap = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    v14 = [recipientMap objectForKeyedSubscript:v12];

    if (v14)
    {
      [(GKDashboardMultiplayerPickerViewController *)self removeRecipientWithName:v12];
      goto LABEL_16;
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = playersCopy;
  v15 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        displayName = [v19 displayName];
        v21 = displayName;
        if (displayName)
        {
          v22 = displayName;
        }

        else
        {
          v22 = [v19 displayNameWithOptions:0];
        }

        v23 = v22;

        [(GKDashboardMultiplayerPickerViewController *)self removeRecipientWithName:v23];
      }

      v16 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v16);
  }

LABEL_16:

  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
  composeTextView = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  textView = [composeTextView textView];
  if (([textView isFirstResponder] & 1) == 0)
  {
    composeTextView2 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
    recipients = [composeTextView2 recipients];
    if ([recipients count])
    {
    }

    else
    {
      [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
      v28 = v36 = datasourceCopy;
      [v28 textView];
      v30 = v29 = playersCopy;
      text = [v30 text];
      v35 = [text length];

      playersCopy = v29;
      datasourceCopy = v36;

      if (v35)
      {
        goto LABEL_21;
      }

      searchFieldPlaceHolderText = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
      composeTextView3 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
      textView2 = [composeTextView3 textView];
      [textView2 setText:searchFieldPlaceHolderText];

      [(GKDashboardMultiplayerPickerViewController *)self setComposeTextViewShowingPlaceholderText:1];
      composeTextView = [MEMORY[0x277D75348] tertiaryLabelColor];
      textView = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
      composeTextView2 = [textView textView];
      [composeTextView2 setTextColor:composeTextView];
    }
  }

LABEL_21:
}

- (void)clearSelection
{
  if (!self->_shouldIgnoreClearSelection)
  {
    v4.receiver = self;
    v4.super_class = GKDashboardMultiplayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v4 clearSelection];
    pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
    [pickerDataSource clearSelection];

    [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
  }
}

- (id)composedNameForSuggestedMessageGroup:(id)group
{
  groupCopy = group;
  players = [groupCopy players];
  groupName = [groupCopy groupName];
  if (![groupName length])
  {
    players2 = [groupCopy players];
    v7 = [players2 count];

    if (v7 == 1)
    {
      v8 = [players objectAtIndexedSubscript:0];
      v9 = [v8 displayNameWithOptions:0];
    }

    else
    {
      players3 = [groupCopy players];
      v12 = [players3 count];

      if (v12 == 2)
      {
        v13 = MEMORY[0x277CCACA8];
        v8 = GKGameCenterUIFrameworkBundle();
        v14 = GKGetLocalizedStringFromTableInBundle();
        v15 = [players objectAtIndexedSubscript:0];
        v16 = [v15 displayNameWithOptions:0];
        v17 = [players objectAtIndexedSubscript:1];
        v18 = [v17 displayNameWithOptions:0];
        v10 = [v13 stringWithFormat:v14, v16, v18];

        groupName = v14;
        goto LABEL_11;
      }

      players4 = [groupCopy players];
      v20 = [players4 count];

      if (v20 == 3)
      {
        v41 = MEMORY[0x277CCACA8];
        v8 = GKGameCenterUIFrameworkBundle();
        v40 = GKGetLocalizedStringFromTableInBundle();
        v42 = [players objectAtIndexedSubscript:0];
        v21 = [v42 displayNameWithOptions:0];
        v22 = [players objectAtIndexedSubscript:1];
        v23 = [v22 displayNameWithOptions:0];
        v24 = [players objectAtIndexedSubscript:2];
        v25 = [v24 displayNameWithOptions:0];
        v10 = [v41 stringWithFormat:v40, v21, v23, v25];

        groupName = v40;
        goto LABEL_11;
      }

      players5 = [groupCopy players];
      v27 = [players5 count];

      if (v27 >= 4)
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = GKGameCenterUIFrameworkBundle();
        v30 = GKGetLocalizedStringFromTableInBundle();
        v31 = [players objectAtIndexedSubscript:0];
        v32 = [v31 displayNameWithOptions:0];
        v33 = [players objectAtIndexedSubscript:1];
        v34 = [v33 displayNameWithOptions:0];
        v35 = [v28 stringWithFormat:v30, v32, v34];

        v8 = GKGameCenterUIFrameworkBundle();
        groupName = GKGetLocalizedStringFromTableInBundle();
        v36 = MEMORY[0x277CCABB0];
        players6 = [groupCopy players];
        v38 = [v36 numberWithUnsignedInteger:{objc_msgSend(players6, "count") - 2}];
        v10 = [v35 stringByAppendingFormat:groupName, v38];

        goto LABEL_11;
      }

      v8 = GKGameCenterUIFrameworkBundle();
      v9 = GKGetLocalizedStringFromTableInBundle();
    }

    v10 = v9;
LABEL_11:

    groupName = v10;
  }

  return groupName;
}

- (void)send:(id)send
{
  reporter = [MEMORY[0x277D0BFA8] reporter];
  [reporter recordClickWithAction:@"navigate" targetId:@"inviteFriends" targetType:@"button" pageId:@"lobby" pageType:@"multiplayer"];

  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  selectedPlayers = [pickerDataSource selectedPlayers];
  if ([selectedPlayers count])
  {
    message = [(GKDashboardMultiplayerPickerViewController *)self message];
    v7 = [message length];

    if (v7)
    {
      reporter2 = [MEMORY[0x277D0C1F8] reporter];
      [reporter2 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BC90]];
    }

    [pickerDataSource pickerWillSendInvites];
    selectedMessageGroups = [pickerDataSource selectedMessageGroups];
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, selectedPlayers, self->_message);
      [(GKDashboardMultiplayerPickerViewController *)self setCompletionHandler:0];
    }

    else
    {
      multiplayerPickerDelegate = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        multiplayerPickerDelegate2 = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
        message2 = [(GKDashboardMultiplayerPickerViewController *)self message];
        [multiplayerPickerDelegate2 multiplayerPicker:self didPickPlayers:selectedPlayers messageGroups:selectedMessageGroups customMessage:message2];
      }
    }

    [(UIViewController *)self _gkRemoveViewController:self animated:1];
  }
}

- (void)addMessage:(id)message
{
  v7 = +[GKMultiplayerCustomInviteMessageViewController];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [[GKMultiplayerCustomInviteMessageViewController alloc] initWithNibName:v7 bundle:v4];
  [(GKMultiplayerCustomInviteMessageViewController *)v5 setDelegate:self];
  v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v6 setOverrideUserInterfaceStyle:2];
  [(GKDashboardMultiplayerPickerViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)cancel:(id)cancel
{
  cancelCopy = cancel;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, 0, 0);
    [(GKDashboardMultiplayerPickerViewController *)self setCompletionHandler:0];
  }

  [(UIViewController *)self _gkRemoveViewController:self animated:1];
  multiplayerPickerDelegate = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    multiplayerPickerDelegate2 = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
    [multiplayerPickerDelegate2 multiplayerPickerDidCancel:self];
  }
}

- (void)updateAddMessageButtonVisibility
{
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  if ([mEMORY[0x277D0C1D8] shouldAllowCustomCommunication])
  {
    pickerOrigin = [(GKDashboardMultiplayerPickerViewController *)self pickerOrigin];

    if (pickerOrigin == 1)
    {
      navBarMessageButton = [(GKDashboardMultiplayerPickerViewController *)self navBarMessageButton];
      [navBarMessageButton setHidden:0];

      navBarMessageButton2 = [(GKDashboardMultiplayerPickerViewController *)self navBarMessageButton];
      [navBarMessageButton2 setEnabled:1];

      v7 = MEMORY[0x277D755D0];
      v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
      navBarMessageButton4 = [v7 configurationWithFont:v8];

      message = [(GKDashboardMultiplayerPickerViewController *)self message];
      v10 = [message length];

      if (v10)
      {
        v11 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.bubble"];
        v12 = [v11 imageWithConfiguration:navBarMessageButton4];
        v13 = [v12 imageWithRenderingMode:2];
      }

      else
      {
        v12 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.bubble" withConfiguration:navBarMessageButton4];
        v13 = [v12 imageWithRenderingMode:2];
      }

      navBarMessageButton3 = [(GKDashboardMultiplayerPickerViewController *)self navBarMessageButton];
      [navBarMessageButton3 setImage:v13];

      goto LABEL_9;
    }
  }

  else
  {
  }

  navBarMessageButton4 = [(GKDashboardMultiplayerPickerViewController *)self navBarMessageButton];
  [navBarMessageButton4 setHidden:1];
LABEL_9:
}

- (void)customInviteViewController:(id)controller didFinishWithMessage:(id)message
{
  messageCopy = message;
  [(GKDashboardMultiplayerPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(GKDashboardMultiplayerPickerViewController *)self setMessage:messageCopy];

  [(GKDashboardMultiplayerPickerViewController *)self updateAddMessageButtonVisibility];
}

- (void)handleSearchTextFieldReturn:(id)return
{
  [(GKDashboardMultiplayerPickerViewController *)self didEndSearchTextEditing];
  showContactPickerButton = [(GKDashboardMultiplayerPickerViewController *)self showContactPickerButton];
  [showContactPickerButton setHidden:1];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  WeakRetained = objc_loadWeakRetained(&self->_messageField);

  if (WeakRetained == returnCopy)
  {
    v7 = objc_loadWeakRetained(&self->_messageField);
    text = [v7 text];
    [(GKDashboardMultiplayerPickerViewController *)self setMessage:text];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__GKDashboardMultiplayerPickerViewController_textFieldShouldReturn___block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    searchTextField = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];

    if (searchTextField == returnCopy)
    {
      [(GKDashboardMultiplayerPickerViewController *)self handleSearchTextFieldReturn:returnCopy];
      [returnCopy resignFirstResponder];
    }
  }

  return WeakRetained != returnCopy;
}

- (void)_updateButtonEnableState
{
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  selectedPlayers = [pickerDataSource selectedPlayers];
  v4 = [selectedPlayers count] != 0;

  navBarSendButton = [(GKDashboardMultiplayerPickerViewController *)self navBarSendButton];
  [navBarSendButton setEnabled:v4];

  [(GKDashboardMultiplayerPickerViewController *)self updateAddMessageButtonVisibility];
  v6 = MEMORY[0x277CCACA8];
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  selectedPlayers2 = [pickerDataSource selectedPlayers];
  v10 = [v6 localizedStringWithFormat:v8, objc_msgSend(selectedPlayers2, "count"), objc_msgSend(pickerDataSource, "maxSelectable")];
  headerSubtitle = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  [headerSubtitle setText:v10];

  headerSubtitle2 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  text = [headerSubtitle2 text];
  collapsedSubtitle = [(GKDashboardMultiplayerPickerViewController *)self collapsedSubtitle];
  [collapsedSubtitle setText:text];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([pathCopy section])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = cellCopy;
      pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
      v10 = [pickerDataSource playerForIndexPath:pathCopy];

      internal = [v10 internal];
      contact = [internal contact];
      _gkCompositeName = [contact _gkCompositeName];

      pickerDataSource2 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
      v15 = [pickerDataSource2 friendSortFilterScope] == 1;

      pickerDataSource3 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
      [v8 configureWithPlayer:v10 isCoreRecent:objc_msgSend(pickerDataSource3 matchedContactName:"isPlayerAtIndexPathCoreRecent:" onlyShowContactName:{pathCopy), _gkCompositeName, v15}];

      [v8 setAccessibilityPrefix:@"picker.friends"];
      pickerDataSource4 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
      playerStates = [pickerDataSource4 playerStates];
      referenceKey = [v10 referenceKey];
      v20 = [playerStates objectForKey:referenceKey];
      integerValue = [v20 integerValue];

      if (integerValue != 2)
      {
        [v8 setSelected:integerValue == 1];
        isSelected = [v8 isSelected];
        pickerDataSource5 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
        v24 = pickerDataSource5;
        if (isSelected)
        {
          [pickerDataSource5 selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
        }

        else
        {
          [pickerDataSource5 deselectItemAtIndexPath:pathCopy animated:0];
        }
      }
    }
  }

  pickerDataSource6 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  v26 = [pickerDataSource6 cornerMaskForItemAtIndexPath:pathCopy];

  layer = [cellCopy layer];
  layer4 = layer;
  if (v26)
  {
    [layer setMasksToBounds:1];

    layer2 = [cellCopy layer];
    [layer2 setMaskedCorners:v26];

    layer3 = [cellCopy layer];
    [layer3 setCornerRadius:14.0];

    v31 = *MEMORY[0x277CDA138];
    layer4 = [cellCopy layer];
    [layer4 setCornerCurve:v31];
  }

  else
  {
    [layer setCornerRadius:0.0];
  }
}

- (void)didPressShowContactPickerButton:(id)button
{
  v4 = objc_alloc_init(MEMORY[0x277CBDC18]);
  [v4 setDelegate:self];
  [(GKDashboardMultiplayerPickerViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  [pickerDataSource didPickContact:contactCopy];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  [(GKDashboardMultiplayerPickerViewController *)self didBeginSearchTextEditing];
  showContactPickerButton = [(GKDashboardMultiplayerPickerViewController *)self showContactPickerButton];
  [showContactPickerButton setHidden:0];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  fieldCopy = field;
  text = [fieldCopy text];
  v12 = [text stringByAppendingString:stringCopy];
  [(GKDashboardMultiplayerPickerViewController *)self setSearchText:v12];

  v13 = MEMORY[0x277CCAB68];
  text2 = [fieldCopy text];

  v15 = [v13 stringWithString:text2];

  [v15 replaceCharactersInRange:location withString:{length, stringCopy}];
  [(GKDashboardMultiplayerPickerViewController *)self setSearchText:v15];

  return 1;
}

- (void)willShowKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  excludesContacts = [(GKDashboardMultiplayerPickerViewController *)self excludesContacts];
  composeTextView = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  [composeTextView setShowsAddButtonWhenExpanded:!excludesContacts];

  traitCollection = [(GKDashboardMultiplayerPickerViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    [(GKDashboardMultiplayerPickerViewController *)self collapseHeaderView];
  }

  userInfo = [keyboardCopy userInfo];
  v9 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v9 CGRectValue];
  v11 = v10;

  view = [(GKDashboardMultiplayerPickerViewController *)self view];
  [view safeAreaInsets];
  [(GKDashboardMultiplayerPickerViewController *)self setKeyboardHeight:v11 - v13];

  searchTextField = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  isFirstResponder = [searchTextField isFirstResponder];

  if (isFirstResponder)
  {
    searchTextField2 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
    [searchTextField2 setDelegate:self];
  }
}

- (void)didBeginSearchTextEditing
{
  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BCB8]];
}

- (void)setSearchText:(id)text
{
  textCopy = text;
  pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  if (([pickerDataSource isSearching] & 1) == 0 && objc_msgSend(textCopy, "length"))
  {
    reporter = [MEMORY[0x277D0C1F8] reporter];
    [reporter reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BCC0]];
  }

  [pickerDataSource setSearchText:textCopy];
  [(GKDashboardMultiplayerPickerViewController *)self dataUpdated:1 withError:0];
}

- (void)didEndSearchTextEditing
{
  searchTextField = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [searchTextField setText:0];

  [(GKDashboardMultiplayerPickerViewController *)self setSearchText:0];
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView setNeedsLayout];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  searchTextField = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  isFirstResponder = [searchTextField isFirstResponder];

  if (isFirstResponder)
  {
    searchTextField2 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
    [searchTextField2 resignFirstResponder];
  }

  v14.receiver = self;
  v14.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v14 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
  section = [pathCopy section];

  if (section <= 2)
  {
    v12 = qword_27966ADE8[section];
    reporter = [MEMORY[0x277D0C1F8] reporter];
    [reporter reportEvent:*MEMORY[0x277D0BE78] type:*v12];
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 collectionView:view didDeselectItemAtIndexPath:path];
  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
}

- (void)viewSafeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardMultiplayerPickerViewController *)&v8 viewSafeAreaInsetsDidChange];
  view = [(GKDashboardMultiplayerPickerViewController *)self view];
  [view setNeedsLayout];

  view2 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [view2 layoutIfNeeded];

  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = collectionViewLayout;
    [(GKDashboardMultiplayerPickerViewController *)self collectionSectionInset];
    [v7 setSectionInset:?];
  }
}

- (UIEdgeInsets)collectionSectionInset
{
  view = [(GKDashboardMultiplayerPickerViewController *)self view];
  [view safeAreaInsets];
  v5 = v4 + 20.0;
  view2 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [view2 safeAreaInsets];
  v8 = v7 + 20.0;

  v9 = 10.0;
  v10 = 0.0;
  v11 = v5;
  v12 = v8;
  result.right = v12;
  result.bottom = v10;
  result.left = v11;
  result.top = v9;
  return result;
}

- (void)_updateCollectionView
{
  [(GKDashboardCollectionViewController *)self setToHorizontalLayout:0];
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView setDelegate:self];
  [collectionView setClipsToBounds:1];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CCAB58];
    v5 = collectionViewLayout;
    v6 = [v4 indexSetWithIndex:0];
    [v5 setSectionsThatShowHeaderWhenEmpty:v6];

    v7 = [MEMORY[0x277CCAB58] indexSetWithIndex:0];
    [v5 setSectionsThatShowFootersWhenEmpty:v7];

    [v5 setMinimumLineSpacing:0.0];
    [(GKDashboardMultiplayerPickerViewController *)self collectionSectionInset];
    [v5 setSectionInset:?];
    [v5 setCentersItemsInExcessSpace:1];
  }
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  viewCopy = view;
  [viewCopy clearText];
  labelColor = [MEMORY[0x277D75348] labelColor];
  textView = [viewCopy textView];

  [textView setTextColor:labelColor];

  [(GKDashboardMultiplayerPickerViewController *)self setComposeTextViewShowingPlaceholderText:0];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  v25 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  if (![(GKDashboardMultiplayerPickerViewController *)self skipAddressTokenization])
  {
    searchFieldPlaceHolderText = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
    v7 = [addressCopy isEqualToString:searchFieldPlaceHolderText];

    if ((v7 & 1) == 0)
    {
      if ([(GKDashboardMultiplayerPickerViewController *)self excludesContacts])
      {
        composeTextView = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
        [(GKDashboardMultiplayerPickerViewController *)self composeRecipientView:composeTextView didAddRecipient:0];

        if (!*MEMORY[0x277D0C2A0])
        {
          v9 = GKOSLoggers();
        }

        v10 = *MEMORY[0x277D0C2B0];
        if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
        {
          v11 = MEMORY[0x277CCABB0];
          v12 = MEMORY[0x277D0C1D8];
          v13 = v10;
          shared = [v12 shared];
          v15 = [v11 numberWithUnsignedInteger:{objc_msgSend(shared, "multiplayerAllowedPlayerType")}];
          *buf = 138412290;
          v24 = v15;
          _os_log_impl(&dword_24DE53000, v13, OS_LOG_TYPE_INFO, "Not forming contact from address that players input, since GKPreferences.shared.multiplayerAllowedPlayerType is set to: %@", buf, 0xCu);
        }
      }

      else
      {
        recipientMap = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
        v17 = [recipientMap objectForKeyedSubscript:addressCopy];

        if (v17)
        {
          v22 = v17;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
          [(GKDashboardMultiplayerPickerViewController *)self highlightRecipients:v18];
        }

        else
        {
          v18 = [GKMessageUtilities playerWithPhoneNumberOrEmail:addressCopy givenName:addressCopy];
          if (v18)
          {
            reporter = [MEMORY[0x277D0C1F8] reporter];
            [reporter reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BC08]];

            pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
            contact = [v18 contact];
            [pickerDataSource didPickContact:contact];
          }
        }
      }
    }
  }
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (![(GKDashboardMultiplayerPickerViewController *)self recipientRemovedImplicitly])
  {
    v5 = recipientCopy;
    recipientPlayerMap = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
    v7 = [recipientPlayerMap objectForKeyedSubscript:v5];

    recipientPlayerMap2 = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
    [recipientPlayerMap2 removeObjectForKey:v5];

    recipientMap = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    address = [v5 address];

    [recipientMap removeObjectForKey:address];
    pickerDataSource = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
    [pickerDataSource didRemoveRecipientPlayers:v7];
  }
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  changeCopy = change;
  if (![(GKDashboardMultiplayerPickerViewController *)self composeTextViewShowingPlaceholderText])
  {
    [(GKDashboardMultiplayerPickerViewController *)self setSearchText:changeCopy];
  }
}

- (void)composeRecipientView:(id)view didSelectRecipients:(id)recipients
{
  v41 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  recipients = [viewCopy recipients];
  array = [MEMORY[0x277CBEB18] array];
  v8 = MEMORY[0x277CBEB58];
  recipientPlayerMap = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
  allKeys = [recipientPlayerMap allKeys];
  v11 = [v8 setWithArray:allKeys];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __87__GKDashboardMultiplayerPickerViewController_composeRecipientView_didSelectRecipients___block_invoke;
  v37[3] = &unk_27966AD78;
  v12 = v11;
  v38 = v12;
  v26 = array;
  v27 = recipients;
  v39 = v26;
  [recipients enumerateObjectsUsingBlock:v37];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      v16 = 0;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v33 + 1) + 8 * v16);
        removedRecipientPlayerMap = [(GKDashboardMultiplayerPickerViewController *)self removedRecipientPlayerMap];

        if (!removedRecipientPlayerMap)
        {
          v19 = objc_opt_new();
          [(GKDashboardMultiplayerPickerViewController *)self setRemovedRecipientPlayerMap:v19];
        }

        recipientPlayerMap2 = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
        v21 = [recipientPlayerMap2 objectForKeyedSubscript:v17];
        removedRecipientPlayerMap2 = [(GKDashboardMultiplayerPickerViewController *)self removedRecipientPlayerMap];
        address = [v17 address];
        [removedRecipientPlayerMap2 setObject:v21 forKeyedSubscript:address];

        [(GKDashboardMultiplayerPickerViewController *)self composeRecipientView:viewCopy didRemoveRecipient:v17];
        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v14);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __87__GKDashboardMultiplayerPickerViewController_composeRecipientView_didSelectRecipients___block_invoke_2;
  v31[3] = &unk_27966ADA0;
  v24 = viewCopy;
  v32 = v24;
  [v26 enumerateObjectsUsingBlock:v31];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__GKDashboardMultiplayerPickerViewController_composeRecipientView_didSelectRecipients___block_invoke_3;
  v29[3] = &unk_27966AD78;
  v29[4] = self;
  v30 = v24;
  v25 = v24;
  [v26 enumerateObjectsUsingBlock:v29];
}

void __87__GKDashboardMultiplayerPickerViewController_composeRecipientView_didSelectRecipients___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v4;
    if ([*(a1 + 32) containsObject:v3])
    {
      [*(a1 + 32) removeObject:v3];
    }

    else
    {
      [*(a1 + 40) addObject:v3];
    }
  }

  else
  {
    [*(a1 + 40) addObject:v4];
  }
}

uint64_t __87__GKDashboardMultiplayerPickerViewController_composeRecipientView_didSelectRecipients___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v13;
    v4 = [*(a1 + 32) removedRecipientPlayerMap];
    v5 = [v3 address];
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [*(a1 + 32) pickerDataSource];
      [v8 didAddRecipientPlayers:v6];
    }

    else
    {
      v11 = *(a1 + 40);
      v8 = [v3 address];
      [v7 composeRecipientView:v11 didFinishEnteringAddress:v8];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v3 = [v13 address];
    [v10 composeRecipientView:v9 didFinishEnteringAddress:v3];
  }

LABEL_9:

  return MEMORY[0x2821F96F8]();
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  viewCopy = view;
  [(GKDashboardMultiplayerPickerViewController *)self setIsAnimatingComposeTextViewSizeChange:1];
  composeTextViewHeightConstraint = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
  [composeTextViewHeightConstraint constant];
  v9 = v8;

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3010000000;
  v17 = 0;
  v18 = 0;
  v16[3] = &unk_24E43C07A;
  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [collectionView contentOffset];
  v17 = v11;
  v18 = v12;

  view = [(GKDashboardMultiplayerPickerViewController *)self view];
  [view layoutIfNeeded];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__GKDashboardMultiplayerPickerViewController_composeHeaderView_didChangeSize___block_invoke;
  v15[3] = &unk_27966ADC8;
  v15[6] = fmax(height, 54.0);
  v15[7] = v9;
  v15[4] = self;
  v15[5] = v16;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__GKDashboardMultiplayerPickerViewController_composeHeaderView_didChangeSize___block_invoke_2;
  v14[3] = &unk_279669C90;
  v14[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v15 animations:v14 completion:0.3];
  _Block_object_dispose(v16, 8);
}

void __78__GKDashboardMultiplayerPickerViewController_composeHeaderView_didChangeSize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) composeTextViewHeightConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) navigationHeaderHeightConstraint];
  v5 = *(a1 + 48) - *(a1 + 56);
  [v4 constant];
  [v4 setConstant:v6 + v5];

  *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) - (*(a1 + 48) - *(a1 + 56));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  v10 = [*(a1 + 32) collectionView];
  [v10 setContentOffset:{v8, v9}];

  v11 = [*(a1 + 32) view];
  [v11 layoutIfNeeded];
}

uint64_t __78__GKDashboardMultiplayerPickerViewController_composeHeaderView_didChangeSize___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsAnimatingComposeTextViewSizeChange:0];
  [*(a1 + 32) updateNavHeaderHeightAndOpacity];
  v2 = *(a1 + 32);

  return [v2 updateCollectionViewContentInsets];
}

- (void)composeRecipientViewReturnPressed:(id)pressed
{
  pressedCopy = pressed;
  recipients = [pressedCopy recipients];
  if ([recipients count])
  {
    goto LABEL_2;
  }

  textView = [pressedCopy textView];
  text = [textView text];
  v7 = [text length];

  if (!v7)
  {
    searchFieldPlaceHolderText = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
    textView2 = [pressedCopy textView];
    [textView2 setText:searchFieldPlaceHolderText];

    [(GKDashboardMultiplayerPickerViewController *)self setComposeTextViewShowingPlaceholderText:1];
    recipients = [MEMORY[0x277D75348] tertiaryLabelColor];
    textView3 = [pressedCopy textView];
    [textView3 setTextColor:recipients];

LABEL_2:
  }

  [(GKDashboardMultiplayerPickerViewController *)self didEndSearchTextEditing];
  textView4 = [pressedCopy textView];
  [textView4 resignFirstResponder];
}

- (void)composeRecipientViewDidBecomeFirstResponder:(id)responder
{
  responderCopy = responder;
  if ([(GKDashboardMultiplayerPickerViewController *)self composeTextViewShowingPlaceholderText])
  {
    [responderCopy clearText];
    labelColor = [MEMORY[0x277D75348] labelColor];
    textView = [responderCopy textView];
    [textView setTextColor:labelColor];

    [(GKDashboardMultiplayerPickerViewController *)self setComposeTextViewShowingPlaceholderText:0];
  }

  [(GKDashboardMultiplayerPickerViewController *)self didBeginSearchTextEditing];
}

- (GKDashboardMultiplayerPickerDelegate)multiplayerPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_multiplayerPickerDelegate);

  return WeakRetained;
}

- (UILabel)descriptionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_descriptionLabel);

  return WeakRetained;
}

- (UIButton)sendButton
{
  WeakRetained = objc_loadWeakRetained(&self->_sendButton);

  return WeakRetained;
}

- (UIButton)customizeMessageButton
{
  WeakRetained = objc_loadWeakRetained(&self->_customizeMessageButton);

  return WeakRetained;
}

- (UITextField)messageField
{
  WeakRetained = objc_loadWeakRetained(&self->_messageField);

  return WeakRetained;
}

- (UIVisualEffectView)backgroundEffectView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundEffectView);

  return WeakRetained;
}

- (UIVisualEffectView)navigationVisualEffectBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationVisualEffectBackground);

  return WeakRetained;
}

- (NSLayoutConstraint)navigationHeaderHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationHeaderHeightConstraint);

  return WeakRetained;
}

- (UILabel)headerTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_headerTitle);

  return WeakRetained;
}

- (UILabel)headerSubtitle
{
  WeakRetained = objc_loadWeakRetained(&self->_headerSubtitle);

  return WeakRetained;
}

- (UIStackView)headerContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);

  return WeakRetained;
}

- (UIView)collapsedTitleContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_collapsedTitleContainer);

  return WeakRetained;
}

- (UILabel)collapsedTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_collapsedTitle);

  return WeakRetained;
}

- (UILabel)collapsedSubtitle
{
  WeakRetained = objc_loadWeakRetained(&self->_collapsedSubtitle);

  return WeakRetained;
}

- (UIView)composeTextViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_composeTextViewContainer);

  return WeakRetained;
}

- (UIView)composeTextViewContainerBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_composeTextViewContainerBackground);

  return WeakRetained;
}

- (NSLayoutConstraint)composeTextViewContainerBackgroundHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_composeTextViewContainerBackgroundHeightConstraint);

  return WeakRetained;
}

- (UIView)dividerLine
{
  WeakRetained = objc_loadWeakRetained(&self->_dividerLine);

  return WeakRetained;
}

@end