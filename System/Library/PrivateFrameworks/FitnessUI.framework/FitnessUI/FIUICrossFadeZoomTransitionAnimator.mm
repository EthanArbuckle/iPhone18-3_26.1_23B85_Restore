@interface FIUICrossFadeZoomTransitionAnimator
- (void)animateTransition:(id)transition;
- (void)completeTransitionImmediately;
@end

@implementation FIUICrossFadeZoomTransitionAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE768]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke;
  aBlock[3] = &unk_1E878C008;
  v7 = v5;
  v206 = v7;
  selfCopy = self;
  v8 = v6;
  v208 = v8;
  v9 = _Block_copy(aBlock);
  v201[0] = MEMORY[0x1E69E9820];
  v201[1] = 3221225472;
  v201[2] = __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_2;
  v201[3] = &unk_1E878C008;
  v10 = v7;
  v202 = v10;
  selfCopy2 = self;
  v11 = v8;
  v204 = v11;
  v158 = _Block_copy(v201);
  v197[0] = MEMORY[0x1E69E9820];
  v197[1] = 3221225472;
  v197[2] = __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_3;
  v197[3] = &unk_1E878C008;
  v12 = v10;
  v198 = v12;
  selfCopy3 = self;
  v13 = v11;
  v200 = v13;
  v159 = _Block_copy(v197);
  LODWORD(v11) = self->_zoomingUp;
  containerView = [transitionCopy containerView];
  v156 = v12;
  v157 = v9;
  if (v11 == 1)
  {
    view = [v12 view];
    [containerView addSubview:view];

    containerView2 = [transitionCopy containerView];
    view2 = [v13 view];
    [containerView2 addSubview:view2];

    view3 = [v12 view];
    [view3 setUserInteractionEnabled:0];

    view4 = [v13 view];
    [view4 setUserInteractionEnabled:0];

    view5 = [v12 view];
    [view5 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    view6 = [v13 view];
    [view6 setFrame:{v22, v24, v26, v28}];

    (*(v9 + 2))(v9);
    superview = [(UIView *)self->_smallView superview];
    superview2 = [(UIView *)self->_largeView superview];
    [(UIView *)self->_smallView frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [(UIView *)self->_largeView frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    containerView3 = [transitionCopy containerView];
    v155 = superview;
    [containerView3 convertRect:superview fromView:{v33, v35, v37, v39}];
    v150 = v50;
    v152 = v49;
    v146 = v52;
    v148 = v51;

    containerView4 = [transitionCopy containerView];
    v154 = superview2;
    [containerView4 convertRect:superview2 fromView:{v41, v43, v45, v47}];
    v142 = v55;
    v144 = v54;
    v138 = v57;
    v140 = v56;

    v58 = [objc_alloc(MEMORY[0x1E69DCF70]) initWithFrame:{v33, v35, v37, v39}];
    v59 = [objc_alloc(MEMORY[0x1E69DCF70]) initWithFrame:{v41, v43, v45, v47}];
    [v58 captureSnapshotOfView:self->_smallView withSnapshotType:1];
    [v59 captureSnapshotOfView:self->_largeView withSnapshotType:0];
    containerView5 = [transitionCopy containerView];
    [containerView5 addSubview:v58];

    containerView6 = [transitionCopy containerView];
    [containerView6 addSubview:v59];

    [(UIView *)self->_smallView setHidden:1];
    [(UIView *)self->_largeView setHidden:1];
    view7 = [v13 view];
    [view7 setAlpha:0.0];

    [v58 setFrame:{v152, v150, v148, v146}];
    [v59 setFrame:{v152, v150, v148, v146}];
    [v59 setAlpha:0.0];
    v63 = self->_smallView;
    v64 = self->_largeView;
    objc_initWeak(&location, self);
    v186[0] = MEMORY[0x1E69E9820];
    v186[1] = 3221225472;
    v186[2] = __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_4;
    v186[3] = &unk_1E878C830;
    objc_copyWeak(&v195, &location);
    v187 = v12;
    v65 = v13;
    v188 = v65;
    v66 = v63;
    v189 = v66;
    v67 = v64;
    v190 = v67;
    v68 = v58;
    v191 = v68;
    v69 = v59;
    v192 = v69;
    v70 = transitionCopy;
    v193 = v70;
    v194 = v159;
    v71 = _Block_copy(v186);
    animationCompletionBlock = self->_animationCompletionBlock;
    self->_animationCompletionBlock = v71;

    v73 = MEMORY[0x1E69DD250];
    [(FIUICrossFadeZoomTransitionAnimator *)self transitionDuration:v70];
    v75 = v74;
    v178[0] = MEMORY[0x1E69E9820];
    v178[1] = 3221225472;
    v178[2] = __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_5;
    v178[3] = &unk_1E878C858;
    v179 = v65;
    v76 = v68;
    v180 = v76;
    v182 = v144;
    v183 = v142;
    v184 = v140;
    v185 = v138;
    v77 = v69;
    v181 = v77;
    [v73 animateWithDuration:v178 animations:self->_animationCompletionBlock completion:v75];

    objc_destroyWeak(&v195);
    objc_destroyWeak(&location);
  }

  else
  {
    view8 = [v13 view];
    [containerView addSubview:view8];

    containerView7 = [transitionCopy containerView];
    view9 = [v12 view];
    [containerView7 addSubview:view9];

    view10 = [v12 view];
    [view10 setUserInteractionEnabled:0];

    view11 = [v13 view];
    [view11 setUserInteractionEnabled:0];

    view12 = [v12 view];
    [view12 frame];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    view13 = [v13 view];
    [view13 setFrame:{v85, v87, v89, v91}];

    (*(v9 + 2))(v9);
    superview3 = [(UIView *)self->_smallView superview];
    superview4 = [(UIView *)self->_largeView superview];
    [(UIView *)self->_smallView frame];
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    [(UIView *)self->_largeView frame];
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    containerView8 = [transitionCopy containerView];
    v154 = superview4;
    [containerView8 convertRect:superview4 fromView:{v104, v106, v108, v110}];
    v151 = v113;
    v153 = v112;
    v147 = v115;
    v149 = v114;

    containerView9 = [transitionCopy containerView];
    v155 = superview3;
    [containerView9 convertRect:superview3 fromView:{v96, v98, v100, v102}];
    v143 = v118;
    v145 = v117;
    v139 = v120;
    v141 = v119;

    v121 = [objc_alloc(MEMORY[0x1E69DCF70]) initWithFrame:{v96, v98, v100, v102}];
    v122 = [objc_alloc(MEMORY[0x1E69DCF70]) initWithFrame:{v104, v106, v108, v110}];
    [v121 captureSnapshotOfView:self->_smallView withSnapshotType:0];
    [v122 captureSnapshotOfView:self->_largeView withSnapshotType:1];
    containerView10 = [transitionCopy containerView];
    [containerView10 addSubview:v121];

    containerView11 = [transitionCopy containerView];
    [containerView11 addSubview:v122];

    [(UIView *)self->_smallView setHidden:1];
    [(UIView *)self->_largeView setHidden:1];
    [v121 setAlpha:0.0];
    [v121 setFrame:{v153, v151, v149, v147}];
    [v122 setFrame:{v153, v151, v149, v147}];
    objc_initWeak(&location, self);
    v125 = self->_smallView;
    v126 = self->_largeView;
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_6;
    v168[3] = &unk_1E878C830;
    objc_copyWeak(&v177, &location);
    v127 = v12;
    v169 = v127;
    v170 = v13;
    v128 = v125;
    v171 = v128;
    v129 = v126;
    v172 = v129;
    v130 = v121;
    v173 = v130;
    v131 = v122;
    v174 = v131;
    v132 = transitionCopy;
    v175 = v132;
    v176 = v159;
    v133 = _Block_copy(v168);
    v134 = self->_animationCompletionBlock;
    self->_animationCompletionBlock = v133;

    v135 = MEMORY[0x1E69DD250];
    [(FIUICrossFadeZoomTransitionAnimator *)self transitionDuration:v132];
    v137 = v136;
    v160[0] = MEMORY[0x1E69E9820];
    v160[1] = 3221225472;
    v160[2] = __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_7;
    v160[3] = &unk_1E878C858;
    v161 = v127;
    v76 = v130;
    v162 = v76;
    v164 = v145;
    v165 = v143;
    v166 = v141;
    v167 = v139;
    v77 = v131;
    v163 = v77;
    [v135 animateWithDuration:v160 animations:self->_animationCompletionBlock completion:v137];
    v158[2]();

    objc_destroyWeak(&v177);
    objc_destroyWeak(&location);
  }
}

uint64_t __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) zoomTransitionAnimatorWillBeginTransition:*(a1 + 40)];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);

    return [v3 zoomTransitionAnimatorWillBeginTransition:v4];
  }

  return result;
}

uint64_t __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) zoomTransitionAnimatorDidBeginTransition:*(a1 + 40)];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);

    return [v3 zoomTransitionAnimatorDidBeginTransition:v4];
  }

  return result;
}

uint64_t __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) zoomTransitionAnimatorDidCompleteTransition:*(a1 + 40)];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);

    return [v3 zoomTransitionAnimatorDidCompleteTransition:v4];
  }

  return result;
}

void __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (WeakRetained && (WeakRetained[16] & 1) == 0)
  {
    WeakRetained[16] = 1;
    v8 = WeakRetained;
    v5 = [*(a1 + 32) view];
    [v5 setUserInteractionEnabled:1];

    v6 = [*(a1 + 40) view];
    [v6 setUserInteractionEnabled:1];

    [*(a1 + 48) setHidden:0];
    [*(a1 + 56) setHidden:0];
    [*(a1 + 64) removeFromSuperview];
    [*(a1 + 72) removeFromSuperview];
    [*(a1 + 80) completeTransition:a2];
    v7 = v8[1];
    v8[1] = 0;

    (*(*(a1 + 88) + 16))();
    WeakRetained = v8;
  }
}

uint64_t __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) setAlpha:0.0];
  [*(a1 + 48) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = *(a1 + 48);

  return [v3 setAlpha:1.0];
}

void __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (WeakRetained && (WeakRetained[16] & 1) == 0)
  {
    WeakRetained[16] = 1;
    v8 = WeakRetained;
    v5 = [*(a1 + 32) view];
    [v5 setUserInteractionEnabled:1];

    v6 = [*(a1 + 40) view];
    [v6 setUserInteractionEnabled:1];

    [*(a1 + 48) setHidden:0];
    [*(a1 + 56) setHidden:0];
    [*(a1 + 64) removeFromSuperview];
    [*(a1 + 72) removeFromSuperview];
    [*(a1 + 80) completeTransition:a2];
    v7 = v8[1];
    v8[1] = 0;

    (*(*(a1 + 88) + 16))();
    WeakRetained = v8;
  }
}

uint64_t __57__FIUICrossFadeZoomTransitionAnimator_animateTransition___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) setAlpha:1.0];
  [*(a1 + 48) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = *(a1 + 48);

  return [v3 setAlpha:0.0];
}

- (void)completeTransitionImmediately
{
  animationCompletionBlock = self->_animationCompletionBlock;
  if (animationCompletionBlock)
  {
    animationCompletionBlock[2](animationCompletionBlock, 1);
    v4 = self->_animationCompletionBlock;
    self->_animationCompletionBlock = 0;
  }
}

@end