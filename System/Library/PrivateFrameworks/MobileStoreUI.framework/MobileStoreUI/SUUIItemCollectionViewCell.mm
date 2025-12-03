@interface SUUIItemCollectionViewCell
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation SUUIItemCollectionViewCell

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = SUUIItemCollectionViewCell;
  attributesCopy = attributes;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
  v5 = [(SUUIItemCollectionViewCell *)self layout:v7.receiver];
  backgroundColor = [attributesCopy backgroundColor];

  [v5 setBackgroundColor:backgroundColor];
}

- (void)prepareForReuse
{
  layout = [(SUUIItemCollectionViewCell *)self layout];
  [layout prepareForReuse];

  v4.receiver = self;
  v4.super_class = SUUIItemCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v4 prepareForReuse];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  layout = [(SUUIItemCollectionViewCell *)self layout];
  [layout setHighlighted:highlightedCopy];

  v6.receiver = self;
  v6.super_class = SUUIItemCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setHighlighted:highlightedCopy];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  layout = [(SUUIItemCollectionViewCell *)self layout];
  [layout setSelected:selectedCopy];

  v6.receiver = self;
  v6.super_class = SUUIItemCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setSelected:selectedCopy];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SUUIItemCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 layoutSubviews];
  if (self->_layoutNeedsLayout)
  {
    layout = [(SUUIItemCollectionViewCell *)self layout];
    [layout layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SUUIItemCollectionViewCell *)self bounds];
  if (v9 != width || v8 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v11.receiver = self;
  v11.super_class = SUUIItemCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SUUIItemCollectionViewCell *)self frame];
  if (v9 != width || v8 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v11.receiver = self;
  v11.super_class = SUUIItemCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v11 setFrame:x, y, width, height];
}

@end