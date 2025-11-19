@interface HUCameraStreamFullScreenPresentingAnimator
- (HUCameraStreamFullScreenPresentingAnimator)initWithSourceCameraCell:(id)a3 cameraSnapshot:(id)a4;
- (HUCameraStreamFullScreenPresentingAnimator)initWithSourceCameraCell:(id)a3 cameraSnapshot:(id)a4 snapshotDemoURL:(id)a5;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation HUCameraStreamFullScreenPresentingAnimator

- (HUCameraStreamFullScreenPresentingAnimator)initWithSourceCameraCell:(id)a3 cameraSnapshot:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUCameraStreamFullScreenPresentingAnimator;
  v8 = [(HUCameraStreamFullScreenAnimator *)&v11 initWithSourceCameraCell:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cameraSnapshot, a4);
  }

  return v9;
}

- (HUCameraStreamFullScreenPresentingAnimator)initWithSourceCameraCell:(id)a3 cameraSnapshot:(id)a4 snapshotDemoURL:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUCameraStreamFullScreenPresentingAnimator;
  v11 = [(HUCameraStreamFullScreenAnimator *)&v14 initWithSourceCameraCell:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cameraSnapshot, a4);
    objc_storeStrong(&v12->_demoSnapshotURL, a5);
  }

  return v12;
}

- (double)transitionDuration:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUCameraStreamFullScreenPresentingAnimator;
  [(HUCameraStreamFullScreenAnimator *)&v4 transitionDuration:a3];
  return result;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewForKey:*MEMORY[0x277D77248]];
  v7 = objc_alloc(MEMORY[0x277D75D18]);
  [(HUCameraStreamFullScreenAnimator *)self _toViewFinalFrame:v4];
  v8 = [v7 initWithFrame:?];
  v9 = [MEMORY[0x277D75348] systemBlackColor];
  [v8 setBackgroundColor:v9];

  [v8 setAlpha:0.0];
  [v5 addSubview:v8];
  v10 = [(HUCameraStreamFullScreenAnimator *)self sourceCameraCell];
  [v10 cameraViewFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(HUCameraStreamFullScreenAnimator *)self sourceCameraCell];
  [v5 convertRect:v19 fromView:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [objc_alloc(MEMORY[0x277CD1968]) initWithFrame:{v21, v23, v25, v27}];
  [v28 setContentMode:1];
  v29 = [(HUCameraStreamFullScreenPresentingAnimator *)self cameraSnapshot];
  [v28 setCameraSource:v29];

  [v5 addSubview:v28];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v30 = objc_alloc(MEMORY[0x277D755B8]);
    v31 = [(HUCameraStreamFullScreenPresentingAnimator *)self demoSnapshotURL];
    v32 = [v31 path];
    v33 = [v30 initWithContentsOfFile:v32];

    v34 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v33];
    [v28 bounds];
    [v34 setFrame:?];
    [v34 setContentMode:1];
    [v34 setAutoresizingMask:18];
    [v28 addSubview:v34];
  }

  v35 = [(HUCameraStreamFullScreenAnimator *)self sourceCameraCell];
  [v35 setCameraViewAlpha:0.0];

  v36 = MEMORY[0x277D75D18];
  [(HUCameraStreamFullScreenPresentingAnimator *)self transitionDuration:v4];
  v38 = v37;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __64__HUCameraStreamFullScreenPresentingAnimator_animateTransition___block_invoke;
  v51[3] = &unk_277DB8A60;
  v52 = v28;
  v53 = self;
  v54 = v4;
  v55 = v8;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __64__HUCameraStreamFullScreenPresentingAnimator_animateTransition___block_invoke_3;
  v44[3] = &unk_277DB8A88;
  v45 = v55;
  v46 = v52;
  v47 = v6;
  v48 = self;
  v49 = v54;
  v50 = v5;
  v39 = v5;
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