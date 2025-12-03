@interface CBDisplayClockSourceAdapter
- (CBDisplayClockSourceAdapter)initWithDisplayRef:(__Display *)ref;
- (void)resume;
- (void)setPreferredFramesPerSecond:(float)second;
@end

@implementation CBDisplayClockSourceAdapter

- (CBDisplayClockSourceAdapter)initWithDisplayRef:(__Display *)ref
{
  selfCopy = self;
  v6 = a2;
  refCopy = ref;
  v4.receiver = self;
  v4.super_class = CBDisplayClockSourceAdapter;
  selfCopy = [(CBDisplayClockSourceAdapter *)&v4 init];
  selfCopy->_display = refCopy;
  selfCopy->_preferredFramesPerSecond = 1.0;
  selfCopy->_running = 0;
  return selfCopy;
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

- (void)setPreferredFramesPerSecond:(float)second
{
  self->_preferredFramesPerSecond = clamp(second, 0.0, 1000.0);
  if (self->_running)
  {
    [(CBDisplayClockSourceAdapter *)self resume];
  }
}

@end