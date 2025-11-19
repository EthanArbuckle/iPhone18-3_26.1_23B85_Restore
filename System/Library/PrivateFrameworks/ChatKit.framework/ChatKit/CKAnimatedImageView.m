@interface CKAnimatedImageView
- (void)animationTimerFired:(double)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setAnimatedImage:(id)a3;
- (void)updateAnimationTimerObserving;
@end

@implementation CKAnimatedImageView

- (void)dealloc
{
  v3 = +[CKImageAnimationTimer sharedTimer];
  [v3 removeAnimationTimerObserver:self];

  v4.receiver = self;
  v4.super_class = CKAnimatedImageView;
  [(CKAnimatedImageView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CKAnimatedImageView;
  [(CKAnimatedImageView *)&v3 didMoveToWindow];
  if ([(CKAnimatedImageView *)self automaticallyObserveWindowForAnimationTimer])
  {
    [(CKAnimatedImageView *)self updateAnimationTimerObserving];
  }
}

- (void)setAnimatedImage:(id)a3
{
  v5 = a3;
  if (self->_animatedImage != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_animatedImage, a3);
    v6 = [(CKAnimatedImage *)self->_animatedImage frames];
    [(CKAnimatedImageView *)self setFrames:v6];
    if ([v6 count])
    {
      [v6 objectAtIndex:0];
    }

    else
    {
      [(CKAnimatedImage *)v8 image];
    }
    v7 = ;
    [(CKAnimatedImageView *)self setImage:v7];

    [(CKAnimatedImageView *)self updateAnimationTimerObserving];
    v5 = v8;
  }
}

- (void)updateAnimationTimerObserving
{
  v3 = [(CKAnimatedImageView *)self frames];
  if ([v3 count] <= 1)
  {
  }

  else
  {
    v4 = [(CKAnimatedImageView *)self window];

    if (v4)
    {
      v5 = +[CKImageAnimationTimer sharedTimer];
      [v5 addAnimationTimerObserver:self];
      goto LABEL_6;
    }
  }

  v5 = +[CKImageAnimationTimer sharedTimer];
  [v5 removeAnimationTimerObserver:self];
LABEL_6:
}

- (void)animationTimerFired:(double)a3
{
  v4 = [(CKAnimatedImage *)self->_animatedImage frameForAnimationTime:a3];
  [(CKAnimatedImageView *)self setImage:v4];
}

@end