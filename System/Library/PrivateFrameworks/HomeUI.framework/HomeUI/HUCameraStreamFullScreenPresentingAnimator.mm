@interface HUCameraStreamFullScreenPresentingAnimator
- (HUCameraStreamFullScreenPresentingAnimator)initWithSourceCameraCell:(id)cell cameraSnapshot:(id)snapshot;
- (HUCameraStreamFullScreenPresentingAnimator)initWithSourceCameraCell:(id)cell cameraSnapshot:(id)snapshot snapshotDemoURL:(id)l;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation HUCameraStreamFullScreenPresentingAnimator

- (HUCameraStreamFullScreenPresentingAnimator)initWithSourceCameraCell:(id)cell cameraSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v11.receiver = self;
  v11.super_class = HUCameraStreamFullScreenPresentingAnimator;
  v8 = [(HUCameraStreamFullScreenAnimator *)&v11 initWithSourceCameraCell:cell];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cameraSnapshot, snapshot);
  }

  return v9;
}

- (HUCameraStreamFullScreenPresentingAnimator)initWithSourceCameraCell:(id)cell cameraSnapshot:(id)snapshot snapshotDemoURL:(id)l
{
  snapshotCopy = snapshot;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = HUCameraStreamFullScreenPresentingAnimator;
  v11 = [(HUCameraStreamFullScreenAnimator *)&v14 initWithSourceCameraCell:cell];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cameraSnapshot, snapshot);
    objc_storeStrong(&v12->_demoSnapshotURL, l);
  }

  return v12;
}

- (double)transitionDuration:(id)duration
{
  v4.receiver = self;
  v4.super_class = HUCameraStreamFullScreenPresentingAnimator;
  [(HUCameraStreamFullScreenAnimator *)&v4 transitionDuration:duration];
  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewForKey:*MEMORY[0x277D77248]];
  v7 = objc_alloc(MEMORY[0x277D75D18]);
  [(HUCameraStreamFullScreenAnimator *)self _toViewFinalFrame:transitionCopy];
  v8 = [v7 initWithFrame:?];
  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  [v8 setBackgroundColor:systemBlackColor];

  [v8 setAlpha:0.0];
  [containerView addSubview:v8];
  sourceCameraCell = [(HUCameraStreamFullScreenAnimator *)self sourceCameraCell];
  [sourceCameraCell cameraViewFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sourceCameraCell2 = [(HUCameraStreamFullScreenAnimator *)self sourceCameraCell];
  [containerView convertRect:sourceCameraCell2 fromView:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [objc_alloc(MEMORY[0x277CD1968]) initWithFrame:{v21, v23, v25, v27}];
  [v28 setContentMode:1];
  cameraSnapshot = [(HUCameraStreamFullScreenPresentingAnimator *)self cameraSnapshot];
  [v28 setCameraSource:cameraSnapshot];

  [containerView addSubview:v28];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v30 = objc_alloc(MEMORY[0x277D755B8]);
    demoSnapshotURL = [(HUCameraStreamFullScreenPresentingAnimator *)self demoSnapshotURL];
    path = [demoSnapshotURL path];
    v33 = [v30 initWithContentsOfFile:path];

    v34 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v33];
    [v28 bounds];
    [v34 setFrame:?];
    [v34 setContentMode:1];
    [v34 setAutoresizingMask:18];
    [v28 addSubview:v34];
  }

  sourceCameraCell3 = [(HUCameraStreamFullScreenAnimator *)self sourceCameraCell];
  [sourceCameraCell3 setCameraViewAlpha:0.0];

  v36 = MEMORY[0x277D75D18];
  [(HUCameraStreamFullScreenPresentingAnimator *)self transitionDuration:transitionCopy];
  v38 = v37;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __64__HUCameraStreamFullScreenPresentingAnimator_animateTransition___block_invoke;
  v51[3] = &unk_277DB8A60;
  v52 = v28;
  selfCopy = self;
  v54 = transitionCopy;
  v55 = v8;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __64__HUCameraStreamFullScreenPresentingAnimator_animateTransition___block_invoke_3;
  v44[3] = &unk_277DB8A88;
  v45 = v55;
  v46 = v52;
  v47 = v6;
  selfCopy2 = self;
  v49 = v54;
  v50 = containerView;
  v39 = containerView;
  v40 = v54;
  v41 = v6;
  v42 = v52;
  v43 = v55;
  [v36 animateKeyframesWithDuration:327680 delay:v51 options:v44 animations:v38 completion:0.0];
}

void __64__HUCameraStreamFullScreenPresentingAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  [v2 _toViewFinalFrame:*(a1 + 48)];
  [v2 _adjustPresentedViewFrame:*(a1 + 48) forTransitionContext:?];
  [*(a1 + 32) setFrame:?];
  v3 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HUCameraStreamFullScreenPresentingAnimator_animateTransition___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v5 = *(a1 + 56);
  [v3 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.5 animations:0.5];
}

uint64_t __64__HUCameraStreamFullScreenPresentingAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 56) _toViewFinalFrame:*(a1 + 64)];
  [*(a1 + 48) setFrame:?];
  [*(a1 + 72) addSubview:*(a1 + 48)];
  v2 = [*(a1 + 56) sourceCameraCell];
  [v2 setCameraViewAlpha:1.0];

  v3 = *(a1 + 64);

  return [v3 completeTransition:1];
}

@end