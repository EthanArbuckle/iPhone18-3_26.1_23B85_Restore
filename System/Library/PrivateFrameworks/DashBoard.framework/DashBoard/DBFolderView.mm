@interface DBFolderView
+ (double)maximumPageControlHeightForInteractionAffordances:(unint64_t)affordances;
- (BOOL)_showsButtons;
- (DBEnvironment)environment;
- (DBFolderView)initWithConfiguration:(id)configuration;
- (UIEdgeInsets)_listViewVerticalInset;
- (UIEdgeInsets)listViewInsets;
- (double)_listViewSideInset;
- (double)internalDockPageControlHorizontalOffset;
- (double)internalDockPageControlVerticalMargin;
- (double)pageControlAreaHeight;
- (double)pageControlPlatterAlpha;
- (id)_newPageControl;
- (id)_pageControlBackgroundView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)pageControlOverrideUserInterfaceStyle;
- (void)_layoutSubviews;
- (void)_restartPageControlTimerWithTimeInterval:(double)interval;
- (void)_scrollButtonPressed:(id)pressed;
- (void)_updateIconListFrames;
- (void)_updatePageControlToIndex:(int64_t)index;
- (void)_updateScrollButtonStatesForIndex:(int64_t)index;
- (void)restartPageControlTimerIfNecessary;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setEnvironment:(id)environment;
- (void)setLeadingCustomViewVisibilityProgress:(double)progress;
- (void)setPageControlHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setPageControlPlatterAlpha:(double)alpha;
@end

@implementation DBFolderView

- (DBFolderView)initWithConfiguration:(id)configuration
{
  v38[4] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v37.receiver = self;
  v37.super_class = DBFolderView;
  v5 = [(SBRootFolderView *)&v37 initWithConfiguration:configurationCopy];
  v6 = v5;
  if (v5)
  {
    scalingView = [(SBFolderView *)v5 scalingView];
    v8 = [DBScrollButton buttonWithDirection:0];
    scrollLeftButton = v6->_scrollLeftButton;
    v6->_scrollLeftButton = v8;

    [(DBScrollButton *)v6->_scrollLeftButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBScrollButton *)v6->_scrollLeftButton addTarget:v6 action:sel__scrollButtonPressed_ forControlEvents:64];
    [scalingView addSubview:v6->_scrollLeftButton];
    v10 = [DBScrollButton buttonWithDirection:1];
    scrollRightButton = v6->_scrollRightButton;
    v6->_scrollRightButton = v10;

    [(DBScrollButton *)v6->_scrollRightButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBScrollButton *)v6->_scrollRightButton addTarget:v6 action:sel__scrollButtonPressed_ forControlEvents:64];
    [scalingView addSubview:v6->_scrollRightButton];
    [(DBScrollButton *)v6->_scrollLeftButton setHidden:1];
    [(DBScrollButton *)v6->_scrollRightButton setHidden:1];
    todayViewController = [configurationCopy todayViewController];

    if (todayViewController)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 1.0;
    }

    scrollLeftButton = [(DBFolderView *)v6 scrollLeftButton];
    [scrollLeftButton setAlpha:v13];

    scrollRightButton = [(DBFolderView *)v6 scrollRightButton];
    [scrollRightButton setAlpha:v13];

    leadingAnchor = [(DBScrollButton *)v6->_scrollLeftButton leadingAnchor];
    leadingAnchor2 = [scalingView leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    leadingScrollArrowLeadingConstraint = v6->_leadingScrollArrowLeadingConstraint;
    v6->_leadingScrollArrowLeadingConstraint = v18;

    trailingAnchor = [(DBScrollButton *)v6->_scrollRightButton trailingAnchor];
    trailingAnchor2 = [scalingView trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    trailingScrollArrowTrailingConstraint = v6->_trailingScrollArrowTrailingConstraint;
    v6->_trailingScrollArrowTrailingConstraint = v22;

    v24 = MEMORY[0x277CCAAD0];
    v38[0] = v6->_leadingScrollArrowLeadingConstraint;
    v38[1] = v6->_trailingScrollArrowTrailingConstraint;
    bottomAnchor = [(DBScrollButton *)v6->_scrollLeftButton bottomAnchor];
    v36 = scalingView;
    bottomAnchor2 = [scalingView bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.5];
    v38[2] = v27;
    bottomAnchor3 = [(DBScrollButton *)v6->_scrollRightButton bottomAnchor];
    bottomAnchor4 = [scalingView bottomAnchor];
    v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.5];
    v38[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v24 activateConstraints:v31];

    pageControl = [(SBFolderView *)v6 pageControl];
    v33 = [MEMORY[0x277D75210] effectWithStyle:7];
    [pageControl _setPlatterEffect:v33];

    pageControl2 = [(SBFolderView *)v6 pageControl];
    [pageControl2 setBackgroundStyle:1];
  }

  return v6;
}

+ (double)maximumPageControlHeightForInteractionAffordances:(unint64_t)affordances
{
  if ((affordances & 2) == 0)
  {
    return 15.0;
  }

  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:3];
  v6 = [v4 systemImageNamed:@"chevron.forward" compatibleWithTraitCollection:v5];

  [v6 size];
  [v6 size];
  v3 = v7 + 28.0;

  return v3;
}

- (void)setEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_storeWeak(&self->_environment, environmentCopy);
  environmentConfiguration = [environmentCopy environmentConfiguration];

  interactionAffordances = [environmentConfiguration interactionAffordances];
  v7 = interactionAffordances & 2;
  if (self->_buttonUXEnabled != v7 >> 1)
  {
    self->_buttonUXEnabled = (interactionAffordances & 2) >> 1;
    [(DBScrollButton *)self->_scrollLeftButton setHidden:v7 == 0];
    [(DBScrollButton *)self->_scrollRightButton setHidden:v7 == 0];
    [(SBRootFolderView *)self setNeedsLayout];
  }

  pageControl = [(SBFolderView *)self pageControl];
  [pageControl setShowsButtons:v7 != 0];
}

- (void)setPageControlPlatterAlpha:(double)alpha
{
  _pageControlBackgroundView = [(DBFolderView *)self _pageControlBackgroundView];
  [_pageControlBackgroundView setAlpha:alpha];
}

- (double)pageControlPlatterAlpha
{
  _pageControlBackgroundView = [(DBFolderView *)self _pageControlBackgroundView];
  [_pageControlBackgroundView alpha];
  v4 = v3;

  return v4;
}

- (int64_t)pageControlOverrideUserInterfaceStyle
{
  environment = [(DBFolderView *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  resolvedUserInterfaceStyle = [environmentConfiguration resolvedUserInterfaceStyle];

  return resolvedUserInterfaceStyle;
}

- (BOOL)_showsButtons
{
  buttonUXEnabled = [(DBFolderView *)self buttonUXEnabled];
  if (buttonUXEnabled)
  {
    LOBYTE(buttonUXEnabled) = [(SBFolderView *)self iconListViewCount]> 1;
  }

  return buttonUXEnabled;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  pageControl = [(SBFolderView *)self pageControl];
  pageControl2 = [(SBFolderView *)self pageControl];
  [pageControl2 convertPoint:self fromView:{x, y}];
  v10 = [pageControl hitTest:eventCopy withEvent:?];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = DBFolderView;
    v11 = [(SBRootFolderView *)&v14 hitTest:eventCopy withEvent:x, y];
  }

  v12 = v11;

  return v12;
}

- (void)_layoutSubviews
{
  v4.receiver = self;
  v4.super_class = DBFolderView;
  [(SBRootFolderView *)&v4 _layoutSubviews];
  [(DBFolderView *)self _listViewVerticalInset];
  [(DBFolderView *)self _listViewSideInset];
  layoutEngine = [(DBFolderView *)self layoutEngine];
  [layoutEngine folderViewAdditionalInsets];
  UIEdgeInsetsAdd();
  [(DBFolderView *)self setListViewInsets:?];
}

- (id)_pageControlBackgroundView
{
  scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
  pageControl = [scrollAccessoryView pageControl];
  subviews = [pageControl subviews];
  firstObject = [subviews firstObject];

  subviews2 = [firstObject subviews];
  firstObject2 = [subviews2 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = firstObject2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (void)_updateIconListFrames
{
  iconListViews = [(SBFolderView *)self iconListViews];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__DBFolderView__updateIconListFrames__block_invoke;
  v5[3] = &unk_278F02720;
  v5[4] = self;
  [iconListViews enumerateObjectsUsingBlock:v5];

  v4.receiver = self;
  v4.super_class = DBFolderView;
  [(SBFolderView *)&v4 _updateIconListFrames];
}

void __37__DBFolderView__updateIconListFrames__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [*(a1 + 32) listViewInsets];
  [v6 setInsets:?];
}

- (id)_newPageControl
{
  v2 = [DBIconListPageControl alloc];
  v3 = [(DBIconListPageControl *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(UIPageControl *)v3 _setAllowsDiscreteInteraction:1];
  [(UIPageControl *)v3 _setCustomVerticalPadding:4.0];
  [(UIPageControl *)v3 _setCustomHorizontalPadding:4.0];
  [(UIPageControl *)v3 _setCustomIndicatorSpacing:4.0];
  return v3;
}

- (void)_updatePageControlToIndex:(int64_t)index
{
  v5.receiver = self;
  v5.super_class = DBFolderView;
  [(SBFolderView *)&v5 _updatePageControlToIndex:?];
  [(DBFolderView *)self _updateScrollButtonStatesForIndex:index];
}

- (double)internalDockPageControlVerticalMargin
{
  _showsButtons = [(DBFolderView *)self _showsButtons];
  result = 6.0;
  if (_showsButtons)
  {
    return 9.0;
  }

  return result;
}

- (double)internalDockPageControlHorizontalOffset
{
  layoutEngine = [(DBFolderView *)self layoutEngine];
  [layoutEngine folderViewAdditionalInsets];
  v5 = v4;
  layoutEngine2 = [(DBFolderView *)self layoutEngine];
  [layoutEngine2 folderViewAdditionalInsets];
  v8 = v5 - v7;

  return v8 * 0.5;
}

- (double)pageControlAreaHeight
{
  _showsButtons = [(DBFolderView *)self _showsButtons];
  result = 15.0;
  if (_showsButtons)
  {
    return 34.0;
  }

  return result;
}

- (void)setLeadingCustomViewVisibilityProgress:(double)progress
{
  v18.receiver = self;
  v18.super_class = DBFolderView;
  [(SBRootFolderView *)&v18 setLeadingCustomViewVisibilityProgress:?];
  if ([(DBFolderView *)self _showsButtons])
  {
    if (progress * -2.0 + 1.0 >= 0.0)
    {
      v5 = progress * -2.0 + 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    scrollLeftButton = [(DBFolderView *)self scrollLeftButton];
    [scrollLeftButton setAlpha:v5];

    scrollRightButton = [(DBFolderView *)self scrollRightButton];
    [scrollRightButton setAlpha:v5];

    scalingView = [(SBFolderView *)self scalingView];
    [scalingView bounds];
    v9 = CGRectGetWidth(v19) * progress;

    layoutEngine = [(DBFolderView *)self layoutEngine];
    [layoutEngine homeViewControllerInsetsWithContentUnderDock:0];
    v12 = v11;
    v14 = v13;

    traitCollection = [(DBFolderView *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    if (layoutDirection == 1)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    if (layoutDirection != 1)
    {
      v12 = v14;
    }

    [(NSLayoutConstraint *)self->_leadingScrollArrowLeadingConstraint setConstant:v9 + v17 + 12.0];
    [(NSLayoutConstraint *)self->_trailingScrollArrowTrailingConstraint setConstant:v9 + -12.0 - v12];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v7.receiver = self;
  v7.super_class = DBFolderView;
  [(SBFolderView *)&v7 scrollViewDidScroll:scrollCopy];
  didScrollHandler = [(DBFolderView *)self didScrollHandler];

  if (didScrollHandler)
  {
    didScrollHandler2 = [(DBFolderView *)self didScrollHandler];
    [scrollCopy contentOffset];
    didScrollHandler2[2](didScrollHandler2);
  }
}

- (double)_listViewSideInset
{
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  iconLocation = [(SBFolderView *)self iconLocation];
  v5 = [listLayoutProvider layoutForIconLocation:iconLocation];

  [v5 iconImageInfo];
  v7 = v6;
  environment = [(DBFolderView *)self environment];
  environmentConfiguration = [environment environmentConfiguration];

  [environmentConfiguration currentStatusBarInsetSafeViewAreaFrame];
  v11 = v10;
  iconColumnCount = [environmentConfiguration iconColumnCount];
  v13 = v11 - ceil(v7 * iconColumnCount);
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  v14 = floor(v13 / (iconColumnCount + 1));
  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

- (UIEdgeInsets)_listViewVerticalInset
{
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  iconLocation = [(SBFolderView *)self iconLocation];
  v5 = [listLayoutProvider layoutForIconLocation:iconLocation];

  [v5 iconImageInfo];
  v7 = v6;
  v9 = v8;
  environment = [(DBFolderView *)self environment];
  environmentConfiguration = [environment environmentConfiguration];

  scalingView = [(SBFolderView *)self scalingView];
  [scalingView bounds];
  Height = CGRectGetHeight(v31);
  [(DBFolderView *)self pageControlAreaHeight];
  v15 = Height - v14;

  iconRowCount = 2;
  if ([environmentConfiguration iconRowCount] >= 2)
  {
    iconRowCount = [environmentConfiguration iconRowCount];
  }

  [DBIconView maximumIconViewHeightForIconImageSize:v7, v9];
  v18 = v15 - ceil(v17 * iconRowCount);
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = floor(v18 / (iconRowCount + 1));
  v20 = *(MEMORY[0x277D768C8] + 8);
  v21 = *(MEMORY[0x277D768C8] + 24);
  if (v19 <= 20.0)
  {
    v22 = 20.0;
  }

  else
  {
    v22 = v19;
  }

  v23 = floor((v18 - v22) / iconRowCount);
  v24 = -10.0;
  if (v23 >= 0.0)
  {
    if (v23 >= 5.0 || (v24 = 0.0, ![(DBFolderView *)self _showsButtons]))
    {
      _showsButtons = [(DBFolderView *)self _showsButtons];
      v26 = 0.0;
      if (!_showsButtons)
      {
        v26 = 0.0 + 10.0;
      }

      if (v23 <= v26)
      {
        v24 = v26;
      }

      else
      {
        v24 = v23;
      }
    }
  }

  v27 = v22;
  v28 = v20;
  v29 = v24;
  v30 = v21;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

- (void)_updateScrollButtonStatesForIndex:(int64_t)index
{
  scrollLeftButton = [(DBFolderView *)self scrollLeftButton];
  [scrollLeftButton setEnabled:{-[SBFolderView minimumPageIndex](self, "minimumPageIndex") < index}];

  scrollRightButton = [(DBFolderView *)self scrollRightButton];
  [scrollRightButton setEnabled:{-[SBFolderView maximumPageIndex](self, "maximumPageIndex") > index}];
}

- (void)_scrollButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  currentPageIndex = [(SBFolderView *)self currentPageIndex];
  scrollLeftButton = [(DBFolderView *)self scrollLeftButton];

  if (scrollLeftButton == pressedCopy)
  {
    v7 = -1;
  }

  else
  {
    scrollRightButton = [(DBFolderView *)self scrollRightButton];
    v7 = scrollRightButton == pressedCopy;
  }

  [(SBFolderView *)self setCurrentPageIndex:currentPageIndex + v7 animated:1];
  [(DBFolderView *)self _updateScrollButtonStatesForIndex:currentPageIndex + v7];
}

- (void)setPageControlHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  pageControlHidingTimer = self->_pageControlHidingTimer;
  if (pageControlHidingTimer)
  {
    [(NSTimer *)pageControlHidingTimer invalidate];
    v8 = self->_pageControlHidingTimer;
    self->_pageControlHidingTimer = 0;
  }

  pageControl = [(SBFolderView *)self pageControl];
  v10 = pageControl;
  if (hiddenCopy)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  [pageControl alpha];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    if (animated)
    {
      v12 = MEMORY[0x277D75D18];
      if (hiddenCopy)
      {
        v13 = 0.6448;
      }

      else
      {
        v13 = 0.14;
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__DBFolderView_setPageControlHidden_animated___block_invoke;
      v14[3] = &unk_278F02748;
      v15 = v10;
      v16 = v11;
      [v12 animateWithSpringDuration:4 bounce:v14 initialSpringVelocity:0 delay:v13 options:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      [v10 setAlpha:v11];
    }
  }
}

- (void)restartPageControlTimerIfNecessary
{
  delegate = [(SBFolderView *)self delegate];
  if ([delegate isOnLeadingCustomPage])
  {
    pageControl = [(SBFolderView *)self pageControl];
    [pageControl alpha];
    v5 = v4;

    if (v5 >= 1.0)
    {
      [(DBFolderView *)self _restartPageControlTimerWithTimeInterval:?];
    }
  }
}

- (void)_restartPageControlTimerWithTimeInterval:(double)interval
{
  pageControlHidingTimer = self->_pageControlHidingTimer;
  if (pageControlHidingTimer)
  {
    [(NSTimer *)pageControlHidingTimer invalidate];
    v6 = self->_pageControlHidingTimer;
    self->_pageControlHidingTimer = 0;
  }

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277CBEBB8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__DBFolderView__restartPageControlTimerWithTimeInterval___block_invoke;
  v10[3] = &unk_278F02770;
  objc_copyWeak(&v11, &location);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:interval];
  v9 = self->_pageControlHidingTimer;
  self->_pageControlHidingTimer = v8;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__DBFolderView__restartPageControlTimerWithTimeInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setPageControlHidden:1 animated:1];
    WeakRetained = v2;
  }
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (UIEdgeInsets)listViewInsets
{
  top = self->_listViewInsets.top;
  left = self->_listViewInsets.left;
  bottom = self->_listViewInsets.bottom;
  right = self->_listViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end