@interface SUUIEditorialCollectionViewCell
- (SUUIEditorialCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUIEditorialCollectionViewCell

- (SUUIEditorialCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUIEditorialCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[SUUIEditorialCellLayout alloc] initWithCollectionViewCell:v3];
    layout = v3->_layout;
    v3->_layout = v4;
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUUIEditorialCollectionViewCell;
  v4 = a3;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:v4];
  v5 = [(SUUIEditorialCollectionViewCell *)self layout:v7.receiver];
  v6 = [v4 backgroundColor];

  [v5 setBackgroundColor:v6];
}

- (void)prepareForReuse
{
  v3 = [(SUUIEditorialCollectionViewCell *)self layout];
  [v3 prepareForReuse];

  v4.receiver = self;
  v4.super_class = SUUIEditorialCollectionViewCell;
  [(SUUIEditorialCollectionViewCell *)&v4 prepareForReuse];
}

- (void)layoutSubviews
{
  v3 = [(SUUIEditorialCollectionViewCell *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v12.receiver = self;
  v12.super_class = SUUIEditorialCollectionViewCell;
  [(SUUICollectionViewCell *)&v12 layoutSubviews];
  if (self->_layoutNeedsLayout || (([v3 frame], v9 == v5) ? (v10 = v8 == v7) : (v10 = 0), !v10))
  {
    v11 = [(SUUIEditorialCollectionViewCell *)self layout];
    [v11 layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIEditorialCollectionViewCell;
  v4 = a3;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:v4];
  v5 = [(SUUIEditorialCollectionViewCell *)self layout:v6.receiver];
  [v5 setBackgroundColor:v4];
}

@end