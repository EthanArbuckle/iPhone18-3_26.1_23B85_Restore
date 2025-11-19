@interface SUUIScrollingTabBarContentCollectionView
- (void)_reuseCell:(id)a3;
- (void)layoutSubviews;
@end

@implementation SUUIScrollingTabBarContentCollectionView

- (void)layoutSubviews
{
  if (self->_performingLayout)
  {
    v4.receiver = self;
    v4.super_class = SUUIScrollingTabBarContentCollectionView;
    [(SUUIScrollingTabBarContentCollectionView *)&v4 layoutSubviews];
  }

  else
  {
    self->_performingLayout = 1;
    v4.receiver = self;
    v4.super_class = SUUIScrollingTabBarContentCollectionView;
    [(SUUIScrollingTabBarContentCollectionView *)&v4 layoutSubviews];
    self->_performingLayout = 0;
  }

  v3 = [(SUUIScrollingTabBarContentCollectionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 scrollingTabBarContentCollectionViewDidLayoutSubviews:self];
  }
}

- (void)_reuseCell:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SUUIScrollingTabBarContentCollectionView *)a2 _reuseCell:?];
  }

  [v7 removeFromSuperview];
  v5 = [(SUUIScrollingTabBarContentCollectionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v7 indexPath];
    [v5 collectionView:self didEndDisplayingCell:v7 forItemAtIndexPath:v6];
  }
}

- (void)_reuseCell:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIScrollingTabBarContentCollectionView.m" lineNumber:36 description:{@"%@ only supports cells of type SUUIViewControllerContainerCollectionViewCell.", a2}];
}

@end