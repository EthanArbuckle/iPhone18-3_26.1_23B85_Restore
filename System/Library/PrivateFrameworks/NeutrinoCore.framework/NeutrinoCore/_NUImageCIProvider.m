@interface _NUImageCIProvider
- (_NUImageCIProvider)initWithImage:(id)a3;
- (void)dealloc;
- (void)provideImageData:(void *)a3 bytesPerRow:(unint64_t)a4 origin:(unint64_t)a5 :(unint64_t)a6 size:(unint64_t)a7 :(unint64_t)a8 userInfo:(id)a9;
@end

@implementation _NUImageCIProvider

- (void)provideImageData:(void *)a3 bytesPerRow:(unint64_t)a4 origin:(unint64_t)a5 :(unint64_t)a6 size:(unint64_t)a7 :(unint64_t)a8 userInfo:(id)a9
{
  image = self->_image;
  v11[0] = a5;
  v11[1] = a6;
  v11[2] = a7;
  v11[3] = a8;
  [NUImageUtilities copyPixelsFromImage:image rect:v11 destPtr:a3 destPtrRowBytes:a4];
}

- (void)dealloc
{
  image = self->_image;
  self->_image = 0;

  v4.receiver = self;
  v4.super_class = _NUImageCIProvider;
  [(_NUImageCIProvider *)&v4 dealloc];
}

- (_NUImageCIProvider)initWithImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _NUImageCIProvider;
  v6 = [(_NUImageCIProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
  }

  return v7;
}

@end