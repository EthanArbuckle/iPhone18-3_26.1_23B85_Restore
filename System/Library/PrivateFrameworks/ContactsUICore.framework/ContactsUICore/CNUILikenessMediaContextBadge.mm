@interface CNUILikenessMediaContextBadge
- (BOOL)isEqual:(id)a3;
- (CNUILikenessMediaContextBadge)initWithImageData:(id)a3;
@end

@implementation CNUILikenessMediaContextBadge

- (CNUILikenessMediaContextBadge)initWithImageData:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CNUILikenessMediaContextBadge;
  v6 = [(CNUILikenessMediaContextBadge *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, a3);
    image = v7->_image;
    v7->_image = 0;

    v7->_badgeType = 2;
    v9 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (imageData = self->_imageData, imageData | v4->_imageData) && ![(NSData *)imageData isEqual:?]|| (image = self->_image, image | v4->_image) && ![(UIImage *)image isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

@end