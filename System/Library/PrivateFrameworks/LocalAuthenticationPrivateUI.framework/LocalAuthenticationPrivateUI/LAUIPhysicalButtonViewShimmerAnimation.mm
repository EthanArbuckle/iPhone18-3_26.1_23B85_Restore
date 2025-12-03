@interface LAUIPhysicalButtonViewShimmerAnimation
- (double)duration;
- (void)_beginReducedMotionAnimationWithDelay:(double)delay;
- (void)_beginRegularMotionAnimationWithDelay:(double)delay;
- (void)_endShimmerAnimation;
- (void)beginWithDelay:(double)delay;
- (void)endImmediately;
@end

@implementation LAUIPhysicalButtonViewShimmerAnimation

- (double)duration
{
  _isReducedMotionEnabled = [(LAUIPhysicalButtonViewShimmerAnimation *)self _isReducedMotionEnabled];
  result = 2.5;
  if (_isReducedMotionEnabled)
  {
    return 3.5;
  }

  return result;
}

- (void)beginWithDelay:(double)delay
{
  if (![(LAUIPhysicalButtonViewAnimation *)self isRunning])
  {
    if ([(LAUIPhysicalButtonViewShimmerAnimation *)self _isReducedMotionEnabled])
    {

      [(LAUIPhysicalButtonViewShimmerAnimation *)self _beginReducedMotionAnimationWithDelay:delay];
    }

    else
    {

      [(LAUIPhysicalButtonViewShimmerAnimation *)self _beginRegularMotionAnimationWithDelay:delay];
    }
  }
}

- (void)endImmediately
{
  if (![(LAUIPhysicalButtonViewShimmerAnimation *)self _isReducedMotionEnabled])
  {
    [(LAUIPhysicalButtonViewShimmerAnimation *)self _endShimmerAnimation];
  }

  v3.receiver = self;
  v3.super_class = LAUIPhysicalButtonViewShimmerAnimation;
  [(LAUIPhysicalButtonViewAnimation *)&v3 endImmediately];
}

- (void)_beginReducedMotionAnimationWithDelay:(double)delay
{
  WeakRetained = objc_loadWeakRetained(&self->super._layer);
  LODWORD(v6) = *"ff&?";
  [WeakRetained setOpacity:v6];

  v9 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v9 setValues:&unk_28682FE98];
  [v9 setBeginTime:delay];
  [v9 setBeginTimeMode:*MEMORY[0x277CDA080]];
  [v9 setKeyTimes:&unk_28682FEB0];
  [(LAUIPhysicalButtonViewShimmerAnimation *)self duration];
  [v9 setDuration:?];
  LODWORD(v7) = 2139095040;
  [v9 setRepeatCount:v7];
  v8 = objc_loadWeakRetained(&self->super._layer);
  [(LAUIPhysicalButtonViewAnimation *)self addAdditiveAnimation:v9 to:v8 keyPath:0];
}

- (void)_beginRegularMotionAnimationWithDelay:(double)delay
{
  [(LAUIPhysicalButtonViewShimmerAnimation *)self _endShimmerAnimation];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__LAUIPhysicalButtonViewShimmerAnimation__beginRegularMotionAnimationWithDelay___block_invoke;
  v10[3] = &unk_279821820;
  v10[4] = self;
  v5 = __80__LAUIPhysicalButtonViewShimmerAnimation__beginRegularMotionAnimationWithDelay___block_invoke(v10);
  shimmerGradient = self->_shimmerGradient;
  self->_shimmerGradient = v5;

  WeakRetained = objc_loadWeakRetained(&self->super._layer);
  [WeakRetained setMask:self->_shimmerGradient];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__LAUIPhysicalButtonViewShimmerAnimation__beginRegularMotionAnimationWithDelay___block_invoke_26;
  v9[3] = &unk_279821848;
  *&v9[5] = delay;
  v9[4] = self;
  v8 = __80__LAUIPhysicalButtonViewShimmerAnimation__beginRegularMotionAnimationWithDelay___block_invoke_26(v9);
  [(LAUIPhysicalButtonViewAnimation *)self addAdditiveAnimation:v8 to:self->_shimmerGradient keyPath:0];
}

id __80__LAUIPhysicalButtonViewShimmerAnimation__beginRegularMotionAnimationWithDelay___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CD9EB0] layer];
  v3 = [MEMORY[0x277D75348] whiteColor];
  v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.65];
  v15[0] = [v4 CGColor];
  v15[1] = [v3 CGColor];
  v15[2] = [v4 CGColor];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  [v2 setColors:v5];

  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  [v2 setLocations:&unk_28682FEC8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained bounds];
  v8 = v7 * -2.0;
  v9 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v9 bounds];
  v11 = v10 * 5.0;
  v12 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v12 bounds];
  [v2 setFrame:{v8, 0.0, v11, v13 + v13}];

  return v2;
}

id __80__LAUIPhysicalButtonViewShimmerAnimation__beginRegularMotionAnimationWithDelay___block_invoke_26(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"locations"];
  [v2 setValues:&unk_28682FF28];
  [v2 setBeginTime:*(a1 + 40)];
  [v2 setBeginTimeMode:*MEMORY[0x277CDA080]];
  [v2 setKeyTimes:&unk_28682FF40];
  [*(a1 + 32) duration];
  [v2 setDuration:?];
  LODWORD(v3) = 2139095040;
  [v2 setRepeatCount:v3];

  return v2;
}

- (void)_endShimmerAnimation
{
  shimmerGradient = self->_shimmerGradient;
  if (shimmerGradient)
  {
    [(CAGradientLayer *)shimmerGradient removeFromSuperlayer];
    v4 = self->_shimmerGradient;
    self->_shimmerGradient = 0;
  }
}

@end