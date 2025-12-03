@interface IFPlaceholderImage
- (CGSize)iconSize;
- (CGSize)minimumSize;
- (CGSize)size;
- (IFPlaceholderImage)initWithImage:(id)image;
@end

@implementation IFPlaceholderImage

- (IFPlaceholderImage)initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = IFPlaceholderImage;
  _init = [(IFImage *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 6, image);
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