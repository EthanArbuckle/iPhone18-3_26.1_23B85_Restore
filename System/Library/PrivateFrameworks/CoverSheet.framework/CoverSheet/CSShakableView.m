@interface CSShakableView
- (CSShakableView)initWithFrame:(CGRect)a3;
- (id)_defaultSpringAnimations;
- (void)_invokeCompletionBlockIfNecessary;
- (void)beginShakingWithCompletion:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation CSShakableView

- (CSShakableView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CSShakableView;
  v3 = [(CSShakableView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D65F80]);
    containerView = v3->_containerView;
    v3->_containerView = v4;

    [(SBFTouchPassThroughView *)v3->_containerView setAutoresizingMask:2];
    [(CSShakableView *)v3 setShakeDistance:75.0];
    v6 = [(CSShakableView *)v3 _defaultSpringAnimations];
    [(CSShakableView *)v3 setPrototypeSpringAnimations:v6];

    [(CSShakableView *)v3 addSubview:v3->_containerView];
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [(CSShakableView *)self _invokeCompletionBlockIfNecessary];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = CSShakableView;
  [(CSShakableView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSShakableView;
  [(CSShakableView *)&v4 layoutSubviews];
  containerView = self->_containerView;
  [(CSShakableView *)self bounds];
  [(SBFTouchPassThroughView *)containerView setFrame:?];
}

- (id)_defaultSpringAnimations
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position.x"];
  [v4 setMass:1.20000005];
  [v4 setStiffness:1200.0];
  [v4 setDamping:12.0];
  LODWORD(v5) = 1028389654;
  LODWORD(v6) = 990057071;
  LODWORD(v7) = 1059712716;
  LODWORD(v8) = 1.0;
  v9 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v5 :v6 :v7 :v8];
  [v4 setTimingFunction:v9];

  [v4 setDuration:0.860000014];
  [v4 setVelocity:0.0];
  v10 = *MEMORY[0x277CDA228];
  [v4 setFillMode:*MEMORY[0x277CDA228]];
  [v4 setDelegate:self];
  [v3 addObject:v4];
  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position.x"];
  LODWORD(v12) = 1036831949;
  LODWORD(v13) = 0.25;
  LODWORD(v14) = 0.25;
  LODWORD(v15) = 1.0;
  v16 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v13 :v12 :v14 :v15];
  [v11 setTimingFunction:v16];

  [v11 setDuration:0.0700000003];
  [v11 setFillMode:v10];
  [v3 addObject:v11];

  return v3;
}

- (void)_invokeCompletionBlockIfNecessary
{
  shakeCompletionBlock = self->_shakeCompletionBlock;
  if (shakeCompletionBlock)
  {
    shakeCompletionBlock[2](shakeCompletionBlock, a2);
    v4 = self->_shakeCompletionBlock;
    self->_shakeCompletionBlock = 0;
  }
}

- (void)beginShakingWithCompletion:(id)a3
{
  v4 = a3;
  [(CSShakableView *)self _invokeCompletionBlockIfNecessary];
  v5 = MEMORY[0x223D698D0](v4);

  shakeCompletionBlock = self->_shakeCompletionBlock;
  self->_shakeCompletionBlock = v5;

  v7 = [(CSShakableView *)self layer];
  [v7 position];
  v9 = v8;
  v11 = v10;

  v12 = [(CSShakableView *)self prototypeSpringAnimations];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__CSShakableView_beginShakingWithCompletion___block_invoke;
  v13[3] = &unk_27838DB30;
  v13[5] = v9;
  v13[6] = v11;
  v13[4] = self;
  [v12 enumerateObjectsUsingBlock:v13];
}

void __45__CSShakableView_beginShakingWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = [a2 copy];
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 40);
  [*(a1 + 32) shakeDistance];
  v8 = [v5 numberWithDouble:v6 - v7];
  [v11 setFromValue:v8];

  v9 = *(*(a1 + 32) + 416);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringAnimation-%lu", a3];
  [v9 addAnimation:v11 forKey:v10];
}

@end