@interface CNUILikenessSystemImageBadge
- (BOOL)isEqual:(id)a3;
- (CNUILikenessSystemImageBadge)initWithSystemImageNamed:(id)a3;
@end

@implementation CNUILikenessSystemImageBadge

- (CNUILikenessSystemImageBadge)initWithSystemImageNamed:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNUILikenessSystemImageBadge;
  v5 = [(CNUILikenessSystemImageBadge *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_badgeType = 0;
    imageData = v5->_imageData;
    v5->_imageData = 0;

    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
    image = v6->_image;
    v6->_image = v8;

    v10 = v6;
  }

  return v6;
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