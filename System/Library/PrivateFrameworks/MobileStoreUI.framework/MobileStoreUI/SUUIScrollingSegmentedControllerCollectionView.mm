@interface SUUIScrollingSegmentedControllerCollectionView
- (void)layoutSubviews;
@end

@implementation SUUIScrollingSegmentedControllerCollectionView

- (void)layoutSubviews
{
  if (self->_performingLayout)
  {
    v4.receiver = self;
    v4.super_class = SUUIScrollingSegmentedControllerCollectionView;
    [(SUUIScrollingSegmentedControllerCollectionView *)&v4 layoutSubviews];
  }

  else
  {
    self->_performingLayout = 1;
    v4.receiver = self;
    v4.super_class = SUUIScrollingSegmentedControllerCollectionView;
    [(SUUIScrollingSegmentedControllerCollectionView *)&v4 layoutSubviews];
    self->_performingLayout = 0;
  }

  delegate = [(SUUIScrollingSegmentedControllerCollectionView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate scrollingSegmentedControllerCollectionViewDidLayoutSubviews:self];
  }
}

@end