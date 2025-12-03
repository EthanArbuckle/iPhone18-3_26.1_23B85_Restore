@interface SUUIContentUnavailableCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIContentUnavailableCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SUUIContentUnavailableCollectionViewCell

- (SUUIContentUnavailableCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SUUIContentUnavailableCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SUUIContentUnavailableView);
    contentUnavailableView = v3->_contentUnavailableView;
    v3->_contentUnavailableView = v4;

    contentView = [(SUUIContentUnavailableCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_contentUnavailableView];
  }

  return v3;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SUUIContentUnavailableView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SUUIContentUnavailableView sizeThatFitsWidth:element viewElement:context context:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIContentUnavailableCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  contentUnavailableView = self->_contentUnavailableView;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIViewReuseView *)contentUnavailableView setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SUUIContentUnavailableCollectionViewCell;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SUUIContentUnavailableCollectionViewCell;
  [(SUUICollectionViewCell *)&v9 layoutSubviews];
  contentUnavailableView = self->_contentUnavailableView;
  contentView = [(SUUIContentUnavailableCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SUUIContentUnavailableView *)contentUnavailableView setFrame:v5 + self->_contentInset.left, v6 + self->_contentInset.top, v7 - (self->_contentInset.left + self->_contentInset.right), v8 - (self->_contentInset.top + self->_contentInset.bottom)];
}

- (void)setBackgroundColor:(id)color
{
  contentUnavailableView = self->_contentUnavailableView;
  colorCopy = color;
  [(SUUIViewReuseView *)contentUnavailableView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIContentUnavailableCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

@end