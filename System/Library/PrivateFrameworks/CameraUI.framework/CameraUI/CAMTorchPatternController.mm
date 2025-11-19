@interface CAMTorchPatternController
- (CAMTorchPatternController)initWithCaptureController:(id)a3;
- (void)_applyTorchLevel:(float)a3;
- (void)_resetTorchLevel;
- (void)_setPerforming:(BOOL)a3;
- (void)blink;
- (void)displayLinkFired:(id)a3;
- (void)doubleBlink;
- (void)startPerformingPattern:(id)a3;
- (void)stopPerformingPattern;
@end

@implementation CAMTorchPatternController

- (CAMTorchPatternController)initWithCaptureController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMTorchPatternController;
  v6 = [(CAMTorchPatternController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__captureController, a3);
    v8 = v7;
  }

  return v7;
}

- (void)startPerformingPattern:(id)a3
{
  v5 = a3;
  if (![(CAMTorchPatternController *)self _isPerforming])
  {
    objc_storeStrong(&self->__currentPattern, a3);
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
  v2 = [(CAMTorchPatternController *)self _captureController];
  [v2 changeToTorchMode:0];
}

- (void)_applyTorchLevel:(float)a3
{
  if (a3 >= 0.01)
  {
    v5 = [(CAMTorchPatternController *)self _captureController];
    *&v4 = a3;
    [v5 changeToTorchLevel:v4];
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

- (void)_setPerforming:(BOOL)a3
{
  if (self->__performing != a3)
  {
    self->__performing = a3;
    if (a3)
    {
      v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_displayLinkFired_];
      displayLink = self->__displayLink;
      self->__displayLink = v4;

      v6 = self->__displayLink;
      v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

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

- (void)displayLinkFired:(id)a3
{
  [(CAMTorchPattern *)self->__currentPattern updateAtTime:CACurrentMediaTime() - self->__startTime];
  [(CAMTorchPattern *)self->__currentPattern torchLevel];

  [(CAMTorchPatternController *)self _applyTorchLevel:?];
}

@end