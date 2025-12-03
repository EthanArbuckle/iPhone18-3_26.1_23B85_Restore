@interface SUUIActivityIndicatorCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIActivityIndicatorCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SUUIActivityIndicatorCollectionViewCell

- (SUUIActivityIndicatorCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SUUIActivityIndicatorCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SUUIActivityIndicatorView);
    indicatorView = v3->_indicatorView;
    v3->_indicatorView = v4;

    contentView = [(SUUIActivityIndicatorCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_indicatorView];
  }

  return v3;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SUUIActivityIndicatorView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SUUIActivityIndicatorView sizeThatFitsWidth:element viewElement:context context:width];
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
    [(SUUIActivityIndicatorCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  indicatorView = self->_indicatorView;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIViewReuseView *)indicatorView setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SUUIActivityIndicatorCollectionViewCell;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SUUIActivityIndicatorCollectionViewCell;
  [(SUUICollectionViewCell *)&v11 layoutSubviews];
  contentView = [(SUUIActivityIndicatorCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  [(SUUIActivityIndicatorView *)self->_indicatorView sizeThatFits:v5, v7];
  v9 = v8;
  *&v8 = (v5 - v8) * 0.5;
  *&v10 = v7 * 0.5 - v10;
  [(SUUIActivityIndicatorView *)self->_indicatorView setFrame:floorf(*&v8), floorf(*&v10), v9];
}

- (void)setBackgroundColor:(id)color
{
  indicatorView = self->_indicatorView;
  colorCopy = color;
  [(SUUIViewReuseView *)indicatorView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIActivityIndicatorCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

@end