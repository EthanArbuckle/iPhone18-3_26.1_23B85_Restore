@interface SUUIActivityIndicatorCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUIActivityIndicatorCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SUUIActivityIndicatorCollectionViewCell

- (SUUIActivityIndicatorCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUUIActivityIndicatorCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SUUIActivityIndicatorView);
    indicatorView = v3->_indicatorView;
    v3->_indicatorView = v4;

    v6 = [(SUUIActivityIndicatorCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_indicatorView];
  }

  return v3;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [SUUIActivityIndicatorView preferredSizeForViewElement:a3 context:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SUUIActivityIndicatorView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SUUIActivityIndicatorCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  indicatorView = self->_indicatorView;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SUUIViewReuseView *)indicatorView setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SUUIActivityIndicatorCollectionViewCell;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:v5];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SUUIActivityIndicatorCollectionViewCell;
  [(SUUICollectionViewCell *)&v11 layoutSubviews];
  v3 = [(SUUIActivityIndicatorCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(SUUIActivityIndicatorView *)self->_indicatorView sizeThatFits:v5, v7];
  v9 = v8;
  *&v8 = (v5 - v8) * 0.5;
  *&v10 = v7 * 0.5 - v10;
  [(SUUIActivityIndicatorView *)self->_indicatorView setFrame:floorf(*&v8), floorf(*&v10), v9];
}

- (void)setBackgroundColor:(id)a3
{
  indicatorView = self->_indicatorView;
  v5 = a3;
  [(SUUIViewReuseView *)indicatorView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIActivityIndicatorCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

@end