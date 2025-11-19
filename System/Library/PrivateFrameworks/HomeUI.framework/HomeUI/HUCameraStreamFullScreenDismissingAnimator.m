@interface HUCameraStreamFullScreenDismissingAnimator
- (HUCameraStreamFullScreenDismissingAnimator)initWithSourceCameraCell:(id)a3 cameraViewSnapshot:(id)a4 cameraOverlaySnapshot:(id)a5;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation HUCameraStreamFullScreenDismissingAnimator

- (HUCameraStreamFullScreenDismissingAnimator)initWithSourceCameraCell:(id)a3 cameraViewSnapshot:(id)a4 cameraOverlaySnapshot:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUCameraStreamFullScreenDismissingAnimator;
  v11 = [(HUCameraStreamFullScreenAnimator *)&v14 initWithSourceCameraCell:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cameraViewSnapshot, a4);
    objc_storeStrong(&v12->_cameraOverlaySnapshot, a5);
  }

  return v12;
}

- (double)transitionDuration:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUCameraStreamFullScreenDismissingAnimator;
  [(HUCameraStreamFullScreenAnimator *)&v4 transitionDuration:a3];
  return result;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewForKey:*MEMORY[0x277D77238]];
  v7 = [v4 viewForKey:*MEMORY[0x277D77248]];
  v8 = objc_alloc(MEMORY[0x277D75D18]);
  [v6 frame];
  v9 = [v8 initWithFrame:?];
  v10 = [MEMORY[0x277D75348] systemBlackColor];
  [v9 setBackgroundColor:v10];

  v11 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraViewSnapshot];
  [v11 frame];
  [v5 convertRect:v6 fromView:?];
  [(HUCameraStreamFullScreenAnimator *)self _adjustPresentedViewFrame:v4 forTransitionContext:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraViewSnapshot];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraViewSnapshot];
  [v21 setContentMode:1];

  v22 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraOverlaySnapshot];
  [v22 frame];
  [v5 convertRect:v6 fromView:?];
  [(HUCameraStreamFullScreenAnimator *)self _adjustPresentedViewFrame:v4 forTransitionContext:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraOverlaySnapshot];
  [v31 setFrame:{v24, v26, v28, v30}];

  [v6 removeFromSuperview];
  [(HUCameraStreamFullScreenAnimator *)self _toViewFinalFrame:v4];
  [v7 setFrame:?];
  [v5 addSubview:v7];
  [v5 addSubview:v9];
  v32 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraViewSnapshot];
  [v5 addSubview:v32];

  v33 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraOverlaySnapshot];
  [v5 addSubview:v33];

  v34 = [(HUCameraStreamFullScreenAnimator *)self sourceCameraCell];
  [v34 setCameraViewAlpha:0.0];

  v35 = MEMORY[0x277D75D18];
  [(HUCameraStreamFullScreenDismissingAnimator *)self transitionDuration:v4];
  v37 = v36;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __64__HUCameraStreamFullScreenDismissingAnimator_animateTransition___block_invoke;
  v43[3] = &unk_277DB8810;
  v44 = v5;
  v45 = self;
  v46 = v9;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __64__HUCameraStreamFullScreenDismissingAnimator_animateTransition___block_invoke_3;
  v41[3] = &unk_277DB8AB0;
  v41[4] = self;
  v42 = v4;
  v38 = v4;
  v39 = v9;
  v40 = v5;
  [v35 animateKeyframesWithDuration:327680 delay:v43 options:v41 animations:v37 completion:0.0];
}

void __64__HUCameraStreamFullScreenDismissingAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sourceCameraCell];
  [v3 cameraViewFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 40) sourceCameraCell];
  [v2 convertRect:v12 fromView:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [*(a1 + 40) cameraViewSnapshot];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [*(a1 + 40) cameraOverlaySnapshot];
  [v22 setFrame:{v14, v16, v18, v20}];

  v23 = MEMORY[0x277D75D18];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__HUCameraStreamFullScreenDismissingAnimator_animateTransition___block_invoke_2;
  v26[3] = &unk_277DB7558;
  v24 = *(a1 + 48);
  v25 = *(a1 + 40);
  v27 = v24;
  v28 = v25;
  [v23 addKeyframeWithRelativeStartTime:v26 relativeDuration:0.0 animations:0.5];
}

void __64__HUCameraStreamFullScreenDismissingAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = [*(a1 + 40) cameraOverlaySnapshot];
  [v2 setAlpha:0.0];
}

uint64_t __64__HUCameraStreamFullScreenDismissingAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) sourceCameraCell];
  [v2 setCameraViewAlpha:1.0];

  v3 = *(a1 + 40);

  return [v3 completeTransition:1];
}

@end