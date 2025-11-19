@interface ICDocCamRetakeTransitionAnimator
- (ICDocCamRetakeTransitionAnimator)initWithImage:(id)a3 indexPath:(id)a4 duration:(double)a5 completion:(id)a6;
- (id)makeUIImageFromCIImage:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation ICDocCamRetakeTransitionAnimator

- (ICDocCamRetakeTransitionAnimator)initWithImage:(id)a3 indexPath:(id)a4 duration:(double)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = ICDocCamRetakeTransitionAnimator;
  v14 = [(ICDocCamRetakeTransitionAnimator *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_retakeImage, a3);
    objc_storeStrong(&v15->_indexPath, a4);
    v15->_duration = a5;
    v16 = _Block_copy(v13);
    completion = v15->_completion;
    v15->_completion = v16;
  }

  return v15;
}

- (id)makeUIImageFromCIImage:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBF740];
  v11 = *MEMORY[0x277CBF910];
  v12[0] = MEMORY[0x277CBEC28];
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v3 contextWithOptions:v6];

  [v5 extent];
  v8 = [v7 createCGImage:v5 fromRect:?];

  v9 = [MEMORY[0x277D755B8] imageWithCGImage:v8];
  CGImageRelease(v8);

  return v9;
}

- (void)animateTransition:(id)a3
{
  v184[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v160 = self;
  if ([(ICDocCamRetakeTransitionAnimator *)self presenting])
  {
    v5 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamRetakeTransitionAnimator animateTransition:v5];
    }
  }

  v159 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
  v157 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  v6 = [v4 containerView];
  v7 = [v159 view];
  v8 = [v157 view];
  [v6 insertSubview:v7 belowSubview:v8];

  v9 = [v157 view];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v159 view];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [v159 view];
  [v19 setNeedsLayout];

  v20 = [v159 view];
  [v20 layoutIfNeeded];

  v21 = objc_opt_class();
  v22 = DCDynamicCast(v21, v157);
  v23 = [(ICDocCamRetakeTransitionAnimator *)v160 indexPath];
  [v22 zoomTargetForIndexPath:v23];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [MEMORY[0x277D75418] currentDevice];
  v154 = [v32 _graphicsQuality];

  v158 = [(ICDocCamRetakeTransitionAnimator *)v160 retakeImage];
  if (v154 != 100)
  {
    v33 = objc_alloc(MEMORY[0x277CBF758]);
    v34 = v158;
    v35 = [v33 initWithCGImage:{objc_msgSend(v158, "CGImage")}];
    [v35 extent];
    v186 = CGRectIntegral(v185);
    x = v186.origin.x;
    y = v186.origin.y;
    width = v186.size.width;
    height = v186.size.height;
    v40 = [v35 imageByCroppingToRect:?];
    v41 = [v40 imageByClampingToExtent];
    [v41 extent];
    v42 = [v41 imageBySettingAlphaOneInExtent:?];

    v43 = MEMORY[0x277CBF750];
    v183[0] = *MEMORY[0x277CBFAF0];
    v183[1] = @"inputRadius";
    v184[0] = v42;
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:40.0];
    v184[1] = v44;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:2];
    v46 = [v43 filterWithName:@"CIGaussianBlur" withInputParameters:v45];
    v47 = [v46 outputImage];
    v48 = [v47 imageByCroppingToRect:{x, y, width, height}];

    v49 = [(ICDocCamRetakeTransitionAnimator *)v160 makeUIImageFromCIImage:v48];
    [v158 size];
    v51 = v50;
    [v158 size];
    v52 = [v49 dc_scaledImageWithSize:v51 scale:?];

    v158 = v52;
  }

  v173 = 0;
  v174 = &v173;
  v175 = 0x3032000000;
  v176 = __Block_byref_object_copy__9;
  v177 = __Block_byref_object_dispose__9;
  v178 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v25, v27, v29, v31}];
  [v174[5] setContentMode:2];
  [v174[5] setImage:v158];
  [v174[5] setClipsToBounds:1];
  v53 = [v4 containerView];
  [v53 addSubview:v174[5]];

  v153 = [v4 containerView];
  v156 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = [v22 statusBarWasHiddenWhenDoneTapped];
  if (v54)
  {
    v55 = 0;
    v56 = 0.0;
  }

  else
  {
    v57 = [v22 view];
    v58 = [v57 window];
    v59 = [v58 windowScene];
    v60 = [v59 statusBarManager];
    [v60 statusBarFrame];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v56 = v67;

    v55 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v62, v64, v66, v56}];
    v68 = [MEMORY[0x277D75348] whiteColor];
    [v55 setBackgroundColor:v68];

    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v69 = [v4 containerView];
    [v69 addSubview:v55];

    v70 = [v55 leadingAnchor];
    v71 = [v153 leadingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71 constant:0.0];
    [v156 addObject:v72];

    v73 = [v55 trailingAnchor];
    v74 = [v153 trailingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74 constant:0.0];
    [v156 addObject:v75];

    v76 = [v55 topAnchor];
    v77 = [v153 topAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:0.0];
    [v156 addObject:v78];

    v79 = [v55 heightAnchor];
    v80 = [v79 constraintEqualToConstant:v56];
    [v156 addObject:v80];
  }

  v81 = [v22 navigationItem];
  v162 = [v81 navigationBar];

  [v162 size];
  v83 = v82;
  [v162 size];
  v84 = *MEMORY[0x277D768C8];
  v85 = *(MEMORY[0x277D768C8] + 8);
  v86 = *(MEMORY[0x277D768C8] + 16);
  v87 = *(MEMORY[0x277D768C8] + 24);
  v89 = [v162 resizableSnapshotViewFromRect:1 afterScreenUpdates:0.0 withCapInsets:{0.0, v83, v88, *MEMORY[0x277D768C8], v85, v86, v87}];
  [v89 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v162 size];
  v91 = v90;
  [v162 size];
  [v89 setFrame:{0.0, v56, v91, v92}];
  v93 = [v4 containerView];
  [v93 addSubview:v89];

  [MEMORY[0x277CCAAD0] activateConstraints:v156];
  v155 = [v22 bottomToolbar];
  [v155 size];
  v95 = v94;
  [v155 size];
  v97 = [v155 resizableSnapshotViewFromRect:1 afterScreenUpdates:0.0 withCapInsets:{0.0, v95, v96, v84, v85, v86, v87}];
  [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v155 frame];
  [v97 setFrame:?];
  v98 = [v4 containerView];
  [v98 addSubview:v97];

  v99 = [v22 pageViewController];
  v100 = [v99 view];
  [v100 setHidden:1];

  [MEMORY[0x277CD9FF0] begin];
  v101 = MEMORY[0x277CD9FF0];
  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v165[2] = __54__ICDocCamRetakeTransitionAnimator_animateTransition___block_invoke;
  v165[3] = &unk_278F941F0;
  v147 = v4;
  v166 = v147;
  v172 = &v173;
  v151 = v97;
  v167 = v151;
  v149 = v55;
  v168 = v149;
  v150 = v89;
  v169 = v150;
  v152 = v22;
  v170 = v152;
  v171 = v160;
  [v101 setCompletionBlock:v165];
  LODWORD(v102) = 1051361018;
  LODWORD(v103) = 1045220557;
  LODWORD(v104) = 1.0;
  v161 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v102 :0.0 :v103 :v104];
  v105 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v105 setFromValue:&unk_285C6D5A0];
  [v105 setToValue:&unk_285C6D5B8];
  [v105 setDuration:0.12];
  LODWORD(v106) = 1.0;
  [v105 setRepeatCount:v106];
  [v105 setRemovedOnCompletion:0];
  v107 = *MEMORY[0x277CDA230];
  [v105 setFillMode:*MEMORY[0x277CDA230]];
  [v105 setTimingFunction:v161];
  v108 = [v152 view];
  v109 = [v108 layer];
  [v109 addAnimation:v105 forKey:@"opacity"];
  v148 = v105;

  v110 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v110 setFromValue:&unk_285C6D5A0];
  [v110 setToValue:&unk_285C6D5B8];
  [v110 setDuration:0.12];
  LODWORD(v111) = 1.0;
  [v110 setRepeatCount:v111];
  [v110 setRemovedOnCompletion:0];
  [v110 setFillMode:v107];
  [v110 setTimingFunction:v161];
  v112 = [v151 layer];
  [v112 addAnimation:v110 forKey:@"opacity"];

  if ((v54 & 1) == 0)
  {
    v113 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v113 setFromValue:&unk_285C6D5A0];
    [v113 setToValue:&unk_285C6D5B8];
    [v113 setDuration:0.12];
    LODWORD(v114) = 1.0;
    [v113 setRepeatCount:v114];
    [v113 setRemovedOnCompletion:0];
    [v113 setFillMode:v107];
    [v113 setTimingFunction:v161];
    v115 = [v149 layer];
    [v115 addAnimation:v113 forKey:@"opacity"];
  }

  v116 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v116 setFromValue:&unk_285C6D5A0];
  [v116 setToValue:&unk_285C6D5B8];
  [v116 setDuration:0.12];
  LODWORD(v117) = 1.0;
  [v116 setRepeatCount:v117];
  [v116 setRemovedOnCompletion:0];
  [v116 setFillMode:v107];
  [v116 setTimingFunction:v161];
  v118 = [v150 layer];
  [v118 addAnimation:v116 forKey:@"opacity"];

  v119 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v119 setFromValue:&unk_285C6D5A0];
  [v119 setToValue:&unk_285C6D338];
  [v119 setDuration:0.28];
  LODWORD(v120) = 1.0;
  [v119 setRepeatCount:v120];
  [v119 setRemovedOnCompletion:0];
  [v119 setFillMode:v107];
  [v119 setTimingFunction:v161];
  v121 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v121 setBeginTime:0.08];
  [v121 setFromValue:&unk_285C6D5A0];
  [v121 setToValue:&unk_285C6D5B8];
  [v121 setDuration:0.15];
  LODWORD(v122) = 1.0;
  [v121 setRepeatCount:v122];
  [v121 setRemovedOnCompletion:0];
  [v121 setFillMode:v107];
  v123 = *MEMORY[0x277CDA7B8];
  v124 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v121 setTimingFunction:v124];

  if (v154 == 100)
  {
    v146 = *MEMORY[0x277CDA328];
    v125 = [MEMORY[0x277CD9EA0] filterWithType:?];
    [v125 setEnabled:1];
    [v125 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
    [v125 setValue:&unk_285C6D5B8 forKey:@"inputRadius"];
    v126 = [MEMORY[0x277D75418] currentDevice];
    if ([v126 _graphicsQuality] == 100)
    {
      v127 = @"default";
    }

    else
    {
      v127 = @"low";
    }

    [v125 setValue:v127 forKey:@"inputQuality"];

    v128 = [v174[5] layer];
    v182 = v125;
    v129 = [MEMORY[0x277CBEA60] arrayWithObjects:&v182 count:1];
    [v128 setFilters:v129];

    v130 = [v174[5] layer];
    [v130 setShouldRasterize:1];

    v131 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
    v132 = [v174[5] layer];
    v133 = [v132 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v131 setFromValue:v133];

    [v131 setToValue:&unk_285C6D5D0];
    [v131 setDuration:0.15];
    LODWORD(v134) = 1.0;
    [v131 setRepeatCount:v134];
    [v131 setRemovedOnCompletion:0];
    [v131 setFillMode:v107];
    v135 = [MEMORY[0x277CD9EF8] functionWithName:v123];
    [v131 setTimingFunction:v135];

    v136 = [MEMORY[0x277CD9EA0] filterWithType:v146];
    [v136 setEnabled:1];
    [v136 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
    [v136 setValue:&unk_285C6D5D0 forKey:@"inputRadius"];
    v137 = [MEMORY[0x277D75418] currentDevice];
    if ([v137 _graphicsQuality] == 100)
    {
      v138 = @"default";
    }

    else
    {
      v138 = @"low";
    }

    [v136 setValue:v138 forKey:@"inputQuality"];

    v139 = [v174[5] layer];
    v181 = v136;
    v140 = [MEMORY[0x277CBEA60] arrayWithObjects:&v181 count:1];
    [v139 setFilters:v140];
  }

  else
  {
    v131 = 0;
  }

  v141 = [v174[5] layer];
  [v141 setOpacity:0.0];

  CATransform3DMakeScale(&v164, 0.5, 0.5, 0.5);
  v142 = [v174[5] layer];
  v163 = v164;
  [v142 setTransform:&v163];

  v143 = [MEMORY[0x277CD9E00] animation];
  [v143 setDuration:0.28];
  if (v154 == 100 && v131)
  {
    v180[0] = v119;
    v180[1] = v121;
    v180[2] = v131;
    v144 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:3];
    [v143 setAnimations:v144];
  }

  else
  {
    v179[0] = v119;
    v179[1] = v121;
    v144 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:2];
    [v143 setAnimations:v144];
  }

  v145 = [v174[5] layer];
  [v145 addAnimation:v143 forKey:@"animGroup"];

  [MEMORY[0x277CD9FF0] commit];
  _Block_object_dispose(&v173, 8);
}

void __54__ICDocCamRetakeTransitionAnimator_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) completeTransition:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
  [*(*(*(a1 + 80) + 8) + 40) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) removeFromSuperview];
  v2 = [*(a1 + 64) pageViewController];
  v3 = [v2 view];
  [v3 setHidden:0];

  v4 = [*(a1 + 72) completion];

  if (v4)
  {
    v5 = [*(a1 + 72) completion];
    v5[2]();
  }
}

@end