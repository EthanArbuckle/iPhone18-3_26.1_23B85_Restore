@interface _UIDocumentPickerDocumentCollectionViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)supportsActions;
- (NSArray)indexPathsForSelectedItems;
- (_UIDocumentPickerDocumentCollectionViewController)initWithModel:(id)model;
- (_UIDocumentPickerServiceViewController)serviceViewController;
- (id)actionViewForLocation:(CGPoint)location;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsForRowAtIndexPath:(id)path;
- (id)itemForLocation:(CGPoint)location;
- (id)previewActionItemsForItem:(id)item;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)collectionView:(id)view tableLayout:(id)layout indentationLevelForRowAtIndexPath:(id)path;
- (void)_dynamicTypeSizeChanged:(id)changed;
- (void)_showMoreOptionsForRow:(id)row view:(id)view;
- (void)_updateIconSpacing;
- (void)_updateRowHeight;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view tableLayout:(id)layout accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)containersChangedWithSnapshot:(id)snapshot differences:(id)differences;
- (void)dealloc;
- (void)ensureSortViewInvisible;
- (void)modelChanged:(id)changed;
- (void)performAction:(int64_t)action forRow:(id)row view:(id)view;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)previewingContext:(id)context commitViewController:(id)controller;
- (void)scrollSortViewToVisible;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setContentSizeAdjustment:(double)adjustment;
- (void)setDisplayMode:(int64_t)mode;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setIndexPathsForSelectedItems:(id)items;
- (void)setMonitoring:(BOOL)monitoring;
- (void)setPinnedHeaderView:(id)view animated:(BOOL)animated;
- (void)setSortView:(id)view;
- (void)updateContentInset;
- (void)updatePinnedHeader;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)controller;
- (void)willMoveToParentViewController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation _UIDocumentPickerDocumentCollectionViewController

- (_UIDocumentPickerDocumentCollectionViewController)initWithModel:(id)model
{
  modelCopy = model;
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
    [(_UIDocumentPickerDocumentCollectionViewController *)v8 setModel:modelCopy];
    v9 = [_UIDocumentPickerDocumentCollectionView alloc];
    collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [collectionView frame];
    v11 = [(_UIDocumentPickerDocumentCollectionView *)v9 initWithFrame:v5 collectionViewLayout:?];
    [(_UIDocumentPickerDocumentCollectionViewController *)v8 setCollectionView:v11];

    collectionView2 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [collectionView2 setDataSource:v8];

    collectionView3 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [collectionView3 setDelegate:v8];

    collectionView4 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [collectionView4 setPrefetchingEnabled:0];

    collectionView5 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [collectionView5 setAlwaysBounceVertical:1];

    collectionView6 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [collectionView6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"_UIDocumentPickerDocumentCellIdentifier"];

    collectionView7 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    [collectionView7 setAllowsMultipleSelectionDuringEditing:1];

    model = [(_UIDocumentPickerDocumentCollectionViewController *)v8 model];
    LOBYTE(collectionView) = [model afterInitialUpdate];

    if ((collectionView & 1) == 0)
    {
      v19 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [(_UIDocumentPickerDocumentCollectionViewController *)v8 setInitialActivityView:v19];

      initialActivityView = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      [initialActivityView setTranslatesAutoresizingMaskIntoConstraints:0];

      view = [(_UIDocumentPickerDocumentCollectionViewController *)v8 view];
      initialActivityView2 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      [view addSubview:initialActivityView2];

      initialActivityView3 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      centerXAnchor = [initialActivityView3 centerXAnchor];
      view2 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 view];
      centerXAnchor2 = [view2 centerXAnchor];
      v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v27 setActive:1];

      initialActivityView4 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      centerYAnchor = [initialActivityView4 centerYAnchor];
      view3 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 view];
      centerYAnchor2 = [view3 centerYAnchor];
      v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v32 setActive:1];

      initialActivityView5 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 initialActivityView];
      [initialActivityView5 startAnimating];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__dynamicTypeSizeChanged_ name:*MEMORY[0x277D76810] object:0];

    v35 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v8 target:sel__unlockAnimations selector:0 userInfo:0 repeats:0.5];
    collectionView8 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 collectionView];
    v37 = [(_UIDocumentPickerDocumentCollectionViewController *)v8 registerForPreviewingWithDelegate:v8 sourceView:collectionView8];
    viewControllerPreviewContext = v8->_viewControllerPreviewContext;
    v8->_viewControllerPreviewContext = v37;
  }

  return v8;
}

- (id)itemForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  collectionView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v8 = [collectionView2 indexPathForItemAtPoint:{x, y}];
  v9 = [collectionView cellForItemAtIndexPath:v8];

  item = [v9 item];

  return item;
}

- (id)actionViewForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  collectionView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v8 = [collectionView2 indexPathForItemAtPoint:{x, y}];
  v9 = [collectionView cellForItemAtIndexPath:v8];

  return v9;
}

- (void)_updateIconSpacing
{
  gridLayout = [(_UIDocumentPickerDocumentCollectionViewController *)self gridLayout];
  traitCollection = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
  [_UIDocumentPickerCell defaultSizeForCellStyle:1 traitCollection:traitCollection];
  v5 = v4;
  v29 = v6;

  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [collectionView frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v33.origin.x = v9;
  v33.origin.y = v11;
  v33.size.width = v13;
  v33.size.height = v15;
  Width = CGRectGetWidth(v33);
  traitCollection2 = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
  v18 = [traitCollection2 _valueForTraitNamed:@"TightMargins"];
  bOOLValue = [v18 BOOLValue];

  v20 = 2.0;
  v21 = 2.0;
  if ((bOOLValue & 1) == 0)
  {
    traitCollection3 = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
    v23 = [traitCollection3 _valueForTraitNamed:@"CompactIcons"];
    bOOLValue2 = [v23 BOOLValue];

    if (bOOLValue2)
    {
      v21 = 15.0;
    }

    else
    {
      v21 = 25.0;
    }

    if (bOOLValue2)
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

  [gridLayout setMinimumLineSpacing:{23.0, v29}];
  v34.origin.x = v9;
  v34.origin.y = v11;
  v34.size.width = v13;
  v34.size.height = v15;
  v27 = (CGRectGetWidth(v34) - v26 * v5) / (v26 + 1);
  v28 = floor(v27 * 0.5);
  [gridLayout setSectionInset:{v20, v28, v21, v28}];
  [gridLayout setItemSize:{v5 + v27, v30}];
}

- (void)_updateRowHeight
{
  tableLayout = [(_UIDocumentPickerDocumentCollectionViewController *)self tableLayout];
  cellStyle = [tableLayout cellStyle];
  traitCollection = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
  [_UIDocumentPickerCell defaultSizeForCellStyle:cellStyle traitCollection:traitCollection];

  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  UIRoundToViewScale();
  v7 = v6;
  tableLayout2 = [(_UIDocumentPickerDocumentCollectionViewController *)self tableLayout];
  [tableLayout2 setRowHeight:v7];
}

- (void)_dynamicTypeSizeChanged:(id)changed
{
  traitCollection = [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollection];
  [(_UIDocumentPickerDocumentCollectionViewController *)self traitCollectionDidChange:traitCollection];

  [(_UIDocumentPickerDocumentCollectionViewController *)self _updateIconSpacing];
  [(_UIDocumentPickerDocumentCollectionViewController *)self _updateRowHeight];
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)dealloc
{
  [(_UIDocumentPickerDocumentCollectionViewController *)self setMonitoring:0];
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerDocumentCollectionViewController;
  [(_UIDocumentPickerDocumentCollectionViewController *)&v3 dealloc];
}

- (void)containersChangedWithSnapshot:(id)snapshot differences:(id)differences
{
  snapshotCopy = snapshot;
  differencesCopy = differences;
  initialActivityView = [(_UIDocumentPickerDocumentCollectionViewController *)self initialActivityView];
  [initialActivityView stopAnimating];

  if ([differencesCopy count])
  {
    v9 = [differencesCopy objectForKey:*MEMORY[0x277D77358]];
    if ([v9 count])
    {
      v10 = 0;
    }

    else
    {
      v11 = [differencesCopy objectForKey:*MEMORY[0x277D77350]];
      if ([v11 count])
      {
        v10 = 0;
      }

      else
      {
        v12 = [differencesCopy objectForKey:*MEMORY[0x277D77368]];
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
  v13 = differencesCopy;
  v22 = v13;
  selfCopy = self;
  v14 = MEMORY[0x245D41DF0](v21);
  if (v10)
  {
    [(_UIDocumentPickerDocumentCollectionViewController *)self setModelObjects:snapshotCopy];
    v14[2](v14);
  }

  else if ([v13 count] && self->_updatesMayAnimate)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __95___UIDocumentPickerDocumentCollectionViewController_containersChangedWithSnapshot_differences___block_invoke_2;
    v18[3] = &unk_278DD64E0;
    v18[4] = self;
    v19 = snapshotCopy;
    v20 = v13;
    v15 = MEMORY[0x245D41DF0](v18);
    collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
    [collectionView performBatchUpdates:v15 completion:0];

    v14[2](v14);
  }

  else
  {
    [(_UIDocumentPickerDocumentCollectionViewController *)self setModelObjects:snapshotCopy];
    collectionView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
    [collectionView2 reloadData];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  [(_UIDocumentPickerDocumentCollectionViewController *)self setMonitoring:controller != 0];
  model = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
  modelObjects = [model modelObjects];
  [(_UIDocumentPickerDocumentCollectionViewController *)self setModelObjects:modelObjects];

  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)setMonitoring:(BOOL)monitoring
{
  if (self->_monitoring != monitoring)
  {
    monitoringCopy = monitoring;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    model = defaultCenter;
    if (monitoringCopy)
    {
      [defaultCenter addObserver:self selector:sel_modelChanged_ name:@"_UIDocumentPickerModelUpdatedNotification" object:self->_model];

      model = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
      [model startMonitoringChanges];
    }

    else
    {
      [defaultCenter removeObserver:self name:@"_UIDocumentPickerModelUpdatedNotification" object:self->_model];
    }

    self->_monitoring = monitoringCopy;
  }
}

- (void)modelChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v14 = [userInfo objectForKey:@"model"];

  userInfo2 = [changedCopy userInfo];

  v7 = [userInfo2 objectForKey:@"changes"];

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

  serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    [serviceViewController2 itemsOrSelectionDidChange:v9];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerDocumentCollectionViewController;
  [(_UIDocumentPickerDocumentCollectionViewController *)&v3 viewWillLayoutSubviews];
  [(_UIDocumentPickerDocumentCollectionViewController *)self _updateIconSpacing];
}

- (void)setDisplayMode:(int64_t)mode
{
  if (self->_displayMode == mode)
  {
    return;
  }

  self->_displayMode = mode;
  if (mode == 1)
  {
    gridLayout = [(_UIDocumentPickerDocumentCollectionViewController *)self gridLayout];
    [gridLayout setCellStyle:1];
    [(_UIDocumentPickerDocumentCollectionViewController *)self _updateIconSpacing];
  }

  else
  {
    if (mode == 3)
    {
      tableLayout = [(_UIDocumentPickerDocumentCollectionViewController *)self tableLayout];
      gridLayout = tableLayout;
      v6 = 3;
    }

    else
    {
      if (mode != 2)
      {
        gridLayout = 0;
        goto LABEL_10;
      }

      tableLayout = [(_UIDocumentPickerDocumentCollectionViewController *)self tableLayout];
      gridLayout = tableLayout;
      v6 = 2;
    }

    [tableLayout setCellStyle:v6];
    [(_UIDocumentPickerDocumentCollectionViewController *)self _updateRowHeight];
  }

LABEL_10:
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [collectionView setCollectionViewLayout:gridLayout animated:1];
}

- (void)setContentSizeAdjustment:(double)adjustment
{
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [collectionView setContentSizeAdjustment:adjustment];

  collectionViewLayout = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout setContentSizeAdjustment:adjustment];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(_UIDocumentPickerDocumentCollectionViewController *)self modelObjects:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"_UIDocumentPickerDocumentCellIdentifier" forIndexPath:pathCopy];
  actions = [(_UIDocumentPickerDocumentCollectionViewController *)self actions];

  if (!actions)
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

  actions2 = [v7 actions];

  if (!actions2)
  {
    actions3 = [(_UIDocumentPickerDocumentCollectionViewController *)self actions];
    [v7 setActions:actions3];
  }

  [v7 setCollectionView:self];
  modelObjects = [(_UIDocumentPickerDocumentCollectionViewController *)self modelObjects];
  v28 = [pathCopy row];

  v29 = [modelObjects objectAtIndex:v28];

  [v7 setItem:v29];

  return v7;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  isEditing = [cellCopy isEditing];
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  isEditing2 = [collectionView isEditing];

  collectionView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [cellCopy setEditing:{objc_msgSend(collectionView2, "isEditing")}];

  if (isEditing == isEditing2)
  {
    [cellCopy updateForEditingState:0];
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  modelObjects = [(_UIDocumentPickerDocumentCollectionViewController *)self modelObjects];
  v7 = [pathCopy row];

  v8 = [modelObjects objectAtIndex:v7];

  serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v11 = [serviceViewController2 shouldHighlightItem:v8];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v11 = [collectionView cellForItemAtIndexPath:pathCopy];

  item = [v11 item];
  serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    [serviceViewController2 didHighlightItem:item];
  }
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v11 = [collectionView cellForItemAtIndexPath:pathCopy];

  item = [v11 item];
  serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    [serviceViewController2 didUnhighlightItem:item];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  modelObjects = [(_UIDocumentPickerDocumentCollectionViewController *)self modelObjects];
  v7 = [pathCopy row];

  v8 = [modelObjects objectAtIndex:v7];

  firstResponder = [(_UIDocumentPickerDocumentCollectionViewController *)self firstResponder];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  if (v7)
  {
    firstResponder2 = [(_UIDocumentPickerDocumentCollectionViewController *)self firstResponder];
    [firstResponder2 endEditing:0];
  }

  if ([v8 pickable])
  {
    serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
      v14 = [serviceViewController2 shouldSelectItem:v8];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  item = [v8 item];
  isEditing = [(_UIDocumentPickerDocumentCollectionViewController *)self isEditing];
  serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v12 = serviceViewController;
  if (isEditing)
  {
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
      [serviceViewController2 itemsOrSelectionDidChange:1];
    }
  }

  else
  {
    [serviceViewController didSelectItem:item];

    [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  }

  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  [mEMORY[0x277D75718] setMenuVisible:0];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  if ([(_UIDocumentPickerDocumentCollectionViewController *)self isEditing:view])
  {
    serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
      [serviceViewController2 itemsOrSelectionDidChange:1];
    }
  }
}

- (BOOL)supportsActions
{
  serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  if (objc_opt_respondsToSelector())
  {
    serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(_UIDocumentPickerDocumentCollectionViewController *)self displayMode]!= 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)collectionView:(id)view tableLayout:(id)layout accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  [(_UIDocumentPickerDocumentCollectionViewController *)self performAction:2 forRow:pathCopy view:v8];
}

- (void)performAction:(int64_t)action forRow:(id)row view:(id)view
{
  viewCopy = view;
  rowCopy = row;
  model = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
  modelObjects = [model modelObjects];
  v12 = [rowCopy row];

  v13 = [modelObjects objectAtIndex:v12];

  serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79___UIDocumentPickerDocumentCollectionViewController_performAction_forRow_view___block_invoke;
  v15[3] = &unk_278DD61B0;
  v15[4] = self;
  [serviceViewController performAction:action item:v13 view:viewCopy completion:v15];
}

- (void)_showMoreOptionsForRow:(id)row view:(id)view
{
  rowCopy = row;
  viewCopy = view;
  model = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
  modelObjects = [model modelObjects];
  v10 = [modelObjects objectAtIndex:{objc_msgSend(rowCopy, "row")}];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  popoverPresentationController = [v11 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [viewCopy bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  popoverPresentationController2 = [v11 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v14, v16, v18, v20}];

  v22 = [v10 isActionApplicableForItem:3];
  v23 = [v10 isActionApplicableForItem:4];
  v24 = [v10 isActionApplicableForItem:5];
  v25 = &off_243855000;
  if (v22)
  {
    serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v27 = [serviceViewController shouldShowAction:3];

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
      v56 = rowCopy;
      v57 = viewCopy;
      v31 = [v28 actionWithTitle:v30 style:0 handler:v55];
      [v11 addAction:v31];

      v25 = &off_243855000;
    }
  }

  if (v23)
  {
    serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v33 = [serviceViewController2 shouldShowAction:4];

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
      v53 = rowCopy;
      v54 = viewCopy;
      v37 = [v34 actionWithTitle:v36 style:0 handler:v52];
      [v11 addAction:v37];
    }
  }

  if (v24)
  {
    serviceViewController3 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v39 = [serviceViewController3 shouldShowAction:5];

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
      v50 = rowCopy;
      v51 = viewCopy;
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

- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsForRowAtIndexPath:(id)path
{
  viewCopy = view;
  layoutCopy = layout;
  pathCopy = path;
  if (![(_UIDocumentPickerDocumentCollectionViewController *)self supportsActions])
  {
    array = 0;
    goto LABEL_18;
  }

  model = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
  modelObjects = [model modelObjects];
  v13 = [modelObjects objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__2;
  v45[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v46 = selfCopy;
  array = [MEMORY[0x277CBEB18] array];
  serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)selfCopy serviceViewController];
  if ([serviceViewController shouldShowAction:1])
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
      v44[4] = pathCopy;
      v22 = [v18 actionWithStyle:0 title:v20 handler:v44];

      [v22 setResetsSwipedRow:0];
      [array addObject:v22];
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
  serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)selfCopy serviceViewController];
  if ([serviceViewController2 shouldShowAction:3] & v23)
  {
    goto LABEL_10;
  }

  serviceViewController3 = [(_UIDocumentPickerDocumentCollectionViewController *)selfCopy serviceViewController];
  if (([serviceViewController3 shouldShowAction:4] & v24) == 1)
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
    v43[4] = pathCopy;
    v22 = [v28 actionWithStyle:0 title:v30 handler:v43];

    [v22 setResetsSwipedRow:0];
    [array addObject:v22];
    goto LABEL_12;
  }

  serviceViewController4 = [(_UIDocumentPickerDocumentCollectionViewController *)selfCopy serviceViewController];
  v39 = [serviceViewController4 shouldShowAction:5] & v25;

  if (v39)
  {
    goto LABEL_11;
  }

LABEL_13:
  serviceViewController5 = [(_UIDocumentPickerDocumentCollectionViewController *)selfCopy serviceViewController];
  if (![serviceViewController5 shouldShowAction:0])
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
    v41 = pathCopy;
    v36 = [v33 actionWithStyle:1 title:v35 handler:v40];

    [v36 setResetsSwipedRow:0];
    [array addObject:v36];

    serviceViewController5 = v41;
    goto LABEL_16;
  }

LABEL_17:
  _Block_object_dispose(v45, 8);

LABEL_18:

  return array;
}

- (int64_t)collectionView:(id)view tableLayout:(id)layout indentationLevelForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([layout cellStyle] == 3)
  {
    model = [(_UIDocumentPickerDocumentCollectionViewController *)self model];
    modelObjects = [model modelObjects];
    v10 = [modelObjects objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    indentationLevel = [v10 indentationLevel];
  }

  else
  {
    indentationLevel = 0;
  }

  return indentationLevel;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(_UIDocumentPickerDocumentCollectionViewController *)self isEditing]!= editing)
  {
    firstResponder = [(_UIDocumentPickerDocumentCollectionViewController *)self firstResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      firstResponder2 = [(_UIDocumentPickerDocumentCollectionViewController *)self firstResponder];
      [firstResponder2 endEditing:0];
    }

    v10.receiver = self;
    v10.super_class = _UIDocumentPickerDocumentCollectionViewController;
    [(_UIDocumentPickerDocumentCollectionViewController *)&v10 setEditing:editingCopy animated:animatedCopy];
  }
}

- (NSArray)indexPathsForSelectedItems
{
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  return indexPathsForSelectedItems;
}

- (void)setIndexPathsForSelectedItems:(id)items
{
  v16 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
        [collectionView selectItemAtIndexPath:v9 animated:0 scrollPosition:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setSortView:(id)view
{
  v23[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  sortView = self->_sortView;
  if (sortView != viewCopy)
  {
    [(_UIDocumentPickerSortOrderView *)sortView removeFromSuperview];
    objc_storeStrong(&self->_sortView, view);
    [(_UIDocumentPickerDocumentCollectionViewController *)self updateContentInset];
    if (viewCopy)
    {
      scrollView = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
      [scrollView addSubview:viewCopy];

      [(_UIDocumentPickerSortOrderView *)viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = MEMORY[0x277CCAAD0];
      scrollView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
      widthAnchor = [scrollView2 widthAnchor];
      widthAnchor2 = [(_UIDocumentPickerSortOrderView *)viewCopy widthAnchor];
      v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v23[0] = v19;
      scrollView3 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
      leftAnchor = [scrollView3 leftAnchor];
      leftAnchor2 = [(_UIDocumentPickerSortOrderView *)viewCopy leftAnchor];
      v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v23[1] = v10;
      scrollView4 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
      topAnchor = [scrollView4 topAnchor];
      topAnchor2 = [(_UIDocumentPickerSortOrderView *)viewCopy topAnchor];
      [(_UIDocumentPickerSortOrderView *)self->_sortView frame];
      v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v14];
      v23[2] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
      [v17 activateConstraints:v16];

      [(_UIDocumentPickerDocumentCollectionViewController *)self setShouldHideSortBar:1];
      [(_UIDocumentPickerSortOrderView *)viewCopy setListMode:[(_UIDocumentPickerDocumentCollectionViewController *)self displayMode]];
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
    scrollView = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [scrollView setScrollIndicatorInsets:{v8, 0.0, 0.0, 0.0}];
  }

  scrollView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [scrollView2 setContentInset:{v5, 0.0, 0.0, 0.0}];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController = [(_UIDocumentPickerDocumentCollectionViewController *)self navigationController];
    [navigationController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UIDocumentPickerDocumentCollectionViewController;
    [(_UIDocumentPickerDocumentCollectionViewController *)&v11 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)willPresentSearchController:(id)controller
{
  scrollView = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [scrollView setContentInset:{0.0, 0.0, 0.0, 0.0}];
}

- (void)willDismissSearchController:(id)controller
{
  [(_UIDocumentPickerDocumentCollectionViewController *)self updateContentInset];

  [(_UIDocumentPickerDocumentCollectionViewController *)self ensureSortViewInvisible];
}

- (void)setPinnedHeaderView:(id)view animated:(BOOL)animated
{
  viewCopy = view;
  pinnedHeaderView = self->_pinnedHeaderView;
  if (pinnedHeaderView != viewCopy)
  {
    v18 = viewCopy;
    v8 = pinnedHeaderView;
    [(UIView *)v8 removeFromSuperview];
    objc_storeStrong(&self->_pinnedHeaderView, view);
    scrollView = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [scrollView addSubview:v18];

    [(_UIDocumentPickerDocumentCollectionViewController *)self updateContentInset];
    [(_UIDocumentPickerDocumentCollectionViewController *)self updatePinnedHeader];
    scrollView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [scrollView2 contentOffset];
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

    scrollView3 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [scrollView3 setContentOffset:0 animated:{0.0, v14}];

    viewCopy = v18;
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  v8 = offset->y;
  [(UIView *)self->_pinnedHeaderView frame];
  v10 = v8 + v9;
  sortView = [(_UIDocumentPickerDocumentCollectionViewController *)self sortView];
  superview = [sortView superview];
  sortView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self sortView];
  [sortView2 frame];
  [superview convertRect:draggingCopy toView:?];
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
      [draggingCopy contentOffset];
      v25 = v28;
      [draggingCopy contentInset];
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

  [draggingCopy contentOffset];
  v25 = v24;
  [(UIView *)self->_pinnedHeaderView bounds];
  v27 = v26;
LABEL_25:
  offset->x = v25;
  offset->y = -v27;
LABEL_26:
}

- (void)updatePinnedHeader
{
  scrollView = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  pinnedHeaderView = self->_pinnedHeaderView;

  [(UIView *)pinnedHeaderView setFrame:v5, v7, v9, 44.0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerDocumentCollectionViewController;
  [(_UIDocumentPickerDocumentCollectionViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(_UIDocumentPickerDocumentCollectionViewController *)self setShouldHideSortBar:1];
  [(_UIDocumentPickerDocumentCollectionViewController *)self updateContentInset];
  scrollView = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [scrollView setNeedsLayout];

  navigationController = [(_UIDocumentPickerDocumentCollectionViewController *)self navigationController];
  view = [navigationController view];
  semanticContentAttribute = [view semanticContentAttribute];
  collectionView = [(_UIDocumentPickerDocumentCollectionViewController *)self collectionView];
  [collectionView setSemanticContentAttribute:semanticContentAttribute];

  v10.receiver = self;
  v10.super_class = _UIDocumentPickerDocumentCollectionViewController;
  [(_UIDocumentPickerDocumentCollectionViewController *)&v10 viewWillAppear:appearCopy];
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
  scrollView = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [scrollView contentOffset];
  v5 = v4;
  [(UIView *)self->_pinnedHeaderView bounds];
  v7 = -v6;

  if (v5 < v7)
  {
    scrollView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
    [(UIView *)self->_pinnedHeaderView bounds];
    [scrollView2 setContentOffset:0 animated:{0.0, -v8}];
  }
}

- (void)scrollSortViewToVisible
{
  [(_UIDocumentPickerDocumentCollectionViewController *)self setShouldHideSortBar:0];
  scrollView = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  scrollView2 = [(_UIDocumentPickerDocumentCollectionViewController *)self scrollView];
  [scrollView2 contentInset];
  [scrollView setContentOffset:0 animated:{0.0, -v4}];
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  v5 = [(_UIDocumentPickerDocumentCollectionViewController *)self itemForLocation:context, location.x, location.y];
  if (v5 && ([(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0))
  {
    serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    v9 = [serviceViewController previewViewControllerForItem:v5];

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

- (id)previewActionItemsForItem:(id)item
{
  itemCopy = item;
  array = [MEMORY[0x277CBEB18] array];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79___UIDocumentPickerDocumentCollectionViewController_previewActionItemsForItem___block_invoke;
  v19[3] = &unk_278DD6A80;
  v19[4] = self;
  v20 = itemCopy;
  v6 = array;
  v21 = v6;
  v7 = itemCopy;
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

- (void)previewingContext:(id)context commitViewController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  serviceViewController = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
  v8 = [serviceViewController shouldShowAction:6];

  if (v8)
  {
    navigationController = objc_getAssociatedObject(controllerCopy, &viewControllerItemKey);
    serviceViewController2 = [(_UIDocumentPickerDocumentCollectionViewController *)self serviceViewController];
    sourceView = [contextCopy sourceView];
    [serviceViewController2 performAction:6 item:navigationController view:sourceView completion:&__block_literal_global_9];
  }

  else
  {
    navigationController = [(_UIDocumentPickerDocumentCollectionViewController *)self navigationController];
    [navigationController pushViewController:controllerCopy animated:1];
  }

  objc_setAssociatedObject(controllerCopy, &viewControllerItemKey, 0, 0x301);
}

- (_UIDocumentPickerServiceViewController)serviceViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceViewController);

  return WeakRetained;
}

@end