@interface SUUISectionHeaderCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUISectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUISectionHeaderCollectionViewCell

- (SUUISectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUISectionHeaderCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SUUISectionHeaderCollectionViewCell *)v3 contentView];
    v6 = [SUUISectionHeaderView alloc];
    [contentView bounds];
    v7 = [(SUUISectionHeaderView *)v6 initWithFrame:?];
    headerView = v4->_headerView;
    v4->_headerView = v7;

    [contentView addSubview:v4->_headerView];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)attributes
{
  headerView = self->_headerView;
  v5 = MEMORY[0x277D75348];
  attributesCopy = attributes;
  clearColor = [v5 clearColor];
  [(SUUIViewReuseView *)headerView setBackgroundColor:clearColor];

  v8.receiver = self;
  v8.super_class = SUUISectionHeaderCollectionViewCell;
  [(SUUICollectionViewCell *)&v8 applyLayoutAttributes:attributesCopy];
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SUUISectionHeaderView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SUUISectionHeaderView sizeThatFitsWidth:element viewElement:context context:width];
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
  contentView = [(SUUISectionHeaderCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SUUISectionHeaderView *)headerView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  headerView = self->_headerView;
  colorCopy = color;
  [(SUUIViewReuseView *)headerView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUISectionHeaderCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

@end