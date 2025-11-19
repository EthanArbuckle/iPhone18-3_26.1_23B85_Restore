@interface SUUIOfferCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUIOfferCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUIOfferCollectionViewCell

- (SUUIOfferCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUIOfferCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SUUIOfferCollectionViewCell *)v3 contentView];
    v6 = [SUUIOfferView alloc];
    [v5 bounds];
    v7 = [(SUUIOfferView *)v6 initWithFrame:?];
    offerView = v4->_offerView;
    v4->_offerView = v7;

    [v5 addSubview:v4->_offerView];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)a3
{
  offerView = self->_offerView;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SUUIViewReuseView *)offerView setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SUUIOfferCollectionViewCell;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:v5];
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [SUUIOfferView preferredSizeForViewElement:a3 context:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SUUIOfferView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIOfferCollectionViewCell;
  [(SUUICollectionViewCell *)&v5 layoutSubviews];
  offerView = self->_offerView;
  v4 = [(SUUIOfferCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SUUIOfferView *)offerView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  offerView = self->_offerView;
  v5 = a3;
  [(SUUIViewReuseView *)offerView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIOfferCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

@end