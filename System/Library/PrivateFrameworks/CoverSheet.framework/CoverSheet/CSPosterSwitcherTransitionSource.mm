@interface CSPosterSwitcherTransitionSource
- ($453422EBA70013024ECC637D52E1FF2D)transitionContext;
- (CSPosterSwitcherTransitionDelegate)transitioningDelegate;
- (NSSet)components;
- (NSString)coverSheetIdentifier;
- (int64_t)participantState;
- (void)cancelTransition;
- (void)cleanupPresentation;
- (void)prepareForPresentation;
- (void)updatePresentationWithProgress:(double)a3;
@end

@implementation CSPosterSwitcherTransitionSource

- (void)prepareForPresentation
{
  self->_transitionType = 2;
  v21 = 0u;
  v22 = 0x3FF0000000000000;
  BYTE8(v21) = 1;
  v23 = 1;
  CSCoverSheetTransitionContextMake(&v21, 3, v24);
  v3 = v24[1];
  *&self->_transitionContext.value = v24[0];
  *&self->_transitionContext.interval.start.inclusive = v3;
  *&self->_transitionContext.interval.end.inclusive = v24[2];
  v4 = [(CSPosterSwitcherTransitionSource *)self transitioningDelegate];
  v5 = +[CSComponent wallpaper];
  v6 = [(CSPosterSwitcherTransitionSource *)self appearanceIdentifier];
  v7 = [v5 identifier:v6];
  v8 = [v7 priority:40];
  v9 = [v8 hidden:0];
  wallpaper = self->_wallpaper;
  self->_wallpaper = v9;

  [(CSComponent *)self->_wallpaper setLevel:1];
  v11 = +[CSComponent wallpaperFloatingLayer];
  v12 = [(CSPosterSwitcherTransitionSource *)self appearanceIdentifier];
  v13 = [v11 identifier:v12];
  v14 = [v13 priority:40];
  wallpaperFloatingLayer = self->_wallpaperFloatingLayer;
  self->_wallpaperFloatingLayer = v14;

  [(CSComponent *)self->_wallpaperFloatingLayer setLevel:1];
  v16 = objc_opt_new();
  v17 = [(CSPosterSwitcherTransitionSource *)self appearanceIdentifier];
  v18 = [v16 identifier:v17];
  v19 = [v18 suppressTeachableMomentsAnimation:1];
  homeAffordance = self->_homeAffordance;
  self->_homeAffordance = v19;

  [v4 transitionSource:self willBeginWithType:self->_transitionType];
  [(CSPosterSwitcherTransitionSource *)self updatePresentationWithProgress:0.0];
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
  v5 = [(CSPosterSwitcherTransitionSource *)self transitioningDelegate];
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

  wallpaper = self->_wallpaper;
  self->_wallpaper = 0;

  wallpaperFloatingLayer = self->_wallpaperFloatingLayer;
  self->_wallpaperFloatingLayer = 0;

  self->_transitionType = 0;
  v6 = [(CSPosterSwitcherTransitionSource *)self transitioningDelegate];
  v7 = *&self->_transitionContext.interval.start.inclusive;
  v8[0] = *&self->_transitionContext.value;
  v8[1] = v7;
  v8[2] = *&self->_transitionContext.interval.end.inclusive;
  [v6 transitionSource:self didEndWithContext:v8];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (int64_t)participantState
{
  if ([(CSPosterSwitcherTransitionSource *)self isTransitioning])
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

  if (self->_wallpaper)
  {
    [v4 addObject:?];
  }

  if (self->_wallpaperFloatingLayer)
  {
    [v4 addObject:?];
  }

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

- (void)cancelTransition
{
  [(CSPosterSwitcherTransitionSource *)self updatePresentationWithProgress:0.0];

  [(CSPosterSwitcherTransitionSource *)self cleanupPresentation];
}

- ($453422EBA70013024ECC637D52E1FF2D)transitionContext
{
  v3 = *&self[1].var1.var0.var1;
  *&retstr->var0 = *&self[1].var0;
  *&retstr->var1.var0.var1 = v3;
  *&retstr->var1.var1.var1 = *&self[1].var1.var1.var1;
  return self;
}

- (CSPosterSwitcherTransitionDelegate)transitioningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitioningDelegate);

  return WeakRetained;
}

@end