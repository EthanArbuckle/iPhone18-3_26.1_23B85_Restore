@interface SFPopoverSizingTableViewController
+ (UITableViewCell)tableViewCellForSizeEstimation;
+ (double)bottomContentPadding;
+ (double)caculateHeightForTableView:(id)view targetGlobalRow:(int64_t)row outGlobalRow:(int64_t *)globalRow;
+ (void)initialize;
- (BOOL)_needsTranslucentAppearanceUpdate;
- (BOOL)hasTranslucentAppearance;
- (CGSize)preferredContentSize;
- (id)_backgroundBlurEffect;
- (id)_platterPresentationController;
- (id)backgroundColorUsingTranslucentAppearance:(BOOL)appearance;
- (void)_updateTranslucentAppearanceIfNeeded;
- (void)didMoveToParentViewController:(id)controller;
- (void)updatePreferredContentSize;
- (void)updateTranslucentAppearance;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SFPopoverSizingTableViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v3 = estimatedRowHeightCache;
    estimatedRowHeightCache = strongToStrongObjectsMapTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *MEMORY[0x1E69DDC48];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v6 = [defaultCenter addObserverForName:v4 object:0 queue:mainQueue usingBlock:&__block_literal_global_51];
    v7 = estimatedRowHeightCacheInvalidationToken;
    estimatedRowHeightCacheInvalidationToken = v6;
  }
}

+ (double)bottomContentPadding
{
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = 12.0;
  if (isSolariumEnabled)
  {
    return 16.0;
  }

  return result;
}

+ (UITableViewCell)tableViewCellForSizeEstimation
{
  v2 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  textLabel = [v2 textLabel];
  [textLabel setText:@"A"];

  return v2;
}

+ (double)caculateHeightForTableView:(id)view targetGlobalRow:(int64_t)row outGlobalRow:(int64_t *)globalRow
{
  viewCopy = view;
  numberOfSections = [viewCopy numberOfSections];
  if ([viewCopy style])
  {
    MaxY = 0.0;
    if (numberOfSections >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v10 += [viewCopy numberOfRowsInSection:v11++];
      }

      while (v10 <= row && v11 < numberOfSections);
      if (v10)
      {
        if (v10 - 1 >= row)
        {
          rowCopy = row;
        }

        else
        {
          rowCopy = v10 - 1;
        }

        if (globalRow)
        {
          *globalRow = rowCopy;
        }

        if (v10 - 1 <= row)
        {
          if (numberOfSections == v11)
          {
            [viewCopy _contentSize];
            MaxY = v24;
          }

          else
          {
            [viewCopy rectForFooterInSection:v11 - 1];
            MaxY = CGRectGetMaxY(v35) + 20.0;
          }
        }

        else
        {
          v14 = [viewCopy indexPathForRowAtGlobalRow:rowCopy];
          [viewCopy rectForRowAtIndexPath:v14];
          MaxY = CGRectGetMaxY(v30);
        }
      }
    }
  }

  else if (row == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (globalRow)
    {
      if ([viewCopy numberOfSections] < 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v15 += [viewCopy numberOfRowsInSection:v16++];
        }

        while (v16 < [viewCopy numberOfSections]);
      }

      *globalRow = v15;
    }

    [viewCopy contentSize];
    v27 = v26;
    [objc_opt_class() bottomContentPadding];
    MaxY = v27 + v28;
  }

  else if ([viewCopy numberOfSections] < 1)
  {
    v17 = 0;
    MaxY = 0.0;
LABEL_40:
    if (globalRow)
    {
      *globalRow = v17;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    MaxY = 0.0;
    while (1)
    {
      [viewCopy rectForHeaderInSection:v18];
      Height = CGRectGetHeight(v31);
      if (Height > 0.0)
      {
        MaxY = MaxY + Height + 22.0;
      }

      [viewCopy rectForFooterInSection:v18];
      MaxY = CGRectGetHeight(v32) + MaxY;
      v20 = [viewCopy numberOfRowsInSection:v18];
      if (v20 >= 1)
      {
        break;
      }

LABEL_30:
      if (++v18 >= [viewCopy numberOfSections])
      {
        goto LABEL_40;
      }
    }

    v21 = v20;
    v22 = 0;
    while (1)
    {
      v23 = [MEMORY[0x1E696AC88] indexPathForRow:v22 inSection:v18];
      [viewCopy rectForRowAtIndexPath:v23];
      MaxY = MaxY + CGRectGetHeight(v33);
      if (row - 1 == v17)
      {
        break;
      }

      ++v22;
      ++v17;
      if (v21 == v22)
      {
        goto LABEL_30;
      }
    }

    if (v22 + 1 < v21)
    {
      v25 = [MEMORY[0x1E696AC88] indexPathForRow:? inSection:?];
      [viewCopy rectForRowAtIndexPath:v25];
      MaxY = MaxY + CGRectGetHeight(v34) * 0.5;
    }

    if (globalRow)
    {
      *globalRow = row;
    }
  }

  return MaxY;
}

- (CGSize)preferredContentSize
{
  maximumNumberOfRows = [(SFPopoverSizingTableViewController *)self maximumNumberOfRows];
  minimumNumberOfRows = maximumNumberOfRows;
  if (maximumNumberOfRows >= [(SFPopoverSizingTableViewController *)self minimumNumberOfRows])
  {
    minimumNumberOfRows = [(SFPopoverSizingTableViewController *)self minimumNumberOfRows];
  }

  tableView = [(SFPopoverSizingTableViewController *)self tableView];
  v18 = -1;
  [SFPopoverSizingTableViewController caculateHeightForTableView:tableView targetGlobalRow:maximumNumberOfRows outGlobalRow:&v18];
  v7 = v6;
  v8 = minimumNumberOfRows - v18;
  if (minimumNumberOfRows > v18)
  {
    v9 = objc_opt_class();
    v10 = [estimatedRowHeightCache objectForKey:v9];
    if (!v10)
    {
      tableViewCellForSizeEstimation = [v9 tableViewCellForSizeEstimation];
      v12 = MEMORY[0x1E696AD98];
      [tableViewCellForSizeEstimation systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
      v10 = [v12 numberWithDouble:v13];
      [estimatedRowHeightCache setObject:v10 forKey:v9];
    }

    [v10 doubleValue];
    v15 = v14;

    v7 = v7 + v15 * v8;
  }

  if (![tableView style])
  {
    v7 = v7 - _SFOnePixel();
  }

  v16 = 0.0;
  v17 = v7;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)updatePreferredContentSize
{
  [(SFPopoverSizingTableViewController *)self preferredContentSize];
  [(SFPopoverSizingTableViewController *)self setPreferredContentSize:?];
  _platterPresentationController = [(SFPopoverSizingTableViewController *)self _platterPresentationController];
  if (_platterPresentationController)
  {
    v6 = _platterPresentationController;
    [_platterPresentationController preferredPresentedViewContentSize];
    v5 = v4;
    [(SFPopoverSizingTableViewController *)self preferredContentSize];
    [v6 setPreferredPresentedViewContentSize:v5];
    _platterPresentationController = v6;
  }
}

- (id)_platterPresentationController
{
  presentingViewController = [(SFPopoverSizingTableViewController *)self presentingViewController];

  if (presentingViewController)
  {
    parentViewController = [(SFPopoverSizingTableViewController *)self parentViewController];
    presentationController = [parentViewController presentationController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = presentationController;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)viewDidLoad
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v5 viewDidLoad];
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [(SFPopoverSizingTableViewController *)self registerForTraitChanges:v3 withTarget:self action:sel_setNeedsUpdatePreferredContentSize];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v4 viewWillAppear:appear];
  [(SFPopoverSizingTableViewController *)self _updateTranslucentAppearanceIfNeeded];
  [(SFPopoverSizingTableViewController *)self updatePreferredContentSize];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v4 viewDidAppear:appear];
  [(SFPopoverSizingTableViewController *)self _updateTranslucentAppearanceIfNeeded];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = SFPopoverSizingTableViewController;
  coordinatorCopy = coordinator;
  [(SFPopoverSizingTableViewController *)&v8 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinatorCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__SFPopoverSizingTableViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_1E721EA18;
  v7[4] = self;
  [coordinatorCopy animateAlongsideTransition:v7 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SFPopoverSizingTableViewController;
  coordinatorCopy = coordinator;
  [(SFPopoverSizingTableViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__SFPopoverSizingTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E721EA18;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)willMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v7 willMoveToParentViewController:?];
  _isInPopoverPresentation = [(SFPopoverSizingTableViewController *)self _isInPopoverPresentation];
  if (controller)
  {
    if (_isInPopoverPresentation)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__SFPopoverSizingTableViewController_willMoveToParentViewController___block_invoke;
      block[3] = &unk_1E721B360;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v5 didMoveToParentViewController:?];
  if (controller)
  {
    [(SFPopoverSizingTableViewController *)self updatePreferredContentSize];
  }
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v12 viewDidLayoutSubviews];
  if (self->_updatePreferredContentSizeAfterNextLayout)
  {
    self->_updatePreferredContentSizeAfterNextLayout = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__SFPopoverSizingTableViewController_viewDidLayoutSubviews__block_invoke;
    v11[3] = &unk_1E721B360;
    v11[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
  }

  else
  {
    tableView = [(SFPopoverSizingTableViewController *)self tableView];
    [tableView contentSize];
    v5 = v4;
    v7 = v6;

    if (self->_lastLayoutContentSize.width != v5 || self->_lastLayoutContentSize.height != v7)
    {
      self->_lastLayoutContentSize.width = v5;
      self->_lastLayoutContentSize.height = v7;
      v9 = *MEMORY[0x1E69DDA98];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __59__SFPopoverSizingTableViewController_viewDidLayoutSubviews__block_invoke_2;
      v10[3] = &unk_1E721B360;
      v10[4] = self;
      [v9 _performBlockAfterCATransactionCommits:v10];
    }
  }
}

- (void)_updateTranslucentAppearanceIfNeeded
{
  if ([(SFPopoverSizingTableViewController *)self _needsTranslucentAppearanceUpdate])
  {

    [(SFPopoverSizingTableViewController *)self updateTranslucentAppearance];
  }
}

- (BOOL)_needsTranslucentAppearanceUpdate
{
  if (!self->_didUpdateTranslucentAppearanceAtLeastOnce)
  {
    return 1;
  }

  didHaveTranslucentAppearance = self->_didHaveTranslucentAppearance;
  if (didHaveTranslucentAppearance != [(SFPopoverSizingTableViewController *)self hasTranslucentAppearance])
  {
    return 1;
  }

  _backgroundBlurEffect = [(SFPopoverSizingTableViewController *)self _backgroundBlurEffect];
  v5 = _backgroundBlurEffect;
  v6 = _backgroundBlurEffect != self->_backgroundBlurEffect && ![(UIBlurEffect *)_backgroundBlurEffect isEqual:?];

  return v6;
}

- (BOOL)hasTranslucentAppearance
{
  if ([(UIViewController *)self safari_isPresentedByActivityViewController])
  {
    return 0;
  }

  v3 = 1;
  if (([(SFPopoverSizingTableViewController *)self _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1]& 1) != 0)
  {
    return v3;
  }

  return [(SFPopoverSizingTableViewController *)self _isInPopoverPresentation];
}

- (void)updateTranslucentAppearance
{
  self->_didUpdateTranslucentAppearanceAtLeastOnce = 1;
  tableView = [(SFPopoverSizingTableViewController *)self tableView];
  hasTranslucentAppearance = [(SFPopoverSizingTableViewController *)self hasTranslucentAppearance];
  self->_didHaveTranslucentAppearance = hasTranslucentAppearance;
  v4 = [(SFPopoverSizingTableViewController *)self backgroundColorUsingTranslucentAppearance:hasTranslucentAppearance];
  [tableView setBackgroundColor:v4];

  _backgroundBlurEffect = [(SFPopoverSizingTableViewController *)self _backgroundBlurEffect];
  backgroundBlurEffect = self->_backgroundBlurEffect;
  self->_backgroundBlurEffect = _backgroundBlurEffect;

  if (self->_backgroundBlurEffect)
  {
    v7 = [MEMORY[0x1E69DD248] effectForBlurEffect:?];
    [tableView setSeparatorEffect:v7];
  }

  else
  {
    [tableView setSeparatorEffect:?];
  }

  [tableView reloadData];
}

- (id)_backgroundBlurEffect
{
  traitCollection = [(SFPopoverSizingTableViewController *)self traitCollection];
  sf_backgroundBlurEffect = [traitCollection sf_backgroundBlurEffect];

  if (sf_backgroundBlurEffect)
  {
    _sf_defaultPopoverBackgroundEffect = sf_backgroundBlurEffect;
LABEL_3:
    v6 = _sf_defaultPopoverBackgroundEffect;
    goto LABEL_9;
  }

  tableView = [(SFPopoverSizingTableViewController *)self tableView];
  if ([tableView style])
  {
  }

  else
  {
    hasTranslucentAppearance = [(SFPopoverSizingTableViewController *)self hasTranslucentAppearance];

    if (hasTranslucentAppearance)
    {
      _sf_defaultPopoverBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultPopoverBackgroundEffect];
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)backgroundColorUsingTranslucentAppearance:(BOOL)appearance
{
  if (appearance)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tableBackgroundColor];
  }
  v3 = ;

  return v3;
}

@end