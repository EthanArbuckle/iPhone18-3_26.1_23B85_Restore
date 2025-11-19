@interface GKDashboardMultiplayerPickerViewController
- (BOOL)nearbyOnly;
- (BOOL)supportsNearby;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (GKDashboardMultiplayerPickerDelegate)multiplayerPickerDelegate;
- (GKDashboardMultiplayerPickerViewController)initWithMaxSelectable:(int64_t)a3 hiddenPlayers:(id)a4 nearbyOnly:(BOOL)a5 pickerOrigin:(int64_t)a6;
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
- (id)blurEffectForTraitCollection:(id)a3;
- (id)composedNameForSuggestedMessageGroup:(id)a3;
- (id)createSortPickerMenu;
- (id)preferredFocusEnvironments;
- (id)searchFieldPlaceHolderText;
- (void)_updateButtonEnableState;
- (void)_updateCollectionView;
- (void)addMessage:(id)a3;
- (void)addRecipientForPlayers:(id)a3 withName:(id)a4;
- (void)adjustCustomizeMessageConstraint;
- (void)cancel:(id)a3;
- (void)clearSelection;
- (void)collapseHeaderView;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didSelectRecipients:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewDidBecomeFirstResponder:(id)a3;
- (void)composeRecipientViewReturnPressed:(id)a3;
- (void)configureComposeTextView;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)customInviteViewController:(id)a3 didFinishWithMessage:(id)a4;
- (void)dataUpdated:(BOOL)a3 withError:(id)a4;
- (void)didBeginSearchTextEditing;
- (void)didEndSearchTextEditing;
- (void)didPressShowContactPickerButton:(id)a3;
- (void)dockHeaderViewIfNeeded;
- (void)handleSearchTextFieldReturn:(id)a3;
- (void)highlightAlreadySelectedPlayers:(id)a3 inGroup:(id)a4;
- (void)highlightRecipients:(id)a3;
- (void)pickerDatasource:(id)a3 didDeselectPlayers:(id)a4 inGroup:(id)a5;
- (void)pickerDatasource:(id)a3 didPickPlayers:(id)a4;
- (void)pickerDatasource:(id)a3 didSelectPlayers:(id)a4 inGroup:(id)a5;
- (void)pickerDatasourceDidSelectAddFriend:(id)a3;
- (void)removeRecipientWithName:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)send:(id)a3;
- (void)setMessage:(id)a3;
- (void)setNearbyDelegate:(id)a3;
- (void)setSearchText:(id)a3;
- (void)setSupportsNearby:(BOOL)a3;
- (void)setupNoContentView:(id)a3 withError:(id)a4;
- (void)showCollapsedTitleAndSubtitleInNavBar;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAddMessageButtonVisibility;
- (void)updateCollectionViewContentInsets;
- (void)updateNavHeaderHeightAndOpacity;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willShowKeyboard:(id)a3;
@end

@implementation GKDashboardMultiplayerPickerViewController

- (GKDashboardMultiplayerPickerViewController)initWithMaxSelectable:(int64_t)a3 hiddenPlayers:(id)a4 nearbyOnly:(BOOL)a5 pickerOrigin:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = [objc_opt_class() _gkPlatformNibName];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17.receiver = self;
  v17.super_class = GKDashboardMultiplayerPickerViewController;
  v13 = [(GKDashboardCollectionViewController *)&v17 initWithNibName:v11 bundle:v12];

  if (v13)
  {
    v14 = [[GKDashboardMultiplayerPickerDataSource alloc] initWithMaxSelectable:a3 previouslyInvitedPlayers:v10 nearbyOnly:v7 pickerOrigin:a6];
    [(GKDashboardMultiplayerPickerDataSource *)v14 setDelegate:v13];
    [(GKCollectionDataSource *)v14 setBreakSearchInputTextIntoMultipleTerms:0];
    [(GKCollectionDataSource *)v14 setPresentationViewController:v13];
    [(GKDashboardCollectionViewController *)v13 setDataSource:v14];
    [(GKLoadingViewController *)v13 setLoadingIndicatorDelay:0.0];
    if ([v10 count])
    {
      v15 = [MEMORY[0x277D0C1F8] reporter];
      [v15 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BBD0]];
    }

    [(GKDashboardMultiplayerPickerViewController *)v13 setPickerOrigin:a6];
  }

  return v13;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardMultiplayerPickerViewController *)&v8 viewWillDisappear:a3];
  v4 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [v4 setDelegate:0];

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, 0, 0);
    [(GKDashboardMultiplayerPickerViewController *)self setCompletionHandler:0];
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277D76C60] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardMultiplayerPickerViewController *)&v5 viewDidDisappear:a3];
  v4 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  [v4 setNearbyPlayersChangedHandler:0];

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
  v3 = [MEMORY[0x277D0C138] local];
  v4 = ([v3 isMultiplayerGamingRestricted] & 1) != 0 || -[GKDashboardMultiplayerPickerViewController pickerOrigin](self, "pickerOrigin") != 1;
  [(GKDashboardMultiplayerPickerViewController *)self setExcludesContacts:v4];

  objc_initWeak(&location, self);
  v5 = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
  v6 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [v6 setPlaceholder:v5];

  v7 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [v7 setDelegate:self];

  [(GKDashboardMultiplayerPickerViewController *)self configureComposeTextView];
  v8 = [(GKDashboardCollectionViewController *)self collectionView];
  [(GKDashboardCollectionViewController *)self setAutoWidthUsesTwoColumnsWhenSpace:0];
  [v8 setPrefetchingEnabled:0];
  v9 = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  v10 = [v9 navigationBar];
  [v10 setPrefersLargeTitles:0];

  v11 = objc_alloc(MEMORY[0x277D75788]);
  v12 = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  v13 = [v12 navigationBar];
  v14 = [v13 standardAppearance];
  v15 = [v11 initWithBarAppearance:v14];

  [v15 configureWithTransparentBackground];
  v16 = [MEMORY[0x277D75348] clearColor];
  [v15 setShadowColor:v16];

  v17 = objc_alloc_init(MEMORY[0x277D755B8]);
  [v15 setShadowImage:v17];

  v18 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
  [v18 setStandardAppearance:v15];

  v19 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
  [v19 setScrollEdgeAppearance:v15];

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
  v26 = [MEMORY[0x277D75348] labelColor];
  [v25 setTintColor:v26];

  v27 = GKGameCenterUIFrameworkBundle();
  v28 = GKGetLocalizedStringFromTableInBundle();
  [v25 setAccessibilityLabel:v28];

  [(GKDashboardMultiplayerPickerViewController *)self setNavBarSendButton:v25];
  v78 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769C0]];
  v29 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.bubble" withConfiguration:?];
  v80 = [v29 imageWithRenderingMode:2];

  v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v80 style:0 target:self action:sel_addMessage_];
  v31 = [MEMORY[0x277D75348] labelColor];
  [v30 setTintColor:v31];

  v32 = GKGameCenterUIFrameworkBundle();
  v33 = GKGetLocalizedStringFromTableInBundle();
  [v30 setAccessibilityLabel:v33];

  [(GKDashboardMultiplayerPickerViewController *)self setNavBarMessageButton:v30];
  v92[0] = v25;
  v92[1] = v30;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
  v35 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
  [v35 setRightBarButtonItems:v34];

  v36 = [MEMORY[0x277D75348] whiteColor];
  v37 = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  v38 = [v37 navigationBar];
  [v38 setTintColor:v36];

  v39 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  v40 = *MEMORY[0x277D76808];
  [v39 setMaximumContentSizeCategory:*MEMORY[0x277D76808]];

  v41 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  [v41 setMaximumContentSizeCategory:v40];

  objc_initWeak(&from, val);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __57__GKDashboardMultiplayerPickerViewController_viewDidLoad__block_invoke;
  v85[3] = &unk_27966ACD8;
  objc_copyWeak(&v87, &location);
  objc_copyWeak(&v88, &from);
  v77 = v8;
  v86 = v77;
  [val setNearbyPlayersChangedHandler:v85];
  [(GKDashboardMultiplayerPickerViewController *)self _updateCollectionView];
  [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint constant];
  self->_initialCustomizeMessageBottomConstraintConstant = v42;
  [(GKDashboardMultiplayerPickerViewController *)self adjustCustomizeMessageConstraint];
  v43 = [(GKDashboardCollectionViewController *)self dataSource];
  v44 = [v43 maxSelectable];

  v45 = MEMORY[0x277CCACA8];
  v46 = GKGameCenterUIFrameworkBundle();
  v47 = GKGetLocalizedStringFromTableInBundle();
  v48 = [val selectedPlayers];
  v49 = [v45 localizedStringWithFormat:v47, objc_msgSend(v48, "count"), v44];

  [(GKDashboardMultiplayerPickerViewController *)self pickerOrigin];
  v50 = GKGameCenterUIFrameworkBundle();
  v51 = GKGetLocalizedStringFromTableInBundle();

  v52 = [(GKDashboardMultiplayerPickerViewController *)self navigationVisualEffectBackground];
  v53 = [v52 layer];
  [v53 setAllowsGroupBlending:0];

  v54 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [v54 setText:v51];

  v55 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [v55 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.HeaderTitle"];

  v56 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [v56 setNumberOfLines:1];

  v57 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [v57 setAdjustsFontSizeToFitWidth:1];

  v58 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  [v58 setText:v49];

  v59 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  [v59 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.HeaderSubtitle"];

  v60 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  v61 = [v60 text];
  v62 = [(GKDashboardMultiplayerPickerViewController *)self collapsedSubtitle];
  [v62 setText:v61];

  v63 = [(GKDashboardMultiplayerPickerViewController *)self collapsedSubtitle];
  [v63 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.CollapsedSubtitle"];

  v64 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08]];
  v65 = [v64 fontDescriptorWithSymbolicTraits:2];

  v66 = [MEMORY[0x277D74300] fontWithDescriptor:v65 size:0.0];
  v67 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  [v67 setFont:v66];

  v68 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  v69 = [v68 layer];
  [v69 setCompositingFilter:*MEMORY[0x277CDA5E8]];

  [(GKDashboardMultiplayerPickerViewController *)self setTitle:0];
  v70 = [(GKDashboardMultiplayerPickerViewController *)self showContactPickerButton];
  [v70 setHidden:1];

  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
  v71 = GKGameCenterUIFrameworkBundle();
  v72 = GKGetLocalizedStringFromTableInBundle();
  v73 = [(GKDashboardMultiplayerPickerViewController *)self customizeMessageButton];
  [v73 setAccessibilityLabel:v72];

  v74 = GKGameCenterUIFrameworkBundle();
  v75 = GKGetLocalizedStringFromTableInBundle();
  v76 = [(GKDashboardMultiplayerPickerViewController *)self sendButton];
  [v76 setAccessibilityLabel:v75];

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

- (void)viewWillAppear:(BOOL)a3
{
  v47.receiver = self;
  v47.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v47 viewWillAppear:a3];
  v4 = [(GKDashboardMultiplayerPickerViewController *)self backgroundEffectView];
  if (v4)
  {
    goto LABEL_4;
  }

  if ([(GKDashboardMultiplayerPickerViewController *)self pickerOrigin]== 1)
  {
    v5 = objc_alloc(MEMORY[0x277D75D68]);
    v6 = [(GKDashboardMultiplayerPickerViewController *)self traitCollection];
    v7 = [(GKDashboardMultiplayerPickerViewController *)self blurEffectForTraitCollection:v6];
    v4 = [v5 initWithEffect:v7];

    v8 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
    [v4 setBackgroundEffects:v8];

    [v4 _setGroupName:@"gameLayerGroup"];
    v9 = [(GKDashboardMultiplayerPickerViewController *)self view];
    [v9 bounds];
    [v4 setFrame:?];

    [v4 setAutoresizingMask:18];
    v10 = [(GKDashboardMultiplayerPickerViewController *)self view];
    [v10 insertSubview:v4 atIndex:0];

    [(GKDashboardMultiplayerPickerViewController *)self setBackgroundEffectView:v4];
LABEL_4:
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:self selector:sel_willShowKeyboard_ name:*MEMORY[0x277D76C60] object:0];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel_willHideKeyboard_ name:*MEMORY[0x277D76C50] object:0];

  v13 = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  v14 = [v13 viewControllers];
  v15 = [v14 count];

  if (v15 == 1)
  {
    v16 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
    v17 = [v16 leftBarButtonItem];

    if (!v17)
    {
      v18 = [MEMORY[0x277D75128] sharedApplication];
      v19 = [v18 statusBarOrientation] - 1;

      v20 = objc_alloc_init(MEMORY[0x277D75D18]);
      v21 = [GKFocusableButton buttonWithType:1];
      v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      [v21 setFont:v22];

      v23 = GKGameCenterUIFrameworkBundle();
      v24 = GKGetLocalizedStringFromTableInBundle();
      [v21 setTitle:v24 forState:0];

      [v21 addTarget:self action:sel_cancel_ forEvents:0x2000];
      v25 = [MEMORY[0x277D75348] labelColor];
      [v21 setTintColor:v25];

      v26 = *MEMORY[0x277CDA5E8];
      v27 = [v21 layer];
      [v27 setCompositingFilter:v26];

      v28 = [v21 titleLabel];
      [v28 setAdjustsFontForContentSizeCategory:1];

      [v21 setMaximumContentSizeCategory:*MEMORY[0x277D76828]];
      [v20 addSubview:v21];
      [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
      v29 = [v21 leadingAnchor];
      v30 = [v20 leadingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      [v31 setActive:1];

      v32 = [v21 trailingAnchor];
      v33 = [v20 trailingAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      [v34 setActive:1];

      v35 = [v21 bottomAnchor];
      v36 = [v20 bottomAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];
      [v37 setActive:1];

      v38 = [v21 topAnchor];
      v39 = [v20 topAnchor];
      v40 = 0.0;
      if (v19 >= 2)
      {
        v41 = [MEMORY[0x277D75418] currentDevice];
        v42 = [v41 userInterfaceIdiom];

        v40 = 3.0;
        if (v42 == 1)
        {
          v40 = 0.0;
        }
      }

      v43 = [v38 constraintEqualToAnchor:v39 constant:v40];
      [(GKDashboardMultiplayerPickerViewController *)self setLeftBarButtonTopConstraint:v43];

      v44 = [(GKDashboardMultiplayerPickerViewController *)self leftBarButtonTopConstraint];
      [v44 setActive:1];

      v45 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v20];
      v46 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
      [v46 setLeftBarButtonItem:v45];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v15[2] = *MEMORY[0x277D85DE8];
  [(GKDashboardMultiplayerPickerViewController *)self setShouldIgnoreClearSelection:1];
  v13.receiver = self;
  v13.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v13 viewDidAppear:v3];
  v5 = [(GKDashboardMultiplayerPickerViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [(GKDashboardMultiplayerPickerViewController *)self _gkConfigureFocusGuidesForNavigationBar:v6];

  v7 = [MEMORY[0x277D0C1F8] reporter];
  v8 = *MEMORY[0x277D0BEA0];
  v9 = *MEMORY[0x277D0BC28];
  v10 = *MEMORY[0x277D0BC38];
  v14[0] = *MEMORY[0x277D0BC40];
  v14[1] = v10;
  v11 = *MEMORY[0x277D0BC70];
  v15[0] = *MEMORY[0x277D0BC78];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v7 reportEvent:v8 type:v9 payload:v12];
}

- (void)updateCollectionViewContentInsets
{
  v8 = [(GKDashboardMultiplayerPickerViewController *)self headerContentView];
  [v8 frame];
  v4 = v3 + 16.0;
  [(GKDashboardMultiplayerPickerViewController *)self keyboardHeight];
  v6 = v5 + 16.0;
  v7 = [(GKDashboardCollectionViewController *)self collectionView];
  [v7 setContentInset:{v4, 0.0, v6, 0.0}];
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
        v8 = [(GKDashboardMultiplayerPickerViewController *)self presentingViewController];
        if (v8)
        {
          [(NSLayoutConstraint *)self->_customizeMessageBottomConstraint setConstant:self->_initialCustomizeMessageBottomConstraintConstant];
        }

        else
        {
          v5 = [(GKDashboardMultiplayerPickerViewController *)self tabBarController];
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
  v9.super_class = GKDashboardMultiplayerPickerViewController;
  v7 = a4;
  [(GKDashboardMultiplayerPickerViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__GKDashboardMultiplayerPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27966AD00;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [v7 animateAlongsideTransition:v8 completion:&__block_literal_global_12];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v12 traitCollectionDidChange:v4];
  if (![(GKDashboardCollectionViewController *)self isLoading])
  {
    [(GKDashboardMultiplayerPickerViewController *)self _updateCollectionView];
    [(GKDashboardMultiplayerPickerViewController *)self updateNavHeaderHeightAndOpacity];
    v5 = [(GKDashboardMultiplayerPickerViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = [v4 preferredContentSizeCategory];

    if (v7 != v6)
    {
      v8 = MEMORY[0x277CCAA78];
      v9 = [(GKDashboardCollectionViewController *)self collectionView];
      v10 = [v8 indexSetWithIndexesInRange:{0, objc_msgSend(v9, "numberOfSections")}];

      v11 = [(GKDashboardCollectionViewController *)self collectionView];
      [v11 reloadSections:v10];
    }
  }
}

- (id)blurEffectForTraitCollection:(id)a3
{
  v3 = [a3 userInterfaceStyle] == 2;
  v4 = [MEMORY[0x277D75210] effectWithStyle:2 * v3];

  return v4;
}

- (void)configureComposeTextView
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(GKDashboardMultiplayerPickerViewController *)self setRecipientMap:v3];

  v4 = [MEMORY[0x277CBEB38] dictionary];
  [(GKDashboardMultiplayerPickerViewController *)self setRecipientPlayerMap:v4];

  [MEMORY[0x277CFBCB0] preferredHeight];
  v6 = v5;
  v7 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
  [v7 setConstant:v6];

  v28 = objc_alloc_init(MEMORY[0x277CFBCB0]);
  [v28 setDelegate:self];
  v8 = MEMORY[0x277CCACA8];
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = GKGetLocalizedStringFromTableInBundle();
  v11 = [v8 stringWithFormat:v10, &stru_28612D290];
  [v28 setLabel:v11];

  v12 = [v28 textView];
  [v12 setTextAlignment:4];

  [v28 setSeparatorHidden:1];
  v13 = [MEMORY[0x277D75348] clearColor];
  [v28 setBackgroundColor:v13];

  v14 = [MEMORY[0x277D75348] labelColor];
  [v28 setTintColor:v14];

  v15 = [MEMORY[0x277D75348] tertiaryLabelColor];
  v16 = [v28 textView];
  [v16 setTextColor:v15];

  v17 = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
  v18 = [v28 textView];
  [v18 setText:v17];

  [(GKDashboardMultiplayerPickerViewController *)self setComposeTextViewShowingPlaceholderText:1];
  [v28 setShowsAddButtonWhenExpanded:0];
  v19 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewContainer];
  [v19 addSubview:v28];

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewContainerBackground];
  [v20 removeFromSuperview];

  v21 = MEMORY[0x277CCAAD0];
  v22 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewContainer];
  [v21 _gkInstallEdgeConstraintsForView:v28 containedWithinParentView:v22 edgeInsets:{5.0, -6.0, 0.0, 6.0}];

  [(GKDashboardMultiplayerPickerViewController *)self setComposeTextView:v28];
  v23 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  v24 = [v23 label];
  [v24 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.composeSection.label"];

  v25 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  [v25 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.composeSection"];

  v26 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  v27 = [v26 textView];
  [v27 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.composeSection.placeHolderText"];
}

- (void)addRecipientForPlayers:(id)a3 withName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v20 = [[GKComposeRecipient alloc] initWithContact:0 address:v6 kind:5];
  v8 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
  [v8 setObject:v20 forKeyedSubscript:v6];

  v9 = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
  [v9 setObject:v7 forKeyedSubscript:v20];

  v10 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  [v10 addRecipient:v20];

  v11 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  v12 = [v11 atomViewForRecipient:v20];

  v13 = [MEMORY[0x277D75348] whiteColor];
  v14 = [v13 colorWithAlphaComponent:0.1];
  [v12 setBackgroundColor:v14];

  v15 = [MEMORY[0x277D75348] systemGrayColor];
  [v12 setTintColor:v15];

  v16 = [MEMORY[0x277D75348] labelColor];
  v17 = [v12 titleLabel];
  [v17 setTextColor:v16];

  v18 = *MEMORY[0x277CDA5E8];
  v19 = [v12 layer];
  [v19 setCompositingFilter:v18];
}

- (void)removeRecipientWithName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    v6 = [v5 objectForKeyedSubscript:v10];

    [(GKDashboardMultiplayerPickerViewController *)self setRecipientRemovedImplicitly:1];
    v7 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
    [v7 removeRecipient:v6];

    [(GKDashboardMultiplayerPickerViewController *)self setRecipientRemovedImplicitly:0];
    if (v6)
    {
      v8 = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
      [v8 removeObjectForKey:v6];
    }

    v9 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    [v9 removeObjectForKey:v10];
  }

  MEMORY[0x2821F96F8]();
}

- (void)highlightRecipients:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
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
        v9 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
        v10 = [v9 atomViewForRecipient:v8];

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

- (void)setMessage:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_message isEqualToString:?])
  {
    v4 = [v7 copy];
    message = self->_message;
    self->_message = v4;

    WeakRetained = objc_loadWeakRetained(&self->_messageField);
    [WeakRetained setText:v7];
  }
}

- (BOOL)supportsNearby
{
  v2 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  v3 = [v2 supportsNearby];

  return v3;
}

- (void)setSupportsNearby:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  [v5 setSupportsNearby:v3];

  v7 = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
  v6 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [v6 setPlaceholder:v7];
}

- (BOOL)nearbyOnly
{
  v2 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  v3 = [v2 nearbyOnly];

  return v3;
}

- (void)setNearbyDelegate:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  [v5 setNearbyDelegate:v4];
}

- (id)searchFieldPlaceHolderText
{
  [(GKDashboardMultiplayerPickerViewController *)self excludesContacts];
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  return v3;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  v5 = [v4 textView];
  v6 = [v5 isFirstResponder];

  if (v6)
  {
    [(GKDashboardMultiplayerPickerViewController *)self setSkipAddressTokenization:1];
    v7 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
    v8 = [v7 textView];
    [v8 resignFirstResponder];

    [(GKDashboardMultiplayerPickerViewController *)self setSkipAddressTokenization:0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v6 = [(GKDashboardCollectionViewController *)self collectionView];

  if (v6 == v4)
  {
    v5 = [(GKDashboardMultiplayerPickerViewController *)self isAnimatingComposeTextViewSizeChange];

    if (!v5)
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
  v3 = [(GKDashboardCollectionViewController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;

  v6 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([v6 horizontalSizeClass] == 1)
  {
    v7 = [MEMORY[0x277D75C80] currentTraitCollection];
    v8 = [v7 verticalSizeClass] != 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1 || v8)
  {
    v11 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
    [v11 constant];
    v13 = v14;
  }

  else
  {
    v11 = [(GKDashboardMultiplayerPickerViewController *)self headerContentView];
    [v11 frame];
    v13 = v12;
  }

  v15 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [v15 safeAreaInsets];
  v17 = v13 + v16 + 16.0;

  v18 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [v18 safeAreaInsets];
  v20 = -v5 - v19 + -16.0;

  if (v13 >= v20)
  {
    v20 = v13;
  }

  v21 = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
  [v21 setConstant:v20];

  v22 = (v5 + v17) / 24.0;
  if (v22 > 1.0)
  {
    v22 = 1.0;
  }

  v23 = fmax(v22, 0.0);
  v24 = [(GKDashboardMultiplayerPickerViewController *)self navigationVisualEffectBackground];
  v25 = [v24 layer];
  *&v26 = v23;
  [v25 setOpacity:v26];

  v27 = [MEMORY[0x277D75418] currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if ((v28 == 1 || v8) && (-[GKDashboardMultiplayerPickerViewController navigationHeaderHeightConstraint](self, "navigationHeaderHeightConstraint"), v29 = objc_claimAutoreleasedReturnValue(), [v29 constant], v31 = v30, v29, v31 <= v13))
  {

    [(GKDashboardMultiplayerPickerViewController *)self showCollapsedTitleAndSubtitleInNavBar];
  }

  else
  {
    v32 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
    [v32 setTitleView:0];
  }
}

- (void)showCollapsedTitleAndSubtitleInNavBar
{
  v33 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v3 setAxis:1];
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  v5 = [(GKDashboardMultiplayerPickerViewController *)self headerTitle];
  v6 = [v5 text];
  [v4 setText:v6];

  [v4 sizeToFit];
  v7 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D76988] symbolicTraits:2];
  [v4 setFont:v7];

  v8 = [MEMORY[0x277D75348] labelColor];
  [v4 setTextColor:v8];

  [v4 setAdjustsFontForContentSizeCategory:1];
  v9 = *MEMORY[0x277D76828];
  [v4 setMaximumContentSizeCategory:*MEMORY[0x277D76828]];
  [v3 addArrangedSubview:v4];
  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  v11 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  v12 = [v11 text];
  [v10 setText:v12];

  [v10 sizeToFit];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v10 setFont:v13];

  v14 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v10 setTextColor:v14];

  v15 = *MEMORY[0x277CDA5E8];
  v16 = [v10 layer];
  [v16 setCompositingFilter:v15];

  [v10 setAdjustsFontForContentSizeCategory:1];
  [v10 setMaximumContentSizeCategory:v9];
  [(GKDashboardMultiplayerPickerViewController *)self setCollapsedSubtitle:v10];
  [v3 addArrangedSubview:v10];
  [v3 setAlignment:3];
  [v3 setDistribution:0];
  [v33 addSubview:v3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [v3 heightAnchor];
  v18 = [v17 constraintGreaterThanOrEqualToConstant:44.0];
  [v18 setActive:1];

  v19 = [v3 bottomAnchor];
  v20 = [v33 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  LODWORD(v22) = 1144750080;
  [v21 setPriority:v22];
  [v21 setActive:1];
  v23 = [v3 topAnchor];
  v24 = [v33 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = [v3 leadingAnchor];
  v27 = [v33 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [v3 trailingAnchor];
  v30 = [v33 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  [v31 setActive:1];

  v32 = [(GKDashboardMultiplayerPickerViewController *)self navigationItem];
  [v32 setTitleView:v33];
}

- (void)dockHeaderViewIfNeeded
{
  v3 = [(GKDashboardCollectionViewController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  v33 = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
  [v33 constant];
  v9 = v8;
  v10 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
  [v10 constant];
  if (v9 <= v11)
  {
  }

  else
  {
    v12 = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
    [v12 constant];
    v14 = v13;
    v15 = [(GKDashboardMultiplayerPickerViewController *)self headerContentView];
    [v15 frame];
    v17 = v16;

    if (v14 >= v17)
    {
      return;
    }

    v18 = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
    [v18 constant];
    v20 = v19;
    v21 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
    [v21 constant];
    v23 = v20 - v22;

    v24 = [(GKDashboardMultiplayerPickerViewController *)self headerContentView];
    [v24 frame];
    v26 = v25;
    v27 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
    [v27 constant];
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
    v32 = [(GKDashboardCollectionViewController *)self collectionView];
    [v32 setScrollEnabled:0];

    v33 = [(GKDashboardCollectionViewController *)self collectionView];
    [v33 setContentOffset:1 animated:{v5, v31}];
  }
}

- (void)collapseHeaderView
{
  v3 = [(GKDashboardCollectionViewController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  v8 = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
  [v8 constant];
  v10 = v9;
  v11 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
  [v11 constant];
  v13 = v12;

  if (v10 > v13)
  {
    v14 = [(GKDashboardMultiplayerPickerViewController *)self navigationHeaderHeightConstraint];
    [v14 constant];
    v16 = v15;
    v17 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
    [v17 constant];
    v19 = v16 - v18;

    v20 = [(GKDashboardCollectionViewController *)self collectionView];
    [v20 setScrollEnabled:0];

    v21 = [(GKDashboardCollectionViewController *)self collectionView];
    [v21 setContentOffset:1 animated:{v5, v7 + v19}];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = a3;
  v6 = [(GKDashboardCollectionViewController *)self collectionView];

  if (v6 == v5)
  {

    [(GKDashboardMultiplayerPickerViewController *)self dockHeaderViewIfNeeded];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardCollectionViewController *)self collectionView];

  if (v5 == v4)
  {

    [(GKDashboardMultiplayerPickerViewController *)self dockHeaderViewIfNeeded];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v3 = [(GKDashboardCollectionViewController *)self collectionView];
  [v3 setScrollEnabled:1];
}

- (void)setupNoContentView:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  v9 = [v8 searchText];
  v10 = [v9 length];

  if (v10)
  {
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
    [v6 setTitle:v12];

    [v6 setMessage:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GKDashboardMultiplayerPickerViewController;
    [(GKDashboardCollectionViewController *)&v13 setupNoContentView:v6 withError:v7];
  }
}

- (void)dataUpdated:(BOOL)a3 withError:(id)a4
{
  v5.receiver = self;
  v5.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 dataUpdated:a3 withError:a4];
  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
}

- (id)preferredFocusEnvironments
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  v4 = [v3 showsAllFriends];

  if (v4)
  {
    v5 = MEMORY[0x277CCAA70];
    v6 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
    v7 = [v5 indexPathForItem:objc_msgSend(v6 inSection:{"numberOfFriendsToShowInitially"), 1}];

    v8 = [(GKDashboardCollectionViewController *)self collectionView];
    v9 = [v8 cellForItemAtIndexPath:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

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
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = GKDashboardMultiplayerPickerViewController;
  v10 = [(GKDashboardCollectionViewController *)&v13 preferredFocusEnvironments];
LABEL_11:

  return v10;
}

- (id)createSortPickerMenu
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
  v4 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  v5 = [v4 friendSortFilterScope];

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
  [v9 setState:v5 == 0];
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
  [v13 setState:v5 == 1];
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

- (void)pickerDatasource:(id)a3 didPickPlayers:(id)a4
{
  v11 = a4;
  v5 = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
    v8 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
    v9 = [v8 selectedMessageGroups];
    v10 = [(GKDashboardMultiplayerPickerViewController *)self message];
    [v7 multiplayerPicker:self didPickPlayers:v11 messageGroups:v9 customMessage:v10];
  }
}

- (void)pickerDatasourceDidSelectAddFriend:(id)a3
{
  if (_os_feature_enabled_impl())
  {
    [_TtC12GameCenterUI15GKMetricsBridge recordInviteFriendClickEventWithType:2 pageType:@"multiplayer" pageId:@"friendSelect"];
    v4 = [MEMORY[0x277D0C1D8] shared];
    v5 = [v4 isAddingFriendsRestricted];

    if (v5)
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

      v15 = self;
      v16 = v18;
    }

    else
    {
      v16 = [GKFriendingViewControllers inviteFriendsWithContainerViewController:self];
      v18 = v16;
      v15 = self;
    }

    [(GKDashboardMultiplayerPickerViewController *)v15 presentViewController:v16 animated:1 completion:0, v18];
  }

  else
  {
    v17 = [MEMORY[0x277D0BFA8] reporter];
    [v17 recordClickWithAction:@"navigate" targetId:@"invite" targetType:@"button" pageId:@"friendSelect" pageType:@"multiplayer"];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__GKDashboardMultiplayerPickerViewController_pickerDatasourceDidSelectAddFriend___block_invoke;
    v20[3] = &unk_27966AD50;
    v20[4] = self;
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerWithRecipients:MEMORY[0x277CBEBF8] chatGUID:0 completionHandler:v20];
  }
}

- (void)pickerDatasource:(id)a3 didSelectPlayers:(id)a4 inGroup:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10 && [v10 fromPeopleSuggester])
  {
    v12 = [(GKDashboardMultiplayerPickerViewController *)self composedNameForSuggestedMessageGroup:v11];
    [(GKDashboardMultiplayerPickerViewController *)self addRecipientForPlayers:v9 withName:v12];
  }

  else
  {
    v26 = v9;
    v27 = v8;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v9;
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
          v19 = [v18 displayName];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
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

    v9 = v26;
    v8 = v27;
  }

  v24 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource:v26];
  v25 = [v24 isSearching];

  if (v25)
  {
    [(GKDashboardMultiplayerPickerViewController *)self didEndSearchTextEditing];
  }

  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
}

- (void)highlightAlreadySelectedPlayers:(id)a3 inGroup:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 fromPeopleSuggester])
  {
    v9 = [(GKDashboardMultiplayerPickerViewController *)self composedNameForSuggestedMessageGroup:v8];
    v10 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    v11 = [v10 objectForKeyedSubscript:v9];

    if (v11)
    {
      v31[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      [(GKDashboardMultiplayerPickerViewController *)self highlightRecipients:v12];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v6;
    v13 = v6;
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
          v19 = [v18 displayName];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = [v18 displayNameWithOptions:0];
          }

          v22 = v21;

          v23 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
          v24 = [v23 objectForKeyedSubscript:v22];

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
    v6 = v25;
  }
}

- (void)pickerDatasource:(id)a3 didDeselectPlayers:(id)a4 inGroup:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10 && [v10 fromPeopleSuggester])
  {
    v12 = [(GKDashboardMultiplayerPickerViewController *)self composedNameForSuggestedMessageGroup:v11];
    v13 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    v14 = [v13 objectForKeyedSubscript:v12];

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
  v12 = v9;
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
        v20 = [v19 displayName];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
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
  v24 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  v25 = [v24 textView];
  if (([v25 isFirstResponder] & 1) == 0)
  {
    v26 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
    v27 = [v26 recipients];
    if ([v27 count])
    {
    }

    else
    {
      [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
      v28 = v36 = v8;
      [v28 textView];
      v30 = v29 = v9;
      v31 = [v30 text];
      v35 = [v31 length];

      v9 = v29;
      v8 = v36;

      if (v35)
      {
        goto LABEL_21;
      }

      v32 = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
      v33 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
      v34 = [v33 textView];
      [v34 setText:v32];

      [(GKDashboardMultiplayerPickerViewController *)self setComposeTextViewShowingPlaceholderText:1];
      v24 = [MEMORY[0x277D75348] tertiaryLabelColor];
      v25 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
      v26 = [v25 textView];
      [v26 setTextColor:v24];
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
    v3 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
    [v3 clearSelection];

    [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
  }
}

- (id)composedNameForSuggestedMessageGroup:(id)a3
{
  v3 = a3;
  v4 = [v3 players];
  v5 = [v3 groupName];
  if (![v5 length])
  {
    v6 = [v3 players];
    v7 = [v6 count];

    if (v7 == 1)
    {
      v8 = [v4 objectAtIndexedSubscript:0];
      v9 = [v8 displayNameWithOptions:0];
    }

    else
    {
      v11 = [v3 players];
      v12 = [v11 count];

      if (v12 == 2)
      {
        v13 = MEMORY[0x277CCACA8];
        v8 = GKGameCenterUIFrameworkBundle();
        v14 = GKGetLocalizedStringFromTableInBundle();
        v15 = [v4 objectAtIndexedSubscript:0];
        v16 = [v15 displayNameWithOptions:0];
        v17 = [v4 objectAtIndexedSubscript:1];
        v18 = [v17 displayNameWithOptions:0];
        v10 = [v13 stringWithFormat:v14, v16, v18];

        v5 = v14;
        goto LABEL_11;
      }

      v19 = [v3 players];
      v20 = [v19 count];

      if (v20 == 3)
      {
        v41 = MEMORY[0x277CCACA8];
        v8 = GKGameCenterUIFrameworkBundle();
        v40 = GKGetLocalizedStringFromTableInBundle();
        v42 = [v4 objectAtIndexedSubscript:0];
        v21 = [v42 displayNameWithOptions:0];
        v22 = [v4 objectAtIndexedSubscript:1];
        v23 = [v22 displayNameWithOptions:0];
        v24 = [v4 objectAtIndexedSubscript:2];
        v25 = [v24 displayNameWithOptions:0];
        v10 = [v41 stringWithFormat:v40, v21, v23, v25];

        v5 = v40;
        goto LABEL_11;
      }

      v26 = [v3 players];
      v27 = [v26 count];

      if (v27 >= 4)
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = GKGameCenterUIFrameworkBundle();
        v30 = GKGetLocalizedStringFromTableInBundle();
        v31 = [v4 objectAtIndexedSubscript:0];
        v32 = [v31 displayNameWithOptions:0];
        v33 = [v4 objectAtIndexedSubscript:1];
        v34 = [v33 displayNameWithOptions:0];
        v35 = [v28 stringWithFormat:v30, v32, v34];

        v8 = GKGameCenterUIFrameworkBundle();
        v5 = GKGetLocalizedStringFromTableInBundle();
        v36 = MEMORY[0x277CCABB0];
        v37 = [v3 players];
        v38 = [v36 numberWithUnsignedInteger:{objc_msgSend(v37, "count") - 2}];
        v10 = [v35 stringByAppendingFormat:v5, v38];

        goto LABEL_11;
      }

      v8 = GKGameCenterUIFrameworkBundle();
      v9 = GKGetLocalizedStringFromTableInBundle();
    }

    v10 = v9;
LABEL_11:

    v5 = v10;
  }

  return v5;
}

- (void)send:(id)a3
{
  v4 = [MEMORY[0x277D0BFA8] reporter];
  [v4 recordClickWithAction:@"navigate" targetId:@"inviteFriends" targetType:@"button" pageId:@"lobby" pageType:@"multiplayer"];

  v15 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  v5 = [v15 selectedPlayers];
  if ([v5 count])
  {
    v6 = [(GKDashboardMultiplayerPickerViewController *)self message];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [MEMORY[0x277D0C1F8] reporter];
      [v8 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BC90]];
    }

    [v15 pickerWillSendInvites];
    v9 = [v15 selectedMessageGroups];
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, v5, self->_message);
      [(GKDashboardMultiplayerPickerViewController *)self setCompletionHandler:0];
    }

    else
    {
      v11 = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
        v14 = [(GKDashboardMultiplayerPickerViewController *)self message];
        [v13 multiplayerPicker:self didPickPlayers:v5 messageGroups:v9 customMessage:v14];
      }
    }

    [(UIViewController *)self _gkRemoveViewController:self animated:1];
  }
}

- (void)addMessage:(id)a3
{
  v7 = +[GKMultiplayerCustomInviteMessageViewController];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [[GKMultiplayerCustomInviteMessageViewController alloc] initWithNibName:v7 bundle:v4];
  [(GKMultiplayerCustomInviteMessageViewController *)v5 setDelegate:self];
  v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v6 setOverrideUserInterfaceStyle:2];
  [(GKDashboardMultiplayerPickerViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)cancel:(id)a3
{
  v8 = a3;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, 0, 0);
    [(GKDashboardMultiplayerPickerViewController *)self setCompletionHandler:0];
  }

  [(UIViewController *)self _gkRemoveViewController:self animated:1];
  v5 = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(GKDashboardMultiplayerPickerViewController *)self multiplayerPickerDelegate];
    [v7 multiplayerPickerDidCancel:self];
  }
}

- (void)updateAddMessageButtonVisibility
{
  v3 = [MEMORY[0x277D0C1D8] shared];
  if ([v3 shouldAllowCustomCommunication])
  {
    v4 = [(GKDashboardMultiplayerPickerViewController *)self pickerOrigin];

    if (v4 == 1)
    {
      v5 = [(GKDashboardMultiplayerPickerViewController *)self navBarMessageButton];
      [v5 setHidden:0];

      v6 = [(GKDashboardMultiplayerPickerViewController *)self navBarMessageButton];
      [v6 setEnabled:1];

      v7 = MEMORY[0x277D755D0];
      v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
      v15 = [v7 configurationWithFont:v8];

      v9 = [(GKDashboardMultiplayerPickerViewController *)self message];
      v10 = [v9 length];

      if (v10)
      {
        v11 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.bubble"];
        v12 = [v11 imageWithConfiguration:v15];
        v13 = [v12 imageWithRenderingMode:2];
      }

      else
      {
        v12 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.bubble" withConfiguration:v15];
        v13 = [v12 imageWithRenderingMode:2];
      }

      v14 = [(GKDashboardMultiplayerPickerViewController *)self navBarMessageButton];
      [v14 setImage:v13];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v15 = [(GKDashboardMultiplayerPickerViewController *)self navBarMessageButton];
  [v15 setHidden:1];
LABEL_9:
}

- (void)customInviteViewController:(id)a3 didFinishWithMessage:(id)a4
{
  v5 = a4;
  [(GKDashboardMultiplayerPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(GKDashboardMultiplayerPickerViewController *)self setMessage:v5];

  [(GKDashboardMultiplayerPickerViewController *)self updateAddMessageButtonVisibility];
}

- (void)handleSearchTextFieldReturn:(id)a3
{
  [(GKDashboardMultiplayerPickerViewController *)self didEndSearchTextEditing];
  v4 = [(GKDashboardMultiplayerPickerViewController *)self showContactPickerButton];
  [v4 setHidden:1];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_messageField);

  if (WeakRetained == v4)
  {
    v7 = objc_loadWeakRetained(&self->_messageField);
    v8 = [v7 text];
    [(GKDashboardMultiplayerPickerViewController *)self setMessage:v8];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__GKDashboardMultiplayerPickerViewController_textFieldShouldReturn___block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];

    if (v6 == v4)
    {
      [(GKDashboardMultiplayerPickerViewController *)self handleSearchTextFieldReturn:v4];
      [v4 resignFirstResponder];
    }
  }

  return WeakRetained != v4;
}

- (void)_updateButtonEnableState
{
  v15 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  v3 = [v15 selectedPlayers];
  v4 = [v3 count] != 0;

  v5 = [(GKDashboardMultiplayerPickerViewController *)self navBarSendButton];
  [v5 setEnabled:v4];

  [(GKDashboardMultiplayerPickerViewController *)self updateAddMessageButtonVisibility];
  v6 = MEMORY[0x277CCACA8];
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v9 = [v15 selectedPlayers];
  v10 = [v6 localizedStringWithFormat:v8, objc_msgSend(v9, "count"), objc_msgSend(v15, "maxSelectable")];
  v11 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  [v11 setText:v10];

  v12 = [(GKDashboardMultiplayerPickerViewController *)self headerSubtitle];
  v13 = [v12 text];
  v14 = [(GKDashboardMultiplayerPickerViewController *)self collapsedSubtitle];
  [v14 setText:v13];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v32 = a4;
  v7 = a5;
  if ([v7 section])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v32;
      v9 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
      v10 = [v9 playerForIndexPath:v7];

      v11 = [v10 internal];
      v12 = [v11 contact];
      v13 = [v12 _gkCompositeName];

      v14 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
      v15 = [v14 friendSortFilterScope] == 1;

      v16 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
      [v8 configureWithPlayer:v10 isCoreRecent:objc_msgSend(v16 matchedContactName:"isPlayerAtIndexPathCoreRecent:" onlyShowContactName:{v7), v13, v15}];

      [v8 setAccessibilityPrefix:@"picker.friends"];
      v17 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
      v18 = [v17 playerStates];
      v19 = [v10 referenceKey];
      v20 = [v18 objectForKey:v19];
      v21 = [v20 integerValue];

      if (v21 != 2)
      {
        [v8 setSelected:v21 == 1];
        v22 = [v8 isSelected];
        v23 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
        v24 = v23;
        if (v22)
        {
          [v23 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
        }

        else
        {
          [v23 deselectItemAtIndexPath:v7 animated:0];
        }
      }
    }
  }

  v25 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  v26 = [v25 cornerMaskForItemAtIndexPath:v7];

  v27 = [v32 layer];
  v28 = v27;
  if (v26)
  {
    [v27 setMasksToBounds:1];

    v29 = [v32 layer];
    [v29 setMaskedCorners:v26];

    v30 = [v32 layer];
    [v30 setCornerRadius:14.0];

    v31 = *MEMORY[0x277CDA138];
    v28 = [v32 layer];
    [v28 setCornerCurve:v31];
  }

  else
  {
    [v27 setCornerRadius:0.0];
  }
}

- (void)didPressShowContactPickerButton:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBDC18]);
  [v4 setDelegate:self];
  [(GKDashboardMultiplayerPickerViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v5 = a4;
  v6 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  [v6 didPickContact:v5];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  [(GKDashboardMultiplayerPickerViewController *)self didBeginSearchTextEditing];
  v4 = [(GKDashboardMultiplayerPickerViewController *)self showContactPickerButton];
  [v4 setHidden:0];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  v11 = [v10 text];
  v12 = [v11 stringByAppendingString:v9];
  [(GKDashboardMultiplayerPickerViewController *)self setSearchText:v12];

  v13 = MEMORY[0x277CCAB68];
  v14 = [v10 text];

  v15 = [v13 stringWithString:v14];

  [v15 replaceCharactersInRange:location withString:{length, v9}];
  [(GKDashboardMultiplayerPickerViewController *)self setSearchText:v15];

  return 1;
}

- (void)willShowKeyboard:(id)a3
{
  v17 = a3;
  v4 = [(GKDashboardMultiplayerPickerViewController *)self excludesContacts];
  v5 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
  [v5 setShowsAddButtonWhenExpanded:!v4];

  v6 = [(GKDashboardMultiplayerPickerViewController *)self traitCollection];
  v7 = [v6 verticalSizeClass];

  if (v7 == 1)
  {
    [(GKDashboardMultiplayerPickerViewController *)self collapseHeaderView];
  }

  v8 = [v17 userInfo];
  v9 = [v8 objectForKey:*MEMORY[0x277D76BB8]];
  [v9 CGRectValue];
  v11 = v10;

  v12 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [v12 safeAreaInsets];
  [(GKDashboardMultiplayerPickerViewController *)self setKeyboardHeight:v11 - v13];

  v14 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  v15 = [v14 isFirstResponder];

  if (v15)
  {
    v16 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
    [v16 setDelegate:self];
  }
}

- (void)didBeginSearchTextEditing
{
  v2 = [MEMORY[0x277D0C1F8] reporter];
  [v2 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BCB8]];
}

- (void)setSearchText:(id)a3
{
  v6 = a3;
  v4 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
  if (([v4 isSearching] & 1) == 0 && objc_msgSend(v6, "length"))
  {
    v5 = [MEMORY[0x277D0C1F8] reporter];
    [v5 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BCC0]];
  }

  [v4 setSearchText:v6];
  [(GKDashboardMultiplayerPickerViewController *)self dataUpdated:1 withError:0];
}

- (void)didEndSearchTextEditing
{
  v3 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  [v3 setText:0];

  [(GKDashboardMultiplayerPickerViewController *)self setSearchText:0];
  v4 = [(GKDashboardCollectionViewController *)self collectionView];
  [v4 setNeedsLayout];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
  v9 = [v8 isFirstResponder];

  if (v9)
  {
    v10 = [(GKDashboardMultiplayerPickerViewController *)self searchTextField];
    [v10 resignFirstResponder];
  }

  v14.receiver = self;
  v14.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v14 collectionView:v6 didSelectItemAtIndexPath:v7];
  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
  v11 = [v7 section];

  if (v11 <= 2)
  {
    v12 = qword_27966ADE8[v11];
    v13 = [MEMORY[0x277D0C1F8] reporter];
    [v13 reportEvent:*MEMORY[0x277D0BE78] type:*v12];
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5.receiver = self;
  v5.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardCollectionViewController *)&v5 collectionView:a3 didDeselectItemAtIndexPath:a4];
  [(GKDashboardMultiplayerPickerViewController *)self _updateButtonEnableState];
}

- (void)viewSafeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = GKDashboardMultiplayerPickerViewController;
  [(GKDashboardMultiplayerPickerViewController *)&v8 viewSafeAreaInsetsDidChange];
  v3 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [v3 setNeedsLayout];

  v4 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [v4 layoutIfNeeded];

  v5 = [(GKDashboardCollectionViewController *)self collectionView];
  v6 = [v5 collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    [(GKDashboardMultiplayerPickerViewController *)self collectionSectionInset];
    [v7 setSectionInset:?];
  }
}

- (UIEdgeInsets)collectionSectionInset
{
  v3 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4 + 20.0;
  v6 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [v6 safeAreaInsets];
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
  v8 = [(GKDashboardCollectionViewController *)self collectionView];
  [v8 setDelegate:self];
  [v8 setClipsToBounds:1];
  v3 = [v8 collectionViewLayout];
  [v3 invalidateLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CCAB58];
    v5 = v3;
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

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v5 = a3;
  [v5 clearText];
  v6 = [MEMORY[0x277D75348] labelColor];
  v7 = [v5 textView];

  [v7 setTextColor:v6];

  [(GKDashboardMultiplayerPickerViewController *)self setComposeTextViewShowingPlaceholderText:0];
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (![(GKDashboardMultiplayerPickerViewController *)self skipAddressTokenization])
  {
    v6 = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
    v7 = [v5 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      if ([(GKDashboardMultiplayerPickerViewController *)self excludesContacts])
      {
        v8 = [(GKDashboardMultiplayerPickerViewController *)self composeTextView];
        [(GKDashboardMultiplayerPickerViewController *)self composeRecipientView:v8 didAddRecipient:0];

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
          v14 = [v12 shared];
          v15 = [v11 numberWithUnsignedInteger:{objc_msgSend(v14, "multiplayerAllowedPlayerType")}];
          *buf = 138412290;
          v24 = v15;
          _os_log_impl(&dword_24DE53000, v13, OS_LOG_TYPE_INFO, "Not forming contact from address that players input, since GKPreferences.shared.multiplayerAllowedPlayerType is set to: %@", buf, 0xCu);
        }
      }

      else
      {
        v16 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
        v17 = [v16 objectForKeyedSubscript:v5];

        if (v17)
        {
          v22 = v17;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
          [(GKDashboardMultiplayerPickerViewController *)self highlightRecipients:v18];
        }

        else
        {
          v18 = [GKMessageUtilities playerWithPhoneNumberOrEmail:v5 givenName:v5];
          if (v18)
          {
            v19 = [MEMORY[0x277D0C1F8] reporter];
            [v19 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BC08]];

            v20 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
            v21 = [v18 contact];
            [v20 didPickContact:v21];
          }
        }
      }
    }
  }
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  v12 = a4;
  if (![(GKDashboardMultiplayerPickerViewController *)self recipientRemovedImplicitly])
  {
    v5 = v12;
    v6 = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
    v7 = [v6 objectForKeyedSubscript:v5];

    v8 = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
    [v8 removeObjectForKey:v5];

    v9 = [(GKDashboardMultiplayerPickerViewController *)self recipientMap];
    v10 = [v5 address];

    [v9 removeObjectForKey:v10];
    v11 = [(GKDashboardMultiplayerPickerViewController *)self pickerDataSource];
    [v11 didRemoveRecipientPlayers:v7];
  }
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  if (![(GKDashboardMultiplayerPickerViewController *)self composeTextViewShowingPlaceholderText])
  {
    [(GKDashboardMultiplayerPickerViewController *)self setSearchText:v5];
  }
}

- (void)composeRecipientView:(id)a3 didSelectRecipients:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 recipients];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = MEMORY[0x277CBEB58];
  v9 = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
  v10 = [v9 allKeys];
  v11 = [v8 setWithArray:v10];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __87__GKDashboardMultiplayerPickerViewController_composeRecipientView_didSelectRecipients___block_invoke;
  v37[3] = &unk_27966AD78;
  v12 = v11;
  v38 = v12;
  v26 = v7;
  v27 = v6;
  v39 = v26;
  [v6 enumerateObjectsUsingBlock:v37];
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
        v18 = [(GKDashboardMultiplayerPickerViewController *)self removedRecipientPlayerMap];

        if (!v18)
        {
          v19 = objc_opt_new();
          [(GKDashboardMultiplayerPickerViewController *)self setRemovedRecipientPlayerMap:v19];
        }

        v20 = [(GKDashboardMultiplayerPickerViewController *)self recipientPlayerMap];
        v21 = [v20 objectForKeyedSubscript:v17];
        v22 = [(GKDashboardMultiplayerPickerViewController *)self removedRecipientPlayerMap];
        v23 = [v17 address];
        [v22 setObject:v21 forKeyedSubscript:v23];

        [(GKDashboardMultiplayerPickerViewController *)self composeRecipientView:v5 didRemoveRecipient:v17];
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
  v24 = v5;
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

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  v6 = a3;
  [(GKDashboardMultiplayerPickerViewController *)self setIsAnimatingComposeTextViewSizeChange:1];
  v7 = [(GKDashboardMultiplayerPickerViewController *)self composeTextViewHeightConstraint];
  [v7 constant];
  v9 = v8;

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3010000000;
  v17 = 0;
  v18 = 0;
  v16[3] = &unk_24E43C07A;
  v10 = [(GKDashboardCollectionViewController *)self collectionView];
  [v10 contentOffset];
  v17 = v11;
  v18 = v12;

  v13 = [(GKDashboardMultiplayerPickerViewController *)self view];
  [v13 layoutIfNeeded];

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

- (void)composeRecipientViewReturnPressed:(id)a3
{
  v12 = a3;
  v4 = [v12 recipients];
  if ([v4 count])
  {
    goto LABEL_2;
  }

  v5 = [v12 textView];
  v6 = [v5 text];
  v7 = [v6 length];

  if (!v7)
  {
    v9 = [(GKDashboardMultiplayerPickerViewController *)self searchFieldPlaceHolderText];
    v10 = [v12 textView];
    [v10 setText:v9];

    [(GKDashboardMultiplayerPickerViewController *)self setComposeTextViewShowingPlaceholderText:1];
    v4 = [MEMORY[0x277D75348] tertiaryLabelColor];
    v11 = [v12 textView];
    [v11 setTextColor:v4];

LABEL_2:
  }

  [(GKDashboardMultiplayerPickerViewController *)self didEndSearchTextEditing];
  v8 = [v12 textView];
  [v8 resignFirstResponder];
}

- (void)composeRecipientViewDidBecomeFirstResponder:(id)a3
{
  v6 = a3;
  if ([(GKDashboardMultiplayerPickerViewController *)self composeTextViewShowingPlaceholderText])
  {
    [v6 clearText];
    v4 = [MEMORY[0x277D75348] labelColor];
    v5 = [v6 textView];
    [v5 setTextColor:v4];

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