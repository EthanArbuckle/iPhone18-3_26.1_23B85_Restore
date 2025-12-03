@interface CKAnimatedImageView
- (void)animationTimerFired:(double)fired;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setAnimatedImage:(id)image;
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

- (void)setAnimatedImage:(id)image
{
  imageCopy = image;
  if (self->_animatedImage != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_animatedImage, image);
    frames = [(CKAnimatedImage *)self->_animatedImage frames];
    [(CKAnimatedImageView *)self setFrames:frames];
    if ([frames count])
    {
      [frames objectAtIndex:0];
    }

    else
    {
      [(CKAnimatedImage *)v8 image];
    }
    v7 = ;
    [(CKAnimatedImageView *)self setImage:v7];

    [(CKAnimatedImageView *)self updateAnimationTimerObserving];
    imageCopy = v8;
  }
}

- (void)updateAnimationTimerObserving
{
  frames = [(CKAnimatedImageView *)self frames];
  if ([frames count] <= 1)
  {
  }

  else
  {
    window = [(CKAnimatedImageView *)self window];

    if (window)
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

- (void)animationTimerFired:(double)fired
{
  v4 = [(CKAnimatedImage *)self->_animatedImage frameForAnimationTime:fired];
  [(CKAnimatedImageView *)self setImage:v4];
}

@end