@interface SFPopoverSizingTableViewController
+ (UITableViewCell)tableViewCellForSizeEstimation;
+ (double)bottomContentPadding;
+ (double)caculateHeightForTableView:(id)a3 targetGlobalRow:(int64_t)a4 outGlobalRow:(int64_t *)a5;
+ (void)initialize;
- (BOOL)_needsTranslucentAppearanceUpdate;
- (BOOL)hasTranslucentAppearance;
- (CGSize)preferredContentSize;
- (id)_backgroundBlurEffect;
- (id)_platterPresentationController;
- (id)backgroundColorUsingTranslucentAppearance:(BOOL)a3;
- (void)_updateTranslucentAppearanceIfNeeded;
- (void)didMoveToParentViewController:(id)a3;
- (void)updatePreferredContentSize;
- (void)updateTranslucentAppearance;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SFPopoverSizingTableViewController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v3 = estimatedRowHeightCache;
    estimatedRowHeightCache = v2;

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *MEMORY[0x1E69DDC48];
    v5 = [MEMORY[0x1E696ADC8] mainQueue];
    v6 = [v8 addObserverForName:v4 object:0 queue:v5 usingBlock:&__block_literal_global_51];
    v7 = estimatedRowHeightCacheInvalidationToken;
    estimatedRowHeightCacheInvalidationToken = v6;
  }
}

+ (double)bottomContentPadding
{
  v2 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = 12.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

+ (UITableViewCell)tableViewCellForSizeEstimation
{
  v2 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  v3 = [v2 textLabel];
  [v3 setText:@"A"];

  return v2;
}

+ (double)caculateHeightForTableView:(id)a3 targetGlobalRow:(int64_t)a4 outGlobalRow:(int64_t *)a5
{
  v7 = a3;
  v8 = [v7 numberOfSections];
  if ([v7 style])
  {
    MaxY = 0.0;
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v10 += [v7 numberOfRowsInSection:v11++];
      }

      while (v10 <= a4 && v11 < v8);
      if (v10)
      {
        if (v10 - 1 >= a4)
        {
          v13 = a4;
        }

        else
        {
          v13 = v10 - 1;
        }

        if (a5)
        {
          *a5 = v13;
        }

        if (v10 - 1 <= a4)
        {
          if (v8 == v11)
          {
            [v7 _contentSize];
            MaxY = v24;
          }

          else
          {
            [v7 rectForFooterInSection:v11 - 1];
            MaxY = CGRectGetMaxY(v35) + 20.0;
          }
        }

        else
        {
          v14 = [v7 indexPathForRowAtGlobalRow:v13];
          [v7 rectForRowAtIndexPath:v14];
          MaxY = CGRectGetMaxY(v30);
        }
      }
    }
  }

  else if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      if ([v7 numberOfSections] < 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v15 += [v7 numberOfRowsInSection:v16++];
        }

        while (v16 < [v7 numberOfSections]);
      }

      *a5 = v15;
    }

    [v7 contentSize];
    v27 = v26;
    [objc_opt_class() bottomContentPadding];
    MaxY = v27 + v28;
  }

  else if ([v7 numberOfSections] < 1)
  {
    v17 = 0;
    MaxY = 0.0;
LABEL_40:
    if (a5)
    {
      *a5 = v17;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    MaxY = 0.0;
    while (1)
    {
      [v7 rectForHeaderInSection:v18];
      Height = CGRectGetHeight(v31);
      if (Height > 0.0)
      {
        MaxY = MaxY + Height + 22.0;
      }

      [v7 rectForFooterInSection:v18];
      MaxY = CGRectGetHeight(v32) + MaxY;
      v20 = [v7 numberOfRowsInSection:v18];
      if (v20 >= 1)
      {
        break;
      }

LABEL_30:
      if (++v18 >= [v7 numberOfSections])
      {
        goto LABEL_40;
      }
    }

    v21 = v20;
    v22 = 0;
    while (1)
    {
      v23 = [MEMORY[0x1E696AC88] indexPathForRow:v22 inSection:v18];
      [v7 rectForRowAtIndexPath:v23];
      MaxY = MaxY + CGRectGetHeight(v33);
      if (a4 - 1 == v17)
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
      [v7 rectForRowAtIndexPath:v25];
      MaxY = MaxY + CGRectGetHeight(v34) * 0.5;
    }

    if (a5)
    {
      *a5 = a4;
    }
  }

  return MaxY;
}

- (CGSize)preferredContentSize
{
  v3 = [(SFPopoverSizingTableViewController *)self maximumNumberOfRows];
  v4 = v3;
  if (v3 >= [(SFPopoverSizingTableViewController *)self minimumNumberOfRows])
  {
    v4 = [(SFPopoverSizingTableViewController *)self minimumNumberOfRows];
  }

  v5 = [(SFPopoverSizingTableViewController *)self tableView];
  v18 = -1;
  [SFPopoverSizingTableViewController caculateHeightForTableView:v5 targetGlobalRow:v3 outGlobalRow:&v18];
  v7 = v6;
  v8 = v4 - v18;
  if (v4 > v18)
  {
    v9 = objc_opt_class();
    v10 = [estimatedRowHeightCache objectForKey:v9];
    if (!v10)
    {
      v11 = [v9 tableViewCellForSizeEstimation];
      v12 = MEMORY[0x1E696AD98];
      [v11 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
      v10 = [v12 numberWithDouble:v13];
      [estimatedRowHeightCache setObject:v10 forKey:v9];
    }

    [v10 doubleValue];
    v15 = v14;

    v7 = v7 + v15 * v8;
  }

  if (![v5 style])
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
  v3 = [(SFPopoverSizingTableViewController *)self _platterPresentationController];
  if (v3)
  {
    v6 = v3;
    [v3 preferredPresentedViewContentSize];
    v5 = v4;
    [(SFPopoverSizingTableViewController *)self preferredContentSize];
    [v6 setPreferredPresentedViewContentSize:v5];
    v3 = v6;
  }
}

- (id)_platterPresentationController
{
  v3 = [(SFPopoverSizingTableViewController *)self presentingViewController];

  if (v3)
  {
    v4 = [(SFPopoverSizingTableViewController *)self parentViewController];
    v5 = [v4 presentationController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v4 viewWillAppear:a3];
  [(SFPopoverSizingTableViewController *)self _updateTranslucentAppearanceIfNeeded];
  [(SFPopoverSizingTableViewController *)self updatePreferredContentSize];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v4 viewDidAppear:a3];
  [(SFPopoverSizingTableViewController *)self _updateTranslucentAppearanceIfNeeded];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = SFPopoverSizingTableViewController;
  v6 = a4;
  [(SFPopoverSizingTableViewController *)&v8 willTransitionToTraitCollection:a3 withTransitionCoordinator:v6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__SFPopoverSizingTableViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_1E721EA18;
  v7[4] = self;
  [v6 animateAlongsideTransition:v7 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SFPopoverSizingTableViewController;
  v7 = a4;
  [(SFPopoverSizingTableViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__SFPopoverSizingTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E721EA18;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)willMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v7 willMoveToParentViewController:?];
  v5 = [(SFPopoverSizingTableViewController *)self _isInPopoverPresentation];
  if (a3)
  {
    if (v5)
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

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFPopoverSizingTableViewController;
  [(SFPopoverSizingTableViewController *)&v5 didMoveToParentViewController:?];
  if (a3)
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
    v3 = [(SFPopoverSizingTableViewController *)self tableView];
    [v3 contentSize];
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

  v4 = [(SFPopoverSizingTableViewController *)self _backgroundBlurEffect];
  v5 = v4;
  v6 = v4 != self->_backgroundBlurEffect && ![(UIBlurEffect *)v4 isEqual:?];

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
  v8 = [(SFPopoverSizingTableViewController *)self tableView];
  v3 = [(SFPopoverSizingTableViewController *)self hasTranslucentAppearance];
  self->_didHaveTranslucentAppearance = v3;
  v4 = [(SFPopoverSizingTableViewController *)self backgroundColorUsingTranslucentAppearance:v3];
  [v8 setBackgroundColor:v4];

  v5 = [(SFPopoverSizingTableViewController *)self _backgroundBlurEffect];
  backgroundBlurEffect = self->_backgroundBlurEffect;
  self->_backgroundBlurEffect = v5;

  if (self->_backgroundBlurEffect)
  {
    v7 = [MEMORY[0x1E69DD248] effectForBlurEffect:?];
    [v8 setSeparatorEffect:v7];
  }

  else
  {
    [v8 setSeparatorEffect:?];
  }

  [v8 reloadData];
}

- (id)_backgroundBlurEffect
{
  v3 = [(SFPopoverSizingTableViewController *)self traitCollection];
  v4 = [v3 sf_backgroundBlurEffect];

  if (v4)
  {
    v5 = v4;
LABEL_3:
    v6 = v5;
    goto LABEL_9;
  }

  v7 = [(SFPopoverSizingTableViewController *)self tableView];
  if ([v7 style])
  {
  }

  else
  {
    v8 = [(SFPopoverSizingTableViewController *)self hasTranslucentAppearance];

    if (v8)
    {
      v5 = [MEMORY[0x1E69DC730] _sf_defaultPopoverBackgroundEffect];
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)backgroundColorUsingTranslucentAppearance:(BOOL)a3
{
  if (a3)
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