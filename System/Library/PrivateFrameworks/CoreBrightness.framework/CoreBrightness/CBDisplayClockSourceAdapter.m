@interface CBDisplayClockSourceAdapter
- (CBDisplayClockSourceAdapter)initWithDisplayRef:(__Display *)a3;
- (void)resume;
- (void)setPreferredFramesPerSecond:(float)a3;
@end

@implementation CBDisplayClockSourceAdapter

- (CBDisplayClockSourceAdapter)initWithDisplayRef:(__Display *)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = CBDisplayClockSourceAdapter;
  v7 = [(CBDisplayClockSourceAdapter *)&v4 init];
  v7->_display = v5;
  v7->_preferredFramesPerSecond = 1.0;
  v7->_running = 0;
  return v7;
}

- (void)resume
{
  context = objc_autoreleasePoolPush();
  if (self->_preferredFramesPerSecond > 0.0)
  {
    self->_running = 1;
    DisplaySetProperty(self->_display, @"ExternalRampIsRunning", @"CBDisplayClockAdapterRamp");
    *&v2 = 1.0 / self->_preferredFramesPerSecond;
    DisplaySetProperty(self->_display, @"DisplayDisplayStartFade", [MEMORY[0x1E696AD98] numberWithFloat:v2]);
  }

  objc_autoreleasePoolPop(context);
}

- (void)setPreferredFramesPerSecond:(float)a3
{
  self->_preferredFramesPerSecond = clamp(a3, 0.0, 1000.0);
  if (self->_running)
  {
    [(CBDisplayClockSourceAdapter *)self resume];
  }
}

@end