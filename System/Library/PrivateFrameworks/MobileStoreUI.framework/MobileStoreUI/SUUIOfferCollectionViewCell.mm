@interface SUUIOfferCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIOfferCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUIOfferCollectionViewCell

- (SUUIOfferCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUIOfferCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SUUIOfferCollectionViewCell *)v3 contentView];
    v6 = [SUUIOfferView alloc];
    [contentView bounds];
    v7 = [(SUUIOfferView *)v6 initWithFrame:?];
    offerView = v4->_offerView;
    v4->_offerView = v7;

    [contentView addSubview:v4->_offerView];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)attributes
{
  offerView = self->_offerView;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SUUIViewReuseView *)offerView setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SUUIOfferCollectionViewCell;
  [(SUUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SUUIOfferView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SUUIOfferView sizeThatFitsWidth:element viewElement:context context:width];
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
  contentView = [(SUUIOfferCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SUUIOfferView *)offerView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  offerView = self->_offerView;
  colorCopy = color;
  [(SUUIViewReuseView *)offerView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIOfferCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

@end