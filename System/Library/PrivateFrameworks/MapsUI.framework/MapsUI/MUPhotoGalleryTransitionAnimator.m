@interface MUPhotoGalleryTransitionAnimator
- (MUPhotoGalleryTransitionAnimator)delegate;
- (MUPhotoGalleryTransitionAnimator)initWithView:(id)a3 transitionView:(id)a4;
- (void)animateTransition:(id)a3;
@end

@implementation MUPhotoGalleryTransitionAnimator

- (MUPhotoGalleryTransitionAnimator)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:*MEMORY[0x1E69DE768]];
  v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
  v7 = [v6 isBeingPresented];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  v10 = [v9 viewControllers];
  v11 = [v10 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 photoViewForTransition];
    [v12 setAlpha:0.0];
    v13 = [(MUPhotoGalleryTransitionAnimator *)self view];
    [v13 setAlpha:0.0];

    v14 = [v4 containerView];
    v15 = [v6 view];
    if (v7)
    {
      [v14 addSubview:v15];
    }

    else
    {
      [v14 sendSubviewToBack:v15];
    }

    v83 = v9;

    v16 = [(MUPhotoGalleryTransitionAnimator *)self transitionView];
    [v16 setClipsToBounds:1];

    v17 = [v4 containerView];
    v18 = [(MUPhotoGalleryTransitionAnimator *)self transitionView];
    [v17 addSubview:v18];

    v84 = v5;
    if (v7)
    {
      v19 = v12;
      [v4 finalFrameForViewController:v6];
      v21 = v20;
      v23 = v22;
      Width = v24;
      Height = v26;
    }

    else
    {
      [v11 scrollViewContentOffset];
      v29 = v28;
      v31 = v30;
      [v12 frame];
      v21 = CGRectGetMinX(v96) - v29;
      [v12 frame];
      v23 = CGRectGetMinY(v97) - v31;
      [v12 frame];
      Width = CGRectGetWidth(v98);
      v19 = v12;
      [v12 frame];
      Height = CGRectGetHeight(v99);
    }

    v32 = [(MUPhotoGalleryTransitionAnimator *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v34 = [(MUPhotoGalleryTransitionAnimator *)self view];
    v35 = v34;
    if (isKindOfClass)
    {
      v36 = [v34 image];
      [v36 size];
      v38 = v37;
    }

    else
    {
      [v34 frame];
      v38 = v39;
    }

    v40 = [(MUPhotoGalleryTransitionAnimator *)self view];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();
    v42 = [(MUPhotoGalleryTransitionAnimator *)self view];
    v43 = v42;
    if (v41)
    {
      v44 = [v42 image];
      [v44 size];
      v46 = v45;
    }

    else
    {
      [v42 frame];
      v46 = v47;
    }

    v48 = v19;

    v49 = Width / v38;
    v50 = 0.0;
    if (v38 <= 0.0)
    {
      v49 = 0.0;
    }

    v51 = Height / v46;
    if (v46 <= 0.0)
    {
      v51 = 0.0;
    }

    v52 = fmin(v49, v51);
    v53 = v52 * v38;
    v54 = v52 * v46;
    v100.origin.x = v21;
    v100.origin.y = v23;
    v100.size.width = Width;
    v100.size.height = Height;
    v82 = CGRectGetMidX(v100) - v53 * 0.5;
    v101.origin.x = v21;
    v101.origin.y = v23;
    v101.size.width = Width;
    v101.size.height = Height;
    v55 = CGRectGetMidY(v101) - v54 * 0.5;
    v56 = [v4 containerView];
    v57 = [(MUPhotoGalleryTransitionAnimator *)self view];
    [v57 bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = [(MUPhotoGalleryTransitionAnimator *)self view];
    [v56 convertRect:v66 fromView:{v59, v61, v63, v65}];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v75 = [(MUPhotoGalleryTransitionAnimator *)self transitionView];
    v76 = v75;
    v9 = v83;
    if (v7)
    {
      [v75 setFrame:{v68, v70, v72, v74}];

      v76 = [v6 view];
      [v76 setAlpha:0.0];
      v50 = 1.0;
      v68 = v82;
    }

    else
    {
      [v75 setFrame:{v82, v55, v53, v54}];
      v55 = v70;
      v53 = v72;
      v54 = v74;
    }

    v77 = [(MUPhotoGalleryTransitionAnimator *)self transitionView];
    [v77 layoutIfNeeded];

    v78 = MEMORY[0x1E69DD250];
    [(MUPhotoGalleryTransitionAnimator *)self transitionDuration:v4];
    v80 = v79;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __54__MUPhotoGalleryTransitionAnimator_animateTransition___block_invoke;
    v88[3] = &unk_1E82190E8;
    v89 = v83;
    v90 = self;
    v91 = v50;
    v92 = v68;
    v93 = v55;
    v94 = v53;
    v95 = v54;
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __54__MUPhotoGalleryTransitionAnimator_animateTransition___block_invoke_2;
    v85[3] = &unk_1E8219110;
    v85[4] = self;
    v86 = v48;
    v87 = v4;
    v81 = v48;
    [v78 animateWithDuration:0x20000 delay:v88 options:v85 animations:v80 completion:0.0];

    v5 = v84;
  }

  else
  {
    [v4 completeTransition:0];
  }
}

void __54__MUPhotoGalleryTransitionAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) view];
  [v3 setAlpha:v2];

  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = [*(a1 + 40) transitionView];
  [v8 setFrame:{v4, v5, v6, v7}];

  v9 = [*(a1 + 40) transitionView];
  [v9 layoutIfNeeded];
}

void __54__MUPhotoGalleryTransitionAnimator_animateTransition___block_invoke_2(id *a1)
{
  v2 = [a1[4] view];
  [v2 setAlpha:1.0];

  [a1[5] setAlpha:1.0];
  v3 = [a1[4] transitionView];
  [v3 removeFromSuperview];

  [a1[6] completeTransition:{objc_msgSend(a1[6], "transitionWasCancelled") ^ 1}];
  v4 = [a1[4] delegate];
  [v4 photoGalleryTransitionAnimatorDidFinishAnimation];
}

- (MUPhotoGalleryTransitionAnimator)initWithView:(id)a3 transitionView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUPhotoGalleryTransitionAnimator;
  v9 = [(MUPhotoGalleryTransitionAnimator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_view, a3);
    objc_storeStrong(&v10->_transitionView, a4);
  }

  return v10;
}

@end