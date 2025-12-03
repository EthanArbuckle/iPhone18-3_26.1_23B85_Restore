@interface FigIOSurfaceData
+ (id)dataWithIOSurface:(__IOSurface *)surface;
+ (id)dataWithIOSurface:(__IOSurface *)surface length:(unint64_t)length;
- (FigIOSurfaceData)initWithIOSurface:(__IOSurface *)surface length:(unint64_t)length;
- (const)bytes;
- (void)dealloc;
@end

@implementation FigIOSurfaceData

+ (id)dataWithIOSurface:(__IOSurface *)surface
{
  v3 = [[self alloc] initWithIOSurface:surface];

  return v3;
}

+ (id)dataWithIOSurface:(__IOSurface *)surface length:(unint64_t)length
{
  v4 = [[self alloc] initWithIOSurface:surface length:length];

  return v4;
}

- (FigIOSurfaceData)initWithIOSurface:(__IOSurface *)surface length:(unint64_t)length
{
  if (surface)
  {
    v11.receiver = self;
    v11.super_class = FigIOSurfaceData;
    v6 = [(FigIOSurfaceData *)&v11 init];
    if (v6)
    {
      v7 = CFRetain(surface);
      v6->_surface = v7;
      AllocSize = IOSurfaceGetAllocSize(v7);
      if (AllocSize >= length)
      {
        lengthCopy = length;
      }

      else
      {
        lengthCopy = AllocSize;
      }

      if (!length)
      {
        lengthCopy = AllocSize;
      }

      v6->_length = lengthCopy;
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (const)bytes
{
  result = self->_bytes;
  if (!result)
  {
    IOSurfaceLock(self->_surface, 1u, 0);
    result = IOSurfaceGetBaseAddress(self->_surface);
    self->_bytes = result;
  }

  return result;
}

- (void)dealloc
{
  surface = self->_surface;
  if (surface)
  {
    if (self->_bytes)
    {
      IOSurfaceUnlock(surface, 1u, 0);
      self->_bytes = 0;
      surface = self->_surface;
    }

    CFRelease(surface);
  }

  v4.receiver = self;
  v4.super_class = FigIOSurfaceData;
  [(FigIOSurfaceData *)&v4 dealloc];
}

@end