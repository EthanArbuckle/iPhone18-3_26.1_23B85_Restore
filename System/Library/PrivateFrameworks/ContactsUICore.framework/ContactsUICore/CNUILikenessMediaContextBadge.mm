@interface CNUILikenessMediaContextBadge
- (BOOL)isEqual:(id)equal;
- (CNUILikenessMediaContextBadge)initWithImageData:(id)data;
@end

@implementation CNUILikenessMediaContextBadge

- (CNUILikenessMediaContextBadge)initWithImageData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = CNUILikenessMediaContextBadge;
  v6 = [(CNUILikenessMediaContextBadge *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, data);
    image = v7->_image;
    v7->_image = 0;

    v7->_badgeType = 2;
    v9 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (imageData = self->_imageData, imageData | equalCopy->_imageData) && ![(NSData *)imageData isEqual:?]|| (image = self->_image, image | equalCopy->_image) && ![(UIImage *)image isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

@end