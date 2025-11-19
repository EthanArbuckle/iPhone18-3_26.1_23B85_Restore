@interface ICDocCamThumbnailZoomTransitionAnimator
- (ICDocCamThumbnailZoomTransitionAnimator)initWithImage:(id)a3 indexPath:(id)a4 duration:(double)a5 completion:(id)a6;
- (void)animateTransition:(id)a3;
@end

@implementation ICDocCamThumbnailZoomTransitionAnimator

- (ICDocCamThumbnailZoomTransitionAnimator)initWithImage:(id)a3 indexPath:(id)a4 duration:(double)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = ICDocCamThumbnailZoomTransitionAnimator;
  v14 = [(ICDocCamThumbnailZoomTransitionAnimator *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_thumbnailImage, a3);
    objc_storeStrong(&v15->_indexPath, a4);
    v15->_duration = a5;
    v16 = _Block_copy(v13);
    completion = v15->_completion;
    v15->_completion = v16;
  }

  return v15;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
  v6 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  v7 = [v4 containerView];
  v8 = [v5 view];
  [v7 addSubview:v8];

  v9 = [v6 view];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v5 view];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [v5 view];
  [v19 setNeedsLayout];

  v20 = [v5 view];
  [v20 layoutIfNeeded];

  LODWORD(v20) = [(ICDocCamThumbnailZoomTransitionAnimator *)self presenting];
  v21 = objc_opt_class();
  v145 = v5;
  if (v20)
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

  v27 = [(ICDocCamThumbnailZoomTransitionAnimator *)self indexPath];
  [v24 zoomTargetForIndexPath:v27];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = [(ICDocCamThumbnailZoomTransitionAnimator *)self indexPath];
  [v22 zoomTargetForIndexPath:v36];
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
  v42 = [(ICDocCamThumbnailZoomTransitionAnimator *)self thumbnailImage];
  [v41 setImage:v42];

  [v41 setClipsToBounds:1];
  v43 = [v4 containerView];
  [v43 addSubview:v41];

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
    v49 = [v4 containerView];
    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v25 statusBarWasHiddenWhenDoneTapped])
    {
      v142 = 0;
      v51 = 0.0;
    }

    else
    {
      v52 = [v25 view];
      v53 = [v52 window];
      [v53 windowScene];
      v54 = v132 = v49;
      v55 = [v54 statusBarManager];
      [v55 statusBarFrame];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v51 = v62;

      v63 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v57, v59, v61, v51}];
      v64 = [MEMORY[0x277D75348] whiteColor];
      [v63 setBackgroundColor:v64];

      v65 = [v4 containerView];
      [v65 addSubview:v63];

      v66 = [v63 leadingAnchor];
      v67 = [v132 leadingAnchor];
      v68 = [v66 constraintEqualToAnchor:v67 constant:0.0];
      [v50 addObject:v68];

      v69 = [v63 trailingAnchor];
      v70 = [v132 trailingAnchor];
      v71 = [v69 constraintEqualToAnchor:v70 constant:0.0];
      [v50 addObject:v71];

      v72 = [v63 topAnchor];
      v73 = [v132 topAnchor];
      v74 = [v72 constraintEqualToAnchor:v73 constant:0.0];
      [v50 addObject:v74];

      v142 = v63;
      v75 = v63;
      v49 = v132;
      v76 = [v75 heightAnchor];
      v77 = [v76 constraintEqualToConstant:v51];
      [v50 addObject:v77];
    }

    v78 = [v25 navigationItem];
    v79 = [v78 navigationBar];

    [v79 size];
    v81 = v80;
    [v79 size];
    v45 = *MEMORY[0x277D768C8];
    v46 = *(MEMORY[0x277D768C8] + 8);
    v47 = *(MEMORY[0x277D768C8] + 16);
    v48 = *(MEMORY[0x277D768C8] + 24);
    v44 = [v79 resizableSnapshotViewFromRect:1 afterScreenUpdates:0.0 withCapInsets:{0.0, v81, v82, *MEMORY[0x277D768C8], v46, v47, v48}];
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v79 size];
    v84 = v83;
    [v79 size];
    [v44 setFrame:{0.0, v51, v84, v85}];
    v86 = [v4 containerView];
    [v86 addSubview:v44];

    [MEMORY[0x277CCAAD0] activateConstraints:v50];
  }

  v133 = v6;
  v87 = [v25 bottomToolbar];
  [v87 frame];
  v89 = v88;
  [v87 frame];
  v91 = v90;
  [v87 frame];
  v93 = v92;
  [v87 frame];
  v95 = v94;
  v96 = [v25 view];
  [v96 safeAreaInsets];
  v98 = v95 + v97;

  v99 = [v87 resizableSnapshotViewFromRect:1 afterScreenUpdates:0.0 withCapInsets:{0.0, v93, v98, v45, v46, v47, v48}];
  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v99 setFrame:{v89, v91, v93, v98}];
  v100 = [v4 containerView];
  [v100 addSubview:v99];

  v101 = [v25 pageViewController];
  v102 = [v101 view];
  [v102 setHidden:1];

  if (![(ICDocCamThumbnailZoomTransitionAnimator *)self presenting])
  {
    v128 = v44;
    v103 = v4;
    v104 = v41;
    v105 = [v25 indexPathForCurrentDocument];
    v106 = [v143 thumbnailViewController];
    v107 = [v106 collectionView];
    v108 = [v107 cellForItemAtIndexPath:v105];

    if ([v25 documentCount] == 1)
    {
      [v108 setAlpha:0.0];
    }

    else
    {
      v109 = [v108 layer];
      [v109 setOpacity:0.0];
    }

    v41 = v104;
    v4 = v103;
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
  v131 = v4;
  v162 = v131;
  v112 = v142;
  v163 = v112;
  v113 = v44;
  v164 = v113;
  v144 = v143;
  v165 = v144;
  v114 = _Block_copy(aBlock);
  v115 = [v145 view];
  [v115 setAlpha:0.0];

  v116 = [(ICDocCamThumbnailZoomTransitionAnimator *)self presenting];
  v117 = 0.0;
  v118 = v111;
  if (!v116)
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
  v154 = self;
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