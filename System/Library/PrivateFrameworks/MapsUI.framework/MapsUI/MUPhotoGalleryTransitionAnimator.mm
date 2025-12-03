@interface MUPhotoGalleryTransitionAnimator
- (MUPhotoGalleryTransitionAnimator)delegate;
- (MUPhotoGalleryTransitionAnimator)initWithView:(id)view transitionView:(id)transitionView;
- (void)animateTransition:(id)transition;
@end

@implementation MUPhotoGalleryTransitionAnimator

- (MUPhotoGalleryTransitionAnimator)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE768]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  isBeingPresented = [v6 isBeingPresented];
  if (isBeingPresented)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  viewControllers = [v9 viewControllers];
  firstObject = [viewControllers firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    photoViewForTransition = [firstObject photoViewForTransition];
    [photoViewForTransition setAlpha:0.0];
    view = [(MUPhotoGalleryTransitionAnimator *)self view];
    [view setAlpha:0.0];

    containerView = [transitionCopy containerView];
    view2 = [v6 view];
    if (isBeingPresented)
    {
      [containerView addSubview:view2];
    }

    else
    {
      [containerView sendSubviewToBack:view2];
    }

    v83 = v9;

    transitionView = [(MUPhotoGalleryTransitionAnimator *)self transitionView];
    [transitionView setClipsToBounds:1];

    containerView2 = [transitionCopy containerView];
    transitionView2 = [(MUPhotoGalleryTransitionAnimator *)self transitionView];
    [containerView2 addSubview:transitionView2];

    v84 = v5;
    if (isBeingPresented)
    {
      v19 = photoViewForTransition;
      [transitionCopy finalFrameForViewController:v6];
      v21 = v20;
      v23 = v22;
      Width = v24;
      Height = v26;
    }

    else
    {
      [firstObject scrollViewContentOffset];
      v29 = v28;
      v31 = v30;
      [photoViewForTransition frame];
      v21 = CGRectGetMinX(v96) - v29;
      [photoViewForTransition frame];
      v23 = CGRectGetMinY(v97) - v31;
      [photoViewForTransition frame];
      Width = CGRectGetWidth(v98);
      v19 = photoViewForTransition;
      [photoViewForTransition frame];
      Height = CGRectGetHeight(v99);
    }

    view3 = [(MUPhotoGalleryTransitionAnimator *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    view4 = [(MUPhotoGalleryTransitionAnimator *)self view];
    v35 = view4;
    if (isKindOfClass)
    {
      image = [view4 image];
      [image size];
      v38 = v37;
    }

    else
    {
      [view4 frame];
      v38 = v39;
    }

    view5 = [(MUPhotoGalleryTransitionAnimator *)self view];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();
    view6 = [(MUPhotoGalleryTransitionAnimator *)self view];
    v43 = view6;
    if (v41)
    {
      image2 = [view6 image];
      [image2 size];
      v46 = v45;
    }

    else
    {
      [view6 frame];
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
    containerView3 = [transitionCopy containerView];
    view7 = [(MUPhotoGalleryTransitionAnimator *)self view];
    [view7 bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    view8 = [(MUPhotoGalleryTransitionAnimator *)self view];
    [containerView3 convertRect:view8 fromView:{v59, v61, v63, v65}];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    transitionView3 = [(MUPhotoGalleryTransitionAnimator *)self transitionView];
    view9 = transitionView3;
    v9 = v83;
    if (isBeingPresented)
    {
      [transitionView3 setFrame:{v68, v70, v72, v74}];

      view9 = [v6 view];
      [view9 setAlpha:0.0];
      v50 = 1.0;
      v68 = v82;
    }

    else
    {
      [transitionView3 setFrame:{v82, v55, v53, v54}];
      v55 = v70;
      v53 = v72;
      v54 = v74;
    }

    transitionView4 = [(MUPhotoGalleryTransitionAnimator *)self transitionView];
    [transitionView4 layoutIfNeeded];

    v78 = MEMORY[0x1E69DD250];
    [(MUPhotoGalleryTransitionAnimator *)self transitionDuration:transitionCopy];
    v80 = v79;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __54__MUPhotoGalleryTransitionAnimator_animateTransition___block_invoke;
    v88[3] = &unk_1E82190E8;
    v89 = v83;
    selfCopy = self;
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
    v87 = transitionCopy;
    v81 = v48;
    [v78 animateWithDuration:0x20000 delay:v88 options:v85 animations:v80 completion:0.0];

    v5 = v84;
  }

  else
  {
    [transitionCopy completeTransition:0];
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

- (MUPhotoGalleryTransitionAnimator)initWithView:(id)view transitionView:(id)transitionView
{
  viewCopy = view;
  transitionViewCopy = transitionView;
  v12.receiver = self;
  v12.super_class = MUPhotoGalleryTransitionAnimator;
  v9 = [(MUPhotoGalleryTransitionAnimator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_view, view);
    objc_storeStrong(&v10->_transitionView, transitionView);
  }

  return v10;
}

@end