@interface _UIDocumentPickerDocumentCollectionViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)supportsActions;
- (NSArray)indexPathsForSelectedItems;
- (_UIDocumentPickerDocumentCollectionViewController)initWithModel:(id)a3;
- (_UIDocumentPickerServiceViewController)serviceViewController;
- (id)actionViewForLocation:(CGPoint)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 tableLayout:(id)a4 trailingSwipeActionsForRowAtIndexPath:(id)a5;
- (id)itemForLocation:(CGPoint)a3;
- (id)previewActionItemsForItem:(id)a3;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)collectionView:(id)a3 tableLayout:(id)a4 indentationLevelForRowAtIndexPath:(id)a5;
- (void)_dynamicTypeSizeChanged:(id)a3;
- (void)_showMoreOptionsForRow:(id)a3 view:(id)a4;
- (void)_updateIconSpacing;
- (void)_updateRowHeight;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 tableLayout:(id)a4 accessoryButtonTappedForRowWithIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)containersChangedWithSnapshot:(id)a3 differences:(id)a4;
- (void)dealloc;
- (void)ensureSortViewInvisible;
- (void)modelChanged:(id)a3;
- (void)performAction:(int64_t)a3 forRow:(id)a4 view:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)previewingContext:(id)a3 commitViewController:(id)a4;
- (void)scrollSortViewToVisible;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setContentSizeAdjustment:(double)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setIndexPathsForSelectedItems:(id)a3;
- (void)setMonitoring:(BOOL)a3;
- (void)setPinnedHeaderView:(id)a3 animated:(BOOL)a4;
- (void)setSortView:(id)a3;
- (void)updateContentInset;
- (void)updatePinnedHeader;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation _UIDocumentPickerDocumentCollectionViewController

- (_UIDocumentPickerDocumentCollectionViewController)initWithModel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_UIDocumentPickerFlowLayout);
  [_UIDocumentPickerCell defaultSizeForCellStyle:1 traitCollection:0];
  [(UICollectionViewFlowLayout *)v5 setItemSize:?];
  [(UICollectionViewFlowLayout *)v5 setSectionInset:25.0, 0.0, 25.0, 0.0];
  [(UICollectionViewFlowLayout *)v5 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v5 setMinimumLineSpacing:23.0];
  v6 = objc_alloc_init(_UIDocumentPickerTableLayout);
  [(UICollectionViewTableLayout *)v6 setCellLayoutMarginsFollowReadableWidth:0];
  v40.receiver = self;
  v40.super_class = _UIDocumentPickerDocumentCollectionViewController;
  v7 = [(_UIDocumentPickerDocumentCollectionViewController *)&v40 initWithCollectionViewLayout:v5];
  v8 = v7;
  if (v7)
  {
    [(_UIDocumentPickerDocumentCollectionViewController *)v7 setGridLayout:v5];
    [(_UIDocumentPickerDocumentCollectionViewController *)v8 setTableLayout:v6];
    [(_UIDocumentPickerDocumentCollectionViewController *)v8 _updateRowHeight];
    [(_UIDocumentPickerDocumentCollectionViewController *)v8 setModel:v4];
    v9 = [_UIDocumentPickerDocumentCollectionView alloc];
    v10 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [v10 frame];
    v11 = [(_UIDocumentPickerDocumentCollectionView *)v9 initWithFrame:v5 collectionViewLayout:?];
    [(_UIDocumentPickerDocumentCollectionViewController *)v8 setCollectionView:v11];

    v12 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [v12 setDataSource:v8];

    v13 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [v13 setDelegate:v8];

    v14 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [v14 setPrefetchingEnabled:0];

    v15 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [v15 setAlwaysBounceVertical:1];

    v16 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [v16 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"_UIDocumentPickerDocumentCellIdentifier"];

    v17 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [v17 setAllowsMultipleSelectionDuringEditing:1];

    v18 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 model];
    LOBYTE(v10) = [v18 afterInitialUpdate];

    if ((v10 & 1) == 0)
    {
      v19 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [(_UIDocumentPickerDocumentCollectionViewController *)v8 setInitialActivityView:v19];

      v20 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

      v21 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 view];
      v22 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      [v21 addSubview:v22];

      v23 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      v24 = [v23 centerXAnchor];
      v25 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 view];
      v26 = [v25 centerXAnchor];
      v27 = [v24 constraintEqualToAnchor:v26];
      [v27 setActive:1];

      v28 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      v29 = [v28 centerYAnchor];
      v30 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 view];
      v31 = [v30 centerYAnchor];
      v32 = [v29 constraintEqualToAnchor:v31];
      [v32 setActive:1];

      v33 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      [v33 startAnimating];
    }

    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 addObserver:v8 selector:sel__dynamicTypeSizeChanged_ name:*MEMORY[0x277D76810] object:0];

    v35 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v8 target:sel__unlockAnimations selector:0 userInfo:0 repeats:0.5];
    v36 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    v37 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 registerForPreviewingWithDelegate:v8 sourceView:v36];
    viewControllerPreviewContext = v8->_viewControllerPreviewContext;
    v8->_viewControllerPreviewContext = v37;
  }

  return v8;
}

- (id)itemForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v8 = [v7 indexPathForItemAtPoint:{x, y}];
  v9 = [v6 cellForItemAtIndexPath:v8];

  v10 = [v9 item];

  return v10;
}

- (id)actionViewForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v8 = [v7 indexPathForItemAtPoint:{x, y}];
  v9 = [v6 cellForItemAtIndexPath:v8];

  return v9;
}

- (void)_updateIconSpacing
{
  v31 = [(_UIDocumentPickerDocumentCollectionViewController *)self gridLayout];
  v3 = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
  [_UIDocumentPickerCell defaultSizeForCellStyle:1 traitCollection:v3];
  v5 = v4;
  v29 = v6;

  v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v33.origin.x = v9;
  v33.origin.y = v11;
  v33.size.width = v13;
  v33.size.height = v15;
  Width = CGRectGetWidth(v33);
  v17 = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
  v18 = [v17 _valueForTraitNamed:@"TightMargins"];
  v19 = [v18 BOOLValue];

  v20 = 2.0;
  v21 = 2.0;
  if ((v19 & 1) == 0)
  {
    v22 = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
    v23 = [v22 _valueForTraitNamed:@"CompactIcons"];
    v24 = [v23 BOOLValue];

    if (v24)
    {
      v21 = 15.0;
    }

    else
    {
      v21 = 25.0;
    }

    if (v24)
    {
      v20 = 15.5;
    }

    else
    {
      v20 = 25.0;
    }
  }

  v25 = Width / (v5 * 1.35);
  if (v25 <= 3)
  {
    v26 = 3;
  }

  else
  {
    v26 = v25;
  }

  [v31 setMinimumLineSpacing:{23.0, v29}];
  v34.origin.x = v9;
  v34.origin.y = v11;
  v34.size.width = v13;
  v34.size.height = v15;
  v27 = (CGRectGetWidth(v34) - v26 * v5) / (v26 + 1);
  v28 = floor(v27 * 0.5);
  [v31 setSectionInset:{v20, v28, v21, v28}];
  [v31 setItemSize:{v5 + v27, v30}];
}

- (void)_updateRowHeight
{
  v3 = [(_UIDocumentPickerDocumentCollectionViewController *)self tableLayout];
  v4 = [v3 cellStyle];
  v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
  [_UIDocumentPickerCell defaultSizeForCellStyle:v4 traitCollection:v5];

  v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  UIRoundToViewScale();
  v7 = v6;
  v8 = [(_UIDocumentPickerDocumentCollectionViewController *)self tableLayout];
  [v8 setRowHeight:v7];
}

- (void)_dynamicTypeSizeChanged:(id)a3
{
  v4 = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
  [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollectionDidChange:v4];

  [(_UIDocumentPickerDocumentCollectionViewController *)self _updateIconSpacing];
  [(_UIDocumentPickerDocumentCollectionViewController *)self _updateRowHeight];
  v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [v5 reloadData];
}

- (void)dealloc
{
  [(_UIDocumentPickerDocumentCollectionViewController *)self setMonitoring:0];
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerDocumentCollectionViewController;
  [(_UIDocumentPickerDocumentCollectionViewController *)&v3 dealloc];
}

- (void)containersChangedWithSnapshot:(id)a3 differences:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIDocumentPickerDocumentCollectionViewController *)self initialActivityView];
  [v8 stopAnimating];

  if ([v7 count])
  {
    v9 = [v7 objectForKey:*MEMORY[0x277D77358]];
    if ([v9 count])
    {
      v10 = 0;
    }

    else
    {
      v11 = [v7 objectForKey:*MEMORY[0x277D77350]];
      if ([v11 count])
      {
        v10 = 0;
      }

      else
      {
        v12 = [v7 objectForKey:*MEMORY[0x277D77368]];
        v10 = [v12 count] == 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95___UIDocumentPickerDocumentCollectionViewController_containersChangedWithSnapshot_differences___block_invoke;
  v21[3] = &unk_278DD6200;
  v13 = v7;
  v22 = v13;
  v23 = self;
  v14 = MEMORY[0x245D41DF0](v21);
  if (v10)
  {
    [(_UIDocumentPickerDocumentCollectionViewController *)self setModelObjects:v6];
    v14[2](v14);
  }

  else if ([v13 count] && self->_updatesMayAnimate)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __95___UIDocumentPickerDocumentCollectionViewController_containersChangedWithSnapshot_differences___block_invoke_2;
    v18[3] = &unk_278DD64E0;
    v18[4] = self;
    v19 = v6;
    v20 = v13;
    v15 = MEMORY[0x245D41DF0](v18);
    v16 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
    [v16 performBatchUpdates:v15 completion:0];

    v14[2](v14);
  }

  else
  {
    [(_UIDocumentPickerDocumentCollectionViewController *)self setModelObjects:v6];
    v17 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
    [v17 reloadData];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  [(_UIDocumentPickerDocumentCollectionViewController *)self setMonitoring:a3 != 0];
  v4 = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
  v5 = [v4 modelObjects];
  [(_UIDocumentPickerDocumentCollectionViewController *)self setModelObjects:v5];

  v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [v6 reloadData];
}

- (void)setMonitoring:(BOOL)a3
{
  if (self->_monitoring != a3)
  {
    v3 = a3;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = v5;
    if (v3)
    {
      [v5 addObserver:self selector:sel_modelChanged_ name:@"_UIDocumentPickerModelUpdatedNotification" object:self->_model];

      v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
      [v6 startMonitoringChanges];
    }

    else
    {
      [v5 removeObserver:self name:@"_UIDocumentPickerModelUpdatedNotification" object:self->_model];
    }

    self->_monitoring = v3;
  }
}

- (void)modelChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v14 = [v5 objectForKey:@"model"];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"changes"];

  [(_UIDocumentPickerDocumentCollectionViewController *)self containersChangedWithSnapshot:v14 differences:v7];
  if ([v7 count])
  {
    v8 = [v7 objectForKey:*MEMORY[0x277D77350]];
    if ([v8 count])
    {
      v9 = 1;
    }

    else
    {
      v10 = [v7 objectForKey:*MEMORY[0x277D77358]];
      v9 = [v10 count] != 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    [v13 itemsOrSelectionDidChange:v9];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerDocumentCollectionViewController;
  [(_UIDocumentPickerDocumentCollectionViewController *)&v3 viewWillLayoutSubviews];
  [(_UIDocumentPickerDocumentCollectionViewController *)self _updateIconSpacing];
}

- (void)setDisplayMode:(int64_t)a3
{
  if (self->_displayMode == a3)
  {
    return;
  }

  self->_displayMode = a3;
  if (a3 == 1)
  {
    v8 = [(_UIDocumentPickerDocumentCollectionViewController *)self gridLayout];
    [v8 setCellStyle:1];
    [(_UIDocumentPickerDocumentCollectionViewController *)self _updateIconSpacing];
  }

  else
  {
    if (a3 == 3)
    {
      v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self tableLayout];
      v8 = v5;
      v6 = 3;
    }

    else
    {
      if (a3 != 2)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self tableLayout];
      v8 = v5;
      v6 = 2;
    }

    [v5 setCellStyle:v6];
    [(_UIDocumentPickerDocumentCollectionViewController *)self _updateRowHeight];
  }

LABEL_10:
  v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [v7 setCollectionViewLayout:v8 animated:1];
}

- (void)setContentSizeAdjustment:(double)a3
{
  v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [v5 setContentSizeAdjustment:a3];

  v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionViewLayout];
  [v6 setContentSizeAdjustment:a3];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(_UIDocumentPickerDocumentCollectionViewController *)self modelObjects:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"_UIDocumentPickerDocumentCellIdentifier" forIndexPath:v6];
  v8 = [(_UIDocumentPickerDocumentCollectionViewController *)self actions];

  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v34 = [v10 localizedStringForKey:@"Delete..." value:@"Delete…" table:@"Localizable"];

    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v35 = [v11 localizedStringForKey:@"Rename..." value:@"Rename…" table:@"Localizable"];

    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v36 = [v12 localizedStringForKey:@"Share..." value:@"Share…" table:@"Localizable"];

    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v31 = [v13 localizedStringForKey:@"Move..." value:@"Move…" table:@"Localizable"];

    v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v32 = [v14 localizedStringForKey:@"Info" value:@"Info" table:@"Localizable"];

    v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v33 = [v15 localizedStringForKey:@"More..." value:@"More…" table:@"Localizable"];

    v16 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:v34 action:sel__deleteAction_];
    [v9 addObject:v16];

    v17 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:v35 action:sel__renameAction_];
    [v9 addObject:v17];

    v18 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:v36 action:sel__activityAction_];
    [v9 addObject:v18];

    v19 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:v31 action:sel__moveAction_];
    [v9 addObject:v19];

    v20 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:v32 action:sel__infoAction_];
    [v9 addObject:v20];

    v21 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:v33 action:sel__moreAction_];
    [v9 addObject:v21];

    v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v23 = [v22 localizedStringForKey:@"Debug..." value:@"Debug…" table:@"Localizable"];

    v24 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:v23 action:sel__showPickableDiagnostic];
    [v9 addObject:v24];

    [(_UIDocumentPickerDocumentCollectionViewController *)self setActions:v9];
  }

  v25 = [v7 actions];

  if (!v25)
  {
    v26 = [(_UIDocumentPickerDocumentCollectionViewController *)self actions];
    [v7 setActions:v26];
  }

  [v7 setCollectionView:self];
  v27 = [(_UIDocumentPickerDocumentCollectionViewController *)self modelObjects];
  v28 = [v6 row];

  v29 = [v27 objectAtIndex:v28];

  [v7 setItem:v29];

  return v7;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  v6 = [v10 isEditing];
  v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v8 = [v7 isEditing];

  v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [v10 setEditing:{objc_msgSend(v9, "isEditing")}];

  if (v6 == v8)
  {
    [v10 updateForEditingState:0];
  }
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self modelObjects];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v11 = [v10 shouldHighlightItem:v8];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v11 = [v6 cellForItemAtIndexPath:v5];

  v7 = [v11 item];
  v8 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    [v10 didHighlightItem:v7];
  }
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v11 = [v6 cellForItemAtIndexPath:v5];

  v7 = [v11 item];
  v8 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    [v10 didUnhighlightItem:v7];
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self modelObjects];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self firstResponder];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  if (v7)
  {
    v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self firstResponder];
    [v10 endEditing:0];
  }

  if ([v8 pickable])
  {
    v11 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
      v14 = [v13 shouldSelectItem:v8];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  v9 = [v8 item];
  v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self isEditing];
  v11 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v12 = v11;
  if (v10)
  {
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
      [v14 itemsOrSelectionDidChange:1];
    }
  }

  else
  {
    [v11 didSelectItem:v9];

    [v16 deselectItemAtIndexPath:v6 animated:1];
  }

  v15 = [MEMORY[0x277D75718] sharedMenuController];
  [v15 setMenuVisible:0];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  if ([(_UIDocumentPickerDocumentCollectionViewController *)self isEditing:a3])
  {
    v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
      [v7 itemsOrSelectionDidChange:1];
    }
  }
}

- (BOOL)supportsActions
{
  v3 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(_UIDocumentPickerDocumentCollectionViewController *)self displayMode]!= 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)collectionView:(id)a3 tableLayout:(id)a4 accessoryButtonTappedForRowWithIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  [(_UIDocumentPickerDocumentCollectionViewController *)self performAction:2 forRow:v6 view:v8];
}

- (void)performAction:(int64_t)a3 forRow:(id)a4 view:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
  v11 = [v10 modelObjects];
  v12 = [v9 row];

  v13 = [v11 objectAtIndex:v12];

  v14 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79___UIDocumentPickerDocumentCollectionViewController_performAction_forRow_view___block_invoke;
  v15[3] = &unk_278DD61B0;
  v15[4] = self;
  [v14 performAction:a3 item:v13 view:v8 completion:v15];
}

- (void)_showMoreOptionsForRow:(id)a3 view:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
  v9 = [v8 modelObjects];
  v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v12 = [v11 popoverPresentationController];
  [v12 setSourceView:v7];

  [v7 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v11 popoverPresentationController];
  [v21 setSourceRect:{v14, v16, v18, v20}];

  v22 = [v10 isActionApplicableForItem:3];
  v23 = [v10 isActionApplicableForItem:4];
  v24 = [v10 isActionApplicableForItem:5];
  v25 = &off_243855000;
  if (v22)
  {
    v26 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v27 = [v26 shouldShowAction:3];

    if (v27)
    {
      v28 = MEMORY[0x277D750F8];
      v29 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v30 = [v29 localizedStringForKey:@"Rename..." value:@"Rename…" table:@"Localizable"];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __81___UIDocumentPickerDocumentCollectionViewController__showMoreOptionsForRow_view___block_invoke;
      v55[3] = &unk_278DD69E0;
      v55[4] = self;
      v56 = v6;
      v57 = v7;
      v31 = [v28 actionWithTitle:v30 style:0 handler:v55];
      [v11 addAction:v31];

      v25 = &off_243855000;
    }
  }

  if (v23)
  {
    v32 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v33 = [v32 shouldShowAction:4];

    if (v33)
    {
      v34 = MEMORY[0x277D750F8];
      v35 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v36 = [v35 localizedStringForKey:@"Share..." value:@"Share…" table:@"Localizable"];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = *(v25 + 388);
      v52[2] = __81___UIDocumentPickerDocumentCollectionViewController__showMoreOptionsForRow_view___block_invoke_2;
      v52[3] = &unk_278DD69E0;
      v52[4] = self;
      v53 = v6;
      v54 = v7;
      v37 = [v34 actionWithTitle:v36 style:0 handler:v52];
      [v11 addAction:v37];
    }
  }

  if (v24)
  {
    v38 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v39 = [v38 shouldShowAction:5];

    if (v39)
    {
      v40 = MEMORY[0x277D750F8];
      v41 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v42 = [v41 localizedStringForKey:@"Move..." value:@"Move…" table:@"Localizable"];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = *(v25 + 388);
      v49[2] = __81___UIDocumentPickerDocumentCollectionViewController__showMoreOptionsForRow_view___block_invoke_3;
      v49[3] = &unk_278DD69E0;
      v49[4] = self;
      v50 = v6;
      v51 = v7;
      v43 = [v40 actionWithTitle:v42 style:0 handler:v49];
      [v11 addAction:v43];
    }
  }

  v44 = MEMORY[0x277D750F8];
  v45 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v46 = [v45 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = *(v25 + 388);
  v48[2] = __81___UIDocumentPickerDocumentCollectionViewController__showMoreOptionsForRow_view___block_invoke_4;
  v48[3] = &unk_278DD6A08;
  v48[4] = self;
  v47 = [v44 actionWithTitle:v46 style:1 handler:v48];
  [v11 addAction:v47];

  [(_UIDocumentPickerDocumentCollectionViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (id)collectionView:(id)a3 tableLayout:(id)a4 trailingSwipeActionsForRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(_UIDocumentPickerDocumentCollectionViewController *)self supportsActions])
  {
    v15 = 0;
    goto LABEL_18;
  }

  v11 = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
  v12 = [v11 modelObjects];
  v13 = [v12 objectAtIndex:{objc_msgSend(v10, "row")}];

  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__2;
  v45[4] = __Block_byref_object_dispose__2;
  v14 = self;
  v46 = v14;
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [(_UIDocumentPickerDocumentCollectionViewController *)v14 serviceViewController];
  if ([v16 shouldShowAction:1])
  {
    v17 = [v13 isActionApplicableForItem:1];

    if (v17)
    {
      v18 = MEMORY[0x277D75328];
      v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v20 = [v19 localizedStringForKey:@"More" value:@"More" table:@"Localizable"];
      v21 = v44;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __118___UIDocumentPickerDocumentCollectionViewController_collectionView_tableLayout_trailingSwipeActionsForRowAtIndexPath___block_invoke;
      v44[3] = &unk_278DD6A30;
      v44[5] = v45;
      v44[4] = v10;
      v22 = [v18 actionWithStyle:0 title:v20 handler:v44];

      [v22 setResetsSwipedRow:0];
      [v15 addObject:v22];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  v23 = [v13 isActionApplicableForItem:3];
  v24 = [v13 isActionApplicableForItem:4];
  v25 = [v13 isActionApplicableForItem:5];
  v26 = [(_UIDocumentPickerDocumentCollectionViewController *)v14 serviceViewController];
  if ([v26 shouldShowAction:3] & v23)
  {
    goto LABEL_10;
  }

  v27 = [(_UIDocumentPickerDocumentCollectionViewController *)v14 serviceViewController];
  if (([v27 shouldShowAction:4] & v24) == 1)
  {

LABEL_10:
LABEL_11:
    v28 = MEMORY[0x277D75328];
    v29 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v30 = [v29 localizedStringForKey:@"More" value:@"More" table:@"Localizable"];
    v21 = v43;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __118___UIDocumentPickerDocumentCollectionViewController_collectionView_tableLayout_trailingSwipeActionsForRowAtIndexPath___block_invoke_2;
    v43[3] = &unk_278DD6A30;
    v43[5] = v45;
    v43[4] = v10;
    v22 = [v28 actionWithStyle:0 title:v30 handler:v43];

    [v22 setResetsSwipedRow:0];
    [v15 addObject:v22];
    goto LABEL_12;
  }

  v38 = [(_UIDocumentPickerDocumentCollectionViewController *)v14 serviceViewController];
  v39 = [v38 shouldShowAction:5] & v25;

  if (v39)
  {
    goto LABEL_11;
  }

LABEL_13:
  v31 = [(_UIDocumentPickerDocumentCollectionViewController *)v14 serviceViewController];
  if (![v31 shouldShowAction:0])
  {
LABEL_16:

    goto LABEL_17;
  }

  v32 = [v13 isActionApplicableForItem:0];

  if (v32)
  {
    v33 = MEMORY[0x277D75328];
    v34 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v35 = [v34 localizedStringForKey:@"Delete" value:@"Delete" table:@"Localizable"];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __118___UIDocumentPickerDocumentCollectionViewController_collectionView_tableLayout_trailingSwipeActionsForRowAtIndexPath___block_invoke_3;
    v40[3] = &unk_278DD6A30;
    v42 = v45;
    v41 = v10;
    v36 = [v33 actionWithStyle:1 title:v35 handler:v40];

    [v36 setResetsSwipedRow:0];
    [v15 addObject:v36];

    v31 = v41;
    goto LABEL_16;
  }

LABEL_17:
  _Block_object_dispose(v45, 8);

LABEL_18:

  return v15;
}

- (int64_t)collectionView:(id)a3 tableLayout:(id)a4 indentationLevelForRowAtIndexPath:(id)a5
{
  v7 = a5;
  if ([a4 cellStyle] == 3)
  {
    v8 = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
    v9 = [v8 modelObjects];
    v10 = [v9 objectAtIndex:{objc_msgSend(v7, "row")}];

    v11 = [v10 indentationLevel];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(_UIDocumentPickerDocumentCollectionViewController *)self isEditing]!= a3)
  {
    v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self firstResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self firstResponder];
      [v9 endEditing:0];
    }

    v10.receiver = self;
    v10.super_class = _UIDocumentPickerDocumentCollectionViewController;
    [(_UIDocumentPickerDocumentCollectionViewController *)&v10 setEditing:v5 animated:v4];
  }
}

- (NSArray)indexPathsForSelectedItems
{
  v2 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];

  return v3;
}

- (void)setIndexPathsForSelectedItems:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
        [v10 selectItemAtIndexPath:v9 animated:0 scrollPosition:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setSortView:(id)a3
{
  v23[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  sortView = self->_sortView;
  if (sortView != v5)
  {
    [(_UIDocumentPickerSortOrderView *)sortView removeFromSuperview];
    objc_storeStrong(&self->_sortView, a3);
    [(_UIDocumentPickerDocumentCollectionViewController *)self updateContentInset];
    if (v5)
    {
      v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
      [v7 addSubview:v5];

      [(_UIDocumentPickerSortOrderView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = MEMORY[0x277CCAAD0];
      v22 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
      v21 = [v22 widthAnchor];
      v20 = [(_UIDocumentPickerSortOrderView *)v5 widthAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v23[0] = v19;
      v18 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
      v8 = [v18 leftAnchor];
      v9 = [(_UIDocumentPickerSortOrderView *)v5 leftAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      v23[1] = v10;
      v11 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
      v12 = [v11 topAnchor];
      v13 = [(_UIDocumentPickerSortOrderView *)v5 topAnchor];
      [(_UIDocumentPickerSortOrderView *)self->_sortView frame];
      v15 = [v12 constraintEqualToAnchor:v13 constant:v14];
      v23[2] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
      [v17 activateConstraints:v16];

      [(_UIDocumentPickerDocumentCollectionViewController *)self setShouldHideSortBar:1];
      [(_UIDocumentPickerSortOrderView *)v5 setListMode:[(_UIDocumentPickerDocumentCollectionViewController *)self displayMode]];
    }
  }
}

- (void)updateContentInset
{
  sortView = self->_sortView;
  if (sortView)
  {
    [(_UIDocumentPickerSortOrderView *)sortView bounds];
    v5 = v4 + 0.0;
  }

  else
  {
    v5 = 0.0;
  }

  pinnedHeaderView = self->_pinnedHeaderView;
  if (pinnedHeaderView)
  {
    [(UIView *)pinnedHeaderView bounds];
    v8 = v7;
    v5 = v5 + v7;
    [(_UIDocumentPickerDocumentCollectionViewController *)self setContentSizeAdjustment:-v7];
    v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [v9 setScrollIndicatorInsets:{v8, 0.0, 0.0, 0.0}];
  }

  v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [v10 setContentInset:{v5, 0.0, 0.0, 0.0}];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self navigationController];
    [v10 presentViewController:v8 animated:v6 completion:v9];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UIDocumentPickerDocumentCollectionViewController;
    [(_UIDocumentPickerDocumentCollectionViewController *)&v11 presentViewController:v8 animated:v6 completion:v9];
  }
}

- (void)willPresentSearchController:(id)a3
{
  v3 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [v3 setContentInset:{0.0, 0.0, 0.0, 0.0}];
}

- (void)willDismissSearchController:(id)a3
{
  [(_UIDocumentPickerDocumentCollectionViewController *)self updateContentInset];

  [(_UIDocumentPickerDocumentCollectionViewController *)self ensureSortViewInvisible];
}

- (void)setPinnedHeaderView:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  pinnedHeaderView = self->_pinnedHeaderView;
  if (pinnedHeaderView != v6)
  {
    v18 = v6;
    v8 = pinnedHeaderView;
    [(UIView *)v8 removeFromSuperview];
    objc_storeStrong(&self->_pinnedHeaderView, a3);
    v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [v9 addSubview:v18];

    [(_UIDocumentPickerDocumentCollectionViewController *)self updateContentInset];
    [(_UIDocumentPickerDocumentCollectionViewController *)self updatePinnedHeader];
    v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [v10 contentOffset];
    v12 = v11;

    if (v18)
    {
      [(UIView *)v18 frame];
      v14 = v12 - v13;
    }

    else
    {
      [(UIView *)v8 frame];
      v14 = v12 + v15;
    }

    [(UIView *)self->_pinnedHeaderView bounds];
    if (v14 < -v16)
    {
      v14 = -v16;
    }

    v17 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [v17 setContentOffset:0 animated:{0.0, v14}];

    v6 = v18;
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v29 = a3;
  v8 = a5->y;
  [(UIView *)self->_pinnedHeaderView frame];
  v10 = v8 + v9;
  v11 = [(_UIDocumentPickerDocumentCollectionViewController *)self sortView];
  v12 = [v11 superview];
  v13 = [(_UIDocumentPickerDocumentCollectionViewController *)self sortView];
  [v13 frame];
  [v12 convertRect:v29 toView:?];
  v15 = v14;
  v17 = v16;

  v18 = v15 + v17;
  if (y > 0.0)
  {
    if (v10 <= v15 || v10 >= v18)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (y >= 0.0)
  {
    v21 = v15 + v17 * 0.5;
    if (v10 > v15 && v10 <= v21)
    {
LABEL_24:
      [v29 contentOffset];
      v25 = v28;
      [v29 contentInset];
      goto LABEL_25;
    }

    if (v10 < v21 || v10 >= v18)
    {
      goto LABEL_26;
    }
  }

  else if (v10 <= v15 || v10 >= v18)
  {
    goto LABEL_26;
  }

  [v29 contentOffset];
  v25 = v24;
  [(UIView *)self->_pinnedHeaderView bounds];
  v27 = v26;
LABEL_25:
  a5->x = v25;
  a5->y = -v27;
LABEL_26:
}

- (void)updatePinnedHeader
{
  v3 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  pinnedHeaderView = self->_pinnedHeaderView;

  [(UIView *)pinnedHeaderView setFrame:v5, v7, v9, 44.0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerDocumentCollectionViewController;
  [(_UIDocumentPickerDocumentCollectionViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(_UIDocumentPickerDocumentCollectionViewController *)self setShouldHideSortBar:1];
  [(_UIDocumentPickerDocumentCollectionViewController *)self updateContentInset];
  v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [v5 setNeedsLayout];

  v6 = [(_UIDocumentPickerDocumentCollectionViewController *)self navigationController];
  v7 = [v6 view];
  v8 = [v7 semanticContentAttribute];
  v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [v9 setSemanticContentAttribute:v8];

  v10.receiver = self;
  v10.super_class = _UIDocumentPickerDocumentCollectionViewController;
  [(_UIDocumentPickerDocumentCollectionViewController *)&v10 viewWillAppear:v3];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerDocumentCollectionViewController;
  [(_UIDocumentPickerDocumentCollectionViewController *)&v3 viewDidLayoutSubviews];
  if ([(_UIDocumentPickerDocumentCollectionViewController *)self shouldHideSortBar])
  {
    [(_UIDocumentPickerDocumentCollectionViewController *)self ensureSortViewInvisible];
    [(_UIDocumentPickerDocumentCollectionViewController *)self setShouldHideSortBar:0];
  }
}

- (void)ensureSortViewInvisible
{
  v3 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [v3 contentOffset];
  v5 = v4;
  [(UIView *)self->_pinnedHeaderView bounds];
  v7 = -v6;

  if (v5 < v7)
  {
    v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [(UIView *)self->_pinnedHeaderView bounds];
    [v9 setContentOffset:0 animated:{0.0, -v8}];
  }
}

- (void)scrollSortViewToVisible
{
  [(_UIDocumentPickerDocumentCollectionViewController *)self setShouldHideSortBar:0];
  v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  v3 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [v3 contentInset];
  [v5 setContentOffset:0 animated:{0.0, -v4}];
}

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self itemForLocation:a3, a4.x, a4.y];
  if (v5 && ([(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0))
  {
    v8 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v9 = [v8 previewViewControllerForItem:v5];

    if (v9)
    {
      objc_setAssociatedObject(v9, &viewControllerItemKey, v5, 0x301);
      if (objc_opt_respondsToSelector())
      {
        v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self previewActionItemsForItem:v5];
        [v9 setPreviewActionItems:v10];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)previewActionItemsForItem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79___UIDocumentPickerDocumentCollectionViewController_previewActionItemsForItem___block_invoke;
  v19[3] = &unk_278DD6A80;
  v19[4] = self;
  v20 = v4;
  v6 = v5;
  v21 = v6;
  v7 = v4;
  v8 = MEMORY[0x245D41DF0](v19);
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v10 = [v9 localizedStringForKey:@"Rename..." value:@"Rename…" table:@"Localizable"];
  (v8)[2](v8, v10, 3);

  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v12 = [v11 localizedStringForKey:@"Delete..." value:@"Delete…" table:@"Localizable"];
  (v8)[2](v8, v12, 0);

  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v14 = [v13 localizedStringForKey:@"Share..." value:@"Share…" table:@"Localizable"];
  (v8)[2](v8, v14, 4);

  v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v16 = [v15 localizedStringForKey:@"Move..." value:@"Move…" table:@"Localizable"];
  (v8)[2](v8, v16, 5);

  v17 = v6;
  return v6;
}

- (void)previewingContext:(id)a3 commitViewController:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v8 = [v7 shouldShowAction:6];

  if (v8)
  {
    v9 = objc_getAssociatedObject(v6, &viewControllerItemKey);
    v10 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v11 = [v12 sourceView];
    [v10 performAction:6 item:v9 view:v11 completion:&__block_literal_global_9];
  }

  else
  {
    v9 = [(_UIDocumentPickerDocumentCollectionViewController *)self navigationController];
    [v9 pushViewController:v6 animated:1];
  }

  objc_setAssociatedObject(v6, &viewControllerItemKey, 0, 0x301);
}

- (_UIDocumentPickerServiceViewController)serviceViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceViewController);

  return WeakRetained;
}

@end