@interface BCUPurgeableImage
- (BCUPurgeableImage)initWithImage:(CGImage *)image surface:(__IOSurface *)surface contentsScale:(double)scale;
- (BOOL)markAsNonVolatile;
- (BOOL)markAsVolatile;
- (CGImage)CGImage;
- (CGSize)size;
- (void)dealloc;
@end

@implementation BCUPurgeableImage

- (BCUPurgeableImage)initWithImage:(CGImage *)image surface:(__IOSurface *)surface contentsScale:(double)scale
{
  v12.receiver = self;
  v12.super_class = BCUPurgeableImage;
  v8 = [(BCUPurgeableImage *)&v12 init];
  v9 = v8;
  if (v8)
  {
    scaleCopy = 1.0;
    if (scale != 0.0)
    {
      scaleCopy = scale;
    }

    v8->_contentsScale = scaleCopy;
    v8->_image = CGImageRetain(image);
    v9->_surface = surface;
    if (surface)
    {
      CFRetain(surface);
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