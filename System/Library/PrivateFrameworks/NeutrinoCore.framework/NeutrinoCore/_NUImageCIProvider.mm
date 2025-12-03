@interface _NUImageCIProvider
- (_NUImageCIProvider)initWithImage:(id)image;
- (void)dealloc;
- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info;
@end

@implementation _NUImageCIProvider

- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info
{
  image = self->_image;
  v11[0] = origin;
  v11[1] = a6;
  v11[2] = size;
  v11[3] = a8;
  [NUImageUtilities copyPixelsFromImage:image rect:v11 destPtr:data destPtrRowBytes:row];
}

- (void)dealloc
{
  image = self->_image;
  self->_image = 0;

  v4.receiver = self;
  v4.super_class = _NUImageCIProvider;
  [(_NUImageCIProvider *)&v4 dealloc];
}

- (_NUImageCIProvider)initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = _NUImageCIProvider;
  v6 = [(_NUImageCIProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
  }

  return v7;
}

@end