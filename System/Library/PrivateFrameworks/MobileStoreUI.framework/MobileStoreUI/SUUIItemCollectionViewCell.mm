@interface SUUIItemCollectionViewCell
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SUUIItemCollectionViewCell

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUUIItemCollectionViewCell;
  v4 = a3;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:v4];
  v5 = [(SUUIItemCollectionViewCell *)self layout:v7.receiver];
  v6 = [v4 backgroundColor];

  [v5 setBackgroundColor:v6];
}

- (void)prepareForReuse
{
  v3 = [(SUUIItemCollectionViewCell *)self layout];
  [v3 prepareForReuse];

  v4.receiver = self;
  v4.super_class = SUUIItemCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v4 prepareForReuse];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIItemCollectionViewCell *)self layout];
  [v5 setHighlighted:v3];

  v6.receiver = self;
  v6.super_class = SUUIItemCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setHighlighted:v3];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIItemCollectionViewCell *)self layout];
  [v5 setSelected:v3];

  v6.receiver = self;
  v6.super_class = SUUIItemCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setSelected:v3];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SUUIItemCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 layoutSubviews];
  if (self->_layoutNeedsLayout)
  {
    v3 = [(SUUIItemCollectionViewCell *)self layout];
    [v3 layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SUUIItemCollectionViewCell *)self bounds];
  if (v9 != width || v8 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v11.receiver = self;
  v11.super_class = SUUIItemCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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