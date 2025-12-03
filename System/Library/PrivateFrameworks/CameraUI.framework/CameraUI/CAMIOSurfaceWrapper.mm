@interface CAMIOSurfaceWrapper
- (CAMIOSurfaceWrapper)initWithIOSurface:(void *)surface;
- (void)dealloc;
@end

@implementation CAMIOSurfaceWrapper

- (CAMIOSurfaceWrapper)initWithIOSurface:(void *)surface
{
  v7.receiver = self;
  v7.super_class = CAMIOSurfaceWrapper;
  v4 = [(CAMIOSurfaceWrapper *)&v7 init];
  if (v4)
  {
    if (surface)
    {
      v4->_surface = CFRetain(surface);
    }

    v5 = v4;
  }

  return v4;
}

- (void)dealloc
{
  surface = self->_surface;
  if (surface)
  {
    CFRelease(surface);
  }

  v4.receiver = self;
  v4.super_class = CAMIOSurfaceWrapper;
  [(CAMIOSurfaceWrapper *)&v4 dealloc];
}

@end