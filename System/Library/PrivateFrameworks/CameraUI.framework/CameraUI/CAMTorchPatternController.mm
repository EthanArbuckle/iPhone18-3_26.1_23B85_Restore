@interface CAMTorchPatternController
- (CAMTorchPatternController)initWithCaptureController:(id)controller;
- (void)_applyTorchLevel:(float)level;
- (void)_resetTorchLevel;
- (void)_setPerforming:(BOOL)performing;
- (void)blink;
- (void)displayLinkFired:(id)fired;
- (void)doubleBlink;
- (void)startPerformingPattern:(id)pattern;
- (void)stopPerformingPattern;
@end

@implementation CAMTorchPatternController

- (CAMTorchPatternController)initWithCaptureController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CAMTorchPatternController;
  v6 = [(CAMTorchPatternController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__captureController, controller);
    v8 = v7;
  }

  return v7;
}

- (void)startPerformingPattern:(id)pattern
{
  patternCopy = pattern;
  if (![(CAMTorchPatternController *)self _isPerforming])
  {
    objc_storeStrong(&self->__currentPattern, pattern);
    self->__startTime = CACurrentMediaTime();
    [(CAMTorchPattern *)self->__currentPattern setStartTime:?];
    [(CAMTorchPatternController *)self _setPerforming:1];
  }
}

- (void)stopPerformingPattern
{
  if ([(CAMTorchPatternController *)self _isPerforming])
  {
    [(CAMTorchPatternController *)self _resetTorchLevel];
    currentPattern = self->__currentPattern;
    self->__currentPattern = 0;

    [(CAMTorchPatternController *)self _setPerforming:0];
  }
}

- (void)_resetTorchLevel
{
  _captureController = [(CAMTorchPatternController *)self _captureController];
  [_captureController changeToTorchMode:0];
}

- (void)_applyTorchLevel:(float)level
{
  if (level >= 0.01)
  {
    _captureController = [(CAMTorchPatternController *)self _captureController];
    *&v4 = level;
    [_captureController changeToTorchLevel:v4];
  }

  else
  {

    [(CAMTorchPatternController *)self _resetTorchLevel];
  }
}

- (void)blink
{
  [(CAMTorchPatternController *)self _setPerforming:1];
  v3 = [[CAMTorchPattern alloc] initWithType:2];
  currentPattern = self->__currentPattern;
  self->__currentPattern = v3;

  self->__startTime = CACurrentMediaTime();
  v5 = self->__currentPattern;

  [(CAMTorchPattern *)v5 setStartTime:?];
}

- (void)doubleBlink
{
  [(CAMTorchPatternController *)self _setPerforming:1];
  v3 = [[CAMTorchPattern alloc] initWithType:3];
  currentPattern = self->__currentPattern;
  self->__currentPattern = v3;

  self->__startTime = CACurrentMediaTime();
  v5 = self->__currentPattern;

  [(CAMTorchPattern *)v5 setStartTime:?];
}

- (void)_setPerforming:(BOOL)performing
{
  if (self->__performing != performing)
  {
    self->__performing = performing;
    if (performing)
    {
      v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_displayLinkFired_];
      displayLink = self->__displayLink;
      self->__displayLink = v4;

      v6 = self->__displayLink;
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

      v8 = self->__displayLink;

      [(CADisplayLink *)v8 setPaused:0];
    }

    else
    {
      [(CADisplayLink *)self->__displayLink setPaused:1];
      [(CADisplayLink *)self->__displayLink invalidate];
      v9 = self->__displayLink;
      self->__displayLink = 0;
    }
  }
}

- (void)displayLinkFired:(id)fired
{
  [(CAMTorchPattern *)self->__currentPattern updateAtTime:CACurrentMediaTime() - self->__startTime];
  [(CAMTorchPattern *)self->__currentPattern torchLevel];

  [(CAMTorchPatternController *)self _applyTorchLevel:?];
}

@end