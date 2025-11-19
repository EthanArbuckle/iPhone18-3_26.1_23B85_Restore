@interface SUUIHorizontalListCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUIHorizontalListCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUIHorizontalListCollectionViewCell

- (SUUIHorizontalListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SUUIHorizontalListCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [SUUIHorizontalListView alloc];
    [(SUUIHorizontalListCollectionViewCell *)v3 bounds];
    v5 = [(SUUIHorizontalListView *)v4 initWithFrame:?];
    horizontalList = v3->_horizontalList;
    v3->_horizontalList = v5;

    v7 = [(SUUIHorizontalListCollectionViewCell *)v3 contentView];
    [v7 addSubview:v3->_horizontalList];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)a3
{
  horizontalList = self->_horizontalList;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SUUIViewReuseView *)horizontalList setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SUUIHorizontalListCollectionViewCell;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:v5];
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SUUIHorizontalListView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
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
  v4 = [(SUUIHorizontalListCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SUUIHorizontalListView *)horizontalList setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  horizontalList = self->_horizontalList;
  v5 = a3;
  [(SUUIViewReuseView *)horizontalList setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIHorizontalListCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:v5];
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