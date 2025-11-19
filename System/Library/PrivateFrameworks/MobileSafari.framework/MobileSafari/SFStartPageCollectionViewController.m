@interface SFStartPageCollectionViewController
- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridLocationForIndexPath:(id)a3 inSection:(id)a4;
- ($4E34F1DA1F1A31EFC59C0F9E582921FC)_siteIconLayoutForEnvironment:(SEL)a3 sectionInsets:(id)a4;
- (BOOL)_canDrop;
- (BOOL)_shouldShowContextMenuForCellAtIndexPath:(id)a3 fromPoint:(CGPoint)a4;
- (BOOL)_supportsPaginatedSectionLayouts;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (NSDirectionalEdgeInsets)_sectionContentInsets;
- (SFStartPageCollectionDataSource)dataSource;
- (SFStartPageCollectionDelegate)delegate;
- (SFStartPageCollectionViewController)initWithVisualStyleProvider:(id)a3;
- (double)_actualSectionWidth;
- (double)_effectiveLayoutWidth;
- (double)scrollDistance;
- (id)_attributedRichLinkSectionLayoutForEnvironment:(id)a3 maximumNumberOfPages:(int64_t)a4 numberOfItems:(int64_t)a5;
- (id)_bannerSectionLayoutForEnvironment:(id)a3 includingHeader:(BOOL)a4;
- (id)_collectionView:(id)a3 supplementaryViewWithKind:(id)a4 forIndexPath:(id)a5;
- (id)_currentSnapshot;
- (id)_customizationSection;
- (id)_dragPreviewParametersForSourceView:(id)a3 atIndexPath:(id)a4;
- (id)_layoutForSectionAtIndex:(int64_t)a3 inEnvironment:(id)a4;
- (id)_makeCollectionViewLayout;
- (id)_previewForCellAtIndexPath:(id)a3;
- (id)_reuseIdentifierForCellWithIdentifier:(id)a3 indexPath:(id)a4;
- (id)_reuseIdentifierForCellWithIdentifier:(id)a3 section:(id)a4;
- (id)_sectionForIdentifier:(id)a3;
- (id)_siteCardSectionLayoutForEnvironment:(id)a3 numberOfItems:(int64_t)a4;
- (id)_siteIconSectionLayoutForEnvironment:(id)a3;
- (id)_siteRowSectionLayoutForEnvironment:(id)a3;
- (id)_toggleExpandedActionForSectionIdentifier:(id)a3;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)sections;
- (int64_t)_collapsedCapacityForSection:(id)a3;
- (int64_t)_numberOfColumnsInSection:(id)a3;
- (int64_t)_numberOfItemsPerPageInSection:(id)a3;
- (unint64_t)_itemLimitForSection:(id)a3;
- (void)_applyCurrentSnapshotAnimatingDifferences:(BOOL)a3;
- (void)_applyStylingToLayoutGroup:(id)a3 withSectionItemType:(int64_t)a4 defaultInterItemSpacing:(double)a5;
- (void)_configureCell:(id)a3 forIdentifier:(id)a4 indexPath:(id)a5;
- (void)_configureHeader:(id)a3 forSection:(id)a4 atIndexPath:(id)a5;
- (void)_didCompleteOnboardingItem:(id)a3 wasClosed:(BOOL)a4;
- (void)_receivedTapToDismissGesture;
- (void)_setUpDataSource:(id)a3;
- (void)_updateCustomTopBackdrops;
- (void)_updateInteractionEnabled;
- (void)_updateInteractionEnabledForView:(id)a3;
- (void)_updateNavigationItemAnimated:(BOOL)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)configureModelWithIdentifier:(id)a3 usingBlock:(id)a4;
- (void)didStartOnboardingItem:(id)a3;
- (void)keyboardDidChangeFrame:(id)a3;
- (void)presentViewController:(id)a3 fromItemWithIdentifier:(id)a4;
- (void)reloadDataAnimatingDifferences:(BOOL)a3;
- (void)reloadNavigationItemAnimated:(BOOL)a3;
- (void)reloadSection:(id)a3 animated:(BOOL)a4;
- (void)scrollToTop;
- (void)scrollViewDidScroll:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setDisplaysSectionHeaders:(BOOL)a3;
- (void)setHidesEmptyNavigationBar:(BOOL)a3;
- (void)setStrongDataSource:(id)a3;
- (void)showPrivacyPrompt;
- (void)updateBackgroundStyle;
- (void)updateCollectionViewContentInset;
- (void)updateKeyboardBottomInsetFromKeyboardFrame:(CGRect)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SFStartPageCollectionViewController

- (void)viewDidLoad
{
  v94[1] = *MEMORY[0x1E69E9840];
  v90.receiver = self;
  v90.super_class = SFStartPageCollectionViewController;
  [(SFStartPageCollectionViewController *)&v90 viewDidLoad];
  v3 = [(SFStartPageCollectionViewController *)self view];
  v4 = [SFStartPageBackgroundUIVisualEffectBackdropView alloc];
  [v3 bounds];
  v5 = [(SFStartPageBackgroundUIVisualEffectBackdropView *)v4 initWithFrame:?];
  cellBackdropCaptureView = self->_cellBackdropCaptureView;
  self->_cellBackdropCaptureView = v5;

  [(_UIVisualEffectBackdropView *)self->_cellBackdropCaptureView setAutoresizingMask:18];
  [v3 addSubview:self->_cellBackdropCaptureView];
  v7 = objc_alloc(MEMORY[0x1E69DC7F0]);
  [v3 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SFStartPageCollectionViewController *)self _makeCollectionViewLayout];
  v17 = [v7 initWithFrame:v16 collectionViewLayout:{v9, v11, v13, v15}];
  collectionView = self->_collectionView;
  self->_collectionView = v17;

  [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"StartPageCollectionView"];
  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
  [(UICollectionView *)self->_collectionView setAutoresizingMask:18];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setKeyboardDismissMode:2];
  [(UICollectionView *)self->_collectionView setDragInteractionEnabled:1];
  [(UICollectionView *)self->_collectionView setDragDelegate:self];
  [(UICollectionView *)self->_collectionView setDropDelegate:self];
  v19 = self->_collectionView;
  v20 = objc_opt_class();
  v21 = +[SFBannerCell reuseIdentifier];
  [(UICollectionView *)v19 registerClass:v20 forCellWithReuseIdentifier:v21];

  v22 = self->_collectionView;
  v23 = objc_opt_class();
  v24 = +[SFPrivateRelayPromptBannerCell reuseIdentifier];
  [(UICollectionView *)v22 registerClass:v23 forCellWithReuseIdentifier:v24];

  v25 = self->_collectionView;
  v26 = objc_opt_class();
  v27 = +[SFAttributedRichLinkCell reuseIdentifier];
  [(UICollectionView *)v25 registerClass:v26 forCellWithReuseIdentifier:v27];

  v28 = self->_collectionView;
  v29 = objc_opt_class();
  v30 = +[SFInteractiveBannerCell reuseIdentifier];
  [(UICollectionView *)v28 registerClass:v29 forCellWithReuseIdentifier:v30];

  v31 = self->_collectionView;
  v32 = objc_opt_class();
  v33 = +[SFPrivacyReportBannerCell reuseIdentifier];
  [(UICollectionView *)v31 registerClass:v32 forCellWithReuseIdentifier:v33];

  v34 = self->_collectionView;
  v35 = objc_opt_class();
  v36 = +[SFPrivateBrowsingExplanationModuleCell reuseIdentifier];
  [(UICollectionView *)v34 registerClass:v35 forCellWithReuseIdentifier:v36];

  v37 = self->_collectionView;
  v38 = objc_opt_class();
  v39 = +[SFStartPageFooterCell reuseIdentifier];
  [(UICollectionView *)v37 registerClass:v38 forCellWithReuseIdentifier:v39];

  v40 = self->_collectionView;
  v41 = objc_opt_class();
  v42 = +[_TtC12MobileSafari25SFStartPageOnboardingCell reuseIdentifier];
  [(UICollectionView *)v40 registerClass:v41 forCellWithReuseIdentifier:v42];

  [MEMORY[0x1E69C8880] is2024ReadingListEnabled];
  v43 = self->_collectionView;
  v44 = objc_opt_class();
  v45 = +[SFSiteCardCell reuseIdentifier];
  [(UICollectionView *)v43 registerClass:v44 forCellWithReuseIdentifier:v45];

  v46 = self->_collectionView;
  v47 = objc_opt_class();
  v48 = +[SFSiteIconCell reuseIdentifier];
  [(UICollectionView *)v46 registerClass:v47 forCellWithReuseIdentifier:v48];

  v49 = self->_collectionView;
  v50 = objc_opt_class();
  v51 = +[SFSiteRowCell reuseIdentifier];
  [(UICollectionView *)v49 registerClass:v50 forCellWithReuseIdentifier:v51];

  v52 = self->_collectionView;
  v53 = objc_opt_class();
  v54 = +[SFStartPageSectionHeader reuseIdentifier];
  [(UICollectionView *)v52 registerClass:v53 forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:v54];

  if ([MEMORY[0x1E69C8880] is2024PrivacyReportEnabled])
  {
    v55 = self->_collectionView;
    v56 = objc_opt_class();
    v57 = +[SFPrivacyRedesignBannerCell reuseIdentifier];
    [(UICollectionView *)v55 registerClass:v56 forCellWithReuseIdentifier:v57];
  }

  v58 = self->_collectionView;
  v59 = objc_opt_class();
  v60 = +[SFBannerMessageAndButtonsCell reuseIdentifier];
  [(UICollectionView *)v58 registerClass:v59 forCellWithReuseIdentifier:v60];

  [(SFStartPageCollectionViewController *)self _setUpDataSource:self->_collectionView];
  [(SFStartPageCollectionViewController *)self setContentScrollView:self->_collectionView forEdge:15];
  [v3 addSubview:self->_collectionView];
  v61 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  contextMenuToItemIdentifierMap = self->_contextMenuToItemIdentifierMap;
  self->_contextMenuToItemIdentifierMap = v61;

  v63 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__receivedTapToDismissGesture];
  tapToDismissGestureRecognizer = self->_tapToDismissGestureRecognizer;
  self->_tapToDismissGestureRecognizer = v63;

  [(UITapGestureRecognizer *)self->_tapToDismissGestureRecognizer setCancelsTouchesInView:0];
  [(UITapGestureRecognizer *)self->_tapToDismissGestureRecognizer setDelegate:self];
  [(UICollectionView *)self->_collectionView addGestureRecognizer:self->_tapToDismissGestureRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v66 = [WeakRetained startPageCollectionViewControllerShouldInstallCustomBackdrops:self];
  }

  else
  {
    v66 = 0;
  }

  v93 = *MEMORY[0x1E69DB650];
  v67 = [MEMORY[0x1E69DC888] sf_alternateLabelColor];
  v94[0] = v67;
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:&v93 count:1];

  v69 = [(SFStartPageCollectionViewController *)self navigationItem];
  v70 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  v71 = v70;
  if (v66)
  {
    [v70 configureWithTransparentBackground];
  }

  else
  {
    [v70 configureWithDefaultBackground];
  }

  [v71 setLargeTitleTextAttributes:v68];
  [v69 setStandardAppearance:v71];

  v72 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v72 configureWithTransparentBackground];
  [v72 setTitleTextAttributes:v68];
  [v72 setLargeTitleTextAttributes:v68];
  [v69 setScrollEdgeAppearance:v72];

  v73 = [MEMORY[0x1E696AD88] defaultCenter];
  [v73 addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x1E69DE080] object:0];
  [v73 addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x1E69DDF68] object:0];
  [v73 addObserver:self selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x1E69DE078] object:0];
  if (v66)
  {
    v74 = objc_opt_new();
    v75 = [v74 backgroundEffect];

    v76 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v75];
    statusBarBackdrop = self->_statusBarBackdrop;
    self->_statusBarBackdrop = v76;

    [(UIVisualEffectView *)self->_statusBarBackdrop _setGroupName:@"com.apple.mobilesafari.CustomStartPageTopBackdrop"];
    [(UIVisualEffectView *)self->_statusBarBackdrop setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:self->_statusBarBackdrop];
    v78 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v75];
    navigationBarBackdrop = self->_navigationBarBackdrop;
    self->_navigationBarBackdrop = v78;

    [(UIVisualEffectView *)self->_navigationBarBackdrop _setGroupName:@"com.apple.mobilesafari.CustomStartPageTopBackdrop"];
    [(UIVisualEffectView *)self->_navigationBarBackdrop setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:self->_navigationBarBackdrop];
    v80 = objc_alloc_init(MEMORY[0x1E69DD250]);
    navigationBarSeparator = self->_navigationBarSeparator;
    self->_navigationBarSeparator = v80;

    [(UIView *)self->_navigationBarSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
    v82 = [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
    [(UIView *)self->_navigationBarSeparator setBackgroundColor:v82];

    [v3 addSubview:self->_navigationBarSeparator];
  }

  v92[0] = objc_opt_class();
  v92[1] = objc_opt_class();
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v84 = [(SFStartPageCollectionViewController *)self registerForTraitChanges:v83 withTarget:self action:sel_updateBackgroundStyle];

  objc_initWeak(&location, self);
  v91 = objc_opt_class();
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __50__SFStartPageCollectionViewController_viewDidLoad__block_invoke;
  v87[3] = &unk_1E721DE38;
  objc_copyWeak(&v88, &location);
  v86 = [(SFStartPageCollectionViewController *)self registerForTraitChanges:v85 withHandler:v87];

  objc_destroyWeak(&v88);
  objc_destroyWeak(&location);
}

- (id)_makeCollectionViewLayout
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x1E69DC810]);
  [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider defaultRowSpacing];
  [v3 setInterSectionSpacing:?];
  v4 = objc_alloc(MEMORY[0x1E69DC808]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SFStartPageCollectionViewController__makeCollectionViewLayout__block_invoke;
  v7[3] = &unk_1E721F108;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithSectionProvider:v7 configuration:v3];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFStartPageCollectionViewController;
  [(SFStartPageCollectionViewController *)&v3 viewWillLayoutSubviews];
  [(SFStartPageCollectionViewController *)self _updateCustomTopBackdrops];
}

- (void)_updateCustomTopBackdrops
{
  v3 = [(SFStartPageCollectionViewController *)self navigationController];
  v21 = v3;
  if (!self->_statusBarBackdrop)
  {
    statusBarBackdrop = 0;
    goto LABEL_5;
  }

  if ([v3 isNavigationBarHidden])
  {
    statusBarBackdrop = self->_statusBarBackdrop;
LABEL_5:
    v5 = 0.0;
    [(UIVisualEffectView *)statusBarBackdrop setAlpha:0.0];
    p_navigationBarBackdrop = &self->_navigationBarBackdrop;
    goto LABEL_12;
  }

  v7 = [v21 view];
  [v7 safeAreaInsets];
  v9 = v8;

  v10 = [(SFStartPageCollectionViewController *)self view];
  [v10 safeAreaInsets];
  v12 = v11;

  v13 = [(SFStartPageCollectionViewController *)self view];
  [v13 bounds];
  Width = CGRectGetWidth(v23);

  v5 = 0.0;
  [(UIVisualEffectView *)self->_statusBarBackdrop setFrame:0.0, 0.0, Width, v9];
  [(UIVisualEffectView *)self->_navigationBarBackdrop setFrame:0.0, v9, Width, v12 - v9];
  p_navigationBarBackdrop = &self->_navigationBarSeparator;
  [(UIView *)self->_navigationBarSeparator setFrame:0.0, v12, Width, _SFOnePixel()];
  v15 = [(SFStartPageCollectionViewController *)self navigationItem];
  v16 = [v15 sf_isEmpty];

  if (v16)
  {
    [(SFStartPageCollectionViewController *)self scrollDistance];
    [(UIVisualEffectView *)self->_statusBarBackdrop setAlpha:_SFClampPercent(v17, v12 - v9, v12 - v9 + 16.0)];
    navigationBarBackdrop = self->_navigationBarBackdrop;
    v19 = 0.0;
  }

  else
  {
    v5 = 1.0;
    if (!self->_wantsWallpaperHiddenForCurrentBackgroundStyle)
    {
      [(SFStartPageCollectionViewController *)self scrollDistance];
      v5 = _SFClampPercent(v20, 0.0, 16.0);
    }

    [(UIVisualEffectView *)self->_statusBarBackdrop setAlpha:v5];
    navigationBarBackdrop = self->_navigationBarBackdrop;
    v19 = v5;
  }

  [(UIVisualEffectView *)navigationBarBackdrop setAlpha:v19];
LABEL_12:
  [*p_navigationBarBackdrop setAlpha:v5];
}

- (double)scrollDistance
{
  [(UICollectionView *)self->_collectionView contentOffset];
  v4 = v3;
  [(UICollectionView *)self->_collectionView adjustedContentInset];
  return v4 + v5;
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = SFStartPageCollectionViewController;
  [(SFStartPageCollectionViewController *)&v9 viewDidLayoutSubviews];
  v3 = [(SFStartPageCollectionViewController *)self interfaceOrientation];
  [(UICollectionView *)self->_collectionView bounds];
  Width = CGRectGetWidth(v10);
  if (Width != 0.0)
  {
    v5 = Width;
    if (Width == self->_lastLayoutWidth)
    {
      if (!self->_shouldIgnoreLastLayoutSize)
      {
        return;
      }
    }

    else if (!self->_shouldIgnoreLastLayoutSize && v3 == self->_lastLayoutOrientation)
    {
      v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
      v7 = [v6 BOOLForKey:@"DebugStartPageAllowsAnimatedReloadOnResize"];

      self->_lastLayoutWidth = v5;
      self->_lastLayoutOrientation = v3;
      self->_shouldIgnoreLastLayoutSize = 0;
      if (!v7)
      {
LABEL_11:
        [(SFStartPageCollectionViewController *)self reloadDataAnimatingDifferences:0];
        return;
      }

LABEL_9:
      if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
      {
        v8 = [(SFStartPageCollectionViewController *)self traitCollection];
        -[SFStartPageCollectionViewController reloadDataAnimatingDifferences:](self, "reloadDataAnimatingDifferences:", [v8 _presentationSemanticContext] != 3);

        return;
      }

      goto LABEL_11;
    }

    self->_lastLayoutWidth = Width;
    self->_lastLayoutOrientation = v3;
    self->_shouldIgnoreLastLayoutSize = 0;
    goto LABEL_9;
  }
}

- (void)updateCollectionViewContentInset
{
  v3 = [(SFStartPageCollectionViewController *)self navigationController];
  v32 = [v3 navigationBar];

  [(SFStartPageCollectionViewController *)self scrollDistance];
  v5 = v4;
  visualStyleProvider = self->_visualStyleProvider;
  v7 = [v32 barPosition];
  v8 = [(SFStartPageCollectionViewController *)self traitCollection];
  [(SFStartPageVisualStyleProviding *)visualStyleProvider collectionViewContentInsetsWithNavigationBarPosition:v7 traitCollection:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startPageCollectionViewControllerTopPadding:self];
  v19 = v18;

  if (v19 != -1.0)
  {
    v10 = v19;
  }

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v20 = [(SFStartPageCollectionViewController *)self presentingViewController];

    if (v20)
    {
      v14 = 22.0;
    }
  }

  keyboardBottomInset = self->_keyboardBottomInset;
  [(UICollectionView *)self->_collectionView safeAreaInsets];
  v23 = fmax(keyboardBottomInset - v22, 0.0);
  if (self->_keyboardBottomInset <= v14)
  {
    v24 = v14;
  }

  else
  {
    v24 = v23;
  }

  [(UICollectionView *)self->_collectionView setContentInset:v10, v12, v24, v16];
  v26 = *MEMORY[0x1E69DDCE0];
  v25 = *(MEMORY[0x1E69DDCE0] + 8);
  v27 = *(MEMORY[0x1E69DDCE0] + 24);
  v28 = [(SFStartPageCollectionViewController *)self _isInPopoverPresentation];
  v29 = 7.0;
  v30 = fmax(7.0, v23);
  if (v28)
  {
    v31 = v30;
  }

  else
  {
    v31 = v23;
  }

  if (!v28)
  {
    v29 = v26;
  }

  [(UICollectionView *)self->_collectionView setVerticalScrollIndicatorInsets:v29, v25, v31, v27];
  if (v5 < 1.0)
  {
    [(SFStartPageCollectionViewController *)self scrollToTop];
  }
}

- (void)scrollToTop
{
  v3 = [(SFStartPageCollectionViewController *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5 != self)
  {

LABEL_3:
    [(UICollectionView *)self->_collectionView adjustedContentInset];
    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView setContentOffset:0 animated:0.0, -v7];
    return;
  }

  v9 = [(SFStartPageCollectionViewController *)self navigationItem];
  v10 = [v9 title];
  v11 = [v10 length];

  if (!v11)
  {
    goto LABEL_3;
  }

  v12 = [(SFStartPageCollectionViewController *)self navigationController];
  v13 = [v12 navigationBar];
  [v13 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v15 = v14;

  v16 = [(SFStartPageCollectionViewController *)self navigationController];
  v17 = [v16 navigationBar];
  [v17 frame];
  v19 = -(v15 + v18);

  [(UICollectionView *)self->_collectionView setContentOffset:0.0, v19];
  v20 = self->_collectionView;

  [(UICollectionView *)v20 setContentOffset:0.0, v19];
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = SFStartPageCollectionViewController;
  [(SFStartPageCollectionViewController *)&v4 viewLayoutMarginsDidChange];
  v3 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [v3 invalidateLayout];
}

- (id)_currentSnapshot
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained sectionsForStartPageCollectionViewController:self];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if (![WeakRetained customizationControlPolicyForStartPageCollectionViewController:self])
  {
    v8 = [(SFStartPageCollectionViewController *)self _customizationSection];
    v9 = [v7 arrayByAddingObject:v8];

    v7 = v9;
  }

  v10 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v10 appendSectionsWithIdentifiers:v7];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [v16 effectiveItemIdentifiersWithMaximumCount:{-[SFStartPageCollectionViewController _itemLimitForSection:](self, "_itemLimitForSection:", v16, v19)}];
        if (v17)
        {
          [v10 appendItemsWithIdentifiers:v17 intoSectionWithIdentifier:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  return v10;
}

- (double)_effectiveLayoutWidth
{
  v3 = [(SFStartPageCollectionViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;

  return self->_lastLayoutWidth - v5 - v7;
}

- (NSDirectionalEdgeInsets)_sectionContentInsets
{
  v3 = [(SFStartPageCollectionViewController *)self view];
  [v3 directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider sectionContentInsetsWithViewLayoutMargins:v5, v7, v9, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(SFStartPageCollectionViewController *)self view];
  [v20 bounds];
  v21 = CGRectGetWidth(v28) - v19 - v15;

  if (v21 < 200.0)
  {
    v22 = [(SFStartPageCollectionViewController *)self view];
    [v22 bounds];
    v21 = CGRectGetWidth(v29) + -16.0 + -16.0;

    v19 = 16.0;
    v15 = 16.0;
  }

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v23 = [(SFStartPageCollectionViewController *)self presentingViewController];

    if (v23)
    {
      v19 = 32.0;
      v15 = 32.0;
    }
  }

  if ((v21 & 0x80000001) == 1)
  {
    v24 = v19 + 1.0;
  }

  else
  {
    v24 = v19;
  }

  v25 = v13;
  v26 = v15;
  v27 = v17;
  result.trailing = v24;
  result.bottom = v27;
  result.leading = v26;
  result.top = v25;
  return result;
}

id __64__SFStartPageCollectionViewController__makeCollectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained _layoutForSectionAtIndex:a2 inEnvironment:v5];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXStartPage();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __64__SFStartPageCollectionViewController__makeCollectionViewLayout__block_invoke_cold_1(v9);
    }

    v10 = MEMORY[0x1E6995588];
    v11 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v12 = [MEMORY[0x1E6995558] estimatedDimension:100.0];
    v13 = [v10 sizeWithWidthDimension:v11 heightDimension:v12];

    v14 = [MEMORY[0x1E6995578] itemWithLayoutSize:v13];
    v15 = MEMORY[0x1E6995568];
    v19[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v17 = [v15 horizontalGroupWithLayoutSize:v13 subitems:v16];

    v8 = [MEMORY[0x1E6995580] sectionWithGroup:v17];
  }

  return v8;
}

- (id)sections
{
  v2 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
  v3 = [v2 sectionIdentifiers];

  return v3;
}

- (void)updateBackgroundStyle
{
  v16 = [(SFStartPageCollectionViewController *)self traitCollection];
  v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v4 = [v16 sf_usesVibrantAppearance];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    v6 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
    v7 = [v6 sectionIdentifiers];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v5 = [MEMORY[0x1E69DC888] sf_colorNamed:@"StartPageEmptyContentBackground"];
  }

  v10 = v5;
  v9 = v4 ^ 1;

  v3 = v10;
LABEL_7:
  if ([v16 sf_usesVibrantAppearance])
  {
    v11 = [v16 sf_backgroundBlurEffect];
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  [(_UIVisualEffectBackdropView *)self->_cellBackdropCaptureView setRenderMode:v12];
  v13 = [(UICollectionView *)self->_collectionView backgroundColor];
  v14 = WBSIsEqual();

  if ((v14 & 1) == 0)
  {
    [(UICollectionView *)self->_collectionView setBackgroundColor:v3];
    self->_wantsWallpaperHiddenForCurrentBackgroundStyle = v9;
    [(SFStartPageCollectionViewController *)self _updateCustomTopBackdrops];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained startPageCollectionViewControllerDidChangeBackgroundStyle:self];
  }
}

- (id)_customizationSection
{
  cachedCustomizationSection = self->_cachedCustomizationSection;
  if (!cachedCustomizationSection)
  {
    objc_initWeak(&location, self);
    v4 = _WBSLocalizedString();
    v5 = MEMORY[0x1E69C9748];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __60__SFStartPageCollectionViewController__customizationSection__block_invoke;
    v13 = &unk_1E721BF08;
    objc_copyWeak(&v14, &location);
    v6 = [v5 actionWithTitle:v4 image:0 identifier:0 handler:&v10];
    v7 = [MEMORY[0x1E69C9860] footerSectionWithIdentifier:@"com.apple.mobilesafari.framework-customization-section" action:{v6, v10, v11, v12, v13}];
    v8 = self->_cachedCustomizationSection;
    self->_cachedCustomizationSection = v7;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    cachedCustomizationSection = self->_cachedCustomizationSection;
  }

  return cachedCustomizationSection;
}

- (SFStartPageCollectionViewController)initWithVisualStyleProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFStartPageCollectionViewController;
  v6 = [(SFStartPageCollectionViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_displaysSectionHeaders = 1;
    v6->_hidesEmptyNavigationBar = 1;
    objc_storeStrong(&v6->_visualStyleProvider, a3);
    v8 = v7;
  }

  return v7;
}

void __50__SFStartPageCollectionViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[129] collectionViewLayout];
    [v2 invalidateLayout];

    WeakRetained = v3;
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFStartPageCollectionViewController;
  [(SFStartPageCollectionViewController *)&v4 viewIsAppearing:a3];
  [(SFStartPageCollectionViewController *)self navigationBarPositionDidChange];
  [MEMORY[0x1E69DCD68] visiblePeripheralFrame];
  [(SFStartPageCollectionViewController *)self updateKeyboardBottomInsetFromKeyboardFrame:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SFStartPageCollectionViewController;
  [(SFStartPageCollectionViewController *)&v5 viewWillAppear:?];
  [(SFStartPageCollectionViewController *)self _updateNavigationItemAnimated:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_privacyPresenter);
  v6 = [WeakRetained presentingViewController];
  [v6 dismissViewControllerAnimated:v3 completion:0];

  v7.receiver = self;
  v7.super_class = SFStartPageCollectionViewController;
  [(SFStartPageCollectionViewController *)&v7 viewWillDisappear:v3];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = SFStartPageCollectionViewController;
  [(SFStartPageCollectionViewController *)&v10 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    if (self->_hasDeferredUpdates)
    {
      self->_hasDeferredUpdates = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __83__SFStartPageCollectionViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke;
      aBlock[3] = &unk_1E721B360;
      aBlock[4] = self;
      v6 = _Block_copy(aBlock);
      if (self->_hasMadeFirstCommit && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v8 = [WeakRetained startPageCollectionViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:self], WeakRetained, !v8))
      {
        v6[2](v6);
      }

      else
      {
        [*MEMORY[0x1E69DDA98] _performBlockAfterCATransactionCommits:v6];
      }
    }

    self->_hasMadeFirstCommit = 1;
  }
}

uint64_t __83__SFStartPageCollectionViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __83__SFStartPageCollectionViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke_2;
  v2[3] = &unk_1E721B360;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

- (void)setStrongDataSource:(id)a3
{
  objc_storeStrong(&self->_strongDataSource, a3);
  v5 = a3;
  [(SFStartPageCollectionViewController *)self setDataSource:v5];
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    strongDataSource = self->_strongDataSource;
    if (strongDataSource != obj)
    {
      self->_strongDataSource = 0;
    }

    objc_storeWeak(&self->_dataSource, obj);
    v5 = obj;
    if (self->_collectionDataSource)
    {
      [(SFStartPageCollectionViewController *)self reloadDataAnimatingDifferences:0];
      [(SFStartPageCollectionViewController *)self reloadNavigationItemAnimated:0];
      v5 = obj;
    }
  }
}

- (void)setDisplaysSectionHeaders:(BOOL)a3
{
  if (self->_displaysSectionHeaders != a3)
  {
    self->_displaysSectionHeaders = a3;
    v4 = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [v4 invalidateLayout];
  }
}

- (void)setHidesEmptyNavigationBar:(BOOL)a3
{
  if (self->_hidesEmptyNavigationBar != a3)
  {
    self->_hidesEmptyNavigationBar = a3;
    [(SFStartPageCollectionViewController *)self reloadNavigationItemAnimated:0];
  }
}

- (void)configureModelWithIdentifier:(id)a3 usingBlock:(id)a4
{
  v10 = a4;
  v6 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource indexPathForItemIdentifier:a3];
  if (v6)
  {
    v7 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v6];
    if (v7)
    {
      v8 = [(SFStartPageCollectionViewController *)self sections];
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

      if (([v9 itemType] - 2) <= 3)
      {
        v10[2](v10, v7);
      }
    }
  }
}

- (void)presentViewController:(id)a3 fromItemWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E69C8A40];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __84__SFStartPageCollectionViewController_presentViewController_fromItemWithIdentifier___block_invoke;
  v19 = &unk_1E721B400;
  v20 = self;
  v10 = v6;
  v21 = v10;
  [v9 setHandler:&v16];
  v11 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource indexPathForItemIdentifier:v8, v16, v17, v18, v19, v20];

  if (v11)
  {
    v12 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v11];
    if (v12)
    {
      [v10 setModalPresentationStyle:7];
      v13 = [v10 popoverPresentationController];
      [v13 setSourceView:v12];
    }

    else
    {
      v14 = [(UICollectionView *)self->_collectionView collectionViewLayout];
      v13 = [v14 layoutAttributesForItemAtIndexPath:v11];

      if (v13)
      {
        [v10 setModalPresentationStyle:7];
        v15 = [v10 popoverPresentationController];
        [v15 setSourceView:self->_collectionView];
        [v13 frame];
        [v15 setSourceRect:?];
      }
    }
  }
}

- (void)_updateNavigationItemAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained startPageCollectionViewControllerWillUpdateNavigationBar:self];

  v10 = [(SFStartPageCollectionViewController *)self navigationController];
  v6 = [v10 topViewController];

  if (v6 == self)
  {
    v7 = [(SFStartPageCollectionViewController *)self navigationItem];
    v8 = v7;
    if (self->_hidesEmptyNavigationBar)
    {
      v9 = [v7 sf_isEmpty];
    }

    else
    {
      v9 = 0;
    }

    [v10 setNavigationBarHidden:v9 animated:v3];
  }
}

- (void)_receivedTapToDismissGesture
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startPageCollectionViewControllerDidCompleteDismissGesture:self];
}

- (void)keyboardDidChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];

  v5 = v6;
  if (v6)
  {
    [v6 CGRectValue];
    [(SFStartPageCollectionViewController *)self updateKeyboardBottomInsetFromKeyboardFrame:?];
    v5 = v6;
  }
}

- (void)updateKeyboardBottomInsetFromKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  IsEmpty = CGRectIsEmpty(a3);
  v9 = 0.0;
  if (!IsEmpty)
  {
    [(UICollectionView *)self->_collectionView convertRect:0 fromView:x, y, width, height];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UICollectionView *)self->_collectionView bounds];
    MaxY = CGRectGetMaxY(v21);
    v22.origin.x = v11;
    v22.origin.y = v13;
    v22.size.width = v15;
    v22.size.height = v17;
    MinY = CGRectGetMinY(v22);
    v9 = _SFRoundFloatToPixels(MaxY - MinY);
  }

  if (v9 != self->_keyboardBottomInset)
  {
    self->_keyboardBottomInset = v9;

    [(SFStartPageCollectionViewController *)self updateCollectionViewContentInset];
  }
}

- (void)reloadDataAnimatingDifferences:(BOOL)a3
{
  v3 = a3;
  v5 = [(SFStartPageCollectionViewController *)self _appearState];
  if (!self->_isPresentingContextMenu && (v6 = v5, -[SFStartPageCollectionViewController viewIfLoaded](self, "viewIfLoaded"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8) && v6)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXStartPage();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [SFStartPageCollectionViewController reloadDataAnimatingDifferences:v9];
      }
    }

    v10 = v6 == 2 && v3;
    [(SFStartPageCollectionViewController *)self _applyCurrentSnapshotAnimatingDifferences:v10];
  }

  else
  {
    self->_hasDeferredUpdates = 1;
  }
}

- (void)reloadSection:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(SFStartPageCollectionViewController *)self isViewLoaded])
  {
    v7 = [(SFStartPageCollectionViewController *)self traitCollection];
    v8 = [v7 _presentationSemanticContext];

    v9 = v8 != 3 && v4;
    v10 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
    v11 = [(SFStartPageCollectionViewController *)self _currentSnapshot];
    v12 = [v10 indexOfSectionIdentifier:v6];
    v13 = [v11 indexOfSectionIdentifier:v6];
    v14 = v13;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_21:

        goto LABEL_22;
      }

      v15 = [v10 sectionIdentifiers];
      v16 = [v15 count];

      if (v14 > v16)
      {
        [(SFStartPageCollectionViewController *)self reloadDataAnimatingDifferences:v9];
        goto LABEL_21;
      }

      v24 = [v11 sectionIdentifiers];
      v18 = [v24 objectAtIndexedSubscript:v14];

      v25 = [v10 sectionIdentifiers];
      v26 = [v25 count];

      if (v14 == v26)
      {
        v32[0] = v18;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
        [v10 appendSectionsWithIdentifiers:v27];
      }

      else
      {
        v31 = v18;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        v28 = [v10 sectionIdentifiers];
        v29 = [v28 objectAtIndexedSubscript:v14];
        [v10 insertSectionsWithIdentifiers:v27 beforeSectionWithIdentifier:v29];
      }

      v19 = [v11 itemIdentifiersInSectionWithIdentifier:v18];
      [v10 appendItemsWithIdentifiers:v19 intoSectionWithIdentifier:v18];
    }

    else
    {
      v17 = [v10 sectionIdentifiers];
      v18 = [v17 objectAtIndexedSubscript:v12];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
        v21 = [v11 itemIdentifiersInSectionWithIdentifier:v18];
        [v20 appendItems:v21];

        [(UICollectionViewDiffableDataSource *)self->_collectionDataSource applySnapshot:v20 toSection:v18 animatingDifferences:v9];
        if ([MEMORY[0x1E69C8880] is2024PrivacyReportEnabled])
        {
          v22 = [v6 identifier];
          v23 = [v22 isEqualToString:*MEMORY[0x1E69C96A0]];

          if (v23)
          {
            [(SFStartPageCollectionViewController *)self reloadDataAnimatingDifferences:v9];
          }
        }

        goto LABEL_20;
      }

      v30 = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      [v10 deleteSectionsWithIdentifiers:v19];
    }

    [(UICollectionViewDiffableDataSource *)self->_collectionDataSource applySnapshot:v10 animatingDifferences:v9];
LABEL_20:

    goto LABEL_21;
  }

LABEL_22:
}

- (void)reloadNavigationItemAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SFStartPageCollectionViewController *)self parentViewController];

  if (v5)
  {
    [(SFStartPageCollectionViewController *)self _updateNavigationItemAnimated:v3];
    if (v3)
    {
      v6 = *MEMORY[0x1E69DE248];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __68__SFStartPageCollectionViewController_reloadNavigationItemAnimated___block_invoke;
      v7[3] = &unk_1E721B360;
      v7[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6];
    }

    else
    {
      [(SFStartPageCollectionViewController *)self _updateCustomTopBackdrops];
    }

    [(SFStartPageCollectionViewController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (BOOL)_shouldShowContextMenuForCellAtIndexPath:(id)a3 fromPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:a3];
  if (objc_opt_respondsToSelector())
  {
    [v7 convertPoint:self->_collectionView fromView:{x, y}];
    v8 = [v7 shouldShowContextMenuFromPoint:?];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  if ([(SFStartPageCollectionViewController *)self _shouldShowContextMenuForCellAtIndexPath:v8 fromPoint:x, y])
  {
    v9 = [(SFStartPageCollectionViewController *)self sections];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

    v11 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource itemIdentifierForIndexPath:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
    }

    else
    {
      v13 = [v10 contextMenuProvider];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v12 = (v13)[2](v13, v11, WeakRetained);

      if (v12)
      {
        [(NSMapTable *)self->_contextMenuToItemIdentifierMap setObject:v11 forKey:v12];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(SFStartPageCollectionViewController *)self collectionView:a3 willEndContextMenuInteractionWithConfiguration:v8 animator:v9];
  v10 = [v9 previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setPreferredCommitStyle:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __112__SFStartPageCollectionViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v16[3] = &unk_1E721B400;
    v16[4] = self;
    v17 = v10;
    [v9 addAnimations:v16];
  }

  else
  {
    v11 = [(NSMapTable *)self->_contextMenuToItemIdentifierMap objectForKey:v8];
    v12 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource indexPathForItemIdentifier:v11];
    if (v12)
    {
      v13 = [(SFStartPageCollectionViewController *)self sections];
      v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v12, "section")}];

      v15 = [v14 contextMenuCommitHandler];
      (v15)[2](v15, v8, v11, v9);
    }
  }
}

void __112__SFStartPageCollectionViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:*(a1 + 40) animated:1];
}

- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = [(NSMapTable *)self->_contextMenuToItemIdentifierMap objectForKey:a4];
  v8 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource indexPathForItemIdentifier:v7];
  if (v8)
  {
    v9 = [v6 cellForItemAtIndexPath:v8];
    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [v9 contextMenuPreviewView];
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 window];

      if (v11)
      {
        v11 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMapTable *)self->_contextMenuToItemIdentifierMap objectForKey:v7];
  v9 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource indexPathForItemIdentifier:v8];
  if (v9)
  {
    v10 = [(SFStartPageCollectionViewController *)self sections];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];

    v12 = [v11 contextMenuDismissHandler];
    (v12)[2](v12, v7, v8);
  }

  v13 = [(SFStartPageCollectionViewController *)self collectionView:v6 previewForHighlightingContextMenuWithConfiguration:v7];

  return v13;
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __110__SFStartPageCollectionViewController_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke;
  v5[3] = &unk_1E721B360;
  v5[4] = self;
  [a5 addAnimations:{v5, a4}];
}

_BYTE *__110__SFStartPageCollectionViewController_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1044) = 0;
  result = *(a1 + 32);
  if (result[1042] == 1)
  {
    result = [result reloadDataAnimatingDifferences:1];
    *(*(a1 + 32) + 1042) = 0;
  }

  return result;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SFStartPageCollectionViewController *)self sections];
  v7 = [v5 section];

  v8 = [v6 objectAtIndexedSubscript:v7];

  if ([v8 itemType])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v8 contentBanner];
    v11 = [v10 contentVariant];

    if (v11 <= 6)
    {
      v9 = 6u >> v11;
    }

    else
    {
      v9 = 1;
    }
  }

  return v9 & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(SFStartPageCollectionViewController *)self sections];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v9 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource itemIdentifierForIndexPath:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [v8 itemType];
  if ((v11 - 3) < 3)
  {
    goto LABEL_2;
  }

  if (v11 == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v12 = [(SFStartPageCollectionViewController *)self _gridLocationForIndexPath:v6 inSection:v8];
      [WeakRetained startPageCollectionViewController:self didSelectItemWithIdentifier:v9 atGridLocation:{v12, v13}];
      goto LABEL_10;
    }

    v15 = [v8 supplementaryAction];
    [v15 performAction];
  }

  else
  {
    if (v11)
    {
      goto LABEL_10;
    }

    [v16 deselectItemAtIndexPath:v6 animated:1];
    v14 = [v8 contentBanner];
    v15 = [v14 action];

    if (v15)
    {
      v15[2](v15);
    }
  }

LABEL_10:
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridLocationForIndexPath:(id)a3 inSection:(id)a4
{
  visualStyleProvider = self->_visualStyleProvider;
  v7 = a3;
  v8 = [a4 itemType];
  [(SFStartPageCollectionViewController *)self _actualSectionWidth];
  v10 = v9;
  v11 = [(SFStartPageCollectionViewController *)self traitCollection];
  v12 = [(SFStartPageVisualStyleProviding *)visualStyleProvider numberOfColumnsForSectionItemType:v8 sectionWidth:v11 traitCollection:v10];

  v13 = [v7 item] / v12;
  v14 = [v7 item];

  v15 = v14 % v12;
  v16 = v13;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startPageCollectionViewControllerDidScroll:self];

  [(SFStartPageCollectionViewController *)self _updateCustomTopBackdrops];
}

- (id)_sectionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SFStartPageCollectionViewController *)self sections];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SFStartPageCollectionViewController__sectionForIdentifier___block_invoke;
  v9[3] = &unk_1E721EFF0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 safari_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __61__SFStartPageCollectionViewController__sectionForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_setUpDataSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SFStartPageCollectionViewController__setUpDataSource___block_invoke;
  v10[3] = &unk_1E721F018;
  objc_copyWeak(&v11, &location);
  v6 = [v5 initWithCollectionView:v4 cellProvider:v10];
  collectionDataSource = self->_collectionDataSource;
  self->_collectionDataSource = v6;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__SFStartPageCollectionViewController__setUpDataSource___block_invoke_2;
  v8[3] = &unk_1E721F040;
  objc_copyWeak(&v9, &location);
  [(UICollectionViewDiffableDataSource *)self->_collectionDataSource setSupplementaryViewProvider:v8];
  [(SFStartPageCollectionViewController *)self reloadDataAnimatingDifferences:0];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __56__SFStartPageCollectionViewController__setUpDataSource___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained _reuseIdentifierForCellWithIdentifier:v7 indexPath:v8];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

  [WeakRetained _configureCell:v12 forIdentifier:v7 indexPath:v8];
  v13 = MEMORY[0x1E696AEC0];
  v14 = [WeakRetained sections];
  v15 = [v8 section];

  v16 = [v14 objectAtIndexedSubscript:v15];
  v17 = [v16 identifier];
  v18 = [v13 stringWithFormat:@"%@Content", v17];
  [v12 setAccessibilityIdentifier:v18];

  return v12;
}

id __56__SFStartPageCollectionViewController__setUpDataSource___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained _collectionView:v9 supplementaryViewWithKind:v8 forIndexPath:v7];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [WeakRetained sections];
  v14 = [v7 section];

  v15 = [v13 objectAtIndexedSubscript:v14];
  v16 = [v15 identifier];
  v17 = [v12 stringWithFormat:@"%@Header", v16];
  [v11 setAccessibilityIdentifier:v17];

  return v11;
}

- (id)_reuseIdentifierForCellWithIdentifier:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SFStartPageCollectionViewController *)self sections];
  v9 = [v6 section];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [(SFStartPageCollectionViewController *)self _reuseIdentifierForCellWithIdentifier:v7 section:v10];

  return v11;
}

- (id)_reuseIdentifierForCellWithIdentifier:(id)a3 section:(id)a4
{
  v5 = a4;
  v6 = [v5 itemType];
  if (v6 > 2)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v7 = SFSiteRowCell;
      }

      else
      {
        if (v6 != 6)
        {
          goto LABEL_32;
        }

        v7 = _TtC12MobileSafari25SFStartPageOnboardingCell;
      }
    }

    else if (v6 == 3)
    {
      v7 = SFSiteCardCell;
    }

    else
    {
      v7 = SFAttributedRichLinkCell;
    }

    goto LABEL_31;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_32;
      }

      v7 = SFSiteIconCell;
      goto LABEL_31;
    }

LABEL_30:
    v7 = SFStartPageFooterCell;
LABEL_31:
    v4 = [(__objc2_class *)v7 reuseIdentifier];
    goto LABEL_32;
  }

  v8 = [v5 contentBanner];
  v9 = [v8 contentVariant];
  if (v9 > 2)
  {
    if ((v9 - 4) < 2)
    {
      v10 = off_1E7218CD8;
    }

    else if (v9 == 3)
    {
      v10 = off_1E7218CE0;
    }

    else
    {
      if (v9 != 6)
      {
        goto LABEL_29;
      }

      v10 = off_1E7218AE0;
    }
  }

  else if (v9)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        if ([MEMORY[0x1E69C8880] is2024PrivacyReportEnabled] && _SFDeviceIsPad() && !objc_msgSend(v8, "isPrivateBrowsingEnabled"))
        {
          v10 = off_1E7218CC0;
        }

        else
        {
          v10 = off_1E7218CC8;
        }

        goto LABEL_36;
      }

LABEL_29:

      goto LABEL_30;
    }

    v10 = off_1E7218C48;
  }

  else
  {
    v10 = off_1E7218AD8;
  }

LABEL_36:
  v4 = [(__objc2_class *)*v10 reuseIdentifier];

LABEL_32:

  return v4;
}

- (void)_configureCell:(id)a3 forIdentifier:(id)a4 indexPath:(id)a5
{
  v30 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SFStartPageCollectionViewController *)self sections];
  v11 = [v9 section];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [v12 itemType];
  if (objc_opt_respondsToSelector())
  {
    [v30 setBackdropCaptureView:self->_cellBackdropCaptureView];
  }

  if (v13 > 2)
  {
    if (v13 <= 4)
    {
      v14 = v30;
      if (v13 == 3)
      {
        [v12 siteCardConfigurationProvider];
      }

      else
      {
        [v12 attributedRichLinkConfigurationProvider];
      }
      v15 = ;
      goto LABEL_23;
    }

    if (v13 == 5)
    {
      v14 = v30;
      v15 = [v12 siteRowConfigurationProvider];
LABEL_23:
      v16 = v15;
      (*(v15 + 16))(v15, v14, v8);

LABEL_28:
      goto LABEL_37;
    }

    if (v13 != 6)
    {
      goto LABEL_37;
    }

    v21 = v30;
    [v21 setStartPageOnboardingCellDelegate:self];
    v22 = v8;
    [(SFStartPageCollectionViewController *)self _actualSectionWidth];
    v24 = v23;
    +[_TtC12MobileSafari25SFStartPageOnboardingCell preferredCellWidthForWideLayout];
    [v22 setIsCompact:v24 < v25];
    [v21 setConfiguration:v22];
    goto LABEL_35;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_37;
      }

      v16 = v30;
      [v16 setVisualEffectGroupName:@"start-page-cell"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v12 supplementaryAction];
        v18 = [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider backgroundEffectForSupplementaryActions];
        v19 = [v17 makeUIAction];
        [v16 configureUsingAction:v19 backgroundEffect:v18];

        v20 = [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider tintColorForSupplementaryActions];
        [v16 setTintColor:v20];
      }

      else
      {
        v17 = [v12 siteIconConfigurationProvider];
        (v17)[2](v17, v16, v8);
      }

      goto LABEL_28;
    }

    v27 = v30;
    v21 = [v12 actions];
    v22 = [v21 objectAtIndexedSubscript:0];
    v28 = [v22 makeUIAction];
    [v27 setAction:v28];
    goto LABEL_25;
  }

  v21 = [v12 contentBanner];
  v26 = [v21 contentVariant];
  if (v26 > 2)
  {
    if ((v26 - 4) >= 2 && v26 != 3 && v26 != 6)
    {
      goto LABEL_36;
    }

    v22 = [v12 contentBanner];
    goto LABEL_33;
  }

  if (v26 < 2)
  {
    v29 = v30;
    v22 = [v12 contentBanner];
    [v29 configureUsingBanner:v22];

    goto LABEL_35;
  }

  if (v26 == 2)
  {
    v22 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = v30;
      [v27 setNumberOfTrackers:{objc_msgSend(v22, "numberOfTrackers")}];
      [v27 setPrivateBrowsingEnabled:{objc_msgSend(v22, "isPrivateBrowsingEnabled")}];
      v28 = [v12 contentBanner];
      [v27 configureUsingBanner:v28];
LABEL_25:

LABEL_35:
      goto LABEL_36;
    }

LABEL_33:
    [v30 configureUsingBanner:v22];
    goto LABEL_35;
  }

LABEL_36:

  [(SFStartPageCollectionViewController *)self _updateInteractionEnabledForView:v30];
LABEL_37:
}

- (id)_collectionView:(id)a3 supplementaryViewWithKind:(id)a4 forIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SFStartPageCollectionViewController *)self sections];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v10, "section")}];

  if ([v9 isEqualToString:*MEMORY[0x1E69DDC08]])
  {
    v13 = +[SFStartPageSectionHeader reuseIdentifier];
    v14 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v13 forIndexPath:v10];

    [(SFStartPageCollectionViewController *)self _configureHeader:v14 forSection:v12 atIndexPath:v10];
    [(SFStartPageCollectionViewController *)self _updateInteractionEnabledForView:v14];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_configureHeader:(id)a3 forSection:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = 0.0;
  if (([v7 usesLargeTitle] & 1) == 0 && (objc_msgSend(v7, "showsTopSeparator") & 1) == 0)
  {
    -[SFStartPageVisualStyleProviding sectionHeaderBottomGapForSectionItemType:](self->_visualStyleProvider, "sectionHeaderBottomGapForSectionItemType:", [v7 itemType]);
    v9 = v10;
  }

  [v8 setBottomGap:v9];
  visualStyleProvider = self->_visualStyleProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SFStartPageCollectionViewController__configureHeader_forSection_atIndexPath___block_invoke;
  v13[3] = &unk_1E721F068;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v8 configureUsingSection:v12 visualStyleProvider:visualStyleProvider resolvingActionsUsingBlock:v13];
}

id __79__SFStartPageCollectionViewController__configureHeader_forSection_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 hasPrefix:*MEMORY[0x1E69C9918]];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) identifier];
    v8 = [v6 _toggleExpandedActionForSectionIdentifier:v7];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (void)_applyCurrentSnapshotAnimatingDifferences:(BOOL)a3
{
  v3 = a3;
  v54 = *MEMORY[0x1E69E9840];
  v5 = [(SFStartPageCollectionViewController *)self viewIfLoaded];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
    v8 = [v7 sectionIdentifiers];
    v9 = [v8 count];

    v10 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
    v11 = [(SFStartPageCollectionViewController *)self _currentSnapshot];
    v12 = [v11 sectionIdentifiers];
    v13 = [v12 count];

    v14 = [v11 isEqual:v10];
    v15 = v14 ^ 1;
    if ((v14 & 1) == 0)
    {
      v16 = MEMORY[0x1E695DFD8];
      v17 = [v10 sectionIdentifiers];
      v18 = [v16 setWithArray:v17];

      v19 = [v11 sectionIdentifiers];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __81__SFStartPageCollectionViewController__applyCurrentSnapshotAnimatingDifferences___block_invoke;
      v48[3] = &unk_1E721F0B8;
      v49 = v18;
      v50 = v10;
      v51 = self;
      v52 = v11;
      v20 = v18;
      [v19 enumerateObjectsUsingBlock:v48];
    }

    v37 = v10;
    collectionDataSource = self->_collectionDataSource;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __81__SFStartPageCollectionViewController__applyCurrentSnapshotAnimatingDifferences___block_invoke_3;
    v46[3] = &unk_1E721BFA8;
    v46[4] = self;
    v47 = v15;
    [(UICollectionViewDiffableDataSource *)collectionDataSource applySnapshot:v11 animatingDifferences:v3 completion:v46];
    if (self->_hasAppliedInitialSnapshot && (v9 == 0) != (v13 != 0) || ([(SFStartPageCollectionViewController *)self updateBackgroundStyle], self->_hasAppliedInitialSnapshot))
    {
      v36 = v11;
      v35 = v3;
      v22 = *MEMORY[0x1E69DDC08];
      [(UICollectionView *)self->_collectionView indexPathsForVisibleSupplementaryElementsOfKind:*MEMORY[0x1E69DDC08]];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v45 = 0u;
      v23 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v43;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v42 + 1) + 8 * i);
            v28 = [(UICollectionView *)self->_collectionView supplementaryViewForElementKind:v22 atIndexPath:v27];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = -[UICollectionViewDiffableDataSource sectionIdentifierForIndex:](self->_collectionDataSource, "sectionIdentifierForIndex:", [v27 section]);
              if (v29)
              {
                [(SFStartPageCollectionViewController *)self _configureHeader:v28 forSection:v29 atIndexPath:v27];
              }
            }
          }

          v24 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
        }

        while (v24);
      }

      v30 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __81__SFStartPageCollectionViewController__applyCurrentSnapshotAnimatingDifferences___block_invoke_4;
      v41[3] = &unk_1E721F0E0;
      v41[4] = self;
      v31 = [v30 safari_mapObjectsUsingBlock:v41];
      v11 = v36;
      [v36 reconfigureItemsWithIdentifiers:v31];

      v32 = v37;
      if ([obj count] || objc_msgSend(v30, "count"))
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __81__SFStartPageCollectionViewController__applyCurrentSnapshotAnimatingDifferences___block_invoke_5;
        aBlock[3] = &unk_1E721B400;
        aBlock[4] = self;
        v40 = v36;
        v33 = _Block_copy(aBlock);
        v34 = v33;
        if (v35)
        {
          (*(v33 + 2))(v33);
        }

        else
        {
          [MEMORY[0x1E69DD250] performWithoutAnimation:v33];
        }
      }
    }

    else
    {
      self->_hasAppliedInitialSnapshot = 1;
      v32 = v10;
    }
  }
}

void __81__SFStartPageCollectionViewController__applyCurrentSnapshotAnimatingDifferences___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 itemType] && objc_msgSend(*(a1 + 32), "containsObject:", v3))
  {
    v4 = [*(a1 + 40) sectionIdentifiers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__SFStartPageCollectionViewController__applyCurrentSnapshotAnimatingDifferences___block_invoke_2;
    v8[3] = &unk_1E721F090;
    v5 = v3;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    [v4 enumerateObjectsUsingBlock:v8];
  }
}

void __81__SFStartPageCollectionViewController__applyCurrentSnapshotAnimatingDifferences___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (![v5 itemType])
  {
    v6 = [v5 contentBanner];
    v7 = [v6 contentVariant];
    v8 = [*(a1 + 32) contentBanner];
    v9 = [v8 contentVariant];

    if (v7 == v9)
    {
      v10 = [*(a1 + 32) itemIdentifiers];
      v11 = [v10 count];

      if (v11)
      {
        v12 = [*(a1 + 32) itemIdentifiers];
        v13 = [v12 objectAtIndexedSubscript:0];

        v14 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
        v15 = [*(*(a1 + 40) + 1032) cellForItemAtIndexPath:v14];
        v16 = [v15 reuseIdentifier];

        if (!v16 || ([*(a1 + 40) _reuseIdentifierForCellWithIdentifier:v13 section:*(a1 + 32)], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, (v18 & 1) == 0))
        {
          v19 = *(a1 + 48);
          v21[0] = *(a1 + 32);
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
          [v19 reloadSectionsWithIdentifiers:v20];
        }
      }
    }
  }
}

uint64_t __81__SFStartPageCollectionViewController__applyCurrentSnapshotAnimatingDifferences___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1144));
  if (*(a1 + 40) == 1)
  {
    v4 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v4 startPageCollectionViewControllerDidUpdateContent:*(a1 + 32)];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

void __60__SFStartPageCollectionViewController__customizationSection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 143);
    [v2 beginCustomizationForStartPageCollectionViewController:v3];

    WeakRetained = v3;
  }
}

- (unint64_t)_itemLimitForSection:(id)a3
{
  v4 = a3;
  if ([v4 itemType])
  {
    if ([v4 itemType] == 6)
    {
      v5 = 5;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v7 = [WeakRetained startPageCollectionViewController:self isSectionExpanded:v4];

      if (v7)
      {
        v5 = -1;
      }

      else
      {
        v5 = [(SFStartPageCollectionViewController *)self _collapsedCapacityForSection:v4];
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)_collapsedCapacityForSection:(id)a3
{
  v4 = a3;
  v5 = [(SFStartPageCollectionViewController *)self _numberOfColumnsInSection:v4];
  v6 = [(SFStartPageCollectionViewController *)self traitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = [v4 maximumNumberOfPages];
  v9 = v8;
  if (v7 == 1)
  {
    v10 = [v4 numberOfRowsVisibleWhenCollapsedInCompactWidth] * v5;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v8 || ![(SFStartPageCollectionViewController *)self _supportsPaginatedSectionLayouts])
    {
      v10 = [v4 numberOfRowsVisibleWhenCollapsed] * v5;
      goto LABEL_9;
    }

    v10 = [v4 numberOfRowsVisibleWhenCollapsed] * v5;
  }

  v10 *= [v4 maximumNumberOfPages];
LABEL_9:

  return v10;
}

- (double)_actualSectionWidth
{
  [(SFStartPageCollectionViewController *)self _effectiveLayoutWidth];
  v4 = v3;
  [(SFStartPageCollectionViewController *)self _sectionContentInsets];
  return v4 - v5 - v6;
}

- (int64_t)_numberOfColumnsInSection:(id)a3
{
  visualStyleProvider = self->_visualStyleProvider;
  v5 = [a3 itemType];
  [(SFStartPageCollectionViewController *)self _actualSectionWidth];
  v7 = v6;
  v8 = [(SFStartPageCollectionViewController *)self traitCollection];
  v9 = [(SFStartPageVisualStyleProviding *)visualStyleProvider numberOfColumnsForSectionItemType:v5 sectionWidth:v8 traitCollection:v7];

  return v9;
}

- (int64_t)_numberOfItemsPerPageInSection:(id)a3
{
  v4 = a3;
  v5 = [(SFStartPageCollectionViewController *)self traitCollection];
  if ([v5 horizontalSizeClass] == 1)
  {
    v6 = [v4 numberOfRowsVisibleWhenCollapsedInCompactWidth];
  }

  else
  {
    v6 = [v4 numberOfRowsVisibleWhenCollapsed];
  }

  v7 = v6;

  v8 = [(SFStartPageCollectionViewController *)self _numberOfColumnsInSection:v4]* v7;
  return v8;
}

- (id)_toggleExpandedActionForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SFStartPageCollectionViewController *)self _sectionForIdentifier:v4];
  v6 = [(SFStartPageCollectionViewController *)self _collapsedCapacityForSection:v5];
  if ([v5 effectiveItemIdentifiersCount] > v6 || objc_msgSend(v5, "maximumNumberOfPages") && (v7 = objc_msgSend(v5, "effectiveItemIdentifiersCount"), v7 > -[SFStartPageCollectionViewController _numberOfItemsPerPageInSection:](self, "_numberOfItemsPerPageInSection:", v5)))
  {
    v8 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource snapshot];
    v9 = [v8 numberOfItemsInSection:v5];

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69DC628];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *MEMORY[0x1E69C9918], v4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__SFStartPageCollectionViewController__toggleExpandedActionForSectionIdentifier___block_invoke;
    v14[3] = &unk_1E721C6E0;
    objc_copyWeak(&v16, &location);
    v15 = v4;
    v12 = [v10 actionWithTitle:&stru_1EFF36230 image:0 identifier:v11 handler:v14];

    [v12 setState:v9 > v6];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __81__SFStartPageCollectionViewController__toggleExpandedActionForSectionIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 143);
    if ([MEMORY[0x1E69C8880] is2024CloudTabsEnabled] && (objc_msgSend(*(a1 + 32), "isEqualToString:", *MEMORY[0x1E69C9668]) & 1) != 0 || objc_msgSend(MEMORY[0x1E69C8880], "is2024SuggestionsEnabled") && objc_msgSend(*(a1 + 32), "isEqualToString:", *MEMORY[0x1E69C96C0]))
    {
      [v3 startPageCollectionViewController:v6 shouldExpandSectionWithIdentifier:*(a1 + 32)];
    }

    else
    {
      v4 = [v6 _sectionForIdentifier:*(a1 + 32)];
      v5 = objc_loadWeakRetained(v6 + 141);
      [v5 startPageCollectionViewController:v6 toggleSectionExpanded:v4];

      [v6 reloadDataAnimatingDifferences:1];
    }

    WeakRetained = v6;
  }
}

- (id)_bannerSectionLayoutForEnvironment:(id)a3 includingHeader:(BOOL)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6995588];
  v7 = MEMORY[0x1E6995558];
  v8 = a3;
  v9 = [v7 fractionalWidthDimension:1.0];
  v10 = [MEMORY[0x1E6995558] estimatedDimension:78.0];
  v11 = [v6 sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [MEMORY[0x1E6995578] itemWithLayoutSize:v11];
  v13 = MEMORY[0x1E6995588];
  v14 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v15 = [MEMORY[0x1E6995558] estimatedDimension:78.0];
  v16 = [v13 sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = MEMORY[0x1E6995568];
  v45[0] = v12;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v19 = [v17 horizontalGroupWithLayoutSize:v16 subitems:v18];

  v20 = [MEMORY[0x1E6995580] sectionWithGroup:v19];
  v21 = v20;
  if (a4)
  {
    v22 = headerSupplementaryItemLayout();
    v44 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    [v21 setBoundarySupplementaryItems:v23];
  }

  else
  {
    [v20 setBoundarySupplementaryItems:MEMORY[0x1E695E0F0]];
  }

  [(SFStartPageCollectionViewController *)self _sectionContentInsets];
  [v21 setContentInsets:?];
  v24 = [v8 container];

  [v24 effectiveContentSize];
  v26 = v25;
  v28 = v27;
  [v21 contentInsets];
  v31 = v26 - v29 - v30;

  [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider rowSpacingForSectionItemType:0 containerSize:v31, v28];
  [v21 setInterGroupSpacing:?];
  [(SFStartPageCollectionViewController *)self _sectionContentInsets];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [MEMORY[0x1E69C8880] is2024PrivacyReportEnabled];
  v41 = v37 + 8.0;
  if (v40)
  {
    v42 = v33 + 8.0;
  }

  else
  {
    v42 = v33;
  }

  if (!v40)
  {
    v41 = v37;
  }

  [v21 setContentInsets:{v42, v35, v41, v39}];

  return v21;
}

- ($4E34F1DA1F1A31EFC59C0F9E582921FC)_siteIconLayoutForEnvironment:(SEL)a3 sectionInsets:(id)a4
{
  trailing = a5.trailing;
  leading = a5.leading;
  v9 = a4;
  v10 = [v9 container];
  [v10 effectiveContentSize];
  v12 = v11;
  v14 = v13 - leading - trailing;

  [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider siteIconSizeForContainerSize:v14, v12];
  v16 = v15;
  visualStyleProvider = self->_visualStyleProvider;
  v18 = [v9 traitCollection];

  v19 = [(SFStartPageVisualStyleProviding *)visualStyleProvider numberOfColumnsForSectionItemType:2 sectionWidth:v18 traitCollection:v14];
  [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider rowSpacingForSectionItemType:2 containerSize:v14, v12];
  v21 = v20;
  retstr->var0 = v16;
  retstr->var1 = v19;
  retstr->var2 = _SFFloorFloatToPixels((v14 - v16 * v19) / (v19 - 1));
  retstr->var3 = v21;
  return result;
}

- (void)_applyStylingToLayoutGroup:(id)a3 withSectionItemType:(int64_t)a4 defaultInterItemSpacing:(double)a5
{
  v10 = a3;
  v8 = [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider interItemSpacingForSectionItemType:a4];
  if (v8)
  {
    [v10 setInterItemSpacing:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E6995590] fixedSpacing:a5];
    [v10 setInterItemSpacing:v9];
  }
}

- (id)_siteIconSectionLayoutForEnvironment:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SFStartPageCollectionViewController *)self _sectionContentInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SFStartPageCollectionViewController *)self _siteIconLayoutForEnvironment:v4 sectionInsets:v5];

  v13 = [MEMORY[0x1E6995558] absoluteDimension:0.0];
  v14 = MEMORY[0x1E6995588];
  v15 = [MEMORY[0x1E6995558] uniformAcrossSiblingsWithEstimate:100.0];
  v16 = [v14 sizeWithWidthDimension:v13 heightDimension:v15];

  v17 = [MEMORY[0x1E6995578] itemWithLayoutSize:v16];
  v18 = MEMORY[0x1E6995588];
  v19 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v20 = [MEMORY[0x1E6995558] estimatedDimension:100.0];
  v21 = [v18 sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v21 subitem:v17 count:0];
  if ([MEMORY[0x1E69C8880] is2024ReadingListEnabled])
  {
    [(SFStartPageCollectionViewController *)self _applyStylingToLayoutGroup:v22 withSectionItemType:2 defaultInterItemSpacing:0.0];
  }

  else
  {
    v23 = [MEMORY[0x1E6995590] fixedSpacing:0.0];
    [v22 setInterItemSpacing:v23];
  }

  v24 = [MEMORY[0x1E6995580] sectionWithGroup:v22];
  v25 = v24;
  if (self->_displaysSectionHeaders)
  {
    v26 = headerSupplementaryItemLayout();
    v29[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v25 setBoundarySupplementaryItems:v27];
  }

  else
  {
    [v24 setBoundarySupplementaryItems:MEMORY[0x1E695E0F0]];
  }

  [v25 setContentInsets:{v6, v8, v10, v12}];
  [v25 setInterGroupSpacing:0.0];

  return v25;
}

- (id)_siteCardSectionLayoutForEnvironment:(id)a3 numberOfItems:(int64_t)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(SFStartPageCollectionViewController *)self _sectionContentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 container];
  [v15 effectiveContentSize];
  v17 = v16;
  v19 = v18 - v10 - v14;

  visualStyleProvider = self->_visualStyleProvider;
  v53 = v6;
  v21 = [v6 traitCollection];
  v22 = [(SFStartPageVisualStyleProviding *)visualStyleProvider numberOfColumnsForSectionItemType:3 sectionWidth:v21 traitCollection:v19];

  v23 = [MEMORY[0x1E6995558] estimatedDimension:112.0];
  v24 = MEMORY[0x1E6995588];
  v25 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0 / v22];
  v26 = [v24 sizeWithWidthDimension:v25 heightDimension:v23];

  v52 = v26;
  v27 = [MEMORY[0x1E6995578] itemWithLayoutSize:v26];
  LODWORD(visualStyleProvider) = [(SFStartPageCollectionViewController *)self _supportsPaginatedSectionLayouts];
  v28 = MEMORY[0x1E6995588];
  v29 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v30 = v23;
  v31 = [v28 sizeWithWidthDimension:v29 heightDimension:v23];

  v51 = v27;
  v32 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v31 repeatingSubitem:v27 count:v22];
  v50 = visualStyleProvider;
  if (visualStyleProvider)
  {
    [(SFStartPageCollectionViewController *)self _applyStylingToLayoutGroup:v32 withSectionItemType:3 defaultInterItemSpacing:0.0];
    v33 = self->_visualStyleProvider;
    v34 = [(SFStartPageCollectionViewController *)self traitCollection];
    v35 = -[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](v33, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 3, [v34 horizontalSizeClass] == 1);

    if (v35 < 2)
    {
      v37 = 1;
      v39 = v30;
    }

    else
    {
      v36 = v35 - 1;
      v37 = 1;
      v38 = v22;
      v39 = v30;
      do
      {
        if (v38 < a4)
        {
          ++v37;
        }

        v38 += v22;
        --v36;
      }

      while (v36);
    }

    v40 = MEMORY[0x1E6995588];
    v41 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.9];
    v42 = [v40 sizeWithWidthDimension:v41 heightDimension:v39];

    v43 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v42 repeatingSubitem:v32 count:v37];

    v32 = v43;
  }

  else
  {
    v39 = v30;
  }

  [(SFStartPageCollectionViewController *)self _siteIconLayoutForEnvironment:v53 sectionInsets:v8, v10, v12, v14];
  if ([MEMORY[0x1E69C8880] is2024ReadingListEnabled])
  {
    [(SFStartPageCollectionViewController *)self _applyStylingToLayoutGroup:v32 withSectionItemType:3 defaultInterItemSpacing:0.0];
  }

  else
  {
    v44 = [MEMORY[0x1E6995590] flexibleSpacing:0.0];
    [v32 setInterItemSpacing:v44];
  }

  v45 = [MEMORY[0x1E6995580] sectionWithGroup:v32];
  v46 = v45;
  if (self->_displaysSectionHeaders)
  {
    v47 = headerSupplementaryItemLayout();
    v54[0] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    [v46 setBoundarySupplementaryItems:v48];
  }

  else
  {
    [v45 setBoundarySupplementaryItems:MEMORY[0x1E695E0F0]];
  }

  [v46 setContentInsets:{v8, v10, v12, v14}];
  [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider rowSpacingForSectionItemType:3 containerSize:v19, v17];
  [v46 setInterGroupSpacing:?];
  if (v50)
  {
    [v46 setOrthogonalScrollingBehavior:4];
  }

  return v46;
}

- (id)_attributedRichLinkSectionLayoutForEnvironment:(id)a3 maximumNumberOfPages:(int64_t)a4 numberOfItems:(int64_t)a5
{
  v51[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(SFStartPageCollectionViewController *)self _sectionContentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 container];
  [v15 effectiveContentSize];
  v17 = v16;
  v19 = v18 - v10 - v14;

  visualStyleProvider = self->_visualStyleProvider;
  v21 = [v6 traitCollection];
  v22 = [(SFStartPageVisualStyleProviding *)visualStyleProvider numberOfColumnsForSectionItemType:4 sectionWidth:v21 traitCollection:v19];

  v23 = [MEMORY[0x1E6995558] estimatedDimension:150.0];
  v24 = MEMORY[0x1E6995588];
  v25 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0 / v22];
  v26 = [v24 sizeWithWidthDimension:v25 heightDimension:v23];

  v49 = v26;
  v27 = [MEMORY[0x1E6995578] itemWithLayoutSize:v26];
  [(SFStartPageCollectionViewController *)self _siteIconLayoutForEnvironment:v6 sectionInsets:v8, v10, v12, v14];

  v28 = [(SFStartPageCollectionViewController *)self _supportsPaginatedSectionLayouts];
  v29 = MEMORY[0x1E6995588];
  v30 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v31 = v23;
  v32 = [v29 sizeWithWidthDimension:v30 heightDimension:v23];

  v33 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v32 repeatingSubitem:v27 count:v22];
  if (a4 >= 2 && v28)
  {
    [(SFStartPageCollectionViewController *)self _applyStylingToLayoutGroup:v33 withSectionItemType:4 defaultInterItemSpacing:0.0];
    v34 = MEMORY[0x1E6995588];
    v35 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.9];
    v36 = [v34 sizeWithWidthDimension:v35 heightDimension:v31];

    if (v22 >= a5)
    {
      v39 = 1;
    }

    else
    {
      v37 = self->_visualStyleProvider;
      v38 = [(SFStartPageCollectionViewController *)self traitCollection];
      v39 = -[SFStartPageVisualStyleProviding numberOfRowsForSection:traitCollectionIsHorizontalCompact:](v37, "numberOfRowsForSection:traitCollectionIsHorizontalCompact:", 4, [v38 horizontalSizeClass] == 1);
    }

    v40 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v36 repeatingSubitem:v33 count:v39];

    v33 = v40;
  }

  if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
  {
    [(SFStartPageCollectionViewController *)self _applyStylingToLayoutGroup:v33 withSectionItemType:4 defaultInterItemSpacing:0.0];
  }

  else
  {
    v41 = [MEMORY[0x1E6995590] fixedSpacing:0.0];
    [v33 setInterItemSpacing:v41];
  }

  v42 = [MEMORY[0x1E6995580] sectionWithGroup:v33];
  v43 = v42;
  if (self->_displaysSectionHeaders)
  {
    v44 = headerSupplementaryItemLayout();
    v51[0] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    [v43 setBoundarySupplementaryItems:v45];
  }

  else
  {
    [v42 setBoundarySupplementaryItems:MEMORY[0x1E695E0F0]];
  }

  [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider rowSpacingForSectionItemType:4 containerSize:v19, v17];
  [v43 setInterGroupSpacing:?];
  [v43 setContentInsets:{v8, v10, v12, v14}];
  v46 = [(SFStartPageCollectionViewController *)self _supportsPaginatedSectionLayouts];
  if (a4 >= 2 && v46 && [MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
  {
    [v43 setOrthogonalScrollingBehavior:4];
  }

  return v43;
}

- (id)_siteRowSectionLayoutForEnvironment:(id)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6995588];
  v5 = MEMORY[0x1E6995558];
  v6 = a3;
  v7 = [v5 fractionalWidthDimension:1.0];
  v8 = [MEMORY[0x1E6995558] estimatedDimension:40.0];
  v9 = [v4 sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = [MEMORY[0x1E6995578] itemWithLayoutSize:v9];
  [(SFStartPageCollectionViewController *)self _sectionContentInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v6 container];
  [v19 effectiveContentSize];
  v21 = v20;
  v23 = v22 - v14 - v18;

  visualStyleProvider = self->_visualStyleProvider;
  v25 = [v6 traitCollection];
  v26 = [(SFStartPageVisualStyleProviding *)visualStyleProvider numberOfColumnsForSectionItemType:5 sectionWidth:v25 traitCollection:v23];

  [(SFStartPageCollectionViewController *)self _siteIconLayoutForEnvironment:v6 sectionInsets:v12, v14, v16, v18, 0, 0];
  v27 = MEMORY[0x1E6995588];
  v28 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v29 = [MEMORY[0x1E6995558] estimatedDimension:40.0];
  v30 = [v27 sizeWithWidthDimension:v28 heightDimension:v29];

  v31 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v30 subitem:v10 count:v26];
  v32 = [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider interItemSpacingForSectionItemType:5];
  if (v32)
  {
    [v31 setInterItemSpacing:v32];
  }

  else
  {
    v33 = [MEMORY[0x1E6995590] fixedSpacing:0.0];
    [v31 setInterItemSpacing:v33];
  }

  v34 = [MEMORY[0x1E6995580] sectionWithGroup:v31];
  v35 = v34;
  if (self->_displaysSectionHeaders)
  {
    v36 = headerSupplementaryItemLayout();
    v39[0] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [v35 setBoundarySupplementaryItems:v37];
  }

  else
  {
    [v34 setBoundarySupplementaryItems:MEMORY[0x1E695E0F0]];
  }

  [v35 setContentInsets:{v12, v14, v16, v18}];
  [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider rowSpacingForSectionItemType:5 containerSize:v23, v21];
  [v35 setInterGroupSpacing:?];

  return v35;
}

- (id)_layoutForSectionAtIndex:(int64_t)a3 inEnvironment:(id)a4
{
  v7 = a4;
  v8 = [(SFStartPageCollectionViewController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:a3];
  v10 = [v9 itemType];
  if (v10 > 2)
  {
    if (v10 <= 4)
    {
      if (v10 == 3)
      {
        -[SFStartPageCollectionViewController _siteCardSectionLayoutForEnvironment:numberOfItems:](self, "_siteCardSectionLayoutForEnvironment:numberOfItems:", v7, [v9 effectiveItemIdentifiersCount]);
      }

      else
      {
        -[SFStartPageCollectionViewController _attributedRichLinkSectionLayoutForEnvironment:maximumNumberOfPages:numberOfItems:](self, "_attributedRichLinkSectionLayoutForEnvironment:maximumNumberOfPages:numberOfItems:", v7, [v9 maximumNumberOfPages], objc_msgSend(v9, "effectiveItemIdentifiersCount"));
      }
      v11 = ;
      goto LABEL_19;
    }

    if (v10 == 5)
    {
      v11 = [(SFStartPageCollectionViewController *)self _siteRowSectionLayoutForEnvironment:v7];
      goto LABEL_19;
    }

    if (v10 != 6)
    {
      goto LABEL_20;
    }

LABEL_12:
    v11 = [(SFStartPageCollectionViewController *)self _bannerSectionLayoutForEnvironment:v7 includingHeader:0];
LABEL_19:
    v4 = v11;
    goto LABEL_20;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_20;
      }

      v11 = [(SFStartPageCollectionViewController *)self _siteIconSectionLayoutForEnvironment:v7];
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v12 = [v9 title];
  if ([v12 length] || objc_msgSend(v9, "showsTopSeparator"))
  {
    v4 = [(SFStartPageCollectionViewController *)self _bannerSectionLayoutForEnvironment:v7 includingHeader:1];
  }

  else
  {
    v14 = [v9 actions];
    v4 = -[SFStartPageCollectionViewController _bannerSectionLayoutForEnvironment:includingHeader:](self, "_bannerSectionLayoutForEnvironment:includingHeader:", v7, [v14 count] != 0);
  }

LABEL_20:

  return v4;
}

- (BOOL)_supportsPaginatedSectionLayouts
{
  v2 = [(SFStartPageCollectionViewController *)self traitCollection];
  if ([v2 horizontalSizeClass] == 1)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = _SFDeviceIsPad() ^ 1;
  }

  return v3;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  [v8 locationInView:a3];
  if ([(SFStartPageCollectionViewController *)self _shouldShowContextMenuForCellAtIndexPath:v9 fromPoint:?])
  {
    v10 = [(SFStartPageCollectionViewController *)self sections];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];

    v12 = [(UICollectionViewDiffableDataSource *)self->_collectionDataSource itemIdentifierForIndexPath:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v14 = [v11 dragItemProvider];
      v15 = (v14)[2](v14, v12, v8);

      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __95__SFStartPageCollectionViewController_collectionView_itemsForBeginningDragSession_atIndexPath___block_invoke;
      v20 = &unk_1E721F130;
      v21 = self;
      v22 = v9;
      [v15 setPreviewProvider:&v17];
      if (v15)
      {
        self->_hasActiveDrag = 1;
        v23[0] = v15;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:{1, v17, v18, v19, v20, v21}];
      }

      else
      {
        v13 = MEMORY[0x1E695E0F0];
      }
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

id __95__SFStartPageCollectionViewController_collectionView_itemsForBeginningDragSession_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _previewForCellAtIndexPath:*(a1 + 40)];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [*(a1 + 32) _dragPreviewParametersForSourceView:v2 atIndexPath:*(a1 + 40)];
    v5 = [objc_alloc(MEMORY[0x1E69DC998]) initWithView:v2 parameters:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SFStartPageCollectionViewController *)self _previewForCellAtIndexPath:v5];
  if (v6)
  {
    v7 = [(SFStartPageCollectionViewController *)self _dragPreviewParametersForSourceView:v6 atIndexPath:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_previewForCellAtIndexPath:(id)a3
{
  v3 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 contextMenuPreviewView];
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (id)_dragPreviewParametersForSourceView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E69DC9A0];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [MEMORY[0x1E69DC888] clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [(SFStartPageCollectionViewController *)self sections];
  v12 = [v8 section];

  v13 = [v11 objectAtIndexedSubscript:v12];

  v14 = [v13 itemType];
  if ((v14 - 3) >= 2 && v14 == 2)
  {
    +[_SFSiteIcon cornerRadius];
    v15 = [MEMORY[0x1E69DC888] clearColor];
    [v9 setBackgroundColor:v15];
  }

  v16 = MEMORY[0x1E69DC728];
  [v6 bounds];
  v17 = [v16 bezierPathWithRoundedRect:? cornerRadius:?];
  [v9 setVisiblePath:v17];

  return v9;
}

- (BOOL)_canDrop
{
  v2 = [(SFStartPageCollectionViewController *)self sections];
  v3 = [v2 safari_containsObjectPassingTest:&__block_literal_global_61];

  return v3;
}

BOOL __47__SFStartPageCollectionViewController__canDrop__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dropHandler];
  v3 = v2 != 0;

  return v3;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v5 = MEMORY[0x1E69C8810];
  v6 = a4;
  v7 = [v5 sharedLogger];
  [v7 didStartDragWithDragContentType:5];

  v8 = [(UICollectionView *)self->_collectionView window];
  [v6 setLocalContext:v8];

  [(SFStartPageCollectionViewController *)self _updateInteractionEnabled];
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  self->_hasActiveDrag = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SFStartPageCollectionViewController_collectionView_dragSessionDidEnd___block_invoke;
  block[3] = &unk_1E721B360;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateInteractionEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(UICollectionView *)self->_collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x1E69DDC08]];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SFStartPageCollectionViewController *)self _updateInteractionEnabledForView:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [(SFStartPageCollectionViewController *)self sections];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SFStartPageCollectionViewController__updateInteractionEnabled__block_invoke;
  v9[3] = &unk_1E721F178;
  v9[4] = self;
  [v8 enumerateObjectsUsingBlock:v9];
}

void __64__SFStartPageCollectionViewController__updateInteractionEnabled__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (![v7 itemType] || objc_msgSend(v7, "itemType") == 6 || objc_msgSend(v7, "itemType") == 1)
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
    v6 = [*(*(a1 + 32) + 1032) cellForItemAtIndexPath:v5];
    [*(a1 + 32) _updateInteractionEnabledForView:v6];
  }
}

- (void)_updateInteractionEnabledForView:(id)a3
{
  collectionView = self->_collectionView;
  v7 = a3;
  if ([(UICollectionView *)collectionView hasActiveDrag])
  {
    [v7 setUserInteractionEnabled:0];
    v5 = 2;
  }

  else
  {
    v6 = [(UICollectionView *)self->_collectionView hasActiveDrop];
    [v7 setUserInteractionEnabled:!v6];
    if (v6)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  [v7 setTintAdjustmentMode:v5];
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__9;
  v39 = __Block_byref_object_dispose__9;
  v40 = 0;
  [v9 locationInView:v8];
  v12 = v11;
  v14 = v13;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __100__SFStartPageCollectionViewController_collectionView_dropSessionDidUpdate_withDestinationIndexPath___block_invoke;
  v30 = &unk_1E721F1A0;
  v32 = &v35;
  v15 = v8;
  v31 = v15;
  v33 = v12;
  v34 = v14;
  [v15 performUsingPresentationValues:&v27];
  v16 = v36[5];

  v17 = [v16 section];
  v18 = [(SFStartPageCollectionViewController *)self sections];
  v19 = v18;
  if (v16 && v17 < [v18 count])
  {
    v20 = [v19 objectAtIndexedSubscript:v17];
    v21 = [v20 dropOperationProvider];
    v22 = (v21)[2](v21, [v16 item], v9);

    v23 = objc_alloc(MEMORY[0x1E69DC838]);
    if ((v22 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    v25 = [v23 initWithDropOperation:v22 intent:v24];
  }

  else
  {
    v25 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:0];
  }

  _Block_object_dispose(&v35, 8);

  return v25;
}

void __100__SFStartPageCollectionViewController_collectionView_dropSessionDidUpdate_withDestinationIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexPathForItemAtPoint:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v10 = a4;
  v5 = [(SFStartPageCollectionViewController *)self sections];
  v6 = [v10 destinationIndexPath];
  v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v8 = [v7 dropHandler];

  if (v8)
  {
    v9 = [v7 dropHandler];
    (v9)[2](v9, v10);
  }
}

- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__SFStartPageCollectionViewController_collectionView_dropSessionDidExit___block_invoke;
  block[3] = &unk_1E721B360;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SFStartPageCollectionViewController_collectionView_dropSessionDidEnd___block_invoke;
  block[3] = &unk_1E721B360;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_tapToDismissGestureRecognizer == a3)
  {
    v9 = [v6 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 0;
    }

    else
    {
      collectionView = self->_collectionView;
      [v7 locationInView:collectionView];
      v11 = [(UICollectionView *)collectionView indexPathForItemAtPoint:?];
      v8 = v11 == 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_didCompleteOnboardingItem:(id)a3 wasClosed:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E69C8810];
  v7 = a3;
  v8 = [v6 sharedLogger];
  v9 = [v7 identifier];
  [v8 didInteractWithOnboardingItem:v9 userClosedCard:v4];

  v10 = +[SFOnboardingCoordinator sharedCoordinator];
  [v10 didComplete:v7];

  v11 = +[SFOnboardingCoordinator sharedCoordinator];
  [v11 pauseStartPageOnboarding];

  v12 = MEMORY[0x1E69C9860];
  v13 = *MEMORY[0x1E69C9698];
  v14 = +[SFOnboardingCoordinator sharedCoordinator];
  v15 = [v14 onboardingProvidersForStartPage];
  v16 = [v12 onboardingSectionWithIdentifier:v13 items:v15];

  [(SFStartPageCollectionViewController *)self reloadSection:v16 animated:1];
}

- (void)didStartOnboardingItem:(id)a3
{
  v19 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(SFStartPageCollectionViewController *)self _didCompleteOnboardingItem:v19 wasClosed:0];
  v5 = [v19 identifier];
  v6 = [v5 isEqual:*MEMORY[0x1E69C93D0]];

  if (v6)
  {
    [WeakRetained beginCustomizationForStartPageCollectionViewController:self];
    goto LABEL_12;
  }

  v7 = [v19 identifier];
  v8 = [v7 isEqual:*MEMORY[0x1E69C93E8]];

  if (v8)
  {
    [WeakRetained beginExtensionsOnboardingForStartPageCollectionViewController:self];
    goto LABEL_12;
  }

  v9 = [v19 identifier];
  v10 = [v9 isEqual:*MEMORY[0x1E69C93E0]];

  if (v10)
  {
    [MEMORY[0x1E69C8EC8] setUserConsentState:1];
    goto LABEL_12;
  }

  v11 = [v19 identifier];
  v12 = [v11 isEqual:*MEMORY[0x1E69C93D8]];

  if (v12)
  {
    v13 = [MEMORY[0x1E6963608] defaultWorkspace];
    v14 = MEMORY[0x1E695DFF8];
    v15 = @"settings-navigation://com.apple.Settings.iCloud/com.apple.Dataclass#Safari";
  }

  else
  {
    v16 = [v19 identifier];
    v17 = [v16 isEqual:*MEMORY[0x1E69C93F0]];

    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = [MEMORY[0x1E6963608] defaultWorkspace];
    v14 = MEMORY[0x1E695DFF8];
    v15 = @"settings-navigation://com.apple.Settings.Apps/com.apple.Settings.Apps.DefaultApps";
  }

  v18 = [v14 URLWithString:v15];
  [v13 openSensitiveURL:v18 withOptions:0];

LABEL_12:
}

- (void)showPrivacyPrompt
{
  obj = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.safari"];
  [obj setPresentingViewController:self];
  [obj present];
  objc_storeWeak(&self->_privacyPresenter, obj);
}

- (SFStartPageCollectionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SFStartPageCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end