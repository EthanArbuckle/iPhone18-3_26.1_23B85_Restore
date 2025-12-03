@interface CAMScrollViewWithLayoutDelegate
- (CAMScrollViewLayoutDelegate)layoutDelegate;
- (void)layoutSubviews;
@end

@implementation CAMScrollViewWithLayoutDelegate

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CAMScrollViewWithLayoutDelegate;
  [(CAMScrollViewWithLayoutDelegate *)&v4 layoutSubviews];
  layoutDelegate = [(CAMScrollViewWithLayoutDelegate *)self layoutDelegate];
  [layoutDelegate scrollViewDidLayoutSubviews:self];
}

- (CAMScrollViewLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

@end