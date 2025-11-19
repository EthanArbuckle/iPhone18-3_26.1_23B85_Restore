@interface SUUIFilterBarCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUIFilterBarCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUIFilterBarCollectionViewCell

- (SUUIFilterBarCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUIFilterBarCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SUUIFilterBarCollectionViewCell *)v3 contentView];
    v6 = [SUUIFilterBarView alloc];
    [v5 bounds];
    v7 = [(SUUIFilterBarView *)v6 initWithFrame:?];
    filterBarView = v4->_filterBarView;
    v4->_filterBarView = v7;

    [v5 addSubview:v4->_filterBarView];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)a3
{
  filterBarView = self->_filterBarView;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SUUIViewReuseView *)filterBarView setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SUUIFilterBarCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v7 applyLayoutAttributes:v5];
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [SUUIFilterBarView preferredSizeForViewElement:a3 context:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SUUIFilterBarView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
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
  v4 = [(SUUIFilterBarCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SUUIFilterBarView *)filterBarView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  filterBarView = self->_filterBarView;
  v5 = a3;
  [(SUUIViewReuseView *)filterBarView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIFilterBarCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v6 setBackgroundColor:v5];
}

@end