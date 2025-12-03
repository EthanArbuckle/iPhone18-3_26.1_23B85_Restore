@interface SUUICounterCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUICounterCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)_reloadHighlightImageView;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation SUUICounterCollectionViewCell

- (SUUICounterCollectionViewCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SUUICounterCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [SUUICounterView alloc];
    [(SUUICounterCollectionViewCell *)v3 bounds];
    v5 = [(SUUIViewReuseView *)v4 initWithFrame:?];
    counterView = v3->_counterView;
    v3->_counterView = v5;

    contentView = [(SUUICounterCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_counterView];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  counterView = self->_counterView;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIViewReuseView *)counterView setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SUUICounterCollectionViewCell;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SUUICounterView sizeThatFitsWidth:element viewElement:context context:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUICounterCollectionViewCell;
  [(SUUICollectionViewCell *)&v5 layoutSubviews];
  counterView = self->_counterView;
  contentView = [(SUUICounterCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SUUICounterView *)counterView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  counterView = self->_counterView;
  colorCopy = color;
  [(SUUIViewReuseView *)counterView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUICounterCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SUUICounterCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setHighlighted:highlighted];
  [(SUUICounterCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SUUICounterCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setSelected:selected];
  [(SUUICounterCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)_reloadHighlightImageView
{
  if (([(SUUICounterCollectionViewCell *)self isHighlighted]& 1) != 0 || [(SUUICounterCollectionViewCell *)self isSelected])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__52;
    counterView = self->_counterView;
    v32 = __Block_byref_object_dispose__52;
    v33 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__SUUICounterCollectionViewCell__reloadHighlightImageView__block_invoke;
    v27[3] = &unk_2798FB298;
    v27[4] = &v28;
    [(SUUIViewReuseView *)counterView enumerateExistingViewsForReuseIdentifier:0x286AF9940 usingBlock:v27];
    v4 = v29[5];
    if (v4 || (v5 = self->_counterView, v26[0] = MEMORY[0x277D85DD0], v26[1] = 3221225472, v26[2] = __58__SUUICounterCollectionViewCell__reloadHighlightImageView__block_invoke_2, v26[3] = &unk_2798FB298, v26[4] = &v28, [(SUUIViewReuseView *)v5 enumerateExistingViewsForReuseIdentifier:0x286AEECE0 usingBlock:v26], (v4 = v29[5]) != 0))
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
      [(SUUICounterView *)self->_counterView insertSubview:self->_highlightImageView aboveSubview:v29[5]];
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
      v23[2] = __58__SUUICounterCollectionViewCell__reloadHighlightImageView__block_invoke_3;
      v23[3] = &unk_2798F5BE8;
      v24 = v19;
      v22 = v19;
      [v21 setCompletionBlock:v23];
      [(SUUIImageView *)v22 setAlpha:0.0];
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end