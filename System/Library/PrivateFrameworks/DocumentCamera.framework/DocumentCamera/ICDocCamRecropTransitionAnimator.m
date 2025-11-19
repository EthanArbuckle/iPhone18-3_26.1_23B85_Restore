@interface ICDocCamRecropTransitionAnimator
- (CGRect)containerViewFrame;
- (ICDocCamRecropTransitionAnimator)initWithImage:(id)a3 unfilteredImage:(id)a4 orientation:(int64_t)a5 indexPath:(id)a6 duration:(double)a7 completion:(id)a8;
- (UIView)startView;
- (double)matrixTransformingToUnitSquareWithPoints:(double)a1 y0:(double)a2 x1:(double)a3 y1:(double)a4 x2:(double)a5 y2:(double)a6 x3:(double)a7 y3:(double)a8;
- (id)imageMeshTransform:(BOOL)a3;
- (id)scrollViewTransform:(BOOL)a3;
- (uint64_t)matrixTransformingQuadForOverlayToImageView:(_BYTE *)a3;
- (void)animateTransition:(id)a3;
- (void)performPopTransitionFromViewController:(id)a3 toViewController:(id)a4 transitionContext:(id)a5;
- (void)performPushTransitionFromViewController:(id)a3 toViewController:(id)a4 transitionContext:(id)a5;
- (void)performSimpleFadeInFromViewController:(id)a3 toViewController:(id)a4 transitionContext:(id)a5;
- (void)sortPoints:(CGPoint *)a3 sorted:(CGPoint *)a4;
@end

@implementation ICDocCamRecropTransitionAnimator

- (ICDocCamRecropTransitionAnimator)initWithImage:(id)a3 unfilteredImage:(id)a4 orientation:(int64_t)a5 indexPath:(id)a6 duration:(double)a7 completion:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = ICDocCamRecropTransitionAnimator;
  v19 = [(ICDocCamRecropTransitionAnimator *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_filteredImage, a3);
    objc_storeStrong(&v20->_unfilteredImage, a4);
    v20->_orientation = a5;
    objc_storeStrong(&v20->_indexPath, a6);
    v20->_duration = a7;
    v21 = _Block_copy(v18);
    completion = v20->_completion;
    v20->_completion = v21;
  }

  return v20;
}

- (void)animateTransition:(id)a3
{
  v4 = *MEMORY[0x277D77240];
  v5 = a3;
  v8 = [v5 viewControllerForKey:v4];
  v6 = [v5 viewControllerForKey:*MEMORY[0x277D77230]];
  v7 = [v5 containerView];
  [v7 frame];
  [(ICDocCamRecropTransitionAnimator *)self setContainerViewFrame:?];

  if ([(ICDocCamRecropTransitionAnimator *)self presenting])
  {
    [(ICDocCamRecropTransitionAnimator *)self performPushTransitionFromViewController:v6 toViewController:v8 transitionContext:v5];
  }

  else
  {
    [(ICDocCamRecropTransitionAnimator *)self performPopTransitionFromViewController:v6 toViewController:v8 transitionContext:v5];
  }
}

- (void)performPushTransitionFromViewController:(id)a3 toViewController:(id)a4 transitionContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 containerView];
  v12 = [v9 view];
  [v11 addSubview:v12];

  [v10 finalFrameForViewController:v9];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v9 view];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [v9 view];
  [v22 setNeedsLayout];

  v23 = [v9 view];
  [v23 layoutIfNeeded];

  v24 = [v9 view];
  v25 = [v24 layer];
  [v25 setOpacity:0.0];

  v26 = objc_opt_class();
  v27 = DCDynamicCast(v26, v9);
  v28 = objc_opt_class();
  v103 = v8;
  v29 = DCDynamicCast(v28, v8);
  v30 = [v27 quadForOverlay];
  v31 = [(ICDocCamRecropTransitionAnimator *)self indexPath];
  [v29 recropTargetForIndexPath:v31];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v33, v35, v37, v39}];
  v41 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v33, v35, v37, v39}];
  [(ICDocCamRecropTransitionAnimator *)self setStartView:v41];
  [(ICDocCamRecropTransitionAnimator *)self setQuadForOverlay:v30];
  v42 = [(ICDocCamRecropTransitionAnimator *)self scrollViewTransform:0];
  v104 = [(ICDocCamRecropTransitionAnimator *)self scrollViewTransform:1];
  v43 = [(ICDocCamRecropTransitionAnimator *)self imageMeshTransform:0];
  v44 = [(ICDocCamRecropTransitionAnimator *)self imageMeshTransform:1];
  v102 = v44;
  if (v42 && v104 && v43 && v44)
  {
    [v27 placard];
    v45 = v96 = v42;
    [v45 layer];
    v46 = v98 = v30;
    [v46 setOpacity:0.0];

    v47 = [v27 scrollView];
    v48 = [v47 layer];
    [v48 setOpacity:0.0];

    v49 = [v27 overlay];
    v50 = [v49 layer];
    [v50 setOpacity:0.0];

    [v40 setContentMode:0];
    v51 = [(ICDocCamRecropTransitionAnimator *)self unfilteredImage];
    [v40 setImage:v51];

    v52 = [v10 containerView];
    [v52 addSubview:v40];

    [v41 setContentMode:0];
    v53 = [(ICDocCamRecropTransitionAnimator *)self filteredImage];
    [v41 setImage:v53];

    v54 = [v10 containerView];
    [v54 addSubview:v41];

    v55 = [v29 bottomToolbar];
    [v55 frame];
    v57 = v56;
    [v55 frame];
    v59 = v58;
    [v55 frame];
    v61 = v60;
    v95 = v55;
    [v55 frame];
    v63 = v62;
    v64 = [v29 view];
    [v64 safeAreaInsets];
    v66 = v63 + v65;

    v67 = [v55 resizableSnapshotViewFromRect:1 afterScreenUpdates:0.0 withCapInsets:{0.0, v61, v66, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v67 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v67 setFrame:{v57, v59, v61, v66}];
    v68 = [v10 containerView];
    [v68 addSubview:v67];

    [MEMORY[0x277CD9FF0] begin];
    v99 = v29;
    v69 = MEMORY[0x277CD9FF0];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __111__ICDocCamRecropTransitionAnimator_performPushTransitionFromViewController_toViewController_transitionContext___block_invoke;
    v105[3] = &unk_278F93208;
    v106 = v10;
    v101 = v10;
    v70 = v41;
    v107 = v70;
    v71 = v40;
    v108 = v71;
    v109 = v67;
    v110 = v27;
    v111 = self;
    v93 = v9;
    v112 = v93;
    v94 = v67;
    [v69 setCompletionBlock:v105];
    v100 = v27;
    v72 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"meshTransform"];
    v92 = v43;
    [v72 setFromValue:v43];
    [v72 setToValue:v102];
    [(ICDocCamRecropTransitionAnimator *)self duration];
    [v72 setDuration:v73 + -0.2];
    v74 = *MEMORY[0x277CDA230];
    [v72 setFillMode:*MEMORY[0x277CDA230]];
    [v72 setRemovedOnCompletion:0];
    LODWORD(v75) = 1051361018;
    LODWORD(v76) = 1045220557;
    LODWORD(v77) = 1.0;
    [MEMORY[0x277CD9EF8] functionWithControlPoints:v75 :0.0 :v76 :v77];
    v78 = v97 = v40;
    [v72 setTimingFunction:v78];

    v79 = [v70 layer];
    [v79 addAnimation:v72 forKey:@"meshTransform"];

    v80 = [v71 layer];
    [v80 addAnimation:v72 forKey:@"meshTransform"];

    v81 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v81 setFromValue:&unk_285C6D3A8];
    [v81 setToValue:&unk_285C6D390];
    [(ICDocCamRecropTransitionAnimator *)self duration];
    [v81 setDuration:v82 + -0.2];
    LODWORD(v83) = 1.0;
    [v81 setRepeatCount:v83];
    [v81 setRemovedOnCompletion:0];
    [v81 setFillMode:v74];
    v84 = *MEMORY[0x277CDA7B8];
    v85 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v81 setTimingFunction:v85];

    v86 = [v70 layer];
    [v86 addAnimation:v81 forKey:@"opacity"];

    v87 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v40 = v97;
    [v87 setFromValue:&unk_285C6D390];
    [v87 setToValue:&unk_285C6D3A8];
    [v87 setDuration:0.14];
    LODWORD(v88) = 1.0;
    [v87 setRepeatCount:v88];
    [v87 setRemovedOnCompletion:0];
    [v87 setFillMode:v74];
    v89 = [MEMORY[0x277CD9EF8] functionWithName:v84];
    [v87 setTimingFunction:v89];

    v90 = [v93 view];
    v91 = [v90 layer];
    v30 = v98;
    [v91 addAnimation:v87 forKey:@"opacity"];

    v29 = v99;
    v43 = v92;
    [MEMORY[0x277CD9FF0] commit];

    v10 = v101;
    v27 = v100;

    v42 = v96;
  }

  else
  {
    [(ICDocCamRecropTransitionAnimator *)self performSimpleFadeInFromViewController:v103 toViewController:v9 transitionContext:v10];
  }
}

void __111__ICDocCamRecropTransitionAnimator_performPushTransitionFromViewController_toViewController_transitionContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) completeTransition:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
  [MEMORY[0x277CD9FF0] begin];
  v2 = MEMORY[0x277CD9FF0];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __111__ICDocCamRecropTransitionAnimator_performPushTransitionFromViewController_toViewController_transitionContext___block_invoke_2;
  v28[3] = &unk_278F931E0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v29 = v8;
  v30 = v7;
  v31 = *(a1 + 72);
  [v2 setCompletionBlock:v28];
  v9 = [*(a1 + 40) layer];
  [v9 setOpacity:0.0];

  v10 = [*(a1 + 80) view];
  v11 = [v10 layer];
  LODWORD(v12) = 1.0;
  [v11 setOpacity:v12];

  v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v13 setFromValue:&unk_285C6D390];
  [v13 setToValue:&unk_285C6D3A8];
  [v13 setDuration:0.2];
  LODWORD(v14) = 1.0;
  [v13 setRepeatCount:v14];
  [v13 setRemovedOnCompletion:0];
  v15 = *MEMORY[0x277CDA230];
  [v13 setFillMode:*MEMORY[0x277CDA230]];
  v16 = *MEMORY[0x277CDA7B8];
  v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v13 setTimingFunction:v17];

  v18 = [*(a1 + 64) scrollView];
  v19 = [v18 layer];
  [v19 addAnimation:v13 forKey:@"opacity"];

  v20 = [*(a1 + 64) overlay];
  v21 = [v20 layer];
  [v21 addAnimation:v13 forKey:@"opacity"];

  v22 = [*(a1 + 64) placard];
  v23 = [v22 layer];
  [v23 addAnimation:v13 forKey:@"opacity"];

  v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v24 setFromValue:&unk_285C6D3A8];
  [v24 setToValue:&unk_285C6D390];
  [v24 setDuration:0.2];
  LODWORD(v25) = 1.0;
  [v24 setRepeatCount:v25];
  [v24 setRemovedOnCompletion:0];
  [v24 setFillMode:v15];
  v26 = [MEMORY[0x277CD9EF8] functionWithName:v16];
  [v24 setTimingFunction:v26];

  v27 = [*(a1 + 48) layer];
  [v27 addAnimation:v24 forKey:@"opacity"];

  [MEMORY[0x277CD9FF0] commit];
}

void __111__ICDocCamRecropTransitionAnimator_performPushTransitionFromViewController_toViewController_transitionContext___block_invoke_2(id *a1)
{
  [a1[4] removeFromSuperview];
  [a1[5] removeFromSuperview];
  [a1[6] removeFromSuperview];
  v2 = [a1[7] scrollView];
  v3 = [v2 layer];
  LODWORD(v4) = 1.0;
  [v3 setOpacity:v4];

  v5 = [a1[7] overlay];
  v6 = [v5 layer];
  LODWORD(v7) = 1.0;
  [v6 setOpacity:v7];

  v8 = [a1[8] completion];

  if (v8)
  {
    v9 = [a1[8] completion];
    v9[2]();
  }
}

- (void)performPopTransitionFromViewController:(id)a3 toViewController:(id)a4 transitionContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v9 containerView];
  v12 = [v8 view];
  [v11 addSubview:v12];

  [v9 finalFrameForViewController:v8];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v8 view];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [v8 view];
  [v22 setNeedsLayout];

  v23 = [v8 view];
  [v23 layoutIfNeeded];

  v24 = objc_opt_class();
  v106 = DCDynamicCast(v24, v10);

  v25 = objc_opt_class();
  v26 = DCDynamicCast(v25, v8);
  [v26 resetImageCentering];
  v27 = [(ICDocCamRecropTransitionAnimator *)self indexPath];
  [v26 recropTargetForIndexPath:v27];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v29, v31, v33, v35}];
  v37 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v29, v31, v33, v35}];
  [v36 setAccessibilityLabel:@"unfilteredImageView"];
  [v37 setAccessibilityLabel:@"filteredImageView"];
  [(ICDocCamRecropTransitionAnimator *)self setStartView:v37];
  v38 = [v106 finalQuadFromOverlay];
  [(ICDocCamRecropTransitionAnimator *)self setQuadForOverlay:v38];

  v109 = [(ICDocCamRecropTransitionAnimator *)self imageMeshTransform:1];
  v108 = [(ICDocCamRecropTransitionAnimator *)self imageMeshTransform:0];
  v39 = [v8 view];
  v40 = [v39 layer];
  [v40 setOpacity:0.0];

  [v37 setContentMode:0];
  v41 = [(ICDocCamRecropTransitionAnimator *)self filteredImage];
  [v37 setImage:v41];

  v42 = [v9 containerView];
  [v42 addSubview:v37];

  [v36 setContentMode:0];
  v43 = [(ICDocCamRecropTransitionAnimator *)self unfilteredImage];
  [v36 setImage:v43];

  v44 = [v9 containerView];
  [v44 addSubview:v36];

  v45 = [v26 pageViewController];
  v46 = [v45 view];
  v47 = [v46 layer];
  [v47 setOpacity:0.0];

  v48 = [v26 bottomToolbar];
  [v48 frame];
  v50 = v49;
  [v48 frame];
  v52 = v51;
  [v48 frame];
  v54 = v53;
  v105 = v48;
  [v48 frame];
  v56 = v55;
  v57 = [v26 view];
  [v57 safeAreaInsets];
  v59 = v56 + v58;

  v60 = [v48 resizableSnapshotViewFromRect:1 afterScreenUpdates:0.0 withCapInsets:{0.0, v54, v59, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v60 setFrame:{v50, v52, v54, v59}];
  v61 = [v9 containerView];
  [v61 addSubview:v60];

  v62 = [v26 topToolbar];
  v63 = [v8 view];
  v64 = [v63 layer];
  [v64 setOpacity:0.0];

  [MEMORY[0x277CD9FF0] begin];
  v65 = MEMORY[0x277CD9FF0];
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __110__ICDocCamRecropTransitionAnimator_performPopTransitionFromViewController_toViewController_transitionContext___block_invoke;
  v110[3] = &unk_278F93230;
  v111 = v9;
  v112 = v26;
  v113 = v8;
  v114 = v37;
  v115 = v36;
  v116 = v60;
  v117 = v62;
  v118 = self;
  v104 = v62;
  v103 = v60;
  v66 = v36;
  v100 = v37;
  v107 = v8;
  v102 = v26;
  v101 = v9;
  [v65 setCompletionBlock:v110];
  [(ICDocCamRecropTransitionAnimator *)self duration];
  v68 = v67 + -0.2;
  v69 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"meshTransform"];
  [v69 setFromValue:v109];
  [v69 setToValue:v108];
  [v69 setDuration:v68];
  v70 = *MEMORY[0x277CDA230];
  [v69 setFillMode:*MEMORY[0x277CDA230]];
  [v69 setRemovedOnCompletion:0];
  LODWORD(v71) = 1051361018;
  LODWORD(v72) = 1045220557;
  LODWORD(v73) = 1.0;
  v74 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v71 :0.0 :v72 :v73];
  [v69 setTimingFunction:v74];

  v75 = [v100 layer];
  [v75 addAnimation:v69 forKey:@"meshTransform"];

  v76 = v66;
  v99 = v66;
  v77 = [v66 layer];
  [v77 addAnimation:v69 forKey:@"meshTransform"];

  v78 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v78 setFromValue:&unk_285C6D3A8];
  [v78 setToValue:&unk_285C6D390];
  [v78 setDuration:v68];
  LODWORD(v79) = 1.0;
  [v78 setRepeatCount:v79];
  [v78 setRemovedOnCompletion:0];
  [v78 setFillMode:v70];
  v80 = *MEMORY[0x277CDA7B8];
  v81 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v78 setTimingFunction:v81];

  v82 = [v76 layer];
  [v82 addAnimation:v78 forKey:@"opacity"];

  v83 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v83 setFromValue:&unk_285C6D390];
  [v83 setToValue:&unk_285C6D3A8];
  [v83 setDuration:0.14];
  LODWORD(v84) = 1.0;
  [v83 setRepeatCount:v84];
  [v83 setRemovedOnCompletion:0];
  [v83 setFillMode:v70];
  v85 = [MEMORY[0x277CD9EF8] functionWithName:v80];
  [v83 setTimingFunction:v85];

  v86 = [v107 view];
  v87 = [v86 layer];
  [v87 addAnimation:v83 forKey:@"opacity"];

  v88 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v88 setFromValue:&unk_285C6D3A8];
  [v88 setToValue:&unk_285C6D390];
  [v88 setDuration:0.14];
  LODWORD(v89) = 1.0;
  [v88 setRepeatCount:v89];
  [v88 setRemovedOnCompletion:0];
  [v88 setFillMode:v70];
  v90 = [MEMORY[0x277CD9EF8] functionWithName:v80];
  [v88 setTimingFunction:v90];

  v91 = [v106 overlay];
  v92 = [v91 layer];
  [v92 addAnimation:v88 forKey:@"opacity"];

  v93 = [v106 placard];
  v94 = [v93 layer];
  [v94 addAnimation:v88 forKey:@"opacity"];

  v95 = [v106 backgroundImageView];
  v96 = [v95 layer];
  [v96 addAnimation:v88 forKey:@"opacity"];

  v97 = [v106 imageView];
  v98 = [v97 layer];
  [v98 addAnimation:v88 forKey:@"opacity"];

  [MEMORY[0x277CD9FF0] commit];
}

void __110__ICDocCamRecropTransitionAnimator_performPopTransitionFromViewController_toViewController_transitionContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) completeTransition:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
  v2 = [*(a1 + 40) pageViewController];
  v3 = [v2 view];
  v4 = [v3 layer];
  LODWORD(v5) = 1.0;
  [v4 setOpacity:v5];

  v6 = [*(a1 + 48) view];
  v7 = [v6 layer];
  LODWORD(v8) = 1.0;
  [v7 setOpacity:v8];

  [MEMORY[0x277CD9FF0] begin];
  v9 = MEMORY[0x277CD9FF0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __110__ICDocCamRecropTransitionAnimator_performPopTransitionFromViewController_toViewController_transitionContext___block_invoke_2;
  v21[3] = &unk_278F931E0;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v22 = v15;
  v23 = v14;
  v24 = *(a1 + 88);
  [v9 setCompletionBlock:v21];
  v16 = [*(a1 + 56) layer];
  [v16 setOpacity:0.0];

  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v17 setFromValue:&unk_285C6D3A8];
  [v17 setToValue:&unk_285C6D390];
  [v17 setDuration:0.2];
  LODWORD(v18) = 1.0;
  [v17 setRepeatCount:v18];
  [v17 setRemovedOnCompletion:0];
  [v17 setFillMode:*MEMORY[0x277CDA230]];
  v19 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v17 setTimingFunction:v19];

  v20 = [*(a1 + 56) layer];
  [v20 addAnimation:v17 forKey:@"opacity"];

  [MEMORY[0x277CD9FF0] commit];
}

void __110__ICDocCamRecropTransitionAnimator_performPopTransitionFromViewController_toViewController_transitionContext___block_invoke_2(id *a1)
{
  [a1[4] removeFromSuperview];
  [a1[5] removeFromSuperview];
  [a1[6] removeFromSuperview];
  [a1[7] removeFromSuperview];
  v2 = [a1[8] completion];

  if (v2)
  {
    v3 = [a1[8] completion];
    v3[2]();
  }
}

- (void)performSimpleFadeInFromViewController:(id)a3 toViewController:(id)a4 transitionContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 view];
  v10 = [v9 layer];
  [v10 setOpacity:0.0];

  [MEMORY[0x277CD9FF0] begin];
  v11 = MEMORY[0x277CD9FF0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __109__ICDocCamRecropTransitionAnimator_performSimpleFadeInFromViewController_toViewController_transitionContext___block_invoke;
  v19[3] = &unk_278F93258;
  v20 = v8;
  v21 = v7;
  v22 = self;
  v12 = v7;
  v13 = v8;
  [v11 setCompletionBlock:v19];
  v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v14 setFromValue:&unk_285C6D390];
  [v14 setToValue:&unk_285C6D3A8];
  [(ICDocCamRecropTransitionAnimator *)self transitionDuration:v13];
  [v14 setDuration:?];
  LODWORD(v15) = 1.0;
  [v14 setRepeatCount:v15];
  [v14 setRemovedOnCompletion:0];
  [v14 setFillMode:*MEMORY[0x277CDA230]];
  v16 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v14 setTimingFunction:v16];

  v17 = [v12 view];
  v18 = [v17 layer];
  [v18 addAnimation:v14 forKey:@"opacity"];

  [MEMORY[0x277CD9FF0] commit];
}

void __109__ICDocCamRecropTransitionAnimator_performSimpleFadeInFromViewController_toViewController_transitionContext___block_invoke(id *a1)
{
  [a1[4] completeTransition:{objc_msgSend(a1[4], "transitionWasCancelled") ^ 1}];
  v2 = [a1[5] view];
  v3 = [v2 layer];
  LODWORD(v4) = 1.0;
  [v3 setOpacity:v4];

  v5 = [a1[6] completion];

  if (v5)
  {
    v6 = [a1[6] completion];
    v6[2]();
  }
}

- (id)imageMeshTransform:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CD9F18] meshTransform];
  v6 = v5;
  if (!v3)
  {
    v83 = xmmword_2492F7870;
    v84 = xmmword_2492F7870;
    v85 = 0;
    [v5 addVertex:&v83];
    __asm { FMOV            V0.2D, #1.0 }

    v83 = _Q0;
    v84 = _Q0;
    v85 = 0;
    [v6 addVertex:&v83];
    v83 = xmmword_2492F7880;
    v85 = 0;
    v84 = 0x3FF0000000000000uLL;
    [v6 addVertex:&v83];
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
LABEL_12:
    [v6 addVertex:{&v83, *&v77, *&v78}];
    v84 = 0uLL;
    v83 = xmmword_2492F7890;
    [v6 addFace:&v83];
    [v6 setSubdivisionSteps:0];
    v75 = v6;
    goto LABEL_13;
  }

  v7 = [(ICDocCamRecropTransitionAnimator *)self startView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v86 = 0uLL;
  if (![(ICDocCamRecropTransitionAnimator *)self orientation])
  {
    v35 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v35 topLeft];
    v18 = v36;
    v20 = v37;

    v38 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v38 topRight];
    v81 = v40;
    v82 = v39;

    v41 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v41 bottomLeft];
    v79 = v43;
    v80 = v42;

    v27 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v27 bottomRight];
    goto LABEL_11;
  }

  if ([(ICDocCamRecropTransitionAnimator *)self orientation]== 2)
  {
    v16 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v16 topRight];
    v18 = v17;
    v20 = v19;

    v21 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v21 bottomRight];
    v81 = v23;
    v82 = v22;

    v24 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v24 topLeft];
    v79 = v26;
    v80 = v25;

    v27 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v27 bottomLeft];
LABEL_11:
    v77 = v29;
    v78 = v28;
    v62 = v9 + v13;
    v63 = v11 + v15;

    v64 = (v18 - v9) / v13 + 0.0;
    v65 = (v20 - v11) / v15 + 0.0;
    v66 = (v81 - v11) / v15;
    v67 = v15;
    v68 = (v82 - (v9 + v13)) / v13 + 1.0;
    v69 = v13;
    v70 = v66 + 0.0;
    v71 = (v80 - v9) / v69 + 0.0;
    v72 = (v78 - v62) / v69 + 1.0;
    v83 = xmmword_2492F7870;
    v73 = (v77 - v63) / v67 + 1.0;
    *&v84 = v71;
    *(&v84 + 1) = (v79 - v63) / v67 + 1.0;
    v85 = 0;
    [v6 addVertex:&v83];
    __asm { FMOV            V0.2D, #1.0 }

    v83 = _Q0;
    *&v84 = v72;
    *(&v84 + 1) = v73;
    v85 = 0;
    [v6 addVertex:&v83];
    v83 = xmmword_2492F7880;
    *&v84 = v68;
    *(&v84 + 1) = v70;
    v85 = 0;
    [v6 addVertex:&v83];
    v83 = v86;
    *&v84 = v64;
    *(&v84 + 1) = v65;
    v85 = 0;
    goto LABEL_12;
  }

  if ([(ICDocCamRecropTransitionAnimator *)self orientation]== 3)
  {
    v44 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v44 bottomLeft];
    v18 = v45;
    v20 = v46;

    v47 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v47 topLeft];
    v81 = v49;
    v82 = v48;

    v50 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v50 bottomRight];
    v79 = v52;
    v80 = v51;

    v27 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v27 topRight];
    goto LABEL_11;
  }

  if ([(ICDocCamRecropTransitionAnimator *)self orientation]== 1)
  {
    v53 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v53 bottomRight];
    v18 = v54;
    v20 = v55;

    v56 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v56 bottomLeft];
    v81 = v58;
    v82 = v57;

    v59 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v59 topRight];
    v79 = v61;
    v80 = v60;

    v27 = [(ICDocCamRecropTransitionAnimator *)self quadForOverlay];
    [v27 topLeft];
    goto LABEL_11;
  }

  v75 = 0;
LABEL_13:

  return v75;
}

- (id)scrollViewTransform:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CD9F18] meshTransform];
  v6 = v5;
  if (v3)
  {
    v56 = xmmword_2492F7870;
    v57 = xmmword_2492F7870;
    v58 = 0;
    [v5 addVertex:&v56];
    __asm { FMOV            V0.2D, #1.0 }

    v56 = _Q0;
    v57 = _Q0;
    v58 = 0;
    [v6 addVertex:&v56];
    v56 = xmmword_2492F7880;
    v58 = 0;
    v57 = 0x3FF0000000000000uLL;
    [v6 addVertex:&v56];
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
LABEL_5:
    [v6 addVertex:&v56];
    v57 = 0uLL;
    v56 = xmmword_2492F7890;
    [v6 addFace:&v56];
    [v6 setSubdivisionSteps:0];
    v41 = v6;
    goto LABEL_7;
  }

  v55 = 0;
  [(ICDocCamRecropTransitionAnimator *)self matrixTransformingQuadForOverlayToImageView:&v55];
  if (v55 == 1)
  {
    v45 = v13;
    v46 = v14;
    v44 = v12;
    [(ICDocCamRecropTransitionAnimator *)self containerViewFrame];
    x = v60.origin.x;
    y = v60.origin.y;
    width = v60.size.width;
    rect = v60.size.height;
    MinX = CGRectGetMinX(v60);
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = rect;
    MaxY = CGRectGetMaxY(v61);
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = rect;
    MaxX = CGRectGetMaxX(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = rect;
    v18 = CGRectGetMaxY(v63);
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = rect;
    v19 = CGRectGetMaxX(v64);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = rect;
    MinY = CGRectGetMinY(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = rect;
    v21 = CGRectGetMinX(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = rect;
    v22 = CGRectGetMinY(v67);
    v23 = MinX;
    v24 = MaxY;
    v25 = MaxX;
    v26 = v18;
    v27 = v19;
    v28 = MinY;
    v29 = v21;
    *&v22 = v22;
    v30 = vaddq_f32(v46, vmlaq_n_f32(vmulq_n_f32(v44, v23), v45, v24));
    v31 = vaddq_f32(v46, vmlaq_n_f32(vmulq_n_f32(v44, v25), v45, v26));
    v43 = vaddq_f32(v46, vmlaq_n_f32(vmulq_n_f32(v44, v27), v45, v28));
    v32 = vaddq_f32(v46, vmlaq_n_f32(vmulq_n_f32(v44, v29), v45, *&v22));
    v33.f64[0] = width;
    v34 = ((v32.f32[0] / v32.f32[2]) - x) / width + 0.0;
    v35 = ((v32.f32[1] / v32.f32[2]) - y) / rect + 0.0;
    v33.f64[1] = rect;
    v54 = v33;
    v58 = 0;
    v36.f64[0] = x;
    v36.f64[1] = y;
    v37 = vaddq_f64(v36, v33);
    v38 = vdivq_f64(vsubq_f64(vcvtq_f64_f32(vdiv_f32(*v31.i8, vdup_laneq_s32(v31, 2))), v37), v33);
    __asm { FMOV            V4.2D, #1.0 }

    v47 = _Q4;
    recta = v37.f64[0];
    v37.f64[0] = x;
    v51 = vaddq_f64(v38, _Q4);
    v56 = xmmword_2492F7870;
    v57 = vaddq_f64(vdivq_f64(vsubq_f64(vcvtq_f64_f32(vdiv_f32(*v30.i8, vdup_laneq_s32(v30, 2))), v37), v33), xmmword_2492F7870);
    [v6 addVertex:&v56];
    v56 = v47;
    v57 = v51;
    v58 = 0;
    [v6 addVertex:&v56];
    v40.f64[0] = recta;
    v40.f64[1] = y;
    v56 = xmmword_2492F7880;
    v57 = vaddq_f64(vdivq_f64(vsubq_f64(vcvtq_f64_f32(vdiv_f32(*v43.i8, vdup_laneq_s32(v43, 2))), v40), v54), xmmword_2492F7880);
    v58 = 0;
    [v6 addVertex:&v56];
    v56 = 0uLL;
    v57.f64[0] = v34;
    v57.f64[1] = v35;
    v58 = 0;
    goto LABEL_5;
  }

  v41 = 0;
LABEL_7:

  return v41;
}

- (uint64_t)matrixTransformingQuadForOverlayToImageView:(_BYTE *)a3
{
  v55[8] = *MEMORY[0x277D85DE8];
  v5 = [a1 startView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [a1 quadForOverlay];
  [v14 topLeft];
  v16 = v15;
  v17 = [a1 quadForOverlay];
  [v17 topLeft];
  v55[0] = v16;
  v55[1] = v18;
  v19 = [a1 quadForOverlay];
  [v19 topRight];
  v21 = v20;
  v22 = [a1 quadForOverlay];
  [v22 topRight];
  v55[2] = v21;
  v55[3] = v23;
  v24 = [a1 quadForOverlay];
  [v24 bottomRight];
  v26 = v25;
  v27 = [a1 quadForOverlay];
  [v27 bottomRight];
  v55[4] = v26;
  v55[5] = v28;
  v29 = [a1 quadForOverlay];
  [v29 bottomLeft];
  v31 = v30;
  v32 = [a1 quadForOverlay];
  [v32 bottomLeft];
  v55[6] = v31;
  v55[7] = v33;

  [a1 sortPoints:v55 sorted:v54];
  result = [a1 matrixTransformingToUnitSquareWithPoints:v54[0] y0:v54[1] x1:v54[2] y1:v54[3] x2:v54[4] y2:v54[5] x3:v54[6] y3:v54[7]];
  v36 = vmulq_f32(v35.columns[0], vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v35.columns[2], v35.columns[2], 0xCuLL), v35.columns[2], 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v35.columns[1], v35.columns[1]), v35.columns[1], 0xCuLL))), vextq_s8(vuzp1q_s32(v35.columns[2], v35.columns[2]), v35.columns[2], 0xCuLL), vextq_s8(vextq_s8(v35.columns[1], v35.columns[1], 0xCuLL), v35.columns[1], 8uLL)));
  if (fabsf(v36.f32[2] + vaddv_f32(*v36.f32)) >= 0.01)
  {
    v56 = __invert_f3(v35);
    v50 = v56.columns[1];
    v51 = v56.columns[0];
    v49 = v56.columns[2];
    *v56.columns[0].i64 = v7;
    *v56.columns[1].i64 = v9;
    *v56.columns[2].i64 = v11;
    v37 = v13;
    MinX = CGRectGetMinX(*v56.columns[0].f32);
    v57.origin.x = v7;
    v57.origin.y = v9;
    v57.size.width = v11;
    v57.size.height = v13;
    MaxY = CGRectGetMaxY(v57);
    v58.origin.x = v7;
    v58.origin.y = v9;
    v58.size.width = v11;
    v58.size.height = v13;
    MaxX = CGRectGetMaxX(v58);
    v59.origin.x = v7;
    v59.origin.y = v9;
    v59.size.width = v11;
    v59.size.height = v13;
    v38 = CGRectGetMaxY(v59);
    v60.origin.x = v7;
    v60.origin.y = v9;
    v60.size.width = v11;
    v60.size.height = v13;
    v39 = CGRectGetMaxX(v60);
    v61.origin.x = v7;
    v61.origin.y = v9;
    v61.size.width = v11;
    v61.size.height = v13;
    MinY = CGRectGetMinY(v61);
    v62.origin.x = v7;
    v62.origin.y = v9;
    v62.size.width = v11;
    v62.size.height = v13;
    v41 = CGRectGetMinX(v62);
    v63.origin.x = v7;
    v63.origin.y = v9;
    v63.size.width = v11;
    v63.size.height = v13;
    result = [a1 matrixTransformingToUnitSquareWithPoints:MinX y0:MaxY x1:MaxX y1:v38 x2:v39 y2:MinY x3:v41 y3:CGRectGetMinY(v63)];
    v45 = 0;
    v52[0] = v51;
    v52[1] = v50;
    v52[2] = v49;
    memset(v53, 0, sizeof(v53));
    do
    {
      v53[v45] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(v52[v45])), v43, *&v52[v45], 1), v44, v52[v45], 2);
      ++v45;
    }

    while (v45 != 3);
    *a3 = 1;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

- (void)sortPoints:(CGPoint *)a3 sorted:(CGPoint *)a4
{
  v53[4] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3->x, a3->y}];
  v53[0] = v6;
  v7 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3[1].x, a3[1].y}];
  v53[1] = v7;
  v8 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3[2].x, a3[2].y}];
  v53[2] = v8;
  v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3[3].x, a3[3].y}];
  v53[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];

  v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_2];
  v12 = [v11 objectAtIndexedSubscript:0];
  [v12 CGPointValue];
  v14 = v13;

  v15 = [v11 objectAtIndexedSubscript:1];
  [v15 CGPointValue];
  v17 = v16;

  v18 = 2;
  v19 = [v11 objectAtIndexedSubscript:2];
  [v19 CGPointValue];
  v21 = v20;

  v22 = [v11 objectAtIndexedSubscript:3];
  [v22 CGPointValue];
  v24 = v23;

  v25 = v14 < v17;
  if (v24 >= v21)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  if (v24 >= v21)
  {
    v18 = 3;
  }

  v27 = [v11 objectAtIndexedSubscript:v14 >= v17];
  [v27 CGPointValue];
  v29 = v28;
  v31 = v30;

  v32 = [v11 objectAtIndexedSubscript:v26];
  [v32 CGPointValue];
  v34 = v33;
  v36 = v35;

  v37 = [v11 objectAtIndexedSubscript:v18];
  [v37 CGPointValue];
  v39 = v38;
  v41 = v40;

  v42 = [v11 objectAtIndexedSubscript:v25];
  [v42 CGPointValue];
  v44 = v43;
  v46 = v45;

  if (v41 < v31 && v39 < v34)
  {
    v47 = [v11 objectAtIndexedSubscript:v18];
    [v47 CGPointValue];
    v34 = v48;
    v36 = v49;

    v50 = [v11 objectAtIndexedSubscript:v26];
    [v50 CGPointValue];
    v39 = v51;
    v41 = v52;
  }

  a4->x = v44;
  a4->y = v46;
  a4[1].x = v39;
  a4[1].y = v41;
  a4[2].x = v34;
  a4[2].y = v36;
  a4[3].x = v29;
  a4[3].y = v31;
}

uint64_t __54__ICDocCamRecropTransitionAnimator_sortPoints_sorted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 CGPointValue];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 CGPointValue];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (double)matrixTransformingToUnitSquareWithPoints:(double)a1 y0:(double)a2 x1:(double)a3 y1:(double)a4 x2:(double)a5 y2:(double)a6 x3:(double)a7 y3:(double)a8
{
  v8 = a1 - a3 + a5 - a7;
  v9 = a2 - a4 + a6 - a8;
  if (v8 == 0.0 && v9 == 0.0)
  {
    v10 = a3 - a1;
    v11 = a4 - a2;
  }

  else
  {
    v12 = v8;
    v13 = v9;
    v14 = a7 - a5;
    v15 = a8 - a6;
    v16 = a3 - a5;
    v17 = a4 - a6;
    v18 = (((v12 * v15) - (v13 * v14)) / ((v16 * v15) - (v17 * v14)));
    v10 = a3 - a1 + v18 * a3;
    v11 = a4 - a2 + v18 * a4;
  }

  *&v19 = v10;
  v20 = v11;
  *(&v19 + 1) = v20;
  __asm { FMOV            V2.4S, #1.0 }

  return v19;
}

- (CGRect)containerViewFrame
{
  x = self->_containerViewFrame.origin.x;
  y = self->_containerViewFrame.origin.y;
  width = self->_containerViewFrame.size.width;
  height = self->_containerViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)startView
{
  WeakRetained = objc_loadWeakRetained(&self->_startView);

  return WeakRetained;
}

@end