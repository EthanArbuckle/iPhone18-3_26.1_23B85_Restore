@interface CFXFaceReticleView
- (CFXFaceReticleView)initWithFrame:(CGRect)frame reticleType:(int64_t)type;
- (void)animojiCloseAnimationWithCompletion:(id)completion;
- (void)animojiFadeInAnimation;
- (void)fadeInAnimation;
- (void)fadeOutAndEndHapticWithCompletionBlock:(id)block;
- (void)fadeOutAnimationWithCompletion:(id)completion;
- (void)hideAnimojiFaceReticleAnimatedWithCompletion:(id)completion;
- (void)setupAnimojiReticleLayers;
- (void)shouldUseHapticFeedback:(BOOL)feedback;
- (void)showAndAnimateAnimojiFaceReticle;
- (void)updateFrameForDisplayRelativeToBounds:(CGRect)bounds;
- (void)userFeedbackForTrackingType:(int64_t)type needsHaptics:(BOOL)haptics;
@end

@implementation CFXFaceReticleView

- (CFXFaceReticleView)initWithFrame:(CGRect)frame reticleType:(int64_t)type
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19.receiver = self;
  v19.super_class = CFXFaceReticleView;
  v9 = [(CFXFaceReticleView *)&v19 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    v9->_isShowingFaceIndicator = 0;
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{x, y, width, height}];
    reticleImageView = v10->_reticleImageView;
    v10->_reticleImageView = v11;

    [(UIImageView *)v10->_reticleImageView setHidden:1];
    v10->_canPerformFadeInAnimations = 1;
    if (type == 1)
    {
      [(CFXFaceReticleView *)v10 setupAnimojiReticleLayers];
    }

    else if (!type)
    {
      v13 = MEMORY[0x277D755B8];
      jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
      v15 = [v13 imageNamed:@"faceIndicator" inBundle:jfxBundle compatibleWithTraitCollection:0];

      [v15 size];
      v17 = [v15 resizableImageWithCapInsets:{v16 * 0.5, v16 * 0.5, v16 * 0.5, v16 * 0.5}];
      [(UIImageView *)v10->_reticleImageView setImage:v17];
    }

    [(CFXFaceReticleView *)v10 addSubview:v10->_reticleImageView];
  }

  return v10;
}

- (void)updateFrameForDisplayRelativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = +[JFXOrientationMonitor interfaceOrientation];
  v9 = +[CFXMediaSettings sharedInstance];
  [v9 frameSize];
  v12 = aspectRatioForSize(v10, v11);
  v22 = *MEMORY[0x277CC08F0];
  v23 = *(MEMORY[0x277CC08F0] + 16);
  [JFXEffectEditingUtilities currentFaceRectRelativeToBounds:&v22 atTime:0 transformAnimation:1 playableMediaContentMode:v8 playableInterfaceOrientation:v12 playableAspectRatio:0 playableAspectRatioPreservationMode:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  reticleImageView = [(CFXFaceReticleView *)self reticleImageView];
  [reticleImageView setFrame:{v14, v16, v18, v20}];
}

- (void)userFeedbackForTrackingType:(int64_t)type needsHaptics:(BOOL)haptics
{
  hapticsCopy = haptics;
  if (type == 1)
  {
    [(CFXFaceReticleView *)self fadeInAnimation];
  }

  else
  {
    [(CFXFaceReticleView *)self fadeOutAnimationWithCompletion:0];
  }

  [(CFXFaceReticleView *)self shouldUseHapticFeedback:hapticsCopy];
}

- (void)fadeInAnimation
{
  if ([(CFXFaceReticleView *)self canPerformFadeInAnimations])
  {
    [(CFXFaceReticleView *)self setCanPerformFadeInAnimations:0];
    [(CFXFaceReticleView *)self setCanPerformFadeOutAnimations:1];
    reticleImageView = [(CFXFaceReticleView *)self reticleImageView];
    [reticleImageView setHidden:0];

    reticleImageView2 = [(CFXFaceReticleView *)self reticleImageView];
    [reticleImageView2 setAlpha:0.0];

    CGAffineTransformMakeScale(&v17, 0.85, 0.85);
    reticleImageView3 = [(CFXFaceReticleView *)self reticleImageView];
    location = v17;
    [reticleImageView3 setTransform:&location];

    v6 = objc_alloc(MEMORY[0x277D75D40]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37__CFXFaceReticleView_fadeInAnimation__block_invoke;
    v15[3] = &unk_278D79D20;
    v15[4] = self;
    v7 = [v6 initWithDuration:0 curve:v15 animations:0.5];
    [v7 startAnimation];
    v8 = objc_alloc(MEMORY[0x277D75D40]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__CFXFaceReticleView_fadeInAnimation__block_invoke_2;
    v14[3] = &unk_278D79D20;
    v14[4] = self;
    v9 = [v8 initWithDuration:0 curve:v14 animations:0.7];
    [(CFXFaceReticleView *)self setBounceAnimator:v9];

    objc_initWeak(&location, self);
    bounceAnimator = [(CFXFaceReticleView *)self bounceAnimator];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__CFXFaceReticleView_fadeInAnimation__block_invoke_3;
    v12[3] = &unk_278D7CB98;
    objc_copyWeak(&v13, &location);
    [bounceAnimator addCompletion:v12];

    bounceAnimator2 = [(CFXFaceReticleView *)self bounceAnimator];
    [bounceAnimator2 startAnimationAfterDelay:0.5];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __37__CFXFaceReticleView_fadeInAnimation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reticleImageView];
  [v2 setAlpha:1.0];

  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v3 = [*(a1 + 32) reticleImageView];
  v4 = v5;
  [v3 setTransform:&v4];
}

void __37__CFXFaceReticleView_fadeInAnimation__block_invoke_2(uint64_t a1, double a2)
{
  LODWORD(a2) = 2139095040;
  [MEMORY[0x277D75D18] setAnimationRepeatCount:a2];
  [MEMORY[0x277D75D18] setAnimationRepeatAutoreverses:1];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v5.a = *MEMORY[0x277CBF2C0];
  *&v5.c = v3;
  *&v5.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v6, &v5, 0.93, 0.93);
  v4 = [*(a1 + 32) reticleImageView];
  v5 = v6;
  [v4 setTransform:&v5];
}

void __37__CFXFaceReticleView_fadeInAnimation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCanPerformFadeInAnimations:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setBounceAnimator:0];
}

- (void)fadeOutAnimationWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CFXFaceReticleView *)self canPerformFadeOutAnimations])
  {
    [(CFXFaceReticleView *)self setCanPerformFadeOutAnimations:0];
    v5 = objc_alloc(MEMORY[0x277D75D40]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__CFXFaceReticleView_fadeOutAnimationWithCompletion___block_invoke;
    v17[3] = &unk_278D79D20;
    v17[4] = self;
    v6 = [v5 initWithDuration:0 curve:v17 animations:0.5];
    [(CFXFaceReticleView *)self setFadeOutAnimator:v6];

    objc_initWeak(&location, self);
    fadeOutAnimator = [(CFXFaceReticleView *)self fadeOutAnimator];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__CFXFaceReticleView_fadeOutAnimationWithCompletion___block_invoke_2;
    v14[3] = &unk_278D7CB98;
    objc_copyWeak(&v15, &location);
    [fadeOutAnimator addCompletion:v14];

    fadeOutAnimator2 = [(CFXFaceReticleView *)self fadeOutAnimator];
    [fadeOutAnimator2 startAnimation];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  if (completionCopy)
  {
    fadeOutAnimator3 = [(CFXFaceReticleView *)self fadeOutAnimator];
    isRunning = [fadeOutAnimator3 isRunning];

    if (isRunning)
    {
      fadeOutAnimator4 = [(CFXFaceReticleView *)self fadeOutAnimator];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__CFXFaceReticleView_fadeOutAnimationWithCompletion___block_invoke_3;
      v12[3] = &unk_278D7A7C0;
      v13 = completionCopy;
      [fadeOutAnimator4 addCompletion:v12];
    }

    else
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __53__CFXFaceReticleView_fadeOutAnimationWithCompletion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) reticleImageView];
  [v1 setAlpha:0.0];
}

void __53__CFXFaceReticleView_fadeOutAnimationWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained reticleImageView];
  [v5 setHidden:1];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 bounceAnimator];
  [v7 stopAnimation:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 bounceAnimator];
  [v9 finishAnimationAtPosition:a2];

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 setFadeOutAnimator:0];
}

- (void)fadeOutAndEndHapticWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(CFXFaceReticleView *)self shouldUseHapticFeedback:0];
  [(CFXFaceReticleView *)self fadeOutAnimationWithCompletion:blockCopy];
}

- (void)shouldUseHapticFeedback:(BOOL)feedback
{
  if (feedback)
  {
    feedbackGenerator = [(CFXFaceReticleView *)self feedbackGenerator];

    if (!feedbackGenerator)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75A10]);
      [(CFXFaceReticleView *)self setFeedbackGenerator:v5];

      feedbackGenerator2 = [(CFXFaceReticleView *)self feedbackGenerator];
      [feedbackGenerator2 _setOutputMode:5];
    }

    feedbackGenerator3 = [(CFXFaceReticleView *)self feedbackGenerator];
    [feedbackGenerator3 prepare];

    feedbackGenerator4 = [(CFXFaceReticleView *)self feedbackGenerator];
    [feedbackGenerator4 selectionChanged];
  }

  else
  {

    [(CFXFaceReticleView *)self setFeedbackGenerator:0];
  }
}

- (void)setupAnimojiReticleLayers
{
  [(CFXFaceReticleView *)self bounds];
  v3 = 0.125;
  v5 = (v4 * 0.125 * 3.14159265 * 3.0 * 0.5 - v4 * 0.5) / (v4 + v4);
  v26 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.8 blue:0.0 alpha:1.0];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(CFXFaceReticleView *)self setReticleLayersToAnimate:v6];

  reticleLayersToAnimate = [(CFXFaceReticleView *)self reticleLayersToAnimate];
  v8 = [reticleLayersToAnimate count];

  v9 = *MEMORY[0x277CDA780];
  if (v8 <= 7)
  {
    v10 = 0.375;
    do
    {
      v11 = MEMORY[0x277D75208];
      [(CFXFaceReticleView *)self bounds];
      v12 = [v11 bezierPathWithRoundedRect:? cornerRadius:?];
      v13 = objc_alloc_init(MEMORY[0x277CD9F90]);
      [v13 setStrokeColor:{objc_msgSend(v26, "CGColor")}];
      clearColor = [MEMORY[0x277D75348] clearColor];
      [v13 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

      [v13 setLineWidth:5.0];
      [v13 setLineCap:v9];
      [v13 setStrokeStart:v3 + 0.045 - v5];
      [v13 setStrokeEnd:v10 + -0.045 - v5];
      [v13 setPath:{objc_msgSend(v12, "CGPath")}];
      layer = [(UIImageView *)self->_reticleImageView layer];
      [layer addSublayer:v13];

      reticleLayersToAnimate2 = [(CFXFaceReticleView *)self reticleLayersToAnimate];
      [reticleLayersToAnimate2 addObject:v13];

      v3 = v3 + 0.25;
      v10 = v10 + 0.25;

      reticleLayersToAnimate3 = [(CFXFaceReticleView *)self reticleLayersToAnimate];
      v18 = [reticleLayersToAnimate3 count];
    }

    while (v18 < 8);
  }

  v19 = MEMORY[0x277D75208];
  [(CFXFaceReticleView *)self bounds];
  v20 = [v19 bezierPathWithRoundedRect:? cornerRadius:?];
  v21 = objc_alloc_init(MEMORY[0x277CD9F90]);
  v22 = v26;
  [v21 setStrokeColor:{objc_msgSend(v26, "CGColor")}];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [v21 setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

  [v21 setLineWidth:5.0];
  [v21 setLineCap:v9];
  [v21 setStrokeStart:0.0];
  [v21 setStrokeEnd:0.08 - v5];
  [v21 setPath:{objc_msgSend(v20, "CGPath")}];
  layer2 = [(UIImageView *)self->_reticleImageView layer];
  [layer2 addSublayer:v21];

  reticleLayersToAnimate4 = [(CFXFaceReticleView *)self reticleLayersToAnimate];
  [reticleLayersToAnimate4 addObject:v21];
}

- (void)animojiFadeInAnimation
{
  reticleImageView = [(CFXFaceReticleView *)self reticleImageView];
  [reticleImageView setHidden:0];

  reticleImageView2 = [(CFXFaceReticleView *)self reticleImageView];
  [reticleImageView2 setAlpha:0.0];

  v5 = objc_alloc(MEMORY[0x277D75D40]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__CFXFaceReticleView_animojiFadeInAnimation__block_invoke;
  v18[3] = &unk_278D79D20;
  v18[4] = self;
  v6 = [v5 initWithDuration:0 curve:v18 animations:0.4];
  [v6 startAnimation];
  v7 = objc_alloc(MEMORY[0x277D75D40]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__CFXFaceReticleView_animojiFadeInAnimation__block_invoke_2;
  v17[3] = &unk_278D79D20;
  v17[4] = self;
  v8 = [v7 initWithDuration:0 curve:v17 animations:0.4];
  [(CFXFaceReticleView *)self setAnimojiBounceAnimator:v8];

  objc_initWeak(&location, self);
  animojiBounceAnimator = [(CFXFaceReticleView *)self animojiBounceAnimator];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __44__CFXFaceReticleView_animojiFadeInAnimation__block_invoke_3;
  v14 = &unk_278D7CB98;
  objc_copyWeak(&v15, &location);
  [animojiBounceAnimator addCompletion:&v11];

  v10 = [(CFXFaceReticleView *)self animojiBounceAnimator:v11];
  [v10 startAnimation];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __44__CFXFaceReticleView_animojiFadeInAnimation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) reticleImageView];
  [v1 setAlpha:1.0];
}

void __44__CFXFaceReticleView_animojiFadeInAnimation__block_invoke_2(uint64_t a1, double a2)
{
  LODWORD(a2) = 2139095040;
  [MEMORY[0x277D75D18] setAnimationRepeatCount:a2];
  [MEMORY[0x277D75D18] setAnimationRepeatAutoreverses:1];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v5.a = *MEMORY[0x277CBF2C0];
  *&v5.c = v3;
  *&v5.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v6, &v5, 0.93, 0.93);
  v4 = [*(a1 + 32) reticleImageView];
  v5 = v6;
  [v4 setTransform:&v5];
}

void __44__CFXFaceReticleView_animojiFadeInAnimation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBounceAnimator:0];
}

- (void)animojiCloseAnimationWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [MEMORY[0x277CD9FF0] begin];
  v5 = MEMORY[0x277CD9FF0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __58__CFXFaceReticleView_animojiCloseAnimationWithCompletion___block_invoke;
  v29[3] = &unk_278D7A168;
  v22 = completionCopy;
  v30 = v22;
  [v5 setCompletionBlock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CFXFaceReticleView *)self reticleLayersToAnimate];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v24 = *v26;
    v8 = *MEMORY[0x277CDA238];
    v9 = *MEMORY[0x277CDA7B8];
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
        v13 = MEMORY[0x277CCABB0];
        [v11 strokeStart];
        v15 = [v13 numberWithDouble:v14 + -0.045];
        [v12 setToValue:v15];

        [v12 setDuration:0.2];
        [v12 setFillMode:v8];
        v16 = [MEMORY[0x277CD9EF8] functionWithName:v9];
        [v12 setTimingFunction:v16];

        [v12 setRemovedOnCompletion:0];
        v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
        v18 = MEMORY[0x277CCABB0];
        [v11 strokeEnd];
        v20 = [v18 numberWithDouble:v19 + 0.045];
        [v17 setToValue:v20];

        [v17 setDuration:0.2];
        [v17 setFillMode:v8];
        v21 = [MEMORY[0x277CD9EF8] functionWithName:v9];
        [v17 setTimingFunction:v21];

        [v17 setRemovedOnCompletion:0];
        [v11 addAnimation:v17 forKey:0];
        [v11 addAnimation:v12 forKey:0];

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)showAndAnimateAnimojiFaceReticle
{
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CFXFaceReticleView_showAndAnimateAnimojiFaceReticle__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (void)hideAnimojiFaceReticleAnimatedWithCompletion:(id)completion
{
  completionCopy = completion;
  animojiBounceAnimator = [(CFXFaceReticleView *)self animojiBounceAnimator];
  [animojiBounceAnimator stopAnimation:1];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CFXFaceReticleView_hideAnimojiFaceReticleAnimatedWithCompletion___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CFXFaceReticleView *)self animojiCloseAnimationWithCompletion:v7];
}

void __67__CFXFaceReticleView_hideAnimojiFaceReticleAnimatedWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D75D40]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__CFXFaceReticleView_hideAnimojiFaceReticleAnimatedWithCompletion___block_invoke_2;
  v13[3] = &unk_278D79D20;
  v13[4] = *(a1 + 32);
  v3 = [v2 initWithDuration:0 curve:v13 animations:0.4];
  [*(a1 + 32) setAnimojiFadeOutAnimator:v3];

  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) animojiFadeOutAnimator];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __67__CFXFaceReticleView_hideAnimojiFaceReticleAnimatedWithCompletion___block_invoke_3;
  v9 = &unk_278D7CBC0;
  objc_copyWeak(&v11, &location);
  v10 = *(a1 + 40);
  [v4 addCompletion:&v6];

  v5 = [*(a1 + 32) animojiFadeOutAnimator];
  [v5 startAnimationAfterDelay:0.2];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __67__CFXFaceReticleView_hideAnimojiFaceReticleAnimatedWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) reticleImageView];
  [v1 setAlpha:0.0];
}

uint64_t __67__CFXFaceReticleView_hideAnimojiFaceReticleAnimatedWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained reticleImageView];
  [v3 setHidden:1];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setFadeOutAnimator:0];

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

@end