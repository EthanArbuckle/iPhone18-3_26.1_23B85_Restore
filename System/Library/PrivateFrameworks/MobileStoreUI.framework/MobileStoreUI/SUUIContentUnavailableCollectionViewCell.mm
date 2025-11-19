@interface SUUIContentUnavailableCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUIContentUnavailableCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SUUIContentUnavailableCollectionViewCell

- (SUUIContentUnavailableCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUUIContentUnavailableCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SUUIContentUnavailableView);
    contentUnavailableView = v3->_contentUnavailableView;
    v3->_contentUnavailableView = v4;

    v6 = [(SUUIContentUnavailableCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_contentUnavailableView];
  }

  return v3;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [SUUIContentUnavailableView preferredSizeForViewElement:a3 context:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SUUIContentUnavailableView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
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
    [(SUUIContentUnavailableCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  contentUnavailableView = self->_contentUnavailableView;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SUUIViewReuseView *)contentUnavailableView setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SUUIContentUnavailableCollectionViewCell;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:v5];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SUUIContentUnavailableCollectionViewCell;
  [(SUUICollectionViewCell *)&v9 layoutSubviews];
  contentUnavailableView = self->_contentUnavailableView;
  v4 = [(SUUIContentUnavailableCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SUUIContentUnavailableView *)contentUnavailableView setFrame:v5 + self->_contentInset.left, v6 + self->_contentInset.top, v7 - (self->_contentInset.left + self->_contentInset.right), v8 - (self->_contentInset.top + self->_contentInset.bottom)];
}

- (void)setBackgroundColor:(id)a3
{
  contentUnavailableView = self->_contentUnavailableView;
  v5 = a3;
  [(SUUIViewReuseView *)contentUnavailableView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIContentUnavailableCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

@end