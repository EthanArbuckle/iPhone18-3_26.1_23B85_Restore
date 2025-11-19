@interface BCUPurgeableImage
- (BCUPurgeableImage)initWithImage:(CGImage *)a3 surface:(__IOSurface *)a4 contentsScale:(double)a5;
- (BOOL)markAsNonVolatile;
- (BOOL)markAsVolatile;
- (CGImage)CGImage;
- (CGSize)size;
- (void)dealloc;
@end

@implementation BCUPurgeableImage

- (BCUPurgeableImage)initWithImage:(CGImage *)a3 surface:(__IOSurface *)a4 contentsScale:(double)a5
{
  v12.receiver = self;
  v12.super_class = BCUPurgeableImage;
  v8 = [(BCUPurgeableImage *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = 1.0;
    if (a5 != 0.0)
    {
      v10 = a5;
    }

    v8->_contentsScale = v10;
    v8->_image = CGImageRetain(a3);
    v9->_surface = a4;
    if (a4)
    {
      CFRetain(a4);
    }
  }

  return v9;
}

- (void)dealloc
{
  surface = self->_surface;
  if (surface)
  {
    CFRelease(surface);
  }

  CGImageRelease(self->_image);
  v4.receiver = self;
  v4.super_class = BCUPurgeableImage;
  [(BCUPurgeableImage *)&v4 dealloc];
}

- (CGSize)size
{
  image = self->_image;
  if (image)
  {
    v4 = CGImageGetWidth(image) / self->_contentsScale;
    v5 = CGImageGetHeight(self->_image) / self->_contentsScale;
  }

  else
  {
    v4 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGImage)CGImage
{
  result = self->_image;
  if (result)
  {
    v3 = CGImageRetain(result);

    return CFAutorelease(v3);
  }

  return result;
}

- (BOOL)markAsVolatile
{
  surface = self->_surface;
  if (surface)
  {
    IOSurfaceSetPurgeable(self->_surface, 1u, 0);
  }

  return surface != 0;
}

- (BOOL)markAsNonVolatile
{
  surface = self->_surface;
  if (!surface)
  {
    return 1;
  }

  oldState = 0;
  IOSurfaceSetPurgeable(surface, 0, &oldState);
  return oldState != 2;
}

@end