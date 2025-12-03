@interface CLKUIDisplayLink
- (CLKUIDisplayLink)initWithTarget:(id)target selector:(SEL)selector;
- (void)invalidate;
- (void)updateCoordinator;
@end

@implementation CLKUIDisplayLink

- (CLKUIDisplayLink)initWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v13.receiver = self;
  v13.super_class = CLKUIDisplayLink;
  v7 = [(CLKUIRenderFrequencyLink *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E6979330] displayLinkWithTarget:targetCopy selector:selector];
    displayLink = v7->_displayLink;
    v7->_displayLink = v8;

    [(CADisplayLink *)v7->_displayLink setPaused:1];
    v10 = v7->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v10 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
  }

  return v7;
}

- (void)updateCoordinator
{
  v3.receiver = self;
  v3.super_class = CLKUIDisplayLink;
  [(CLKUIRenderFrequencyLink *)&v3 updateCoordinator];
  [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:[(CLKUIRenderFrequencyLink *)self preferredFramesPerSecond]];
  [(CADisplayLink *)self->_displayLink setPaused:[(CLKUIRenderFrequencyLink *)self isPaused]];
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = CLKUIDisplayLink;
  [(CLKUIRenderFrequencyLink *)&v4 invalidate];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

@end