@interface SUUISectionHeaderCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUISectionHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUISectionHeaderCollectionViewCell

- (SUUISectionHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUISectionHeaderCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SUUISectionHeaderCollectionViewCell *)v3 contentView];
    v6 = [SUUISectionHeaderView alloc];
    [v5 bounds];
    v7 = [(SUUISectionHeaderView *)v6 initWithFrame:?];
    headerView = v4->_headerView;
    v4->_headerView = v7;

    [v5 addSubview:v4->_headerView];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)a3
{
  headerView = self->_headerView;
  v5 = MEMORY[0x277D75348];
  v6 = a3;
  v7 = [v5 clearColor];
  [(SUUIViewReuseView *)headerView setBackgroundColor:v7];

  v8.receiver = self;
  v8.super_class = SUUISectionHeaderCollectionViewCell;
  [(SUUICollectionViewCell *)&v8 applyLayoutAttributes:v6];
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [SUUISectionHeaderView preferredSizeForViewElement:a3 context:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SUUISectionHeaderView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUISectionHeaderCollectionViewCell;
  [(SUUICollectionViewCell *)&v5 layoutSubviews];
  headerView = self->_headerView;
  v4 = [(SUUISectionHeaderCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SUUISectionHeaderView *)headerView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  headerView = self->_headerView;
  v5 = a3;
  [(SUUIViewReuseView *)headerView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUISectionHeaderCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

@end