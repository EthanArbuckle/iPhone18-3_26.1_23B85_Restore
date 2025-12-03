@interface SUUIHorizontalListCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIHorizontalListCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUIHorizontalListCollectionViewCell

- (SUUIHorizontalListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SUUIHorizontalListCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [SUUIHorizontalListView alloc];
    [(SUUIHorizontalListCollectionViewCell *)v3 bounds];
    v5 = [(SUUIHorizontalListView *)v4 initWithFrame:?];
    horizontalList = v3->_horizontalList;
    v3->_horizontalList = v5;

    contentView = [(SUUIHorizontalListCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_horizontalList];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  horizontalList = self->_horizontalList;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIViewReuseView *)horizontalList setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SUUIHorizontalListCollectionViewCell;
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
  [SUUIHorizontalListView sizeThatFitsWidth:element viewElement:context context:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIHorizontalListCollectionViewCell;
  [(SUUICollectionViewCell *)&v5 layoutSubviews];
  horizontalList = self->_horizontalList;
  contentView = [(SUUIHorizontalListCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SUUIHorizontalListView *)horizontalList setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  horizontalList = self->_horizontalList;
  colorCopy = color;
  [(SUUIViewReuseView *)horizontalList setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIHorizontalListCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
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