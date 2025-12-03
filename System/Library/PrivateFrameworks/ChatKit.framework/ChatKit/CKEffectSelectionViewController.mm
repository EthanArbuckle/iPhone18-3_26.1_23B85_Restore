@interface CKEffectSelectionViewController
+ (id)orderedEffectIdentifiers;
- (BOOL)becomeFirstResponder;
- (CKEffectSelectionViewControllerDelegate)delegate;
- (NSString)selectedEffectIdentifier;
- (id)effectImageForIndexPath:(id)path;
- (id)effectTitleForIndexPath:(id)path;
- (void)_updateMaxCellHeightForIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)setSelectedEffectIdentifier:(id)identifier;
- (void)updateContentInsets:(UIEdgeInsets)insets;
- (void)viewDidLoad;
@end

@implementation CKEffectSelectionViewController

- (void)viewDidLoad
{
  v59[4] = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = CKEffectSelectionViewController;
  [(CKEffectSelectionViewController *)&v56 viewDidLoad];
  v3 = [CKEffectSelectionCollectionViewCell alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(CKEffectSelectionCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  [(CKEffectSelectionViewController *)self setSizingCell:v8];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(CKEffectSelectionViewController *)self setIdentifierToHeightMap:v9];

  v51 = objc_alloc_init(CKFullScreenEffectManager);
  [(CKEffectSelectionViewController *)self setFsem:v51];
  v59[0] = @"com.apple.MobileSMS.expressivesend.invisibleink";
  v59[1] = @"com.apple.MobileSMS.expressivesend.gentle";
  v59[2] = @"com.apple.MobileSMS.expressivesend.loud";
  v59[3] = @"com.apple.MobileSMS.expressivesend.impact";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
  [(CKEffectSelectionViewController *)self setSendEffects:v10];

  v52 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v52 setMinimumInteritemSpacing:0.0];
  [v52 setMinimumLineSpacing:0.0];
  [v52 setScrollDirection:1];
  [v52 setSectionInset:{0.0, 8.0, 15.0, 8.0}];
  v11 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v52 collectionViewLayout:{v4, v5, v6, v7}];
  [(CKEffectSelectionViewController *)self setCollectionView:v11];

  collectionView = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView setDelegate:self];

  collectionView2 = [(CKEffectSelectionViewController *)self collectionView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [collectionView2 setBackgroundColor:clearColor];

  collectionView3 = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView4 = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kEffectSelectionCellReuseIdentifier"];

  collectionView5 = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView5 setContentInsetAdjustmentBehavior:2];

  collectionView6 = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView6 setShowsHorizontalScrollIndicator:1];

  collectionView7 = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView7 setSelectionFollowsFocus:1];

  view = [(CKEffectSelectionViewController *)self view];
  collectionView8 = [(CKEffectSelectionViewController *)self collectionView];
  [view addSubview:collectionView8];

  v38 = MEMORY[0x1E696ACD8];
  collectionView9 = [(CKEffectSelectionViewController *)self collectionView];
  topAnchor = [collectionView9 topAnchor];
  view2 = [(CKEffectSelectionViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v58[0] = v46;
  collectionView10 = [(CKEffectSelectionViewController *)self collectionView];
  leadingAnchor = [collectionView10 leadingAnchor];
  view3 = [(CKEffectSelectionViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v58[1] = v41;
  collectionView11 = [(CKEffectSelectionViewController *)self collectionView];
  trailingAnchor = [collectionView11 trailingAnchor];
  view4 = [(CKEffectSelectionViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v58[2] = v24;
  collectionView12 = [(CKEffectSelectionViewController *)self collectionView];
  bottomAnchor = [collectionView12 bottomAnchor];
  view5 = [(CKEffectSelectionViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v58[3] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  [v38 activateConstraints:v30];

  objc_initWeak(&location, self);
  v31 = objc_alloc(MEMORY[0x1E69DC820]);
  collectionView13 = [(CKEffectSelectionViewController *)self collectionView];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __46__CKEffectSelectionViewController_viewDidLoad__block_invoke;
  v53[3] = &unk_1E72F11A0;
  objc_copyWeak(&v54, &location);
  v33 = [v31 initWithCollectionView:collectionView13 cellProvider:v53];
  [(CKEffectSelectionViewController *)self setDataSource:v33];

  v34 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v57 = @"MainSectionIdentifier";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  [v34 appendSectionsWithIdentifiers:v35];

  v36 = +[CKEffectSelectionViewController orderedEffectIdentifiers];
  [v34 appendItemsWithIdentifiers:v36 intoSectionWithIdentifier:@"MainSectionIdentifier"];

  dataSource = [(CKEffectSelectionViewController *)self dataSource];
  [dataSource applySnapshot:v34 animatingDifferences:0];

  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
}

id __46__CKEffectSelectionViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 dequeueReusableCellWithReuseIdentifier:@"kEffectSelectionCellReuseIdentifier" forIndexPath:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained effectImageForIndexPath:v5];
  [v6 setImage:v8];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 effectTitleForIndexPath:v5];
  [v6 setTitle:v10];

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 _updateMaxCellHeightForIndexPath:v5];

  v12 = objc_loadWeakRetained((a1 + 32));
  [v6 configureForEffectIsDark:{objc_msgSend(v12, "labelUsesDarkVibrancy")}];

  [v6 setNeedsLayout];
  [v6 layoutIfNeeded];

  return v6;
}

- (BOOL)becomeFirstResponder
{
  collectionView = [(CKEffectSelectionViewController *)self collectionView];
  becomeFirstResponder = [collectionView becomeFirstResponder];

  return becomeFirstResponder;
}

- (void)_updateMaxCellHeightForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CKEffectSelectionViewController *)self dataSource];
  v5 = [dataSource itemIdentifierForIndexPath:pathCopy];

  identifierToHeightMap = [(CKEffectSelectionViewController *)self identifierToHeightMap];
  v7 = [identifierToHeightMap objectForKey:v5];

  if (v7)
  {
    identifierToHeightMap2 = [(CKEffectSelectionViewController *)self identifierToHeightMap];
    v9 = [identifierToHeightMap2 objectForKey:v5];

    [(CKEffectSelectionViewController *)self cellMaxHeight];
    v11 = v10;
    [v9 floatValue];
    v13 = v12;
    if (v11 >= v13)
    {
      v13 = v11;
    }

    [(CKEffectSelectionViewController *)self setCellMaxHeight:v13];
  }

  else
  {
    v9 = [(CKEffectSelectionViewController *)self effectTitleForIndexPath:pathCopy];
    sizingCell = [(CKEffectSelectionViewController *)self sizingCell];
    [sizingCell setTitle:v9];

    sizingCell2 = [(CKEffectSelectionViewController *)self sizingCell];
    [sizingCell2 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v17 = v16;

    identifierToHeightMap3 = [(CKEffectSelectionViewController *)self identifierToHeightMap];
    *&v19 = v17;
    v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
    [identifierToHeightMap3 setObject:v20 forKey:v5];

    [(CKEffectSelectionViewController *)self cellMaxHeight];
    if (v21 >= v17)
    {
      v17 = v21;
    }

    [(CKEffectSelectionViewController *)self cellMaxHeight];
    if (v17 != v22)
    {
      [(CKEffectSelectionViewController *)self setCellMaxHeight:v17];
      collectionView = [(CKEffectSelectionViewController *)self collectionView];
      collectionViewLayout = [collectionView collectionViewLayout];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        collectionView2 = [(CKEffectSelectionViewController *)self collectionView];
        collectionViewLayout2 = [collectionView2 collectionViewLayout];

        [collectionViewLayout2 itemSize];
        if (v27 != v17)
        {
          [collectionViewLayout2 setItemSize:{88.0, v17}];
        }
      }

      delegate = [(CKEffectSelectionViewController *)self delegate];
      [delegate didUpdateMaxCellHeight:v17];
    }
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CKEffectSelectionViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

  delegate = [(CKEffectSelectionViewController *)self delegate];
  [delegate effectSelectionViewController:self didSelectEffectWithIdentifier:v7];

  fsem = [(CKEffectSelectionViewController *)self fsem];
  v10 = [fsem effectForIdentifier:v7];

  if (v10 && [v10 effectIsDark])
  {
    secondaryLabelColor = +[CKUIBehavior sharedBehaviors];
    theme = [secondaryLabelColor theme];
    fsmPickerPrimaryColorDarkEffect = [theme fsmPickerPrimaryColorDarkEffect];
    [(CKEffectSelectionViewController *)self setLabelColor:fsmPickerPrimaryColorDarkEffect];
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(CKEffectSelectionViewController *)self setLabelColor:secondaryLabelColor];
  }

  v19 = 0.0;
  v20 = 0.0;
  backgroundColor = [v10 backgroundColor];
  [backgroundColor getHue:0 saturation:0 brightness:&v20 alpha:&v19];

  v15 = v19 > 0.5 && v20 < 0.5;
  [(CKEffectSelectionViewController *)self setLabelUsesDarkVibrancy:v15, v19, 0.5, v20];
  collectionView = [(CKEffectSelectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__CKEffectSelectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v18[3] = &unk_1E72F7D70;
  v18[4] = self;
  [visibleCells enumerateObjectsUsingBlock:v18];
}

void __75__CKEffectSelectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 configureForEffectIsDark:{objc_msgSend(v2, "labelUsesDarkVibrancy")}];
}

- (id)effectTitleForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CKEffectSelectionViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  fsem = [(CKEffectSelectionViewController *)self fsem];
  effectIdentifiers = [fsem effectIdentifiers];
  v9 = [effectIdentifiers containsObject:v6];

  if (v9)
  {
    fsem2 = [(CKEffectSelectionViewController *)self fsem];
    v11 = [fsem2 localizedDisplayNameForEffectWithIdentifier:v6];
  }

  else
  {
    v12 = +[CKImpactEffectManager effectIdentifiers];
    v13 = [v12 containsObject:v6];

    if (v13)
    {
      v11 = [CKImpactEffectManager localizedEffectNameForEffectWithIdentifier:v6];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)effectImageForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CKEffectSelectionViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6];

  return v7;
}

- (NSString)selectedEffectIdentifier
{
  collectionView = [(CKEffectSelectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  dataSource = [(CKEffectSelectionViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:firstObject];

  return v7;
}

- (void)setSelectedEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  collectionView = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView frame];
  v6 = CGRectEqualToRect(v18, *MEMORY[0x1E695F058]);

  if (v6)
  {
    view = [(CKEffectSelectionViewController *)self view];
    [view setNeedsLayout];

    view2 = [(CKEffectSelectionViewController *)self view];
    [view2 layoutIfNeeded];
  }

  dataSource = [(CKEffectSelectionViewController *)self dataSource];
  v16 = [dataSource indexPathForItemIdentifier:identifierCopy];

  collectionView2 = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView2 selectItemAtIndexPath:v16 animated:0 scrollPosition:0];

  collectionView3 = [(CKEffectSelectionViewController *)self collectionView];
  delegate = [collectionView3 delegate];
  collectionView4 = [(CKEffectSelectionViewController *)self collectionView];
  [delegate collectionView:collectionView4 didSelectItemAtIndexPath:v16];

  collectionView5 = [(CKEffectSelectionViewController *)self collectionView];
  v15 = [collectionView5 cellForItemAtIndexPath:v16];

  [v15 becomeFirstResponder];
}

+ (id)orderedEffectIdentifiers
{
  if (orderedEffectIdentifiers_onceToken != -1)
  {
    +[CKEffectSelectionViewController orderedEffectIdentifiers];
  }

  v3 = orderedEffectIdentifiers_effectIdentifiers;

  return v3;
}

void __59__CKEffectSelectionViewController_orderedEffectIdentifiers__block_invoke()
{
  v2[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.messages.effect.CKHeartEffect";
  v2[1] = @"com.apple.messages.effect.CKHappyBirthdayEffect";
  v2[2] = @"com.apple.MobileSMS.expressivesend.invisibleink";
  v2[3] = @"com.apple.messages.effect.CKConfettiEffect";
  v2[4] = @"com.apple.MobileSMS.expressivesend.impact";
  v2[5] = @"com.apple.messages.effect.CKLasersEffect";
  v2[6] = @"com.apple.MobileSMS.expressivesend.loud";
  v2[7] = @"com.apple.messages.effect.CKSparklesEffect";
  v2[8] = @"com.apple.messages.effect.CKEchoEffect";
  v2[9] = @"com.apple.messages.effect.CKSpotlightEffect";
  v2[10] = @"com.apple.messages.effect.CKFireworksEffect";
  v2[11] = @"com.apple.MobileSMS.expressivesend.gentle";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:12];
  v1 = orderedEffectIdentifiers_effectIdentifiers;
  orderedEffectIdentifiers_effectIdentifiers = v0;
}

- (void)updateContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  v6 = [(CKEffectSelectionViewController *)self collectionView:insets.top];
  [v6 contentInset];
  v8 = v7;
  v10 = v9;

  collectionView = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView setContentInset:{v8, left, v10, right}];

  dataSource = [(CKEffectSelectionViewController *)self dataSource];
  selectedEffectIdentifier = [(CKEffectSelectionViewController *)self selectedEffectIdentifier];
  v15 = [dataSource indexPathForItemIdentifier:selectedEffectIdentifier];

  collectionView2 = [(CKEffectSelectionViewController *)self collectionView];
  [collectionView2 selectItemAtIndexPath:v15 animated:0 scrollPosition:16];
}

- (CKEffectSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end