@interface ICDocCamThumbnailZoomTransitionAnimator
- (ICDocCamThumbnailZoomTransitionAnimator)initWithImage:(id)image indexPath:(id)path duration:(double)duration completion:(id)completion;
- (void)animateTransition:(id)transition;
@end

@implementation ICDocCamThumbnailZoomTransitionAnimator

- (ICDocCamThumbnailZoomTransitionAnimator)initWithImage:(id)image indexPath:(id)path duration:(double)duration completion:(id)completion
{
  imageCopy = image;
  pathCopy = path;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = ICDocCamThumbnailZoomTransitionAnimator;
  v14 = [(ICDocCamThumbnailZoomTransitionAnimator *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_thumbnailImage, image);
    objc_storeStrong(&v15->_indexPath, path);
    v15->_duration = duration;
    v16 = _Block_copy(completionCopy);
    completion = v15->_completion;
    v15->_completion = v16;
  }

  return v15;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  containerView = [transitionCopy containerView];
  view = [v5 view];
  [containerView addSubview:view];

  view2 = [v6 view];
  [view2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  view3 = [v5 view];
  [view3 setFrame:{v11, v13, v15, v17}];

  view4 = [v5 view];
  [view4 setNeedsLayout];

  view5 = [v5 view];
  [view5 layoutIfNeeded];

  LODWORD(view5) = [(ICDocCamThumbnailZoomTransitionAnimator *)self presenting];
  v21 = objc_opt_class();
  v145 = v5;
  if (view5)
  {
    v22 = DCDynamicCast(v21, v5);
    v23 = objc_opt_class();
    v24 = DCDynamicCast(v23, v6);
    v143 = v24;
    v25 = v22;
  }

  else
  {
    v24 = DCDynamicCast(v21, v6);
    v26 = objc_opt_class();
    v22 = DCDynamicCast(v26, v5);
    v143 = v22;
    v25 = v24;
  }

  indexPath = [(ICDocCamThumbnailZoomTransitionAnimator *)self indexPath];
  [v24 zoomTargetForIndexPath:indexPath];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  indexPath2 = [(ICDocCamThumbnailZoomTransitionAnimator *)self indexPath];
  [v22 zoomTargetForIndexPath:indexPath2];
  v136 = v38;
  v137 = v37;
  v134 = v40;
  v135 = v39;

  v140 = v31;
  v141 = v29;
  v138 = v35;
  v139 = v33;
  v41 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v29, v31, v33, v35}];
  [v41 setContentMode:2];
  thumbnailImage = [(ICDocCamThumbnailZoomTransitionAnimator *)self thumbnailImage];
  [v41 setImage:thumbnailImage];

  [v41 setClipsToBounds:1];
  containerView2 = [transitionCopy containerView];
  [containerView2 addSubview:v41];

  if ([(ICDocCamThumbnailZoomTransitionAnimator *)self presenting])
  {
    v44 = 0;
    v142 = 0;
    v45 = *MEMORY[0x277D768C8];
    v46 = *(MEMORY[0x277D768C8] + 8);
    v47 = *(MEMORY[0x277D768C8] + 16);
    v48 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    containerView3 = [transitionCopy containerView];
    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v25 statusBarWasHiddenWhenDoneTapped])
    {
      v142 = 0;
      v51 = 0.0;
    }

    else
    {
      view6 = [v25 view];
      window = [view6 window];
      [window windowScene];
      v54 = v132 = containerView3;
      statusBarManager = [v54 statusBarManager];
      [statusBarManager statusBarFrame];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v51 = v62;

      v63 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v57, v59, v61, v51}];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [v63 setBackgroundColor:whiteColor];

      containerView4 = [transitionCopy containerView];
      [containerView4 addSubview:v63];

      leadingAnchor = [v63 leadingAnchor];
      leadingAnchor2 = [v132 leadingAnchor];
      v68 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
      [v50 addObject:v68];

      trailingAnchor = [v63 trailingAnchor];
      trailingAnchor2 = [v132 trailingAnchor];
      v71 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
      [v50 addObject:v71];

      topAnchor = [v63 topAnchor];
      topAnchor2 = [v132 topAnchor];
      v74 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      [v50 addObject:v74];

      v142 = v63;
      v75 = v63;
      containerView3 = v132;
      heightAnchor = [v75 heightAnchor];
      v77 = [heightAnchor constraintEqualToConstant:v51];
      [v50 addObject:v77];
    }

    navigationItem = [v25 navigationItem];
    navigationBar = [navigationItem navigationBar];

    [navigationBar size];
    v81 = v80;
    [navigationBar size];
    v45 = *MEMORY[0x277D768C8];
    v46 = *(MEMORY[0x277D768C8] + 8);
    v47 = *(MEMORY[0x277D768C8] + 16);
    v48 = *(MEMORY[0x277D768C8] + 24);
    v44 = [navigationBar resizableSnapshotViewFromRect:1 afterScreenUpdates:0.0 withCapInsets:{0.0, v81, v82, *MEMORY[0x277D768C8], v46, v47, v48}];
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    [navigationBar size];
    v84 = v83;
    [navigationBar size];
    [v44 setFrame:{0.0, v51, v84, v85}];
    containerView5 = [transitionCopy containerView];
    [containerView5 addSubview:v44];

    [MEMORY[0x277CCAAD0] activateConstraints:v50];
  }

  v133 = v6;
  bottomToolbar = [v25 bottomToolbar];
  [bottomToolbar frame];
  v89 = v88;
  [bottomToolbar frame];
  v91 = v90;
  [bottomToolbar frame];
  v93 = v92;
  [bottomToolbar frame];
  v95 = v94;
  view7 = [v25 view];
  [view7 safeAreaInsets];
  v98 = v95 + v97;

  v99 = [bottomToolbar resizableSnapshotViewFromRect:1 afterScreenUpdates:0.0 withCapInsets:{0.0, v93, v98, v45, v46, v47, v48}];
  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v99 setFrame:{v89, v91, v93, v98}];
  containerView6 = [transitionCopy containerView];
  [containerView6 addSubview:v99];

  pageViewController = [v25 pageViewController];
  view8 = [pageViewController view];
  [view8 setHidden:1];

  if (![(ICDocCamThumbnailZoomTransitionAnimator *)self presenting])
  {
    v128 = v44;
    v103 = transitionCopy;
    v104 = v41;
    indexPathForCurrentDocument = [v25 indexPathForCurrentDocument];
    thumbnailViewController = [v143 thumbnailViewController];
    collectionView = [thumbnailViewController collectionView];
    v108 = [collectionView cellForItemAtIndexPath:indexPathForCurrentDocument];

    if ([v25 documentCount] == 1)
    {
      [v108 setAlpha:0.0];
    }

    else
    {
      layer = [v108 layer];
      [layer setOpacity:0.0];
    }

    v41 = v104;
    transitionCopy = v103;
    v44 = v128;
  }

  v167[0] = 0;
  v167[1] = v167;
  v167[2] = 0x2020000000;
  v168 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__ICDocCamThumbnailZoomTransitionAnimator_animateTransition___block_invoke;
  aBlock[3] = &unk_278F94150;
  aBlock[4] = self;
  v166 = v167;
  v110 = v41;
  v159 = v110;
  v111 = v99;
  v160 = v111;
  v129 = v25;
  v161 = v129;
  v131 = transitionCopy;
  v162 = v131;
  v112 = v142;
  v163 = v112;
  v113 = v44;
  v164 = v113;
  v144 = v143;
  v165 = v144;
  v114 = _Block_copy(aBlock);
  view9 = [v145 view];
  [view9 setAlpha:0.0];

  presenting = [(ICDocCamThumbnailZoomTransitionAnimator *)self presenting];
  v117 = 0.0;
  v118 = v111;
  if (!presenting)
  {
    v117 = 1.0;
    [v111 setAlpha:{1.0, v129, v131}];
    [v112 setAlpha:1.0];
    v118 = v113;
  }

  [v118 setAlpha:{v117, v129}];
  v119 = MEMORY[0x277D75D18];
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __61__ICDocCamThumbnailZoomTransitionAnimator_animateTransition___block_invoke_18;
  v152[3] = &unk_278F931E0;
  v120 = v145;
  v153 = v120;
  selfCopy = self;
  v121 = v111;
  v155 = v121;
  v122 = v112;
  v156 = v122;
  v123 = v113;
  v157 = v123;
  [v119 animateWithDuration:0 delay:v152 options:v114 animations:0.14 completion:0.0];
  [v110 setFrame:{v141, v140, v139, v138}];
  v124 = MEMORY[0x277D75D18];
  [(ICDocCamThumbnailZoomTransitionAnimator *)self duration];
  v126 = v125;
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = __61__ICDocCamThumbnailZoomTransitionAnimator_animateTransition___block_invoke_2_19;
  v146[3] = &unk_278F94178;
  v127 = v110;
  v147 = v127;
  v148 = v137;
  v149 = v136;
  v150 = v135;
  v151 = v134;
  [v124 animateWithDuration:0 delay:v146 usingSpringWithDamping:v114 initialSpringVelocity:v126 options:0.0 animations:0.8 completion:0.0];

  _Block_object_dispose(v167, 8);
}

void __61__ICDocCamThumbnailZoomTransitionAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if (++*(*(*(a1 + 96) + 8) + 24) == 2)
  {
    if ([*(a1 + 32) presenting])
    {
      [*(a1 + 40) removeFromSuperview];
      [*(a1 + 48) removeFromSuperview];
      v3 = [*(a1 + 56) pageViewController];
      v4 = [v3 view];
      [v4 setHidden:0];

      [*(a1 + 64) completeTransition:{objc_msgSend(*(a1 + 64), "transitionWasCancelled") ^ 1}];
      v5 = [*(a1 + 32) completion];

      if (v5)
      {
        v6 = [*(a1 + 32) completion];
        v6[2]();
      }
    }

    else
    {
      [*(a1 + 48) removeFromSuperview];
      [*(a1 + 72) removeFromSuperview];
      [*(a1 + 80) removeFromSuperview];
      v7 = [*(a1 + 56) documentCount];
      v8 = *(a1 + 56);
      if (v7 == 1)
      {
        v9 = [v8 indexPathForCurrentDocument];
        v10 = [*(a1 + 88) thumbnailViewController];
        v11 = [v10 collectionView];
        v12 = [v11 cellForItemAtIndexPath:v9];

        [v12 setAlpha:1.0];
        [*(a1 + 40) setAlpha:0.0];
        [*(a1 + 40) removeFromSuperview];
        [*(a1 + 64) completeTransition:{objc_msgSend(*(a1 + 64), "transitionWasCancelled") ^ 1}];
      }

      else
      {
        v9 = [v8 indexPathForCurrentDocument];
        v13 = [*(a1 + 88) thumbnailViewController];
        v14 = [v13 collectionView];
        v15 = [v14 cellForItemAtIndexPath:v9];

        [MEMORY[0x277CD9FF0] begin];
        v16 = MEMORY[0x277CD9FF0];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __61__ICDocCamThumbnailZoomTransitionAnimator_animateTransition___block_invoke_2;
        v27[3] = &unk_278F93258;
        v28 = *(a1 + 40);
        v12 = v15;
        v29 = v12;
        v30 = *(a1 + 64);
        [v16 setCompletionBlock:v27];
        v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        [v17 setFromValue:&unk_285C6D570];
        [v17 setToValue:&unk_285C6D588];
        [v17 setDuration:0.05];
        LODWORD(v18) = 1.0;
        [v17 setRepeatCount:v18];
        [v17 setRemovedOnCompletion:0];
        v19 = *MEMORY[0x277CDA230];
        [v17 setFillMode:*MEMORY[0x277CDA230]];
        v20 = *MEMORY[0x277CDA7B8];
        v21 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
        [v17 setTimingFunction:v21];

        v22 = [v12 layer];
        [v22 addAnimation:v17 forKey:@"opacity"];

        v23 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        [v23 setBeginTime:CACurrentMediaTime() + 0.05];
        [v23 setFromValue:&unk_285C6D588];
        [v23 setToValue:&unk_285C6D570];
        [v23 setDuration:0.2];
        LODWORD(v24) = 1.0;
        [v23 setRepeatCount:v24];
        [v23 setRemovedOnCompletion:0];
        [v23 setFillMode:v19];
        v25 = [MEMORY[0x277CD9EF8] functionWithName:v20];
        [v23 setTimingFunction:v25];

        v26 = [*(a1 + 40) layer];
        [v26 addAnimation:v23 forKey:@"opacity"];

        [MEMORY[0x277CD9FF0] commit];
      }
    }
  }

  objc_sync_exit(v2);
}

uint64_t __61__ICDocCamThumbnailZoomTransitionAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) layer];
  LODWORD(v3) = 1.0;
  [v2 setOpacity:v3];

  v4 = *(a1 + 48);
  v5 = [v4 transitionWasCancelled] ^ 1;

  return [v4 completeTransition:v5];
}

uint64_t __61__ICDocCamThumbnailZoomTransitionAnimator_animateTransition___block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 40) presenting];
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = 1.0;
  }

  else
  {
    [v4 setAlpha:0.0];
    [*(a1 + 56) setAlpha:0.0];
    v4 = *(a1 + 64);
    v5 = 0.0;
  }

  return [v4 setAlpha:v5];
}

@end