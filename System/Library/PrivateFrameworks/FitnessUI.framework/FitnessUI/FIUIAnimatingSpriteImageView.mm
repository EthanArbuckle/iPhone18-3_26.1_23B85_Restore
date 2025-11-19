@interface FIUIAnimatingSpriteImageView
+ (id)_createNewSpriteArray:(id)a3 currentFrame:(unint64_t)a4 arraySize:(unint64_t)a5 interrupted:(BOOL)a6;
+ (unint64_t)_findSpriteIndex:(CGPoint)a3 centerPoints:(id)a4;
+ (void)_pauseLayer:(id)a3;
+ (void)_resetLayer:(id)a3;
+ (void)_resumeLayer:(id)a3;
- (BOOL)isAnimating;
- (CGSize)_spriteFrameSize;
- (FIUIAnimatingSpriteImageView)initWithFrame:(CGRect)a3;
- (id)_centerPointValues;
- (void)_addAnimation:(id)a3 forKey:(id)a4;
- (void)animateOnce;
- (void)layoutSubviews;
- (void)pauseAnimating;
- (void)resumeAnimating;
- (void)setSpriteImage:(id)a3;
- (void)startAnimating;
- (void)stopAnimatingFinishingCycle:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation FIUIAnimatingSpriteImageView

- (void)startAnimating
{
  v5 = a1;
  v13.x = a2;
  v13.y = a3;
  v6 = NSStringFromCGPoint(v13);
  OUTLINED_FUNCTION_0_0(&dword_1E5D0F000, v7, v8, "In startAnimating, centerPointValues does not contain CGPoint %@", v9, v10, v11, v12, 2u);
}

- (void)layoutSubviews
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  [(UIImage *)self->_spriteImage size];
  v6 = v5;
  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CALayer *)self->_imageLayer setFrame:v3, v4, v6, v8];
  v9 = MEMORY[0x1E6979518];

  [v9 commit];
}

- (BOOL)isAnimating
{
  v2 = [(CALayer *)self->_imageLayer animationForKey:@"PositionKeyframeAnimation"];
  v3 = v2 != 0;

  return v3;
}

- (CGSize)_spriteFrameSize
{
  spriteImage = self->_spriteImage;
  if (spriteImage)
  {
    spriteFrameCount = self->_spriteFrameCount;
    spriteColumnCount = self->_spriteColumnCount;
    if (spriteFrameCount % spriteColumnCount)
    {
      v6 = spriteFrameCount / spriteColumnCount + 1;
    }

    else
    {
      v6 = spriteFrameCount / spriteColumnCount;
    }

    [(UIImage *)spriteImage size];
    v8 = v7 / self->_spriteColumnCount;
    [(UIImage *)self->_spriteImage size];
    v10 = v9 / v6;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (FIUIAnimatingSpriteImageView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = FIUIAnimatingSpriteImageView;
  v3 = [(FIUIAnimatingSpriteImageView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FIUIAnimatingSpriteImageView *)v3 setClipsToBounds:1];
    v4->_framesPerSecond = 60;
    v5 = objc_alloc_init(MEMORY[0x1E6979398]);
    imageLayer = v4->_imageLayer;
    v4->_imageLayer = v5;

    v7 = [(FIUIAnimatingSpriteImageView *)v4 layer];
    [v7 addSublayer:v4->_imageLayer];

    v4->_shouldResumeAnimating = 0;
  }

  return v4;
}

- (void)willMoveToWindow:(id)a3
{
  if (a3 && self->_shouldResumeAnimating)
  {
    [(FIUIAnimatingSpriteImageView *)self resumeAnimating];
  }

  else
  {
    [(FIUIAnimatingSpriteImageView *)self pauseAnimating];
  }
}

- (void)setSpriteImage:(id)a3
{
  v4 = a3;
  [(FIUIAnimatingSpriteImageView *)self stopAnimatingFinishingCycle:0];
  spriteImage = self->_spriteImage;
  self->_spriteImage = v4;
  v6 = v4;

  [(CALayer *)self->_imageLayer setContents:[(UIImage *)v6 CGImage]];

  [(FIUIAnimatingSpriteImageView *)self setNeedsLayout];
}

- (id)_centerPointValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(FIUIAnimatingSpriteImageView *)self _spriteFrameSize];
  [(UIImage *)self->_spriteImage size];
  if (self->_spriteFrameCount >= 1)
  {
    v4 = 0;
    do
    {
      v5 = MEMORY[0x1E696B098];
      UIRectGetCenter();
      v6 = [v5 valueWithCGPoint:?];
      [v3 addObject:v6];

      ++v4;
    }

    while (v4 < self->_spriteFrameCount);
  }

  return v3;
}

+ (unint64_t)_findSpriteIndex:(CGPoint)a3 centerPoints:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = MEMORY[0x1E696B098];
  v7 = a4;
  v8 = [v6 valueWithCGPoint:{x, y}];
  v9 = [v7 indexOfObject:v8];

  return v9;
}

+ (id)_createNewSpriteArray:(id)a3 currentFrame:(unint64_t)a4 arraySize:(unint64_t)a5 interrupted:(BOOL)a6
{
  v9 = a3;
  v10 = v9;
  if (a5 - 1 == a4)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v9 subarrayWithRange:{a4 + 1, ~a4 + a5}];
    v13 = v12;
    if (a6)
    {
      v14 = [v10 subarrayWithRange:{0, a4 + 1}];
      v11 = [v13 arrayByAddingObjectsFromArray:v14];
    }

    else
    {
      v11 = v12;
    }
  }

  return v11;
}

- (void)stopAnimatingFinishingCycle:(BOOL)a3
{
  self->_shouldResumeAnimating = 0;
  if (a3 && ([(CALayer *)self->_imageLayer presentationLayer], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(CALayer *)self->_imageLayer presentationLayer];
    [v5 position];
    v7 = v6;
    v9 = v8;

    v10 = [(FIUIAnimatingSpriteImageView *)self _centerPointValues];
    v11 = [FIUIAnimatingSpriteImageView _findSpriteIndex:v10 centerPoints:v7, v9];

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x1E696B9A8];
      if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_ERROR))
      {
        [(FIUIAnimatingSpriteImageView *)v12 stopAnimatingFinishingCycle:v7, v9];
      }
    }

    else
    {
      v14 = [(FIUIAnimatingSpriteImageView *)self _centerPointValues];
      v15 = [v14 count];

      [(CALayer *)self->_imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
      if (v11 != v15 - 1)
      {
        v16 = [(FIUIAnimatingSpriteImageView *)self _centerPointValues];
        v18 = [FIUIAnimatingSpriteImageView _createNewSpriteArray:v16 currentFrame:v11 arraySize:v15 interrupted:0];

        v17 = _PositionAnimation(v18, [v18 count] / self->_framesPerSecond, 0.0);
        [(FIUIAnimatingSpriteImageView *)self _addAnimation:v17 forKey:@"PositionKeyframeAnimation"];
      }
    }
  }

  else
  {
    imageLayer = self->_imageLayer;

    [(CALayer *)imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
  }
}

- (void)animateOnce
{
  if ([(FIUIAnimatingSpriteImageView *)self isAnimating])
  {
    [(CALayer *)self->_imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
  }

  v5 = [(FIUIAnimatingSpriteImageView *)self _centerPointValues];
  v3 = _PositionAnimation(v5, self->_spriteFrameCount / self->_framesPerSecond, 1.0);
  [(FIUIAnimatingSpriteImageView *)self _addAnimation:v3 forKey:@"PositionKeyframeAnimation"];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v4 = [v5 lastObject];
  [v4 CGPointValue];
  [(CALayer *)self->_imageLayer setPosition:?];

  [MEMORY[0x1E6979518] commit];
}

- (void)pauseAnimating
{
  if ([(FIUIAnimatingSpriteImageView *)self isAnimating])
  {
    imageLayer = self->_imageLayer;

    [FIUIAnimatingSpriteImageView _pauseLayer:imageLayer];
  }
}

- (void)resumeAnimating
{
  if ([(FIUIAnimatingSpriteImageView *)self isAnimating])
  {
    imageLayer = self->_imageLayer;

    [FIUIAnimatingSpriteImageView _resumeLayer:imageLayer];
  }

  else
  {

    [(FIUIAnimatingSpriteImageView *)self startAnimating];
  }
}

- (void)_addAnimation:(id)a3 forKey:(id)a4
{
  imageLayer = self->_imageLayer;
  v7 = a4;
  v8 = a3;
  [FIUIAnimatingSpriteImageView _resetLayer:imageLayer];
  [(CALayer *)self->_imageLayer addAnimation:v8 forKey:v7];
}

+ (void)_pauseLayer:(id)a3
{
  v5 = a3;
  [v5 convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;
  [v5 setSpeed:0.0];
  [v5 setTimeOffset:v4];
}

+ (void)_resumeLayer:(id)a3
{
  v6 = a3;
  [v6 timeOffset];
  v4 = v3;
  LODWORD(v3) = 1.0;
  [v6 setSpeed:v3];
  [v6 setTimeOffset:0.0];
  [v6 setBeginTime:0.0];
  [v6 convertTime:0 fromLayer:CACurrentMediaTime()];
  [v6 setBeginTime:v5 - v4];
}

+ (void)_resetLayer:(id)a3
{
  v4 = a3;
  LODWORD(v3) = 1.0;
  [v4 setSpeed:v3];
  [v4 setTimeOffset:0.0];
  [v4 setBeginTime:0.0];
}

- (void)stopAnimatingFinishingCycle:(CGFloat)a3 .cold.1(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  v13.x = a2;
  v13.y = a3;
  v6 = NSStringFromCGPoint(v13);
  OUTLINED_FUNCTION_0_0(&dword_1E5D0F000, v7, v8, "In stopAnimatingFinishingCycle, centerPointValues does not contain CGPoint %@", v9, v10, v11, v12, 2u);
}

@end