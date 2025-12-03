@interface CKImageAnimationTimer
+ (id)sharedTimer;
- (BOOL)shouldStartDisplayLink;
- (CKImageAnimationTimer)init;
- (void)addAnimationTimerObserver:(id)observer;
- (void)animationTimerFired;
- (void)dealloc;
- (void)removeAnimationTimerObserver:(id)observer;
- (void)setDisplayLink:(id)link;
- (void)setShouldStopWhenBackgrounded:(BOOL)backgrounded;
- (void)startDisplayLinkIfNeeded;
- (void)stopDisplayLink;
- (void)updateDisplayLink;
@end

@implementation CKImageAnimationTimer

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_updateDisplayLink name:*MEMORY[0x1E69DDAB0] object:0];
    [defaultCenter addObserver:v2 selector:sel_updateDisplayLink name:*MEMORY[0x1E69DDAC8] object:0];
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

- (void)setDisplayLink:(id)link
{
  linkCopy = link;
  if (self->_displayLink != linkCopy)
  {
    v6 = linkCopy;
    objc_storeStrong(&self->_displayLink, link);
    [(CKImageAnimationTimer *)self setHasValidStartTimeForCurrentDisplayLink:0];
    linkCopy = v6;
  }
}

- (void)addAnimationTimerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CKImageAnimationTimer *)self observers];
  [observers addObject:observerCopy];

  [(CKImageAnimationTimer *)self updateDisplayLink];
}

- (void)removeAnimationTimerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CKImageAnimationTimer *)self observers];
  [observers removeObject:observerCopy];

  [(CKImageAnimationTimer *)self updateDisplayLink];
}

- (void)animationTimerFired
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(CKImageAnimationTimer *)self shouldStartDisplayLink])
  {
    if (!self->_hasValidStartTimeForCurrentDisplayLink)
    {
      displayLink = [(CKImageAnimationTimer *)self displayLink];
      [displayLink targetTimestamp];
      self->_animationStartTime = v4;

      self->_hasValidStartTimeForCurrentDisplayLink = 1;
    }

    [(CADisplayLink *)self->_displayLink targetTimestamp];
    self->_animationTime = v5 - self->_animationStartTime;
    observers = [(CKImageAnimationTimer *)self observers];
    v7 = [observers copy];

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
  observers = [(CKImageAnimationTimer *)self observers];
  v4 = [observers count];

  LODWORD(observers) = +[CKApplicationState isApplicationActive];
  v5 = observers | ![(CKImageAnimationTimer *)self shouldStopWhenBackgrounded];
  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)startDisplayLinkIfNeeded
{
  displayLink = [(CKImageAnimationTimer *)self displayLink];
  if (!displayLink)
  {
    v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_animationTimerFired];
    [v5 setPreferredFramesPerSecond:60];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(CKImageAnimationTimer *)self setDisplayLink:v5];
    displayLink = v5;
  }
}

- (void)stopDisplayLink
{
  displayLink = [(CKImageAnimationTimer *)self displayLink];
  [displayLink invalidate];

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

- (void)setShouldStopWhenBackgrounded:(BOOL)backgrounded
{
  if (self->_shouldStopWhenBackgrounded != backgrounded)
  {
    self->_shouldStopWhenBackgrounded = backgrounded;
    [(CKImageAnimationTimer *)self updateDisplayLink];
  }
}

@end