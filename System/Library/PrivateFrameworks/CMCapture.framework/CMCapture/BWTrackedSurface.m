@interface BWTrackedSurface
- (BWTrackedSurface)initWithSurface:(__IOSurface *)a3 handler:(id)a4;
- (void)dealloc;
@end

@implementation BWTrackedSurface

- (BWTrackedSurface)initWithSurface:(__IOSurface *)a3 handler:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWTrackedSurface;
  v6 = [(BWTrackedSurface *)&v8 init];
  if (v6)
  {
    v6->_surface = CFRetain(a3);
    v6->_handler = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  surface = self->_surface;
  if (surface)
  {
    CFRelease(surface);
  }

  v4.receiver = self;
  v4.super_class = BWTrackedSurface;
  [(BWTrackedSurface *)&v4 dealloc];
}

@end