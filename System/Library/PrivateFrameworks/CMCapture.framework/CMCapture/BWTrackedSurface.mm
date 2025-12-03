@interface BWTrackedSurface
- (BWTrackedSurface)initWithSurface:(__IOSurface *)surface handler:(id)handler;
- (void)dealloc;
@end

@implementation BWTrackedSurface

- (BWTrackedSurface)initWithSurface:(__IOSurface *)surface handler:(id)handler
{
  v8.receiver = self;
  v8.super_class = BWTrackedSurface;
  v6 = [(BWTrackedSurface *)&v8 init];
  if (v6)
  {
    v6->_surface = CFRetain(surface);
    v6->_handler = [handler copy];
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