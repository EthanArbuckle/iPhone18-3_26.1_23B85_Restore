@interface SUUIFilterBarCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIFilterBarCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUIFilterBarCollectionViewCell

- (SUUIFilterBarCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUIFilterBarCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SUUIFilterBarCollectionViewCell *)v3 contentView];
    v6 = [SUUIFilterBarView alloc];
    [contentView bounds];
    v7 = [(SUUIFilterBarView *)v6 initWithFrame:?];
    filterBarView = v4->_filterBarView;
    v4->_filterBarView = v7;

    [contentView addSubview:v4->_filterBarView];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)attributes
{
  filterBarView = self->_filterBarView;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIViewReuseView *)filterBarView setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SUUIFilterBarCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SUUIFilterBarView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SUUIFilterBarView sizeThatFitsWidth:element viewElement:context context:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIFilterBarCollectionViewCell;
  [(SUUICollectionViewCell *)&v5 layoutSubviews];
  filterBarView = self->_filterBarView;
  contentView = [(SUUIFilterBarCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SUUIFilterBarView *)filterBarView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  filterBarView = self->_filterBarView;
  colorCopy = color;
  [(SUUIViewReuseView *)filterBarView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIFilterBarCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

@end