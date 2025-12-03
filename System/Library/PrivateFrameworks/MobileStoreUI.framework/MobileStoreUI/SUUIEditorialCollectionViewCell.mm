@interface SUUIEditorialCollectionViewCell
- (SUUIEditorialCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUIEditorialCollectionViewCell

- (SUUIEditorialCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUIEditorialCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[SUUIEditorialCellLayout alloc] initWithCollectionViewCell:v3];
    layout = v3->_layout;
    v3->_layout = v4;
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = SUUIEditorialCollectionViewCell;
  attributesCopy = attributes;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
  v5 = [(SUUIEditorialCollectionViewCell *)self layout:v7.receiver];
  backgroundColor = [attributesCopy backgroundColor];

  [v5 setBackgroundColor:backgroundColor];
}

- (void)prepareForReuse
{
  layout = [(SUUIEditorialCollectionViewCell *)self layout];
  [layout prepareForReuse];

  v4.receiver = self;
  v4.super_class = SUUIEditorialCollectionViewCell;
  [(SUUIEditorialCollectionViewCell *)&v4 prepareForReuse];
}

- (void)layoutSubviews
{
  contentView = [(SUUIEditorialCollectionViewCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v12.receiver = self;
  v12.super_class = SUUIEditorialCollectionViewCell;
  [(SUUICollectionViewCell *)&v12 layoutSubviews];
  if (self->_layoutNeedsLayout || (([contentView frame], v9 == v5) ? (v10 = v8 == v7) : (v10 = 0), !v10))
  {
    layout = [(SUUIEditorialCollectionViewCell *)self layout];
    [layout layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = SUUIEditorialCollectionViewCell;
  colorCopy = color;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
  v5 = [(SUUIEditorialCollectionViewCell *)self layout:v6.receiver];
  [v5 setBackgroundColor:colorCopy];
}

@end