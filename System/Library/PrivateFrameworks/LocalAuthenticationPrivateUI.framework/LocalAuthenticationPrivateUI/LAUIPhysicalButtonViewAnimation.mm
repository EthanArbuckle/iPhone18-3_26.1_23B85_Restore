@interface LAUIPhysicalButtonViewAnimation
- (LAUIPhysicalButtonViewAnimation)initWith:(id)a3 layer:(id)a4;
- (void)addAdditiveAnimation:(id)a3 to:(id)a4 keyPath:(id)a5;
- (void)end;
- (void)endImmediately;
@end

@implementation LAUIPhysicalButtonViewAnimation

- (LAUIPhysicalButtonViewAnimation)initWith:(id)a3 layer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = LAUIPhysicalButtonViewAnimation;
  v8 = [(LAUIPhysicalButtonViewAnimation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_physicalButtonView, v6);
    objc_storeWeak(&v9->_layer, v7);
  }

  return v9;
}

- (void)endImmediately
{
  if ([(LAUIPhysicalButtonViewAnimation *)self isRunning])
  {
    WeakRetained = objc_loadWeakRetained(&self->_layer);
    [WeakRetained removeAnimationForKey:self->_animationKey];

    animationKey = self->_animationKey;
    self->_animationKey = 0;
  }
}

- (void)end
{
  if ([(LAUIPhysicalButtonViewAnimation *)self isRunning])
  {
    v3 = self->_animationKey;
    animationKey = self->_animationKey;
    self->_animationKey = 0;

    WeakRetained = objc_loadWeakRetained(&self->_layer);
    v6 = LAUILayerAnimationElapsedDuration(WeakRetained, v3);

    if (v6 <= 0.0)
    {
      v12 = objc_loadWeakRetained(&self->_layer);
      [v12 removeAnimationForKey:v3];
    }

    else
    {
      [(LAUIPhysicalButtonViewAnimation *)self duration];
      v8 = v7;
      [(LAUIPhysicalButtonViewAnimation *)self duration];
      v10 = fmod(v6, v9);
      v11 = dispatch_time(0, ((v8 - v10) * 1000000000.0));
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __38__LAUIPhysicalButtonViewAnimation_end__block_invoke;
      v13[3] = &unk_279821A18;
      v13[4] = self;
      v14 = v3;
      dispatch_after(v11, MEMORY[0x277D85CD0], v13);
    }
  }
}

void __38__LAUIPhysicalButtonViewAnimation_end__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained removeAnimationForKey:*(a1 + 40)];
}

- (void)addAdditiveAnimation:(id)a3 to:(id)a4 keyPath:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = LAUILayerAddAdditiveAnimation(v8, v9, v12);
  animationKey = self->_animationKey;
  self->_animationKey = v10;
}

@end