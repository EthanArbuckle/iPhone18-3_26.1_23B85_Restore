@interface FIUIAnimatingSpriteImageView
+ (id)_createNewSpriteArray:(id)array currentFrame:(unint64_t)frame arraySize:(unint64_t)size interrupted:(BOOL)interrupted;
+ (unint64_t)_findSpriteIndex:(CGPoint)index centerPoints:(id)points;
+ (void)_pauseLayer:(id)layer;
+ (void)_resetLayer:(id)layer;
+ (void)_resumeLayer:(id)layer;
- (BOOL)isAnimating;
- (CGSize)_spriteFrameSize;
- (FIUIAnimatingSpriteImageView)initWithFrame:(CGRect)frame;
- (id)_centerPointValues;
- (void)_addAnimation:(id)animation forKey:(id)key;
- (void)animateOnce;
- (void)layoutSubviews;
- (void)pauseAnimating;
- (void)resumeAnimating;
- (void)setSpriteImage:(id)image;
- (void)startAnimating;
- (void)stopAnimatingFinishingCycle:(BOOL)cycle;
- (void)willMoveToWindow:(id)window;
@end

@implementation FIUIAnimatingSpriteImageView

- (void)startAnimating
{
  selfCopy = self;
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

- (FIUIAnimatingSpriteImageView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = FIUIAnimatingSpriteImageView;
  v3 = [(FIUIAnimatingSpriteImageView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FIUIAnimatingSpriteImageView *)v3 setClipsToBounds:1];
    v4->_framesPerSecond = 60;
    v5 = objc_alloc_init(MEMORY[0x1E6979398]);
    imageLayer = v4->_imageLayer;
    v4->_imageLayer = v5;

    layer = [(FIUIAnimatingSpriteImageView *)v4 layer];
    [layer addSublayer:v4->_imageLayer];

    v4->_shouldResumeAnimating = 0;
  }

  return v4;
}

- (void)willMoveToWindow:(id)window
{
  if (window && self->_shouldResumeAnimating)
  {
    [(FIUIAnimatingSpriteImageView *)self resumeAnimating];
  }

  else
  {
    [(FIUIAnimatingSpriteImageView *)self pauseAnimating];
  }
}

- (void)setSpriteImage:(id)image
{
  imageCopy = image;
  [(FIUIAnimatingSpriteImageView *)self stopAnimatingFinishingCycle:0];
  spriteImage = self->_spriteImage;
  self->_spriteImage = imageCopy;
  v6 = imageCopy;

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

+ (unint64_t)_findSpriteIndex:(CGPoint)index centerPoints:(id)points
{
  y = index.y;
  x = index.x;
  v6 = MEMORY[0x1E696B098];
  pointsCopy = points;
  v8 = [v6 valueWithCGPoint:{x, y}];
  v9 = [pointsCopy indexOfObject:v8];

  return v9;
}

+ (id)_createNewSpriteArray:(id)array currentFrame:(unint64_t)frame arraySize:(unint64_t)size interrupted:(BOOL)interrupted
{
  arrayCopy = array;
  v10 = arrayCopy;
  if (size - 1 == frame)
  {
    v11 = arrayCopy;
  }

  else
  {
    v12 = [arrayCopy subarrayWithRange:{frame + 1, ~frame + size}];
    v13 = v12;
    if (interrupted)
    {
      v14 = [v10 subarrayWithRange:{0, frame + 1}];
      v11 = [v13 arrayByAddingObjectsFromArray:v14];
    }

    else
    {
      v11 = v12;
    }
  }

  return v11;
}

- (void)stopAnimatingFinishingCycle:(BOOL)cycle
{
  self->_shouldResumeAnimating = 0;
  if (cycle && ([(CALayer *)self->_imageLayer presentationLayer], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    presentationLayer = [(CALayer *)self->_imageLayer presentationLayer];
    [presentationLayer position];
    v7 = v6;
    v9 = v8;

    _centerPointValues = [(FIUIAnimatingSpriteImageView *)self _centerPointValues];
    v11 = [FIUIAnimatingSpriteImageView _findSpriteIndex:_centerPointValues centerPoints:v7, v9];

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
      _centerPointValues2 = [(FIUIAnimatingSpriteImageView *)self _centerPointValues];
      v15 = [_centerPointValues2 count];

      [(CALayer *)self->_imageLayer removeAnimationForKey:@"PositionKeyframeAnimation"];
      if (v11 != v15 - 1)
      {
        _centerPointValues3 = [(FIUIAnimatingSpriteImageView *)self _centerPointValues];
        v18 = [FIUIAnimatingSpriteImageView _createNewSpriteArray:_centerPointValues3 currentFrame:v11 arraySize:v15 interrupted:0];

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

  _centerPointValues = [(FIUIAnimatingSpriteImageView *)self _centerPointValues];
  v3 = _PositionAnimation(_centerPointValues, self->_spriteFrameCount / self->_framesPerSecond, 1.0);
  [(FIUIAnimatingSpriteImageView *)self _addAnimation:v3 forKey:@"PositionKeyframeAnimation"];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  lastObject = [_centerPointValues lastObject];
  [lastObject CGPointValue];
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

- (void)_addAnimation:(id)animation forKey:(id)key
{
  imageLayer = self->_imageLayer;
  keyCopy = key;
  animationCopy = animation;
  [FIUIAnimatingSpriteImageView _resetLayer:imageLayer];
  [(CALayer *)self->_imageLayer addAnimation:animationCopy forKey:keyCopy];
}

+ (void)_pauseLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;
  [layerCopy setSpeed:0.0];
  [layerCopy setTimeOffset:v4];
}

+ (void)_resumeLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy timeOffset];
  v4 = v3;
  LODWORD(v3) = 1.0;
  [layerCopy setSpeed:v3];
  [layerCopy setTimeOffset:0.0];
  [layerCopy setBeginTime:0.0];
  [layerCopy convertTime:0 fromLayer:CACurrentMediaTime()];
  [layerCopy setBeginTime:v5 - v4];
}

+ (void)_resetLayer:(id)layer
{
  layerCopy = layer;
  LODWORD(v3) = 1.0;
  [layerCopy setSpeed:v3];
  [layerCopy setTimeOffset:0.0];
  [layerCopy setBeginTime:0.0];
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