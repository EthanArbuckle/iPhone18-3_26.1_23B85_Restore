@interface HUCameraStreamFullScreenDismissingAnimator
- (HUCameraStreamFullScreenDismissingAnimator)initWithSourceCameraCell:(id)cell cameraViewSnapshot:(id)snapshot cameraOverlaySnapshot:(id)overlaySnapshot;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation HUCameraStreamFullScreenDismissingAnimator

- (HUCameraStreamFullScreenDismissingAnimator)initWithSourceCameraCell:(id)cell cameraViewSnapshot:(id)snapshot cameraOverlaySnapshot:(id)overlaySnapshot
{
  snapshotCopy = snapshot;
  overlaySnapshotCopy = overlaySnapshot;
  v14.receiver = self;
  v14.super_class = HUCameraStreamFullScreenDismissingAnimator;
  v11 = [(HUCameraStreamFullScreenAnimator *)&v14 initWithSourceCameraCell:cell];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cameraViewSnapshot, snapshot);
    objc_storeStrong(&v12->_cameraOverlaySnapshot, overlaySnapshot);
  }

  return v12;
}

- (double)transitionDuration:(id)duration
{
  v4.receiver = self;
  v4.super_class = HUCameraStreamFullScreenDismissingAnimator;
  [(HUCameraStreamFullScreenAnimator *)&v4 transitionDuration:duration];
  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewForKey:*MEMORY[0x277D77238]];
  v7 = [transitionCopy viewForKey:*MEMORY[0x277D77248]];
  v8 = objc_alloc(MEMORY[0x277D75D18]);
  [v6 frame];
  v9 = [v8 initWithFrame:?];
  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  [v9 setBackgroundColor:systemBlackColor];

  cameraViewSnapshot = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraViewSnapshot];
  [cameraViewSnapshot frame];
  [containerView convertRect:v6 fromView:?];
  [(HUCameraStreamFullScreenAnimator *)self _adjustPresentedViewFrame:transitionCopy forTransitionContext:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  cameraViewSnapshot2 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraViewSnapshot];
  [cameraViewSnapshot2 setFrame:{v13, v15, v17, v19}];

  cameraViewSnapshot3 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraViewSnapshot];
  [cameraViewSnapshot3 setContentMode:1];

  cameraOverlaySnapshot = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraOverlaySnapshot];
  [cameraOverlaySnapshot frame];
  [containerView convertRect:v6 fromView:?];
  [(HUCameraStreamFullScreenAnimator *)self _adjustPresentedViewFrame:transitionCopy forTransitionContext:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  cameraOverlaySnapshot2 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraOverlaySnapshot];
  [cameraOverlaySnapshot2 setFrame:{v24, v26, v28, v30}];

  [v6 removeFromSuperview];
  [(HUCameraStreamFullScreenAnimator *)self _toViewFinalFrame:transitionCopy];
  [v7 setFrame:?];
  [containerView addSubview:v7];
  [containerView addSubview:v9];
  cameraViewSnapshot4 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraViewSnapshot];
  [containerView addSubview:cameraViewSnapshot4];

  cameraOverlaySnapshot3 = [(HUCameraStreamFullScreenDismissingAnimator *)self cameraOverlaySnapshot];
  [containerView addSubview:cameraOverlaySnapshot3];

  sourceCameraCell = [(HUCameraStreamFullScreenAnimator *)self sourceCameraCell];
  [sourceCameraCell setCameraViewAlpha:0.0];

  v35 = MEMORY[0x277D75D18];
  [(HUCameraStreamFullScreenDismissingAnimator *)self transitionDuration:transitionCopy];
  v37 = v36;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __64__HUCameraStreamFullScreenDismissingAnimator_animateTransition___block_invoke;
  v43[3] = &unk_277DB8810;
  v44 = containerView;
  selfCopy = self;
  v46 = v9;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __64__HUCameraStreamFullScreenDismissingAnimator_animateTransition___block_invoke_3;
  v41[3] = &unk_277DB8AB0;
  v41[4] = self;
  v42 = transitionCopy;
  v38 = transitionCopy;
  v39 = v9;
  v40 = containerView;
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