@interface SUUIVerticalLockupCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIVerticalLockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_reloadHighlightImageView;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPerspectiveTargetView:(id)view;
- (void)setSelected:(BOOL)selected;
@end

@implementation SUUIVerticalLockupCollectionViewCell

- (SUUIVerticalLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUIVerticalLockupCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SUUIVerticalLockupCollectionViewCell *)v3 contentView];
    v6 = [SUUIVerticalLockupView alloc];
    [contentView bounds];
    v7 = [(SUUIVerticalLockupView *)v6 initWithFrame:?];
    lockupView = v4->_lockupView;
    v4->_lockupView = v7;

    [contentView addSubview:v4->_lockupView];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  lockupView = self->_lockupView;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIViewReuseView *)lockupView setBackgroundColor:backgroundColor];

  v13.receiver = self;
  v13.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v13 applyLayoutAttributes:attributesCopy];
  [attributesCopy zoomingImageWidth];
  v8 = v7;
  v9 = 1.0;
  v10 = 1.0;
  if (v7 > 0.00000011920929)
  {
    [attributesCopy zoomingImageImposedAlphaOfOtherViews];
    v10 = v11;
    [attributesCopy zoomingImageAlpha];
    v9 = v12;
  }

  [(SUUIVerticalLockupView *)self->_lockupView setOpacityOfViewsOtherThanProductImageView:v10];
  [(SUUIVerticalLockupView *)self->_lockupView setZoomingImageAlpha:v9];
  [(SUUIVerticalLockupView *)self->_lockupView setZoomingImageWidth:v8];
}

- (void)setPerspectiveTargetView:(id)view
{
  lockupView = self->_lockupView;
  viewCopy = view;
  [(SUUIVerticalLockupView *)lockupView setPerspectiveTargetView:viewCopy];
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SUUIVerticalLockupView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SUUIVerticalLockupView sizeThatFitsWidth:element viewElement:context context:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v5 layoutSubviews];
  lockupView = self->_lockupView;
  contentView = [(SUUIVerticalLockupCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SUUIVerticalLockupView *)lockupView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  lockupView = self->_lockupView;
  colorCopy = color;
  [(SUUIViewReuseView *)lockupView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setHighlighted:highlighted];
  [(SUUIVerticalLockupCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SUUIVerticalLockupCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setSelected:selected];
  [(SUUIVerticalLockupCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)_reloadHighlightImageView
{
  if (([(SUUIVerticalLockupCollectionViewCell *)self isHighlighted]& 1) != 0 || [(SUUIVerticalLockupCollectionViewCell *)self isSelected])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__54;
    lockupView = self->_lockupView;
    v32 = __Block_byref_object_dispose__54;
    v33 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__SUUIVerticalLockupCollectionViewCell__reloadHighlightImageView__block_invoke;
    v27[3] = &unk_2798FB298;
    v27[4] = &v28;
    [(SUUIViewReuseView *)lockupView enumerateExistingViewsForReuseIdentifier:0x286AF9940 usingBlock:v27];
    v4 = v29[5];
    if (v4 || (v5 = self->_lockupView, v26[0] = MEMORY[0x277D85DD0], v26[1] = 3221225472, v26[2] = __65__SUUIVerticalLockupCollectionViewCell__reloadHighlightImageView__block_invoke_2, v26[3] = &unk_2798FB298, v26[4] = &v28, [(SUUIViewReuseView *)v5 enumerateExistingViewsForReuseIdentifier:0x286AEECE0 usingBlock:v26], (v4 = v29[5]) != 0))
    {
      highlightImageView = self->_highlightImageView;
      if (!highlightImageView)
      {
        v7 = objc_alloc_init(SUUIImageView);
        v8 = self->_highlightImageView;
        self->_highlightImageView = v7;

        [(SUUIImageView *)self->_highlightImageView setAlpha:0.300000012];
        v9 = self->_highlightImageView;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(SUUIImageView *)v9 setBackgroundColor:clearColor];

        highlightImageView = self->_highlightImageView;
        v4 = v29[5];
      }

      [v4 bounds];
      [(SUUIImageView *)highlightImageView setBounds:?];
      v11 = self->_highlightImageView;
      [v29[5] center];
      [(SUUIImageView *)v11 setCenter:?];
      v12 = self->_highlightImageView;
      image = [v29[5] image];
      blackColor = [MEMORY[0x277D75348] blackColor];
      v15 = [image _flatImageWithColor:blackColor];
      [(SUUIImageView *)v12 setImage:v15];

      v16 = self->_highlightImageView;
      v17 = v29[5];
      if (v17)
      {
        [v17 transform];
      }

      else
      {
        memset(v25, 0, sizeof(v25));
      }

      [(SUUIImageView *)v16 setTransform:v25];
      [(SUUIVerticalLockupView *)self->_lockupView insertSubview:self->_highlightImageView aboveSubview:v29[5]];
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v18 = self->_highlightImageView;
    if (v18)
    {
      v19 = v18;
      v20 = self->_highlightImageView;
      self->_highlightImageView = 0;

      [MEMORY[0x277CD9FF0] begin];
      v21 = MEMORY[0x277CD9FF0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __65__SUUIVerticalLockupCollectionViewCell__reloadHighlightImageView__block_invoke_3;
      v23[3] = &unk_2798F5BE8;
      v24 = v19;
      v22 = v19;
      [v21 setCompletionBlock:v23];
      [(SUUIImageView *)v22 setAlpha:0.0];
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

@end