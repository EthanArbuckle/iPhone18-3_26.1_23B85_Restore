@interface SUUICollectionView
- (CGRect)bounds;
- (SUUICollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)collectionViewLayout;
- (void)_updateIndexBarControlFrame;
- (void)_updateShowsScrollIndicators;
- (void)layoutSubviews;
- (void)setCollectionViewLayout:(id)a3 animated:(BOOL)a4;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setIndexBarControl:(id)a3;
- (void)setRefreshControl:(id)a3;
- (void)setShowsHorizontalScrollIndicator:(BOOL)a3;
- (void)setShowsVerticalScrollIndicator:(BOOL)a3;
@end

@implementation SUUICollectionView

- (SUUICollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v7.receiver = self;
  v7.super_class = SUUICollectionView;
  v4 = [(SUUICollectionView *)&v7 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v3 = pendingCollectionViewLayout;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUICollectionView;
    v3 = [(SUUICollectionView *)&v5 collectionViewLayout];
  }

  return v3;
}

- (void)setCollectionViewLayout:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_storeStrong(&self->_pendingCollectionViewLayout, a3);
  v7 = a3;
  v9.receiver = self;
  v9.super_class = SUUICollectionView;
  [(SUUICollectionView *)&v9 setCollectionViewLayout:v7 animated:v4];
  pendingCollectionViewLayout = self->_pendingCollectionViewLayout;
  self->_pendingCollectionViewLayout = 0;
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUICollectionView;
  v4 = a3;
  [(SUUICollectionView *)&v6 setDelegate:v4];
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
    v3 = [(SUUICollectionView *)self delegate];
    [v3 SUUICollectionViewWillLayoutSubviews:self];
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

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = SUUICollectionView;
  [(SUUICollectionView *)&v5 setContentOffset:a4 animated:a3.x, a3.y];
  [(SUUICollectionView *)self _updateIndexBarControlFrame];
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)a3
{
  if (self->_externalShowsHorizontalScrollIndicator != a3)
  {
    self->_externalShowsHorizontalScrollIndicator = a3;
    [(SUUICollectionView *)self _updateShowsScrollIndicators];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)a3
{
  if (self->_externalShowsVerticalScrollIndicator != a3)
  {
    self->_externalShowsVerticalScrollIndicator = a3;
    [(SUUICollectionView *)self _updateShowsScrollIndicators];
  }
}

- (void)setIndexBarControl:(id)a3
{
  v5 = a3;
  indexBarControl = self->_indexBarControl;
  v7 = v5;
  if (indexBarControl != v5)
  {
    if ([(SUUIIndexBarControl *)indexBarControl isDescendantOfView:self])
    {
      [(SUUIIndexBarControl *)self->_indexBarControl removeFromSuperview];
    }

    objc_storeStrong(&self->_indexBarControl, a3);
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

- (void)setRefreshControl:(id)a3
{
  v5 = a3;
  refreshControl = self->_refreshControl;
  if (refreshControl != v5)
  {
    v7 = v5;
    if (refreshControl)
    {
      [(UIRefreshControl *)refreshControl removeFromSuperview];
    }

    objc_storeStrong(&self->_refreshControl, a3);
    refreshControl = [(SUUICollectionView *)self _addContentSubview:self->_refreshControl atBack:1];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](refreshControl, v5);
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.receiver = self;
  v3.super_class = SUUICollectionView;
  [(SUUICollectionView *)&v3 setContentInset:a3.top, a3.left, a3.bottom, a3.right];
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