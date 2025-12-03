@interface PXZoomablePhotosMiniModeAnimator
- ($54B668FA3CFF7C50914A1C899F2834C0)collapseProgressForNormalizedYPosition:(SEL)position;
- (NSString)description;
- (PXZoomablePhotosMiniModeAnimator)init;
- (double)gridBackgroundVisibilityPercentage;
- (double)gridExpansionPercentage;
- (double)gridMiniChromeVisibilityPercentage;
- (double)gridMiniStylingPercentage;
- (void)_applyAnimationValue:(id *)value toAnimator:(id)animator animateImmediately:(BOOL)immediately;
- (void)_updateAnimator;
- (void)_updateIsAnimating;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performAnimated:(BOOL)animated changes:(id)changes;
- (void)setInteractionProgress:(double)progress;
- (void)setIsAnimating:(BOOL)animating;
- (void)setIsContentAnimating:(BOOL)animating;
- (void)setTargetState:(unint64_t)state;
@end

@implementation PXZoomablePhotosMiniModeAnimator

- (PXZoomablePhotosMiniModeAnimator)init
{
  v14.receiver = self;
  v14.super_class = PXZoomablePhotosMiniModeAnimator;
  v2 = [(PXZoomablePhotosMiniModeAnimator *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3CD80]);
    gridExpansionAnimator = v2->_gridExpansionAnimator;
    v2->_gridExpansionAnimator = v3;

    v5 = objc_alloc_init(MEMORY[0x277D3CD80]);
    gridMiniStylingAnimator = v2->_gridMiniStylingAnimator;
    v2->_gridMiniStylingAnimator = v5;

    v7 = objc_alloc_init(MEMORY[0x277D3CD80]);
    gridMiniChromeVisibilityAnimator = v2->_gridMiniChromeVisibilityAnimator;
    v2->_gridMiniChromeVisibilityAnimator = v7;

    v9 = objc_alloc_init(MEMORY[0x277D3CD80]);
    gridBackgroundVisibilityAnimator = v2->_gridBackgroundVisibilityAnimator;
    v2->_gridBackgroundVisibilityAnimator = v9;

    [(PXNumberAnimator *)v2->_gridExpansionAnimator setHighFrameRateReason:2228229];
    [(PXNumberAnimator *)v2->_gridMiniStylingAnimator setHighFrameRateReason:2228229];
    [(PXNumberAnimator *)v2->_gridMiniChromeVisibilityAnimator setHighFrameRateReason:2228229];
    [(PXNumberAnimator *)v2->_gridBackgroundVisibilityAnimator setHighFrameRateReason:2228229];
    [(PXNumberAnimator *)v2->_gridExpansionAnimator registerChangeObserver:v2 context:PXZoomablePhotosMiniModeAnimatorGridExpansionContext];
    [(PXNumberAnimator *)v2->_gridMiniStylingAnimator registerChangeObserver:v2 context:PXZoomablePhotosMiniModeAnimatorGridMiniStylingContext];
    [(PXNumberAnimator *)v2->_gridMiniChromeVisibilityAnimator registerChangeObserver:v2 context:PXZoomablePhotosMiniModeAnimatorGridMiniChromeVisibilityContext];
    [(PXNumberAnimator *)v2->_gridBackgroundVisibilityAnimator registerChangeObserver:v2 context:PXZoomablePhotosMiniModeAnimatorGridBackgroundVisibilityContext];
    v11 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v2 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v2->_updater;
    v2->_updater = v11;

    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateAnimator needsUpdate:0];
    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateIsAnimating needsUpdate:0];
  }

  return v2;
}

- (double)gridMiniStylingPercentage
{
  gridMiniStylingAnimator = [(PXZoomablePhotosMiniModeAnimator *)self gridMiniStylingAnimator];
  [gridMiniStylingAnimator presentationValue];
  v4 = v3;

  return v4 * v4;
}

- (double)gridMiniChromeVisibilityPercentage
{
  gridMiniChromeVisibilityAnimator = [(PXZoomablePhotosMiniModeAnimator *)self gridMiniChromeVisibilityAnimator];
  [gridMiniChromeVisibilityAnimator presentationValue];
  v4 = v3;

  return v4;
}

- (void)_updateIsAnimating
{
  if (-[PXZoomablePhotosMiniModeAnimator targetState](self, "targetState") == 2 || -[PXZoomablePhotosMiniModeAnimator targetState](self, "targetState") == 3 || (-[PXZoomablePhotosMiniModeAnimator gridMiniStylingAnimator](self, "gridMiniStylingAnimator"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isAnimating], v3, (v4 & 1) != 0))
  {
    isAnimating = 1;
    [(PXZoomablePhotosMiniModeAnimator *)self setIsContentAnimating:1];
    goto LABEL_5;
  }

  [(PXZoomablePhotosMiniModeAnimator *)self interactionProgress];
  if (PXFloatApproximatelyEqualToFloat())
  {
    [(PXZoomablePhotosMiniModeAnimator *)self setIsContentAnimating:0];
LABEL_11:
    gridBackgroundVisibilityAnimator = [(PXZoomablePhotosMiniModeAnimator *)self gridBackgroundVisibilityAnimator];
    isAnimating = [gridBackgroundVisibilityAnimator isAnimating];

    goto LABEL_5;
  }

  [(PXZoomablePhotosMiniModeAnimator *)self interactionProgress];
  v6 = PXFloatApproximatelyEqualToFloat() ^ 1;
  [(PXZoomablePhotosMiniModeAnimator *)self setIsContentAnimating:v6];
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  isAnimating = 1;
LABEL_5:

  [(PXZoomablePhotosMiniModeAnimator *)self setIsAnimating:isAnimating];
}

- (void)_applyAnimationValue:(id *)value toAnimator:(id)animator animateImmediately:(BOOL)immediately
{
  animatorCopy = animator;
  [animatorCopy value];
  if (v9 != value->var0)
  {
    if (value->var5 && self->_performAnimated)
    {
      if (value->var3)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __87__PXZoomablePhotosMiniModeAnimator__applyAnimationValue_toAnimator_animateImmediately___block_invoke_2;
        v27[3] = &unk_278298500;
        v10 = animatorCopy;
        v28 = v10;
        [v10 performChangesWithoutAnimation:v27];
        var4 = value->var4;
        var3 = value->var3;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __87__PXZoomablePhotosMiniModeAnimator__applyAnimationValue_toAnimator_animateImmediately___block_invoke_3;
        v22[3] = &__block_descriptor_81_e35_v16__0___PXMutableNumberAnimator__8l;
        v13 = *&value->var2;
        v23 = *&value->var0;
        v24 = v13;
        v25 = *&value->var4;
        immediatelyCopy = immediately;
        [v10 performChangesWithDuration:var3 curve:v22 changes:var4];
      }

      else
      {
        var1 = value->var1;
        var2 = value->var2;
        if (var2 == 0.0)
        {
          var2 = 300.0;
        }

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __87__PXZoomablePhotosMiniModeAnimator__applyAnimationValue_toAnimator_animateImmediately___block_invoke;
        v29[3] = &__block_descriptor_81_e35_v16__0___PXMutableNumberAnimator__8l;
        v17 = *&value->var2;
        v30 = *&value->var0;
        v31 = v17;
        v32 = *&value->var4;
        immediatelyCopy2 = immediately;
        [animatorCopy performChangesUsingSpringAnimationWithStiffness:v29 dampingRatio:var2 initialVelocity:1.0 changes:var1];
      }
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __87__PXZoomablePhotosMiniModeAnimator__applyAnimationValue_toAnimator_animateImmediately___block_invoke_4;
      v18[3] = &__block_descriptor_80_e35_v16__0___PXMutableNumberAnimator__8l;
      v14 = *&value->var2;
      v19 = *&value->var0;
      v20 = v14;
      v21 = *&value->var4;
      [animatorCopy performChangesWithDuration:1 curve:v18 changes:0.0];
    }
  }
}

void __87__PXZoomablePhotosMiniModeAnimator__applyAnimationValue_toAnimator_animateImmediately___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 presentationValue];
  [v3 setValue:?];
}

- (void)_updateAnimator
{
  targetState = [(PXZoomablePhotosMiniModeAnimator *)self targetState];
  currentChanges = [(PXZoomablePhotosMiniModeAnimator *)self currentChanges];
  [(PXZoomablePhotosMiniModeAnimator *)self interactionProgress];
  v6 = 0;
  v31[0] = 0;
  *(v31 + 3) = 0;
  v30[0] = 0;
  v7 = 0;
  *(v30 + 3) = 0;
  if (targetState > 1)
  {
    v15 = v5;
    v8 = (currentChanges >> 2) & 1;
    if (targetState == 3 || targetState == 2)
    {
      v6 = 0;
      v22 = 1.0;
      v14 = 1.0 - v5;
      v11 = 50.0;
      v12 = 0x4049000000000000;
      v13 = 1.0;
      v10 = 0;
      v9 = 0;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (targetState)
  {
    if (targetState == 1)
    {
      LOBYTE(v8) = 1;
      v22 = 1.0;
      v9 = 0x4049000000000000;
      v10 = 0x4059000000000000;
      v11 = 150.0;
      v12 = 0x4062C00000000000;
      v13 = 1.0;
      v14 = 1.0;
      v6 = 1;
LABEL_9:
      v15 = 0.0;
      goto LABEL_11;
    }

LABEL_8:
    v11 = 0.0;
    v22 = 0.0;
    v12 = 0;
    v13 = 0.0;
    LOBYTE(v8) = 0;
    v10 = 0;
    v14 = 0.0;
    v9 = 0;
    goto LABEL_9;
  }

  [(PXZoomablePhotosMiniModeAnimator *)self gridExpansionVelocity];
  v7 = v16;
  v31[0] = 0;
  *(v31 + 3) = 0;
  v30[0] = 0;
  *(v30 + 3) = 0;
  LOBYTE(v8) = 1;
  v22 = 1.0;
  v11 = 25.0;
  v9 = 0x4049000000000000;
  v12 = 0x4062C00000000000;
  v13 = 0.0;
  v10 = 0x4062C00000000000;
  v14 = 0.0;
  v6 = 1;
  v15 = 1.0;
LABEL_11:
  v17 = [(PXZoomablePhotosMiniModeAnimator *)self previousState]== 2 || [(PXZoomablePhotosMiniModeAnimator *)self previousState]== 3;
  gridExpansionAnimator = [(PXZoomablePhotosMiniModeAnimator *)self gridExpansionAnimator];
  v23 = v15;
  v24 = v7;
  v25 = *&v9;
  v26 = 0;
  v27 = 0;
  v28 = v6;
  memset(v29, 0, sizeof(v29));
  [(PXZoomablePhotosMiniModeAnimator *)self _applyAnimationValue:&v23 toAnimator:gridExpansionAnimator animateImmediately:v17];

  gridMiniStylingAnimator = [(PXZoomablePhotosMiniModeAnimator *)self gridMiniStylingAnimator];
  v23 = v14;
  v24 = 0;
  v25 = *&v10;
  v26 = 0;
  v27 = 0;
  v28 = v8;
  *v29 = v31[0];
  *&v29[3] = *(v31 + 3);
  [(PXZoomablePhotosMiniModeAnimator *)self _applyAnimationValue:&v23 toAnimator:gridMiniStylingAnimator animateImmediately:v17];

  gridMiniChromeVisibilityAnimator = [(PXZoomablePhotosMiniModeAnimator *)self gridMiniChromeVisibilityAnimator];
  v23 = v13;
  v24 = 0;
  v25 = *&v12;
  v26 = 0;
  v27 = 0;
  v28 = v8;
  *v29 = v30[0];
  *&v29[3] = *(v30 + 3);
  [(PXZoomablePhotosMiniModeAnimator *)self _applyAnimationValue:&v23 toAnimator:gridMiniChromeVisibilityAnimator animateImmediately:v17];

  gridBackgroundVisibilityAnimator = [(PXZoomablePhotosMiniModeAnimator *)self gridBackgroundVisibilityAnimator];
  v23 = v22;
  v24 = 0;
  v25 = v11;
  v26 = 0;
  v27 = 0;
  v28 = v8;
  memset(v29, 0, sizeof(v29));
  [(PXZoomablePhotosMiniModeAnimator *)self _applyAnimationValue:&v23 toAnimator:gridBackgroundVisibilityAnimator animateImmediately:v17];
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXZoomablePhotosMiniModeAnimator;
  [(PXZoomablePhotosMiniModeAnimator *)&v3 didPerformChanges];
  [(PXUpdater *)self->_updater updateIfNeeded];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXZoomablePhotosMiniModeAnimatorGridExpansionContext != context && PXZoomablePhotosMiniModeAnimatorGridMiniStylingContext != context && PXZoomablePhotosMiniModeAnimatorGridMiniChromeVisibilityContext != context && PXZoomablePhotosMiniModeAnimatorGridBackgroundVisibilityContext != context)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosMiniModeAnimator.m" lineNumber:244 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v13 = observableCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__PXZoomablePhotosMiniModeAnimator_observable_didChange_context___block_invoke;
  v15[3] = &unk_2782984B8;
  v15[4] = self;
  v15[5] = change;
  [(PXZoomablePhotosMiniModeAnimator *)self performChanges:v15];
}

void __65__PXZoomablePhotosMiniModeAnimator_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 2) != 0)
  {
    [*(a1 + 32) signalChange:1];
    v3 = *(a1 + 40);
  }

  if ((v3 & 4) != 0)
  {
    [*(a1 + 32) _invalidateIsAnimating];
  }
}

- ($54B668FA3CFF7C50914A1C899F2834C0)collapseProgressForNormalizedYPosition:(SEL)position
{
  v7 = 1.0;
  v8 = 1.0 - a4;
  result = [(PXZoomablePhotosMiniModeAnimator *)self isActive];
  v10 = result;
  if (a4 >= 1.0)
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    if (a4 > 0.0)
    {
      v14 = +[PXZoomablePhotosSettings sharedInstance];
      [(PXZoomablePhotosMiniModeAnimator *)self gridMiniUnfoldingPercentage];
      [v14 unfoldVerticalShiftCompensation];
      [v14 unfoldVerticalShiftCompensation];
      PXFloatProgressBetween();
      PXFloatSaturate();
      PXFloatNormalize();
      PXFloatSaturate();
      [v14 unfoldEaseOutAmount];
      PXFloatByLinearlyInterpolatingFloats();
      PXFloatDenormalize();
      [v14 unfoldInitialPercentage];
      PXFloatSaturate();
      PXFloatByLinearlyInterpolatingFloats();
      v11 = v15;
      PXFloatProgressBetween();
      PXFloatByLinearlyInterpolatingFloats();
      PXFloatByLinearlyInterpolatingFloats();
      PXFloatByLinearlyInterpolatingFloats();
      PXFloatByLinearlyInterpolatingFloats();
      v7 = v16;
      PXFloatByLinearlyInterpolatingFloats();
      v12 = v17;
      PXFloatProgressBetween();
      PXFloatSaturate();
      PXFloatByLinearlyInterpolatingFloats();
      v13 = v18;
    }
  }

  retstr->var0 = 1.0;
  v19 = v8 * 10.0;
  if (!v10)
  {
    v19 = 0.0;
  }

  retstr->var1 = v7;
  retstr->var2 = v11;
  retstr->var3 = v19;
  retstr->var4 = v12;
  retstr->var5 = v13;
  return result;
}

- (double)gridBackgroundVisibilityPercentage
{
  gridBackgroundVisibilityAnimator = [(PXZoomablePhotosMiniModeAnimator *)self gridBackgroundVisibilityAnimator];
  [gridBackgroundVisibilityAnimator presentationValue];
  v4 = v3;

  return v4 * (2.0 - v4) * (2.0 - v4 * (2.0 - v4));
}

- (double)gridExpansionPercentage
{
  gridExpansionAnimator = [(PXZoomablePhotosMiniModeAnimator *)self gridExpansionAnimator];
  [gridExpansionAnimator presentationValue];
  v4 = v3;

  return v4;
}

- (void)setIsContentAnimating:(BOOL)animating
{
  if (self->_isContentAnimating != animating)
  {
    self->_isContentAnimating = animating;
    [(PXZoomablePhotosMiniModeAnimator *)self signalChange:2];
  }
}

- (void)setIsAnimating:(BOOL)animating
{
  if (self->_isAnimating != animating)
  {
    self->_isAnimating = animating;
    [(PXZoomablePhotosMiniModeAnimator *)self signalChange:2];
  }
}

- (void)setInteractionProgress:(double)progress
{
  if (self->_interactionProgress != progress)
  {
    self->_interactionProgress = progress;
    [(PXZoomablePhotosMiniModeAnimator *)self _invalidateAnimator];
    [(PXZoomablePhotosMiniModeAnimator *)self _invalidateIsAnimating];

    [(PXZoomablePhotosMiniModeAnimator *)self signalChange:1];
  }
}

- (void)setTargetState:(unint64_t)state
{
  targetState = self->_targetState;
  if (targetState != state)
  {
    self->_previousState = targetState;
    self->_targetState = state;
    [(PXZoomablePhotosMiniModeAnimator *)self signalChange:4];
    [(PXZoomablePhotosMiniModeAnimator *)self _invalidateIsAnimating];

    [(PXZoomablePhotosMiniModeAnimator *)self _invalidateAnimator];
  }
}

- (void)performAnimated:(BOOL)animated changes:(id)changes
{
  performAnimated = self->_performAnimated;
  self->_performAnimated = animated;
  v6.receiver = self;
  v6.super_class = PXZoomablePhotosMiniModeAnimator;
  [(PXZoomablePhotosMiniModeAnimator *)&v6 performChanges:changes];
  self->_performAnimated = performAnimated;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p targetState:%lu interactionProgress:%.2f \n", v5, self, self->_targetState, *&self->_interactionProgress];;

  [v6 appendFormat:@"gridExpansion: %@\n", self->_gridExpansionAnimator];
  [v6 appendFormat:@"gridMiniStyling: %@\n", self->_gridMiniStylingAnimator];
  [v6 appendFormat:@"gridMiniChromeVisibility: %@\n", self->_gridMiniChromeVisibilityAnimator];
  [v6 appendFormat:@"gridBackgroundVisibility: %@\n", self->_gridBackgroundVisibilityAnimator];
  [v6 appendFormat:@">;"];

  return v6;
}

@end