@interface CKEffectSelectionViewController
+ (id)orderedEffectIdentifiers;
- (BOOL)becomeFirstResponder;
- (CKEffectSelectionViewControllerDelegate)delegate;
- (NSString)selectedEffectIdentifier;
- (id)effectImageForIndexPath:(id)a3;
- (id)effectTitleForIndexPath:(id)a3;
- (void)_updateMaxCellHeightForIndexPath:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)setSelectedEffectIdentifier:(id)a3;
- (void)updateContentInsets:(UIEdgeInsets)a3;
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

  v12 = [(CKEffectSelectionViewController *)self collectionView];
  [v12 setDelegate:self];

  v13 = [(CKEffectSelectionViewController *)self collectionView];
  v14 = [MEMORY[0x1E69DC888] clearColor];
  [v13 setBackgroundColor:v14];

  v15 = [(CKEffectSelectionViewController *)self collectionView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(CKEffectSelectionViewController *)self collectionView];
  [v16 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kEffectSelectionCellReuseIdentifier"];

  v17 = [(CKEffectSelectionViewController *)self collectionView];
  [v17 setContentInsetAdjustmentBehavior:2];

  v18 = [(CKEffectSelectionViewController *)self collectionView];
  [v18 setShowsHorizontalScrollIndicator:1];

  v19 = [(CKEffectSelectionViewController *)self collectionView];
  [v19 setSelectionFollowsFocus:1];

  v20 = [(CKEffectSelectionViewController *)self view];
  v21 = [(CKEffectSelectionViewController *)self collectionView];
  [v20 addSubview:v21];

  v38 = MEMORY[0x1E696ACD8];
  v50 = [(CKEffectSelectionViewController *)self collectionView];
  v48 = [v50 topAnchor];
  v49 = [(CKEffectSelectionViewController *)self view];
  v47 = [v49 topAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v58[0] = v46;
  v45 = [(CKEffectSelectionViewController *)self collectionView];
  v43 = [v45 leadingAnchor];
  v44 = [(CKEffectSelectionViewController *)self view];
  v42 = [v44 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v58[1] = v41;
  v40 = [(CKEffectSelectionViewController *)self collectionView];
  v39 = [v40 trailingAnchor];
  v22 = [(CKEffectSelectionViewController *)self view];
  v23 = [v22 trailingAnchor];
  v24 = [v39 constraintEqualToAnchor:v23];
  v58[2] = v24;
  v25 = [(CKEffectSelectionViewController *)self collectionView];
  v26 = [v25 bottomAnchor];
  v27 = [(CKEffectSelectionViewController *)self view];
  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v58[3] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  [v38 activateConstraints:v30];

  objc_initWeak(&location, self);
  v31 = objc_alloc(MEMORY[0x1E69DC820]);
  v32 = [(CKEffectSelectionViewController *)self collectionView];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __46__CKEffectSelectionViewController_viewDidLoad__block_invoke;
  v53[3] = &unk_1E72F11A0;
  objc_copyWeak(&v54, &location);
  v33 = [v31 initWithCollectionView:v32 cellProvider:v53];
  [(CKEffectSelectionViewController *)self setDataSource:v33];

  v34 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v57 = @"MainSectionIdentifier";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  [v34 appendSectionsWithIdentifiers:v35];

  v36 = +[CKEffectSelectionViewController orderedEffectIdentifiers];
  [v34 appendItemsWithIdentifiers:v36 intoSectionWithIdentifier:@"MainSectionIdentifier"];

  v37 = [(CKEffectSelectionViewController *)self dataSource];
  [v37 applySnapshot:v34 animatingDifferences:0];

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
  v2 = [(CKEffectSelectionViewController *)self collectionView];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (void)_updateMaxCellHeightForIndexPath:(id)a3
{
  v29 = a3;
  v4 = [(CKEffectSelectionViewController *)self dataSource];
  v5 = [v4 itemIdentifierForIndexPath:v29];

  v6 = [(CKEffectSelectionViewController *)self identifierToHeightMap];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = [(CKEffectSelectionViewController *)self identifierToHeightMap];
    v9 = [v8 objectForKey:v5];

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
    v9 = [(CKEffectSelectionViewController *)self effectTitleForIndexPath:v29];
    v14 = [(CKEffectSelectionViewController *)self sizingCell];
    [v14 setTitle:v9];

    v15 = [(CKEffectSelectionViewController *)self sizingCell];
    [v15 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v17 = v16;

    v18 = [(CKEffectSelectionViewController *)self identifierToHeightMap];
    *&v19 = v17;
    v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
    [v18 setObject:v20 forKey:v5];

    [(CKEffectSelectionViewController *)self cellMaxHeight];
    if (v21 >= v17)
    {
      v17 = v21;
    }

    [(CKEffectSelectionViewController *)self cellMaxHeight];
    if (v17 != v22)
    {
      [(CKEffectSelectionViewController *)self setCellMaxHeight:v17];
      v23 = [(CKEffectSelectionViewController *)self collectionView];
      v24 = [v23 collectionViewLayout];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [(CKEffectSelectionViewController *)self collectionView];
        v26 = [v25 collectionViewLayout];

        [v26 itemSize];
        if (v27 != v17)
        {
          [v26 setItemSize:{88.0, v17}];
        }
      }

      v28 = [(CKEffectSelectionViewController *)self delegate];
      [v28 didUpdateMaxCellHeight:v17];
    }
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CKEffectSelectionViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  v8 = [(CKEffectSelectionViewController *)self delegate];
  [v8 effectSelectionViewController:self didSelectEffectWithIdentifier:v7];

  v9 = [(CKEffectSelectionViewController *)self fsem];
  v10 = [v9 effectForIdentifier:v7];

  if (v10 && [v10 effectIsDark])
  {
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v13 = [v12 fsmPickerPrimaryColorDarkEffect];
    [(CKEffectSelectionViewController *)self setLabelColor:v13];
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(CKEffectSelectionViewController *)self setLabelColor:v11];
  }

  v19 = 0.0;
  v20 = 0.0;
  v14 = [v10 backgroundColor];
  [v14 getHue:0 saturation:0 brightness:&v20 alpha:&v19];

  v15 = v19 > 0.5 && v20 < 0.5;
  [(CKEffectSelectionViewController *)self setLabelUsesDarkVibrancy:v15, v19, 0.5, v20];
  v16 = [(CKEffectSelectionViewController *)self collectionView];
  v17 = [v16 visibleCells];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__CKEffectSelectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v18[3] = &unk_1E72F7D70;
  v18[4] = self;
  [v17 enumerateObjectsUsingBlock:v18];
}

void __75__CKEffectSelectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 configureForEffectIsDark:{objc_msgSend(v2, "labelUsesDarkVibrancy")}];
}

- (id)effectTitleForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKEffectSelectionViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(CKEffectSelectionViewController *)self fsem];
  v8 = [v7 effectIdentifiers];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [(CKEffectSelectionViewController *)self fsem];
    v11 = [v10 localizedDisplayNameForEffectWithIdentifier:v6];
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

- (id)effectImageForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKEffectSelectionViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6];

  return v7;
}

- (NSString)selectedEffectIdentifier
{
  v3 = [(CKEffectSelectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [v4 firstObject];

  v6 = [(CKEffectSelectionViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  return v7;
}

- (void)setSelectedEffectIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CKEffectSelectionViewController *)self collectionView];
  [v5 frame];
  v6 = CGRectEqualToRect(v18, *MEMORY[0x1E695F058]);

  if (v6)
  {
    v7 = [(CKEffectSelectionViewController *)self view];
    [v7 setNeedsLayout];

    v8 = [(CKEffectSelectionViewController *)self view];
    [v8 layoutIfNeeded];
  }

  v9 = [(CKEffectSelectionViewController *)self dataSource];
  v16 = [v9 indexPathForItemIdentifier:v4];

  v10 = [(CKEffectSelectionViewController *)self collectionView];
  [v10 selectItemAtIndexPath:v16 animated:0 scrollPosition:0];

  v11 = [(CKEffectSelectionViewController *)self collectionView];
  v12 = [v11 delegate];
  v13 = [(CKEffectSelectionViewController *)self collectionView];
  [v12 collectionView:v13 didSelectItemAtIndexPath:v16];

  v14 = [(CKEffectSelectionViewController *)self collectionView];
  v15 = [v14 cellForItemAtIndexPath:v16];

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

- (void)updateContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  v6 = [(CKEffectSelectionViewController *)self collectionView:a3.top];
  [v6 contentInset];
  v8 = v7;
  v10 = v9;

  v11 = [(CKEffectSelectionViewController *)self collectionView];
  [v11 setContentInset:{v8, left, v10, right}];

  v12 = [(CKEffectSelectionViewController *)self dataSource];
  v13 = [(CKEffectSelectionViewController *)self selectedEffectIdentifier];
  v15 = [v12 indexPathForItemIdentifier:v13];

  v14 = [(CKEffectSelectionViewController *)self collectionView];
  [v14 selectItemAtIndexPath:v15 animated:0 scrollPosition:16];
}

- (CKEffectSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end