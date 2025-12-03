@interface PBUIWallpaperStaticBackgroundView
- (BOOL)_shouldSuspendMotionEffectsForState:(id *)state;
- (BOOL)_shouldSuspendMotionEffectsForStyle:(int64_t)style;
- (BOOL)setWallpaperStyleTransitionState:(id *)state forVariant:(int64_t)variant withAnimationFactory:(id)factory;
- (PBUIWallpaperStaticBackgroundView)initWithWallpaperPresenter:(id)presenter;
- (id)_effectViewForVariant:(int64_t)variant;
- (id)_newEffectViewForVariant:(int64_t)variant transitionState:(id *)state;
- (void)_beginSuspendingMotionEffectsForStyleIfNeeded;
- (void)_endSuspendingMotionEffectsForStyleIfNeeded;
- (void)_setEffectView:(id)view forVariant:(int64_t)variant;
- (void)_updateMotionEffectsForState:(id *)state;
- (void)dealloc;
- (void)setVariant:(int64_t)variant withOutAnimationFactory:(id)factory inAnimationFactory:(id)animationFactory completion:(id)completion;
@end

@implementation PBUIWallpaperStaticBackgroundView

- (PBUIWallpaperStaticBackgroundView)initWithWallpaperPresenter:(id)presenter
{
  presenterCopy = presenter;
  v16.receiver = self;
  v16.super_class = PBUIWallpaperStaticBackgroundView;
  v6 = [(PBUIWallpaperStaticBackgroundView *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wallpaperPresenter, presenter);
    v7->_variant = -1;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v8 = [(PBUIWallpaperStaticBackgroundView *)v7 _newEffectViewForVariant:1 transitionState:&v13];
    homescreenWallpaperEffectView = v7->_homescreenWallpaperEffectView;
    v7->_homescreenWallpaperEffectView = v8;

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v10 = [(PBUIWallpaperStaticBackgroundView *)v7 _newEffectViewForVariant:0 transitionState:&v13];
    lockscreenWallpaperEffectView = v7->_lockscreenWallpaperEffectView;
    v7->_lockscreenWallpaperEffectView = v10;
  }

  return v7;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_wallpaperStyleAnimationAssertion invalidate];
  v3.receiver = self;
  v3.super_class = PBUIWallpaperStaticBackgroundView;
  [(PBUIWallpaperStaticBackgroundView *)&v3 dealloc];
}

- (void)setVariant:(int64_t)variant withOutAnimationFactory:(id)factory inAnimationFactory:(id)animationFactory completion:(id)completion
{
  factoryCopy = factory;
  animationFactoryCopy = animationFactory;
  completionCopy = completion;
  v13 = completionCopy;
  variant = self->_variant;
  if (variant == variant)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    self->_variant = variant;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v42 = 0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v40 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __102__PBUIWallpaperStaticBackgroundView_setVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke;
    v32[3] = &unk_2783646B0;
    v34 = v39;
    v35 = v41;
    v36 = v37;
    v33 = completionCopy;
    v15 = MEMORY[0x223D62EE0](v32);
    v16 = [(PBUIWallpaperStaticBackgroundView *)self _effectViewForVariant:variant];
    v17 = [(PBUIWallpaperStaticBackgroundView *)self _effectViewForVariant:variant];
    v18 = MEMORY[0x277CF0D38];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __102__PBUIWallpaperStaticBackgroundView_setVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_2;
    v30[3] = &unk_278361E18;
    v19 = v16;
    v31 = v19;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __102__PBUIWallpaperStaticBackgroundView_setVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_3;
    v28[3] = &unk_2783646D8;
    v20 = v15;
    v29 = v20;
    [v18 animateWithFactory:factoryCopy actions:v30 completion:v28];
    [v17 setAlpha:0.0];
    v21 = MEMORY[0x277CF0D38];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __102__PBUIWallpaperStaticBackgroundView_setVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_4;
    v26[3] = &unk_278361E18;
    v22 = v17;
    v27 = v22;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __102__PBUIWallpaperStaticBackgroundView_setVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_5;
    v24[3] = &unk_2783646D8;
    v23 = v20;
    v25 = v23;
    [v21 animateWithFactory:animationFactoryCopy actions:v26 completion:v24];

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v41, 8);
  }
}

uint64_t __102__PBUIWallpaperStaticBackgroundView_setVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke(uint64_t result, int a2)
{
  v2 = 48;
  if (a2)
  {
    v2 = 40;
  }

  *(*(*(result + v2) + 8) + 24) = 1;
  if (*(*(*(result + 40) + 8) + 24) == 1 && *(*(*(result + 48) + 8) + 24) == 1)
  {
    v3 = *(*(result + 56) + 8);
    if ((*(v3 + 24) & 1) == 0)
    {
      *(v3 + 24) = 1;
      result = *(result + 32);
      if (result)
      {
        return (*(result + 16))();
      }
    }
  }

  return result;
}

- (BOOL)setWallpaperStyleTransitionState:(id *)state forVariant:(int64_t)variant withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  v9 = self->_variant == variant;
  v10 = [(PBUIWallpaperStaticBackgroundView *)self _effectViewForVariant:variant];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3810000000;
  v40[3] = &unk_21E71DDAF;
  v41 = *state;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__5;
  v38 = __Block_byref_object_dispose__5;
  v39 = 0;
  v11 = MEMORY[0x277CF0D38];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __102__PBUIWallpaperStaticBackgroundView_setWallpaperStyleTransitionState_forVariant_withAnimationFactory___block_invoke;
  v28[3] = &unk_278364700;
  v12 = v10;
  v31 = v40;
  v32 = &v34;
  v29 = v12;
  selfCopy = self;
  variantCopy = variant;
  [v11 animateWithFactory:0 actions:v28];
  [(PBUIWallpaperStaticBackgroundView *)self _setEffectView:v35[5] forVariant:variant];
  v13 = MEMORY[0x277CF0D38];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __102__PBUIWallpaperStaticBackgroundView_setWallpaperStyleTransitionState_forVariant_withAnimationFactory___block_invoke_2;
  v22[3] = &unk_278364728;
  v22[4] = self;
  v27 = v9;
  variantCopy2 = variant;
  v24 = v40;
  v25 = &v34;
  v23 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__PBUIWallpaperStaticBackgroundView_setWallpaperStyleTransitionState_forVariant_withAnimationFactory___block_invoke_3;
  v16[3] = &unk_278364750;
  v14 = v23;
  v21 = v9;
  v17 = v14;
  selfCopy2 = self;
  v19 = &v34;
  v20 = v40;
  [v13 animateWithFactory:factoryCopy actions:v22 completion:v16];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v40, 8);

  return 1;
}

void __102__PBUIWallpaperStaticBackgroundView_setWallpaperStyleTransitionState_forVariant_withAnimationFactory___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) prepareToAnimateToTransitionState:*(*(a1 + 48) + 8) + 32])
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  }

  else
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 48) + 8);
    v8 = *(v4 + 32);
    v9 = *(v4 + 48);
    v5 = [v3 _newEffectViewForVariant:v2 transitionState:&v8];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

uint64_t __102__PBUIWallpaperStaticBackgroundView_setWallpaperStyleTransitionState_forVariant_withAnimationFactory___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  if (([v2 _shouldSuspendMotionEffectsForState:&v9] & 1) == 0 && *(a1 + 72) == 1)
  {
    [*(a1 + 32) _endSuspendingMotionEffectsForStyleIfNeeded];
  }

  v4 = [*(a1 + 32) _effectViewForVariant:*(a1 + 64)];
  v5 = *(*(a1 + 48) + 8);
  v9 = *(v5 + 32);
  v10 = *(v5 + 48);
  [v4 setTransitionState:&v9];

  [*(*(*(a1 + 56) + 8) + 40) setAlpha:1.0];
  v6 = *(*(*(a1 + 56) + 8) + 40);
  v7 = *(*(a1 + 48) + 8);
  v9 = *(v7 + 32);
  v10 = *(v7 + 48);
  [v6 setTransitionState:&v9];
  result = *(*(*(a1 + 56) + 8) + 40);
  if (!result)
  {
    return [*(a1 + 40) setAlpha:0.0];
  }

  if (result != *(a1 + 40))
  {
    result = [result currentTransitionStateIsOpaque];
    if ((result & 1) == 0)
    {
      return [*(a1 + 40) setAlpha:0.0];
    }
  }

  return result;
}

void *__102__PBUIWallpaperStaticBackgroundView_setWallpaperStyleTransitionState_forVariant_withAnimationFactory___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result != *(*(*(a1 + 48) + 8) + 40))
  {
    result = [result removeFromSuperview];
  }

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 32);
    v6 = *(v4 + 48);
    return [v3 _updateMotionEffectsForState:&v5];
  }

  return result;
}

- (void)_beginSuspendingMotionEffectsForStyleIfNeeded
{
  wallpaperStyleAnimationAssertion = [(PBUIWallpaperStaticBackgroundView *)self wallpaperStyleAnimationAssertion];

  if (!wallpaperStyleAnimationAssertion)
  {
    v4 = PBUILogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21E67D000, v4, OS_LOG_TYPE_INFO, "Disabling parallax because of requested wallpaper style", v6, 2u);
    }

    v5 = [(PBUIWallpaperPresenting *)self->_wallpaperPresenter suspendWallpaperAnimationForReason:@"PBUIWallpaperEffectViewIsDarkOrHiddenReason"];
    [(PBUIWallpaperStaticBackgroundView *)self setWallpaperStyleAnimationAssertion:v5];
  }
}

- (void)_endSuspendingMotionEffectsForStyleIfNeeded
{
  wallpaperStyleAnimationAssertion = [(PBUIWallpaperStaticBackgroundView *)self wallpaperStyleAnimationAssertion];

  if (wallpaperStyleAnimationAssertion)
  {
    v4 = PBUILogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21E67D000, v4, OS_LOG_TYPE_INFO, "Enabling parallax because of requested wallpaper style", v6, 2u);
    }

    wallpaperStyleAnimationAssertion2 = [(PBUIWallpaperStaticBackgroundView *)self wallpaperStyleAnimationAssertion];
    [wallpaperStyleAnimationAssertion2 invalidate];

    [(PBUIWallpaperStaticBackgroundView *)self setWallpaperStyleAnimationAssertion:0];
  }
}

- (void)_updateMotionEffectsForState:(id *)state
{
  v4 = *state;
  if ([(PBUIWallpaperStaticBackgroundView *)self _shouldSuspendMotionEffectsForState:&v4])
  {
    [(PBUIWallpaperStaticBackgroundView *)self _beginSuspendingMotionEffectsForStyleIfNeeded];
  }

  else
  {
    [(PBUIWallpaperStaticBackgroundView *)self _endSuspendingMotionEffectsForStyleIfNeeded];
  }
}

- (id)_effectViewForVariant:(int64_t)variant
{
  if (variant == 1)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperStaticBackgroundView__homescreenWallpaperEffectView;
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (!variant)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperStaticBackgroundView__lockscreenWallpaperEffectView;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_setEffectView:(id)view forVariant:(int64_t)variant
{
  viewCopy = view;
  if (variant == 1)
  {
    v9 = viewCopy;
    v8 = &OBJC_IVAR___PBUIWallpaperStaticBackgroundView__homescreenWallpaperEffectView;
  }

  else
  {
    if (variant)
    {
      goto LABEL_6;
    }

    v9 = viewCopy;
    v8 = &OBJC_IVAR___PBUIWallpaperStaticBackgroundView__lockscreenWallpaperEffectView;
  }

  objc_storeStrong((&self->super.super.super.isa + *v8), view);
  viewCopy = v9;
LABEL_6:
}

- (id)_newEffectViewForVariant:(int64_t)variant transitionState:(id *)state
{
  v6 = [[PBUIWallpaperEffectViewBase alloc] initWithWallpaperPresenter:self->_wallpaperPresenter variant:variant transformOptions:0];
  [(PBUIWallpaperEffectViewBase *)v6 setForcesOpaque:1];
  v8 = *state;
  [(PBUIWallpaperEffectViewBase *)v6 setTransitionState:&v8];
  [(PBUIWallpaperStaticBackgroundView *)self bounds];
  [(PBUIWallpaperEffectViewBase *)v6 setFrame:?];
  [(PBUIWallpaperEffectViewBase *)v6 setAutoresizingMask:18];
  [(PBUIWallpaperEffectViewBase *)v6 setAlpha:0.0];
  [(PBUIWallpaperStaticBackgroundView *)self addSubview:v6];
  return v6;
}

- (BOOL)_shouldSuspendMotionEffectsForStyle:(int64_t)style
{
  result = _WallpaperStyleHasDarkBlur(style);
  if ((style - 1) < 2)
  {
    return 1;
  }

  return result;
}

- (BOOL)_shouldSuspendMotionEffectsForState:(id *)state
{
  v5 = [(PBUIWallpaperStaticBackgroundView *)self _shouldSuspendMotionEffectsForStyle:state->var0];
  v6 = [(PBUIWallpaperStaticBackgroundView *)self _shouldSuspendMotionEffectsForStyle:state->var1];
  var2 = state->var2;
  if (fabs(var2 + -1.0) < 2.22044605e-16 && v6)
  {
    return 1;
  }

  else
  {
    return v5 & (fabs(var2) < 2.22044605e-16 || v6);
  }
}

@end