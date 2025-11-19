@interface CKImageAnimationTimer
+ (id)sharedTimer;
- (BOOL)shouldStartDisplayLink;
- (CKImageAnimationTimer)init;
- (void)addAnimationTimerObserver:(id)a3;
- (void)animationTimerFired;
- (void)dealloc;
- (void)removeAnimationTimerObserver:(id)a3;
- (void)setDisplayLink:(id)a3;
- (void)setShouldStopWhenBackgrounded:(BOOL)a3;
- (void)startDisplayLinkIfNeeded;
- (void)stopDisplayLink;
- (void)updateDisplayLink;
@end

@implementation CKImageAnimationTimer

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CADisplayLink *)self->_displayLink invalidate];
  v4.receiver = self;
  v4.super_class = CKImageAnimationTimer;
  [(CKImageAnimationTimer *)&v4 dealloc];
}

- (CKImageAnimationTimer)init
{
  v8.receiver = self;
  v8.super_class = CKImageAnimationTimer;
  v2 = [(CKImageAnimationTimer *)&v8 init];
  if (v2)
  {
    v3 = *(MEMORY[0x1E695E9F8] + 16);
    *&v7.version = *MEMORY[0x1E695E9F8];
    *&v7.release = v3;
    *&v7.equal = *(MEMORY[0x1E695E9F8] + 32);
    v7.retain = 0;
    v7.release = 0;
    v4 = CFSetCreateMutable(0, 0, &v7);
    [(CKImageAnimationTimer *)v2 setObservers:v4];
    [(CKImageAnimationTimer *)v2 setShouldStopWhenBackgrounded:1];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel_updateDisplayLink name:*MEMORY[0x1E69DDAB0] object:0];
    [v5 addObserver:v2 selector:sel_updateDisplayLink name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v2;
}

+ (id)sharedTimer
{
  if (sharedTimer_once != -1)
  {
    +[CKImageAnimationTimer sharedTimer];
  }

  v3 = sharedTimer_sAnimatedImageTimer;

  return v3;
}

void __36__CKImageAnimationTimer_sharedTimer__block_invoke()
{
  v0 = objc_alloc_init(CKImageAnimationTimer);
  v1 = sharedTimer_sAnimatedImageTimer;
  sharedTimer_sAnimatedImageTimer = v0;
}

- (void)setDisplayLink:(id)a3
{
  v5 = a3;
  if (self->_displayLink != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_displayLink, a3);
    [(CKImageAnimationTimer *)self setHasValidStartTimeForCurrentDisplayLink:0];
    v5 = v6;
  }
}

- (void)addAnimationTimerObserver:(id)a3
{
  v4 = a3;
  v5 = [(CKImageAnimationTimer *)self observers];
  [v5 addObject:v4];

  [(CKImageAnimationTimer *)self updateDisplayLink];
}

- (void)removeAnimationTimerObserver:(id)a3
{
  v4 = a3;
  v5 = [(CKImageAnimationTimer *)self observers];
  [v5 removeObject:v4];

  [(CKImageAnimationTimer *)self updateDisplayLink];
}

- (void)animationTimerFired
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(CKImageAnimationTimer *)self shouldStartDisplayLink])
  {
    if (!self->_hasValidStartTimeForCurrentDisplayLink)
    {
      v3 = [(CKImageAnimationTimer *)self displayLink];
      [v3 targetTimestamp];
      self->_animationStartTime = v4;

      self->_hasValidStartTimeForCurrentDisplayLink = 1;
    }

    [(CADisplayLink *)self->_displayLink targetTimestamp];
    self->_animationTime = v5 - self->_animationStartTime;
    v6 = [(CKImageAnimationTimer *)self observers];
    v7 = [v6 copy];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (!+[CKImageAnimationTimer accessibilityAnimatedImagesDisabled](CKImageAnimationTimer, "accessibilityAnimatedImagesDisabled", v14) || [v13 animationExplicitlyResumed])
          {
            [v13 animationTimerFired:self->_animationTime];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {

    [(CKImageAnimationTimer *)self stopDisplayLink];
  }
}

- (BOOL)shouldStartDisplayLink
{
  v3 = [(CKImageAnimationTimer *)self observers];
  v4 = [v3 count];

  LODWORD(v3) = +[CKApplicationState isApplicationActive];
  v5 = v3 | ![(CKImageAnimationTimer *)self shouldStopWhenBackgrounded];
  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)startDisplayLinkIfNeeded
{
  v3 = [(CKImageAnimationTimer *)self displayLink];
  if (!v3)
  {
    v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_animationTimerFired];
    [v5 setPreferredFramesPerSecond:60];
    v4 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v5 addToRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];

    [(CKImageAnimationTimer *)self setDisplayLink:v5];
    v3 = v5;
  }
}

- (void)stopDisplayLink
{
  v3 = [(CKImageAnimationTimer *)self displayLink];
  [v3 invalidate];

  [(CKImageAnimationTimer *)self setDisplayLink:0];
}

- (void)updateDisplayLink
{
  if ([(CKImageAnimationTimer *)self shouldStartDisplayLink])
  {

    [(CKImageAnimationTimer *)self startDisplayLinkIfNeeded];
  }

  else
  {

    [(CKImageAnimationTimer *)self stopDisplayLink];
  }
}

- (void)setShouldStopWhenBackgrounded:(BOOL)a3
{
  if (self->_shouldStopWhenBackgrounded != a3)
  {
    self->_shouldStopWhenBackgrounded = a3;
    [(CKImageAnimationTimer *)self updateDisplayLink];
  }
}

@end