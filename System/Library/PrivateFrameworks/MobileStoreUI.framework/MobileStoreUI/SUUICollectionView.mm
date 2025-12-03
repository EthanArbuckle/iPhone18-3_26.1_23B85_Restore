@interface SUUICollectionView
- (CGRect)bounds;
- (SUUICollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)collectionViewLayout;
- (void)_updateIndexBarControlFrame;
- (void)_updateShowsScrollIndicators;
- (void)layoutSubviews;
- (void)setCollectionViewLayout:(id)layout animated:(BOOL)animated;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setIndexBarControl:(id)control;
- (void)setRefreshControl:(id)control;
- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator;
- (void)setShowsVerticalScrollIndicator:(BOOL)indicator;
@end

@implementation SUUICollectionView

- (SUUICollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = SUUICollectionView;
  v4 = [(SUUICollectionView *)&v7 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_externalShowsHorizontalScrollIndicator = [(SUUICollectionView *)v4 showsHorizontalScrollIndicator];
    v5->_externalShowsVerticalScrollIndicator = [(SUUICollectionView *)v5 showsVerticalScrollIndicator];
    [(SUUICollectionView *)v5 setPrefetchingEnabled:0];
    [(SUUICollectionView *)v5 _setContentInsetAdjustmentBehavior:101];
  }

  return v5;
}

- (id)collectionViewLayout
{
  pendingCollectionViewLayout = self->_pendingCollectionViewLayout;
  if (pendingCollectionViewLayout)
  {
    collectionViewLayout = pendingCollectionViewLayout;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUICollectionView;
    collectionViewLayout = [(SUUICollectionView *)&v5 collectionViewLayout];
  }

  return collectionViewLayout;
}

- (void)setCollectionViewLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_storeStrong(&self->_pendingCollectionViewLayout, layout);
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SUUICollectionView;
  [(SUUICollectionView *)&v9 setCollectionViewLayout:layoutCopy animated:animatedCopy];
  pendingCollectionViewLayout = self->_pendingCollectionViewLayout;
  self->_pendingCollectionViewLayout = 0;
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SUUICollectionView;
  delegateCopy = delegate;
  [(SUUICollectionView *)&v6 setDelegate:delegateCopy];
  v5 = objc_opt_respondsToSelector();

  self->_delegateWantsWillLayoutSubviews = v5 & 1;
}

- (CGRect)bounds
{
  v7.receiver = self;
  v7.super_class = SUUICollectionView;
  [(SUUICollectionView *)&v7 bounds];
  if (self->_overrideBoundsWidth > 0.00000011920929)
  {
    overrideBoundsWidth = self->_overrideBoundsWidth;
  }

  result.size.height = v6;
  result.size.width = overrideBoundsWidth;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)layoutSubviews
{
  if (self->_delegateWantsWillLayoutSubviews)
  {
    delegate = [(SUUICollectionView *)self delegate];
    [delegate SUUICollectionViewWillLayoutSubviews:self];
  }

  if (self->_refreshControl)
  {
    [(SUUICollectionView *)self sendSubviewToBack:?];
  }

  v4.receiver = self;
  v4.super_class = SUUICollectionView;
  [(SUUICollectionView *)&v4 layoutSubviews];
  [(SUUICollectionView *)self _updateIndexBarControlFrame];
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = SUUICollectionView;
  [(SUUICollectionView *)&v5 setContentOffset:animated animated:offset.x, offset.y];
  [(SUUICollectionView *)self _updateIndexBarControlFrame];
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator
{
  if (self->_externalShowsHorizontalScrollIndicator != indicator)
  {
    self->_externalShowsHorizontalScrollIndicator = indicator;
    [(SUUICollectionView *)self _updateShowsScrollIndicators];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)indicator
{
  if (self->_externalShowsVerticalScrollIndicator != indicator)
  {
    self->_externalShowsVerticalScrollIndicator = indicator;
    [(SUUICollectionView *)self _updateShowsScrollIndicators];
  }
}

- (void)setIndexBarControl:(id)control
{
  controlCopy = control;
  indexBarControl = self->_indexBarControl;
  v7 = controlCopy;
  if (indexBarControl != controlCopy)
  {
    if ([(SUUIIndexBarControl *)indexBarControl isDescendantOfView:self])
    {
      [(SUUIIndexBarControl *)self->_indexBarControl removeFromSuperview];
    }

    objc_storeStrong(&self->_indexBarControl, control);
    [(SUUICollectionView *)self _updateShowsScrollIndicators];
    [(SUUICollectionView *)self setNeedsLayout];
    indexBarControl = self->_indexBarControl;
  }

  if (indexBarControl && ([(SUUIIndexBarControl *)indexBarControl isDescendantOfView:self]& 1) == 0)
  {
    [(SUUICollectionView *)self addSubview:self->_indexBarControl];
    [(SUUICollectionView *)self setNeedsLayout];
  }
}

- (void)setRefreshControl:(id)control
{
  controlCopy = control;
  refreshControl = self->_refreshControl;
  if (refreshControl != controlCopy)
  {
    v7 = controlCopy;
    if (refreshControl)
    {
      [(UIRefreshControl *)refreshControl removeFromSuperview];
    }

    objc_storeStrong(&self->_refreshControl, control);
    refreshControl = [(SUUICollectionView *)self _addContentSubview:self->_refreshControl atBack:1];
    controlCopy = v7;
  }

  MEMORY[0x2821F96F8](refreshControl, controlCopy);
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.receiver = self;
  v3.super_class = SUUICollectionView;
  [(SUUICollectionView *)&v3 setContentInset:inset.top, inset.left, inset.bottom, inset.right];
}

- (void)_updateIndexBarControlFrame
{
  [(SUUICollectionView *)self bounds];
  v4 = v3;
  rect_24 = v5;
  v38 = v3;
  v6 = v5;
  v8 = v7;
  rect_8 = v9;
  rect_16 = v7;
  v10 = v9;
  [(SUUICollectionView *)self contentInset];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  [(SUUIIndexBarControl *)self->_indexBarControl frame];
  v20 = v19;
  rect = v19;
  v22 = v21;
  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  v23 = CGRectGetWidth(v40) * 0.25;
  v41.origin.x = v12;
  v41.origin.y = v14;
  v41.size.width = v16;
  v41.size.height = v18;
  Height = CGRectGetHeight(v41);
  [(SUUIIndexBarControl *)self->_indexBarControl sizeThatFits:v23, Height];
  v26 = v25;
  v42.size.height = v27;
  v42.origin.x = v20;
  v42.origin.y = v22;
  v42.size.width = v26;
  v28 = CGRectGetHeight(v42);
  if (v28 >= Height)
  {
    Height = v28;
  }

  v43.origin.x = v12;
  v43.origin.y = v14;
  v43.size.width = v16;
  v43.size.height = v18;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = rect;
  v44.origin.y = v22;
  v44.size.width = v26;
  v44.size.height = Height;
  v30 = MaxX - CGRectGetWidth(v44);
  v45.origin.x = v12;
  v45.origin.y = v14;
  v45.size.width = v16;
  v45.size.height = v18;
  MinY = CGRectGetMinY(v45);
  indexBarControl = self->_indexBarControl;
  v33 = SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v30, MinY, v26, Height, v38, rect_24, rect_16, rect_8);

  [(SUUIIndexBarControl *)indexBarControl setFrame:v33];
}

- (void)_updateShowsScrollIndicators
{
  if (self->_indexBarControl)
  {
    v7.receiver = self;
    v7.super_class = SUUICollectionView;
    [(SUUICollectionView *)&v7 setShowsHorizontalScrollIndicator:0];
    v6.receiver = self;
    v6.super_class = SUUICollectionView;
    [(SUUICollectionView *)&v6 setShowsVerticalScrollIndicator:0, v4.receiver, v4.super_class];
  }

  else
  {
    externalShowsHorizontalScrollIndicator = self->_externalShowsHorizontalScrollIndicator;
    v5.receiver = self;
    v5.super_class = SUUICollectionView;
    [(SUUICollectionView *)&v5 setShowsHorizontalScrollIndicator:externalShowsHorizontalScrollIndicator];
    [(SUUICollectionView *)&v4 setShowsVerticalScrollIndicator:self->_externalShowsVerticalScrollIndicator, self, SUUICollectionView];
  }
}

@end