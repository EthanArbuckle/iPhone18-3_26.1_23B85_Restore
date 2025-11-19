@interface MediaControlsPresentationController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGPoint)sourcePoint;
- (CGRect)frameOfPresentedViewInContainerView;
- (UIEdgeInsets)edgeInsets;
- (UIView)presentingView;
- (void)_dismissTap:(id)a3;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation MediaControlsPresentationController

- (void)presentationTransitionWillBegin
{
  v13.receiver = self;
  v13.super_class = MediaControlsPresentationController;
  [(UIPreviewPresentationController *)&v13 presentationTransitionWillBegin];
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__dismissTap_];
  [v3 setDelegate:self];
  v4 = [(MediaControlsPresentationController *)self containerView];
  [v4 addGestureRecognizer:v3];

  WeakRetained = objc_loadWeakRetained(&self->_presentingView);
  if (!WeakRetained)
  {
    v6 = [MEMORY[0x1E69AE158] materialViewWithRecipe:4 configuration:3 initialWeighting:0.0];
    materialView = self->_materialView;
    self->_materialView = v6;

    v8 = [(MediaControlsPresentationController *)self containerView];
    [v8 bounds];
    [(MTMaterialView *)self->_materialView setFrame:?];

    [(MTMaterialView *)self->_materialView setAutoresizingMask:18];
    [(MTMaterialView *)self->_materialView setShouldCrossfade:1];
    v9 = [(MediaControlsPresentationController *)self containerView];
    [v9 addSubview:self->_materialView];
  }

  v10 = [(MediaControlsPresentationController *)self presentedViewController];
  v11 = [v10 transitionCoordinator];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__MediaControlsPresentationController_presentationTransitionWillBegin__block_invoke;
  v12[3] = &unk_1E76645E8;
  v12[4] = self;
  [v11 animateAlongsideTransition:v12 completion:0];
}

void __70__MediaControlsPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 480) setWeighting:1.0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 472));
  [WeakRetained setAlpha:0.0];
  CGAffineTransformMakeScale(&v4, 0.8, 0.8);
  v3 = v4;
  [WeakRetained setTransform:&v3];
}

- (void)dismissalTransitionWillBegin
{
  v6.receiver = self;
  v6.super_class = MediaControlsPresentationController;
  [(UIPreviewPresentationController *)&v6 dismissalTransitionWillBegin];
  v3 = [(MediaControlsPresentationController *)self presentedViewController];
  v4 = [v3 transitionCoordinator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__MediaControlsPresentationController_dismissalTransitionWillBegin__block_invoke;
  v5[3] = &unk_1E76645E8;
  v5[4] = self;
  [v4 animateAlongsideTransition:v5 completion:0];
}

void __67__MediaControlsPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 480) setWeighting:0.0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 472));
  [WeakRetained setAlpha:1.0];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [WeakRetained setTransform:v4];
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = MediaControlsPresentationController;
  [(UIPreviewPresentationController *)&v8 dismissalTransitionDidEnd:?];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentingView);
    [WeakRetained setAlpha:1.0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v7[0] = *MEMORY[0x1E695EFD0];
    v7[1] = v6;
    v7[2] = *(MEMORY[0x1E695EFD0] + 32);
    [WeakRetained setTransform:v7];
  }
}

- (CGRect)frameOfPresentedViewInContainerView
{
  x = self->_sourcePoint.x;
  y = self->_sourcePoint.y;
  v5 = [(MediaControlsPresentationController *)self traitCollection];
  if (![v5 userInterfaceIdiom])
  {

LABEL_8:
    v9 = [(MediaControlsPresentationController *)self containerView];
    [v9 center];

    goto LABEL_9;
  }

  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);

  if (x == v6 && y == v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = [(MediaControlsPresentationController *)self containerView];
  v11 = [(MediaControlsPresentationController *)self presentedViewController];
  [v11 preferredContentSize];

  [v10 bounds];
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  v15 = v14 + left;
  v17 = v16 + top;
  v19 = v18 - (left + self->_edgeInsets.right);
  v21 = v20 - (top + self->_edgeInsets.bottom);
  UIRectCenteredAboutPoint();
  v22 = v52.origin.x;
  v23 = v52.origin.y;
  height = v52.size.height;
  width = v52.size.width;
  MinX = CGRectGetMinX(v52);
  v25 = v15;
  v53.origin.x = v15;
  rect_8 = v17;
  v53.origin.y = v17;
  v53.size.width = v19;
  v53.size.height = v21;
  rect = v22;
  if (MinX >= CGRectGetMinX(v53))
  {
    v56.origin.x = v22;
    v28 = v23;
    v56.origin.y = v23;
    v30 = height;
    v29 = width;
    v56.size.width = width;
    v56.size.height = height;
    MaxX = CGRectGetMaxX(v56);
    v26 = v25;
    v57.origin.x = v25;
    v57.origin.y = rect_8;
    v57.size.width = v19;
    v57.size.height = v21;
    v33 = 0.0;
    if (MaxX <= CGRectGetMaxX(v57))
    {
      goto LABEL_14;
    }

    v58.origin.x = v26;
    v58.origin.y = rect_8;
    v58.size.width = v19;
    v58.size.height = v21;
    v27 = CGRectGetMaxX(v58);
    v59.origin.x = rect;
    v59.origin.y = v28;
    v59.size.width = width;
    v59.size.height = height;
    v31 = CGRectGetMaxX(v59);
  }

  else
  {
    v26 = v15;
    v54.origin.x = v15;
    v54.origin.y = rect_8;
    v54.size.width = v19;
    v54.size.height = v21;
    v27 = CGRectGetMinX(v54);
    v55.origin.x = v22;
    v28 = v23;
    v55.origin.y = v23;
    v30 = height;
    v29 = width;
    v55.size.width = width;
    v55.size.height = height;
    v31 = CGRectGetMinX(v55);
  }

  v33 = v27 - v31 + 0.0;
LABEL_14:
  v60.origin.x = rect;
  v60.origin.y = v28;
  v60.size.width = v29;
  v60.size.height = v30;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v26;
  v61.origin.y = rect_8;
  v61.size.width = v19;
  v61.size.height = v21;
  if (MinY < CGRectGetMinY(v61))
  {
    v62.origin.x = v26;
    v62.origin.y = rect_8;
    v62.size.width = v19;
    v62.size.height = v21;
    v35 = CGRectGetMinY(v62);
    v63.origin.x = rect;
    v63.origin.y = v28;
    v63.size.width = v29;
    v63.size.height = v30;
    v36 = CGRectGetMinY(v63);
LABEL_18:
    v39 = v35 - v36 + 0.0;
    goto LABEL_19;
  }

  v64.origin.x = rect;
  v64.origin.y = v28;
  v64.size.width = v29;
  v64.size.height = v30;
  MaxY = CGRectGetMaxY(v64);
  v65.origin.x = v26;
  v65.origin.y = rect_8;
  v65.size.width = v19;
  v65.size.height = v21;
  v38 = CGRectGetMaxY(v65);
  v39 = 0.0;
  if (MaxY > v38)
  {
    v66.origin.x = v26;
    v66.origin.y = rect_8;
    v66.size.width = v19;
    v66.size.height = v21;
    v35 = CGRectGetMaxY(v66);
    v67.origin.x = rect;
    v67.origin.y = v28;
    v67.size.width = v29;
    v67.size.height = v30;
    v36 = CGRectGetMaxY(v67);
    goto LABEL_18;
  }

LABEL_19:
  v68.origin.x = rect;
  v68.origin.y = v28;
  v68.size.width = v29;
  v68.size.height = v30;
  v69 = CGRectOffset(v68, v33, v39);
  v40 = v69.origin.x;
  v41 = v69.origin.y;
  v42 = v69.size.width;
  v43 = v69.size.height;

  v44 = v40;
  v45 = v41;
  v46 = v42;
  v47 = v43;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(MediaControlsPresentationController *)self presentedViewController];
  v7 = [v6 view];
  [v5 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(MediaControlsPresentationController *)self presentedViewController];
  v13 = [v12 view];
  LOBYTE(v6) = [v13 pointInside:0 withEvent:{v9, v11}];

  return v6 ^ 1;
}

- (void)_dismissTap:(id)a3
{
  v3 = [(MediaControlsPresentationController *)self presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (UIView)presentingView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingView);

  return WeakRetained;
}

- (CGPoint)sourcePoint
{
  x = self->_sourcePoint.x;
  y = self->_sourcePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end