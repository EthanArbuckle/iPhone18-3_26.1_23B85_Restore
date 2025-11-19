@interface CSInterstitialTransitionSource
- ($453422EBA70013024ECC637D52E1FF2D)transitionContext;
- (CSInterstitialTransitionDelegate)transitioningDelegate;
- (NSSet)components;
- (NSString)coverSheetIdentifier;
- (int64_t)participantState;
- (unint64_t)restrictedCapabilities;
- (void)cancelTransition;
- (void)cleanupPresentation;
- (void)prepareForPresentation;
- (void)updatePresentationWithProgress:(double)a3;
@end

@implementation CSInterstitialTransitionSource

- (void)prepareForPresentation
{
  self->_transitionType = 2;
  v20 = 0u;
  *&v21 = 0x3FF0000000000000;
  BYTE8(v20) = 1;
  *(&v21 + 1) = 1;
  CSCoverSheetTransitionContextMake(&v20, 3, &v23);
  v3 = v24;
  *&self->_transitionContext.value = v23;
  *&self->_transitionContext.interval.start.inclusive = v3;
  *&self->_transitionContext.interval.end.inclusive = v25;
  v4 = [(CSInterstitialTransitionSource *)self transitioningDelegate];
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v5 = [v4 coverSheetView];
  [v5 bounds];
  CSComponentTransitionInputsMake(0, &v23, 0.0, 0.0, v6 / -6.0, 0.0, 0.0);

  v7 = objc_opt_new();
  v8 = [(CSInterstitialTransitionSource *)self appearanceIdentifier];
  v9 = [v7 identifier:v8];
  v10 = [v9 transitionModifiers:8];
  v20 = v23;
  v21 = v24;
  v22 = v25;
  v11 = [v10 transitionInputs:&v20];
  v12 = [v11 suppressTeachableMomentsAnimation:1];
  homeAffordance = self->_homeAffordance;
  self->_homeAffordance = v12;

  if (SBSIsSystemApertureAvailable())
  {
    v14 = objc_opt_new();
    v15 = [(CSInterstitialTransitionSource *)self appearanceIdentifier];
    v16 = [v14 identifier:v15];
    v17 = [v16 priority:60];
    v18 = [v17 hidden:1];
    statusBar = self->_statusBar;
    self->_statusBar = v18;
  }

  [v4 transitionSource:self willBeginWithType:self->_transitionType];
  [(CSInterstitialTransitionSource *)self updatePresentationWithProgress:0.0];
}

- (void)updatePresentationWithProgress:(double)a3
{
  v7 = 0u;
  v8 = 0x3FF0000000000000;
  BYTE8(v7) = 1;
  v9 = 1;
  CSCoverSheetTransitionContextMake(&v7, 3, &v10);
  v4 = v11;
  *&self->_transitionContext.value = v10;
  *&self->_transitionContext.interval.start.inclusive = v4;
  *&self->_transitionContext.interval.end.inclusive = v12;
  v5 = [(CSInterstitialTransitionSource *)self transitioningDelegate];
  v6 = *&self->_transitionContext.interval.start.inclusive;
  v10 = *&self->_transitionContext.value;
  v11 = v6;
  v12 = *&self->_transitionContext.interval.end.inclusive;
  [v5 transitionSource:self didUpdateTransitionWithContext:&v10];
}

- (void)cleanupPresentation
{
  homeAffordance = self->_homeAffordance;
  self->_homeAffordance = 0;

  self->_transitionType = 0;
  v4 = [(CSInterstitialTransitionSource *)self transitioningDelegate];
  v5 = *&self->_transitionContext.interval.start.inclusive;
  v6[0] = *&self->_transitionContext.value;
  v6[1] = v5;
  v6[2] = *&self->_transitionContext.interval.end.inclusive;
  [v4 transitionSource:self didEndWithContext:v6];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (int64_t)participantState
{
  if ([(CSInterstitialTransitionSource *)self isTransitioning])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (NSSet)components
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v3;
  if (self->_homeAffordance)
  {
    [v3 addObject:?];
  }

  if (self->_statusBar)
  {
    [v4 addObject:?];
  }

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

- (unint64_t)restrictedCapabilities
{
  if ([(CSInterstitialTransitionSource *)self isTransitioning])
  {
    return 4096;
  }

  else
  {
    return 0;
  }
}

- (void)cancelTransition
{
  [(CSInterstitialTransitionSource *)self updatePresentationWithProgress:0.0];

  [(CSInterstitialTransitionSource *)self cleanupPresentation];
}

- ($453422EBA70013024ECC637D52E1FF2D)transitionContext
{
  v3 = *&self[1].var1.var0.var1;
  *&retstr->var0 = *&self[1].var0;
  *&retstr->var1.var0.var1 = v3;
  *&retstr->var1.var1.var1 = *&self[1].var1.var1.var1;
  return self;
}

- (CSInterstitialTransitionDelegate)transitioningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitioningDelegate);

  return WeakRetained;
}

@end