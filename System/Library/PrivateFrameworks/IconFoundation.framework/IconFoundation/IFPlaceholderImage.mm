@interface IFPlaceholderImage
- (CGSize)iconSize;
- (CGSize)minimumSize;
- (CGSize)size;
- (IFPlaceholderImage)initWithImage:(id)a3;
@end

@implementation IFPlaceholderImage

- (IFPlaceholderImage)initWithImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IFPlaceholderImage;
  v6 = [(IFImage *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 6, a3);
  }

  return v7;
}

- (CGSize)size
{
  [(IFImage *)self->_image size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)iconSize
{
  [(IFImage *)self->_image iconSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)minimumSize
{
  [(IFImage *)self->_image minimumSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end