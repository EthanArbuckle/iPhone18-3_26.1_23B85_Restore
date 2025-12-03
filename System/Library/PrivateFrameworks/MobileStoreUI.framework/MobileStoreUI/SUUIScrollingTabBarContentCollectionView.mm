@interface SUUIScrollingTabBarContentCollectionView
- (void)_reuseCell:(id)cell;
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

  delegate = [(SUUIScrollingTabBarContentCollectionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate scrollingTabBarContentCollectionViewDidLayoutSubviews:self];
  }
}

- (void)_reuseCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SUUIScrollingTabBarContentCollectionView *)a2 _reuseCell:?];
  }

  [cellCopy removeFromSuperview];
  delegate = [(SUUIScrollingTabBarContentCollectionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    indexPath = [cellCopy indexPath];
    [delegate collectionView:self didEndDisplayingCell:cellCopy forItemAtIndexPath:indexPath];
  }
}

- (void)_reuseCell:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIScrollingTabBarContentCollectionView.m" lineNumber:36 description:{@"%@ only supports cells of type SUUIViewControllerContainerCollectionViewCell.", a2}];
}

@end