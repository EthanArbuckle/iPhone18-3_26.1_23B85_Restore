@interface DBFolderView
+ (double)maximumPageControlHeightForInteractionAffordances:(unint64_t)a3;
- (BOOL)_showsButtons;
- (DBEnvironment)environment;
- (DBFolderView)initWithConfiguration:(id)a3;
- (UIEdgeInsets)_listViewVerticalInset;
- (UIEdgeInsets)listViewInsets;
- (double)_listViewSideInset;
- (double)internalDockPageControlHorizontalOffset;
- (double)internalDockPageControlVerticalMargin;
- (double)pageControlAreaHeight;
- (double)pageControlPlatterAlpha;
- (id)_newPageControl;
- (id)_pageControlBackgroundView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)pageControlOverrideUserInterfaceStyle;
- (void)_layoutSubviews;
- (void)_restartPageControlTimerWithTimeInterval:(double)a3;
- (void)_scrollButtonPressed:(id)a3;
- (void)_updateIconListFrames;
- (void)_updatePageControlToIndex:(int64_t)a3;
- (void)_updateScrollButtonStatesForIndex:(int64_t)a3;
- (void)restartPageControlTimerIfNecessary;
- (void)scrollViewDidScroll:(id)a3;
- (void)setEnvironment:(id)a3;
- (void)setLeadingCustomViewVisibilityProgress:(double)a3;
- (void)setPageControlHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setPageControlPlatterAlpha:(double)a3;
@end

@implementation DBFolderView

- (DBFolderView)initWithConfiguration:(id)a3
{
  v38[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = DBFolderView;
  v5 = [(SBRootFolderView *)&v37 initWithConfiguration:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(SBFolderView *)v5 scalingView];
    v8 = [DBScrollButton buttonWithDirection:0];
    scrollLeftButton = v6->_scrollLeftButton;
    v6->_scrollLeftButton = v8;

    [(DBScrollButton *)v6->_scrollLeftButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBScrollButton *)v6->_scrollLeftButton addTarget:v6 action:sel__scrollButtonPressed_ forControlEvents:64];
    [v7 addSubview:v6->_scrollLeftButton];
    v10 = [DBScrollButton buttonWithDirection:1];
    scrollRightButton = v6->_scrollRightButton;
    v6->_scrollRightButton = v10;

    [(DBScrollButton *)v6->_scrollRightButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBScrollButton *)v6->_scrollRightButton addTarget:v6 action:sel__scrollButtonPressed_ forControlEvents:64];
    [v7 addSubview:v6->_scrollRightButton];
    [(DBScrollButton *)v6->_scrollLeftButton setHidden:1];
    [(DBScrollButton *)v6->_scrollRightButton setHidden:1];
    v12 = [v4 todayViewController];

    if (v12)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 1.0;
    }

    v14 = [(DBFolderView *)v6 scrollLeftButton];
    [v14 setAlpha:v13];

    v15 = [(DBFolderView *)v6 scrollRightButton];
    [v15 setAlpha:v13];

    v16 = [(DBScrollButton *)v6->_scrollLeftButton leadingAnchor];
    v17 = [v7 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:12.0];
    leadingScrollArrowLeadingConstraint = v6->_leadingScrollArrowLeadingConstraint;
    v6->_leadingScrollArrowLeadingConstraint = v18;

    v20 = [(DBScrollButton *)v6->_scrollRightButton trailingAnchor];
    v21 = [v7 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:-12.0];
    trailingScrollArrowTrailingConstraint = v6->_trailingScrollArrowTrailingConstraint;
    v6->_trailingScrollArrowTrailingConstraint = v22;

    v24 = MEMORY[0x277CCAAD0];
    v38[0] = v6->_leadingScrollArrowLeadingConstraint;
    v38[1] = v6->_trailingScrollArrowTrailingConstraint;
    v25 = [(DBScrollButton *)v6->_scrollLeftButton bottomAnchor];
    v36 = v7;
    v26 = [v7 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-8.5];
    v38[2] = v27;
    v28 = [(DBScrollButton *)v6->_scrollRightButton bottomAnchor];
    v29 = [v7 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-8.5];
    v38[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v24 activateConstraints:v31];

    v32 = [(SBFolderView *)v6 pageControl];
    v33 = [MEMORY[0x277D75210] effectWithStyle:7];
    [v32 _setPlatterEffect:v33];

    v34 = [(SBFolderView *)v6 pageControl];
    [v34 setBackgroundStyle:1];
  }

  return v6;
}

+ (double)maximumPageControlHeightForInteractionAffordances:(unint64_t)a3
{
  if ((a3 & 2) == 0)
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

- (void)setEnvironment:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_environment, v4);
  v5 = [v4 environmentConfiguration];

  v6 = [v5 interactionAffordances];
  v7 = v6 & 2;
  if (self->_buttonUXEnabled != v7 >> 1)
  {
    self->_buttonUXEnabled = (v6 & 2) >> 1;
    [(DBScrollButton *)self->_scrollLeftButton setHidden:v7 == 0];
    [(DBScrollButton *)self->_scrollRightButton setHidden:v7 == 0];
    [(SBRootFolderView *)self setNeedsLayout];
  }

  v8 = [(SBFolderView *)self pageControl];
  [v8 setShowsButtons:v7 != 0];
}

- (void)setPageControlPlatterAlpha:(double)a3
{
  v4 = [(DBFolderView *)self _pageControlBackgroundView];
  [v4 setAlpha:a3];
}

- (double)pageControlPlatterAlpha
{
  v2 = [(DBFolderView *)self _pageControlBackgroundView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (int64_t)pageControlOverrideUserInterfaceStyle
{
  v2 = [(DBFolderView *)self environment];
  v3 = [v2 environmentConfiguration];
  v4 = [v3 resolvedUserInterfaceStyle];

  return v4;
}

- (BOOL)_showsButtons
{
  v3 = [(DBFolderView *)self buttonUXEnabled];
  if (v3)
  {
    LOBYTE(v3) = [(SBFolderView *)self iconListViewCount]> 1;
  }

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SBFolderView *)self pageControl];
  v9 = [(SBFolderView *)self pageControl];
  [v9 convertPoint:self fromView:{x, y}];
  v10 = [v8 hitTest:v7 withEvent:?];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = DBFolderView;
    v11 = [(SBRootFolderView *)&v14 hitTest:v7 withEvent:x, y];
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
  v3 = [(DBFolderView *)self layoutEngine];
  [v3 folderViewAdditionalInsets];
  UIEdgeInsetsAdd();
  [(DBFolderView *)self setListViewInsets:?];
}

- (id)_pageControlBackgroundView
{
  v2 = [(SBRootFolderView *)self scrollAccessoryView];
  v3 = [v2 pageControl];
  v4 = [v3 subviews];
  v5 = [v4 firstObject];

  v6 = [v5 subviews];
  v7 = [v6 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
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
  v3 = [(SBFolderView *)self iconListViews];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__DBFolderView__updateIconListFrames__block_invoke;
  v5[3] = &unk_278F02720;
  v5[4] = self;
  [v3 enumerateObjectsUsingBlock:v5];

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

- (void)_updatePageControlToIndex:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = DBFolderView;
  [(SBFolderView *)&v5 _updatePageControlToIndex:?];
  [(DBFolderView *)self _updateScrollButtonStatesForIndex:a3];
}

- (double)internalDockPageControlVerticalMargin
{
  v2 = [(DBFolderView *)self _showsButtons];
  result = 6.0;
  if (v2)
  {
    return 9.0;
  }

  return result;
}

- (double)internalDockPageControlHorizontalOffset
{
  v3 = [(DBFolderView *)self layoutEngine];
  [v3 folderViewAdditionalInsets];
  v5 = v4;
  v6 = [(DBFolderView *)self layoutEngine];
  [v6 folderViewAdditionalInsets];
  v8 = v5 - v7;

  return v8 * 0.5;
}

- (double)pageControlAreaHeight
{
  v2 = [(DBFolderView *)self _showsButtons];
  result = 15.0;
  if (v2)
  {
    return 34.0;
  }

  return result;
}

- (void)setLeadingCustomViewVisibilityProgress:(double)a3
{
  v18.receiver = self;
  v18.super_class = DBFolderView;
  [(SBRootFolderView *)&v18 setLeadingCustomViewVisibilityProgress:?];
  if ([(DBFolderView *)self _showsButtons])
  {
    if (a3 * -2.0 + 1.0 >= 0.0)
    {
      v5 = a3 * -2.0 + 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    v6 = [(DBFolderView *)self scrollLeftButton];
    [v6 setAlpha:v5];

    v7 = [(DBFolderView *)self scrollRightButton];
    [v7 setAlpha:v5];

    v8 = [(SBFolderView *)self scalingView];
    [v8 bounds];
    v9 = CGRectGetWidth(v19) * a3;

    v10 = [(DBFolderView *)self layoutEngine];
    [v10 homeViewControllerInsetsWithContentUnderDock:0];
    v12 = v11;
    v14 = v13;

    v15 = [(DBFolderView *)self traitCollection];
    v16 = [v15 layoutDirection];

    if (v16 == 1)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    if (v16 != 1)
    {
      v12 = v14;
    }

    [(NSLayoutConstraint *)self->_leadingScrollArrowLeadingConstraint setConstant:v9 + v17 + 12.0];
    [(NSLayoutConstraint *)self->_trailingScrollArrowTrailingConstraint setConstant:v9 + -12.0 - v12];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DBFolderView;
  [(SBFolderView *)&v7 scrollViewDidScroll:v4];
  v5 = [(DBFolderView *)self didScrollHandler];

  if (v5)
  {
    v6 = [(DBFolderView *)self didScrollHandler];
    [v4 contentOffset];
    v6[2](v6);
  }
}

- (double)_listViewSideInset
{
  v3 = [(SBFolderView *)self listLayoutProvider];
  v4 = [(SBFolderView *)self iconLocation];
  v5 = [v3 layoutForIconLocation:v4];

  [v5 iconImageInfo];
  v7 = v6;
  v8 = [(DBFolderView *)self environment];
  v9 = [v8 environmentConfiguration];

  [v9 currentStatusBarInsetSafeViewAreaFrame];
  v11 = v10;
  v12 = [v9 iconColumnCount];
  v13 = v11 - ceil(v7 * v12);
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  v14 = floor(v13 / (v12 + 1));
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
  v3 = [(SBFolderView *)self listLayoutProvider];
  v4 = [(SBFolderView *)self iconLocation];
  v5 = [v3 layoutForIconLocation:v4];

  [v5 iconImageInfo];
  v7 = v6;
  v9 = v8;
  v10 = [(DBFolderView *)self environment];
  v11 = [v10 environmentConfiguration];

  v12 = [(SBFolderView *)self scalingView];
  [v12 bounds];
  Height = CGRectGetHeight(v31);
  [(DBFolderView *)self pageControlAreaHeight];
  v15 = Height - v14;

  v16 = 2;
  if ([v11 iconRowCount] >= 2)
  {
    v16 = [v11 iconRowCount];
  }

  [DBIconView maximumIconViewHeightForIconImageSize:v7, v9];
  v18 = v15 - ceil(v17 * v16);
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = floor(v18 / (v16 + 1));
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

  v23 = floor((v18 - v22) / v16);
  v24 = -10.0;
  if (v23 >= 0.0)
  {
    if (v23 >= 5.0 || (v24 = 0.0, ![(DBFolderView *)self _showsButtons]))
    {
      v25 = [(DBFolderView *)self _showsButtons];
      v26 = 0.0;
      if (!v25)
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

- (void)_updateScrollButtonStatesForIndex:(int64_t)a3
{
  v5 = [(DBFolderView *)self scrollLeftButton];
  [v5 setEnabled:{-[SBFolderView minimumPageIndex](self, "minimumPageIndex") < a3}];

  v6 = [(DBFolderView *)self scrollRightButton];
  [v6 setEnabled:{-[SBFolderView maximumPageIndex](self, "maximumPageIndex") > a3}];
}

- (void)_scrollButtonPressed:(id)a3
{
  v8 = a3;
  v4 = [(SBFolderView *)self currentPageIndex];
  v5 = [(DBFolderView *)self scrollLeftButton];

  if (v5 == v8)
  {
    v7 = -1;
  }

  else
  {
    v6 = [(DBFolderView *)self scrollRightButton];
    v7 = v6 == v8;
  }

  [(SBFolderView *)self setCurrentPageIndex:v4 + v7 animated:1];
  [(DBFolderView *)self _updateScrollButtonStatesForIndex:v4 + v7];
}

- (void)setPageControlHidden:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  pageControlHidingTimer = self->_pageControlHidingTimer;
  if (pageControlHidingTimer)
  {
    [(NSTimer *)pageControlHidingTimer invalidate];
    v8 = self->_pageControlHidingTimer;
    self->_pageControlHidingTimer = 0;
  }

  v9 = [(SBFolderView *)self pageControl];
  v10 = v9;
  if (v5)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  [v9 alpha];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    if (a4)
    {
      v12 = MEMORY[0x277D75D18];
      if (v5)
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
  v6 = [(SBFolderView *)self delegate];
  if ([v6 isOnLeadingCustomPage])
  {
    v3 = [(SBFolderView *)self pageControl];
    [v3 alpha];
    v5 = v4;

    if (v5 >= 1.0)
    {
      [(DBFolderView *)self _restartPageControlTimerWithTimeInterval:?];
    }
  }
}

- (void)_restartPageControlTimerWithTimeInterval:(double)a3
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
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:a3];
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