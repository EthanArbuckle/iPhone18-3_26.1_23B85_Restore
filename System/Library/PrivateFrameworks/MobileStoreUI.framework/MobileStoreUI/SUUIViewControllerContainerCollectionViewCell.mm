@interface SUUIViewControllerContainerCollectionViewCell
- (SUUIViewControllerContainerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setManagesViewControllerContainerViewLayout:(BOOL)layout;
- (void)setMaximumContentWidth:(double)width;
@end

@implementation SUUIViewControllerContainerCollectionViewCell

- (SUUIViewControllerContainerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUIViewControllerContainerCollectionViewCell;
  v3 = [(SUUIViewControllerContainerCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_managesViewControllerContainerViewLayout = 1;
    [(SUUIViewControllerContainerCollectionViewCell *)v3 setPreservesSuperviewLayoutMargins:1];
    contentView = [(SUUIViewControllerContainerCollectionViewCell *)v4 contentView];
    [contentView setPreservesSuperviewLayoutMargins:1];
    v6 = [SUUIViewControllerContainerView alloc];
    [contentView bounds];
    v7 = [(SUUIViewControllerContainerView *)v6 initWithFrame:?];
    viewControllerContainerView = v4->_viewControllerContainerView;
    v4->_viewControllerContainerView = v7;

    [(SUUIViewControllerContainerView *)v4->_viewControllerContainerView setPreservesSuperviewLayoutMargins:1];
    [contentView addSubview:v4->_viewControllerContainerView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SUUIViewControllerContainerCollectionViewCell;
  [(SUUIViewControllerContainerCollectionViewCell *)&v22 layoutSubviews];
  if (self->_managesViewControllerContainerViewLayout)
  {
    contentView = [(SUUIViewControllerContainerCollectionViewCell *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if (self->_maximumContentWidth > 0.00000011920929)
    {
      traitCollection = [(SUUIViewControllerContainerCollectionViewCell *)self traitCollection];
      [traitCollection displayScale];
      v14 = v13;
      if (v13 <= 0.00000011920929)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v14 = v16;
      }

      v23.origin.x = v5;
      v23.origin.y = v7;
      v23.size.width = v9;
      v23.size.height = v11;
      CGRectGetWidth(v23);
      v21 = v14;
      UIRectCenteredXInRectScale();
      v5 = v17;
      v7 = v18;
      v9 = v19;
      v11 = v20;
    }

    [(SUUIViewControllerContainerView *)self->_viewControllerContainerView setFrame:v5, v7, v9, v11, *&v21];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = SUUIViewControllerContainerCollectionViewCell;
  attributesCopy = attributes;
  [(SUUIViewControllerContainerCollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
  indexPath = [attributesCopy indexPath];

  indexPath = self->_indexPath;
  self->_indexPath = indexPath;
}

- (void)setMaximumContentWidth:(double)width
{
  if (vabdd_f64(self->_maximumContentWidth, width) > 0.00000011920929)
  {
    self->_maximumContentWidth = width;
    [(SUUIViewControllerContainerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setManagesViewControllerContainerViewLayout:(BOOL)layout
{
  if (self->_managesViewControllerContainerViewLayout != layout)
  {
    self->_managesViewControllerContainerViewLayout = layout;
    if (layout)
    {
      [(SUUIViewControllerContainerCollectionViewCell *)self setNeedsLayout];
    }
  }
}

@end