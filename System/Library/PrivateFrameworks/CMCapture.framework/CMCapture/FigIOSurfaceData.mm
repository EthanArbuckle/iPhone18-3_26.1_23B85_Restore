@interface FigIOSurfaceData
+ (id)dataWithIOSurface:(__IOSurface *)a3;
+ (id)dataWithIOSurface:(__IOSurface *)a3 length:(unint64_t)a4;
- (FigIOSurfaceData)initWithIOSurface:(__IOSurface *)a3 length:(unint64_t)a4;
- (const)bytes;
- (void)dealloc;
@end

@implementation FigIOSurfaceData

+ (id)dataWithIOSurface:(__IOSurface *)a3
{
  v3 = [[a1 alloc] initWithIOSurface:a3];

  return v3;
}

+ (id)dataWithIOSurface:(__IOSurface *)a3 length:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithIOSurface:a3 length:a4];

  return v4;
}

- (FigIOSurfaceData)initWithIOSurface:(__IOSurface *)a3 length:(unint64_t)a4
{
  if (a3)
  {
    v11.receiver = self;
    v11.super_class = FigIOSurfaceData;
    v6 = [(FigIOSurfaceData *)&v11 init];
    if (v6)
    {
      v7 = CFRetain(a3);
      v6->_surface = v7;
      AllocSize = IOSurfaceGetAllocSize(v7);
      if (AllocSize >= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = AllocSize;
      }

      if (!a4)
      {
        v9 = AllocSize;
      }

      v6->_length = v9;
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