@interface CKSendMenuPresentationPopoverView
+ (CGAffineTransform)affineTransformToDownScaleSize:(SEL)a3 toSize:(CGSize)a4;
- (CKSendMenuPresentationPopoverView)init;
- (id)_animationForDismissingContentView:(id)a3 finalBounds:(CGRect)a4 finalCenter:(CGPoint)a5 finalAlpha:(double)a6;
- (id)animationForDismissingWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4 finalAlpha:(double)a5;
- (id)animationForPresentingInitialViewWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4;
- (id)animationForTransitioningToAppViewWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4;
- (id)animationForTransitioningToNewSize:(CGSize)a3 center:(CGPoint)a4;
- (void)layoutSubviews;
- (void)prepareForPresentation;
- (void)setAppView:(id)a3;
- (void)setLayoutSubviewsEnabled:(BOOL)a3;
- (void)setSendMenuView:(id)a3;
@end

@implementation CKSendMenuPresentationPopoverView

- (CKSendMenuPresentationPopoverView)init
{
  v21.receiver = self;
  v21.super_class = CKSendMenuPresentationPopoverView;
  v2 = [(CKSendMenuPresentationPopoverView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(CKSendMenuPresentationPopoverView *)v2 setBackgroundColor:v3];

    [(CKSendMenuPresentationPopoverView *)v2 setAlpha:1.0];
    v2->_layoutSubviewsEnabled = 0;
    v4 = objc_alloc_init(CKSendMenuPresentationPopoverBackdropView);
    backdropView = v2->_backdropView;
    v2->_backdropView = v4;

    v6 = [CKEntryViewPlusButton alloc];
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 entryViewPlusButtonSize];
    v9 = v8;
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 entryViewPlusButtonSize];
    v12 = [(CKEntryViewPlusButton *)v6 initWithFrame:0.0, 0.0, v9, v11];
    plusButton = v2->_plusButton;
    v2->_plusButton = v12;

    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(CKSendMenuPresentationPopoverBackdropView *)v2->_backdropView setBackgroundColor:v14];

    [(CKSendMenuPresentationPopoverBackdropView *)v2->_backdropView setClipsToBounds:1];
    v15 = [(CKSendMenuPresentationPopoverBackdropView *)v2->_backdropView layer];
    [v15 setMasksToBounds:1];

    v16 = objc_alloc_init(MEMORY[0x1E69DD298]);
    blurBackgroundView = v2->_blurBackgroundView;
    v2->_blurBackgroundView = v16;

    v18 = [(UIVisualEffectView *)v2->_blurBackgroundView layer];
    [v18 setMasksToBounds:1];

    v19 = [(UIVisualEffectView *)v2->_blurBackgroundView contentView];
    [v19 addSubview:v2->_plusButton];

    [(CKSendMenuPresentationPopoverView *)v2 addSubview:v2->_backdropView];
    [(CKSendMenuPresentationPopoverView *)v2 addSubview:v2->_blurBackgroundView];
  }

  return v2;
}

- (void)setLayoutSubviewsEnabled:(BOOL)a3
{
  if (self->_layoutSubviewsEnabled != a3)
  {
    self->_layoutSubviewsEnabled = a3;
  }
}

- (void)setAppView:(id)a3
{
  v5 = a3;
  appView = self->_appView;
  v8 = v5;
  if (appView != v5)
  {
    if (appView)
    {
      [(UIView *)appView removeFromSuperview];
    }

    objc_storeStrong(&self->_appView, a3);
    if (self->_appView)
    {
      v7 = [(CKSendMenuPresentationPopoverView *)self contentContainerView];
      [v7 addSubview:self->_appView];
    }
  }
}

- (void)setSendMenuView:(id)a3
{
  v5 = a3;
  sendMenuView = self->_sendMenuView;
  v8 = v5;
  if (sendMenuView != v5)
  {
    if (sendMenuView)
    {
      [(UIView *)sendMenuView removeFromSuperview];
    }

    objc_storeStrong(&self->_sendMenuView, a3);
    if (self->_sendMenuView)
    {
      v7 = [(CKSendMenuPresentationPopoverView *)self contentContainerView];
      [v7 addSubview:self->_sendMenuView];
    }
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CKSendMenuPresentationPopoverView;
  [(CKSendMenuPresentationPopoverView *)&v9 layoutSubviews];
  if (self->_layoutSubviewsEnabled)
  {
    [(CKSendMenuPresentationPopoverView *)self bounds];
    x = v10.origin.x;
    y = v10.origin.y;
    width = v10.size.width;
    height = v10.size.height;
    MidX = CGRectGetMidX(v10);
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    MidY = CGRectGetMidY(v11);
    [(UIVisualEffectView *)self->_blurBackgroundView setFrame:x, y, width, height];
    [(CKSendMenuPresentationPopoverBackdropView *)self->_backdropView setBounds:x, y, width, height];
    [(CKSendMenuPresentationPopoverBackdropView *)self->_backdropView setCenter:MidX, MidY];
    [(UIView *)self->_sendMenuView setBounds:x, y, width, height];
    [(UIView *)self->_sendMenuView setCenter:MidX, MidY];
    [(UIView *)self->_appView setBounds:x, y, width, height];
    [(UIView *)self->_appView setCenter:MidX, MidY];
  }
}

- (id)animationForDismissingWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4 finalAlpha:(double)a5
{
  appView = self->_appView;
  if (!appView)
  {
    appView = self->_sendMenuView;
  }

  return [(CKSendMenuPresentationPopoverView *)self _animationForDismissingContentView:appView finalBounds:a3.origin.x finalCenter:a3.origin.y finalAlpha:a3.size.width, a3.size.height, a4.x, a4.y, a5];
}

- (id)_animationForDismissingContentView:(id)a3 finalBounds:(CGRect)a4 finalCenter:(CGPoint)a5 finalAlpha:(double)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v10 = a4.origin.y;
  v11 = a4.origin.x;
  v85[11] = *MEMORY[0x1E69E9840];
  v13 = a3;
  [v13 bounds];
  v14 = width / CGRectGetWidth(v87);
  [v13 bounds];
  v15 = height / CGRectGetHeight(v88);
  if (v14 >= v15)
  {
    v14 = v15;
  }

  v16 = +[CKUIBehavior sharedBehaviors];
  v41 = [v16 newSendMenuDismissPopoverWidthAnimator];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke;
  v78[3] = &unk_1E72F39D0;
  v80 = v11;
  v81 = v10;
  v82 = width;
  v83 = height;
  v78[4] = self;
  v17 = v13;
  v79 = v17;
  v84 = v14;
  [v41 addAnimations:v78];
  v39 = [v16 newSendMenuDismissPopoverHeightAnimator];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_2;
  v71[3] = &unk_1E72F39D0;
  v73 = v11;
  v74 = v10;
  v75 = width;
  v76 = height;
  v71[4] = self;
  v18 = v17;
  v72 = v18;
  v77 = v14;
  [v39 addAnimations:v71];
  v40 = [v16 newSendMenuDismissPopoverCenterXAnimator];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_3;
  v63[3] = &unk_1E72F39F8;
  v63[4] = self;
  v65 = x;
  v66 = y;
  v67 = v11;
  v68 = v10;
  v69 = width;
  v70 = height;
  v19 = v18;
  v64 = v19;
  [v40 addAnimations:v63];
  v20 = [v16 newSendMenuDismissPopoverCenterYAnimator];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_4;
  v55[3] = &unk_1E72F39F8;
  v55[4] = self;
  v57 = x;
  v58 = y;
  v59 = v11;
  v60 = v10;
  v61 = width;
  v62 = height;
  v21 = v19;
  v56 = v21;
  [v20 addAnimations:v55];
  v36 = [v16 newSendMenuDismissPopoverPlusCenterXAnimator];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_5;
  v54[3] = &unk_1E72EC7B0;
  *&v54[5] = v11;
  *&v54[6] = v10;
  *&v54[7] = width;
  *&v54[8] = height;
  v54[4] = self;
  [v36 addAnimations:v54];
  v35 = [v16 newSendMenuDismissPopoverPlusCenterYAnimator];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_6;
  v53[3] = &unk_1E72EC7B0;
  *&v53[5] = v11;
  *&v53[6] = v10;
  *&v53[7] = width;
  *&v53[8] = height;
  v53[4] = self;
  [v35 addAnimations:v53];
  v22 = [v16 newSendMenuDismissPopoverPlusIconScaleXAnimator];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_7;
  v52[3] = &unk_1E72EBA18;
  v52[4] = self;
  v23 = v22;
  [v22 addAnimations:v52];
  v24 = [v16 newSendMenuDismissPopoverPlusIconScaleYAnimator];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_8;
  v51[3] = &unk_1E72EBA18;
  v51[4] = self;
  v25 = v24;
  [v24 addAnimations:v51];
  v26 = [v16 newSendMenuDismissPopoverPlusIconBlurRadiusAnimator];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_9;
  v50[3] = &unk_1E72EBA18;
  v50[4] = self;
  v27 = v26;
  [v26 addAnimations:v50 delayFactor:0.185];
  v28 = [v16 newSendMenuDismissPopoverPlusIconOpacityAnimator];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_10;
  v49[3] = &unk_1E72ED810;
  v49[4] = self;
  *&v49[5] = a6;
  [v28 addAnimations:v49 delayFactor:0.185];
  v29 = [v16 newSendMenuDismissPopoverAnimator];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_11;
  v42[3] = &unk_1E72F39D0;
  v44 = v11;
  v45 = v10;
  v46 = width;
  v47 = height;
  v42[4] = self;
  v43 = v21;
  v48 = a6;
  v38 = v21;
  [v29 addAnimations:v42];
  v85[0] = v39;
  v85[1] = v41;
  v85[2] = v40;
  v85[3] = v20;
  v85[4] = v29;
  v85[5] = v36;
  v85[6] = v35;
  v85[7] = v23;
  v30 = v25;
  v85[8] = v25;
  v85[9] = v28;
  v85[10] = v27;
  v31 = v27;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:11];
  v34 = [[CKSendMenuPopoverAnimation alloc] initWithAnimators:v32];

  return v34;
}

uint64_t __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke(uint64_t a1)
{
  Width = CGRectGetWidth(*(a1 + 48));
  [*(a1 + 32) ck_setBoundsWidth:?];
  v3 = [*(a1 + 32) backdropView];
  [v3 ck_setBoundsWidth:Width];

  v4 = *(a1 + 80);
  v5 = *(a1 + 40);

  return [v5 ck_setScaleX:v4];
}

uint64_t __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_2(uint64_t a1)
{
  Height = CGRectGetHeight(*(a1 + 48));
  [*(a1 + 32) ck_setBoundsHeight:?];
  v3 = [*(a1 + 32) backdropView];
  [v3 ck_setBoundsHeight:Height];

  v4 = *(a1 + 80);
  v5 = *(a1 + 40);

  return [v5 ck_setScaleY:v4];
}

uint64_t __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) ck_setPositionX:*(a1 + 48)];
  v2 = CGRectGetWidth(*(a1 + 64)) * 0.5;
  v3 = [*(a1 + 32) backdropView];
  [v3 ck_setPositionX:v2];

  v4 = *(a1 + 40);

  return [v4 ck_setPositionX:v2];
}

uint64_t __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) ck_setPositionY:*(a1 + 56)];
  v2 = CGRectGetHeight(*(a1 + 64)) * 0.5;
  v3 = [*(a1 + 32) backdropView];
  [v3 ck_setPositionY:v2];

  v4 = *(a1 + 40);

  return [v4 ck_setPositionY:v2];
}

void __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_5(uint64_t a1)
{
  v2 = CGRectGetWidth(*(a1 + 40)) * 0.5;
  v3 = [*(a1 + 32) plusButton];
  [v3 ck_setPositionX:v2];
}

void __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_6(uint64_t a1)
{
  v2 = CGRectGetHeight(*(a1 + 40)) * 0.5;
  v3 = [*(a1 + 32) plusButton];
  [v3 ck_setPositionY:v2];
}

void __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) plusButton];
  [v1 ck_setScaleX:1.0];
}

void __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_8(uint64_t a1)
{
  v1 = [*(a1 + 32) plusButton];
  [v1 ck_setScaleY:1.0];
}

void __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) plusButton];
  [v2 setBackgroundBlurRadiusLightMode:-1.0];

  v3 = [*(a1 + 32) plusButton];
  [v3 setBackgroundBlurRadiusDarkMode:-1.0];
}

void __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) plusButton];
  [v2 setAlpha:v1];
}

uint64_t __107__CKSendMenuPresentationPopoverView__animationForDismissingContentView_finalBounds_finalCenter_finalAlpha___block_invoke_11(uint64_t a1)
{
  v2 = CGRectGetWidth(*(a1 + 48)) * 0.5;
  if (v2 <= 40.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 40.0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 entryViewPlusButtonDefaultBackgroundColor];
  v6 = [*(a1 + 32) backdropView];
  [v6 setBackgroundColor:v5];

  v7 = [*(a1 + 32) backdropView];
  v8 = [v7 layer];
  [v8 setCornerRadius:v3];

  [*(a1 + 40) setAlpha:0.0];
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = [*(a1 + 32) blurBackgroundView];
  [v13 setBounds:{v9, v10, v11, v12}];

  v14 = [*(a1 + 32) blurBackgroundView];
  [v14 setEffect:0];

  v15 = [*(a1 + 32) blurBackgroundView];
  v16 = [v15 layer];
  [v16 setMasksToBounds:1];

  v17 = [*(a1 + 32) blurBackgroundView];
  v18 = [v17 layer];
  [v18 setCornerRadius:v3];

  v19 = [*(a1 + 32) blurBackgroundView];
  [v19 setClipsToBounds:1];

  v20 = *(a1 + 80);
  v21 = [*(a1 + 32) blurBackgroundView];
  [v21 setAlpha:v20];

  v22 = *(a1 + 80);
  v23 = [*(a1 + 32) backdropView];
  [v23 setAlpha:v22];

  v24 = CGRectGetWidth(*(a1 + 48)) * 0.5;
  v25 = CGRectGetWidth(*(a1 + 48)) * 0.5;
  v26 = [*(a1 + 32) blurBackgroundView];
  [v26 setCenter:{v24, v25}];

  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v29 = *(a1 + 64);
  v30 = *(a1 + 72);
  v31 = [*(a1 + 32) blurBackgroundView];
  [v31 setBounds:{v27, v28, v29, v30}];

  v32 = [*(a1 + 32) backdropView];
  v33 = [v32 layer];
  [v33 setCornerRadius:v3];

  v34 = *(a1 + 40);

  return [v34 setUserInteractionEnabled:1];
}

- (id)animationForPresentingInitialViewWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  v77[11] = *MEMORY[0x1E69E9840];
  v11 = +[CKUIBehavior sharedBehaviors];
  sendMenuView = self->_sendMenuView;
  if (!sendMenuView)
  {
    sendMenuView = self->_appView;
  }

  v13 = sendMenuView;
  v35 = [v11 newSendMenuPresentPopoverWidthAnimator];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke;
  v71[3] = &unk_1E72F3A20;
  v73 = v9;
  v74 = v8;
  v75 = width;
  v76 = height;
  v71[4] = self;
  v14 = v13;
  v72 = v14;
  [v35 addAnimations:v71 delayFactor:0.025];
  v34 = [v11 newSendMenuPresentPopoverHeightAnimator];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_2;
  v65[3] = &unk_1E72F3A20;
  v65[4] = self;
  v67 = v9;
  v68 = v8;
  v69 = width;
  v70 = height;
  v15 = v14;
  v66 = v15;
  [v34 addAnimations:v65];
  v16 = [v11 newSendMenuPresentPopoverCenterXAnimator];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_3;
  v57[3] = &unk_1E72F39F8;
  v57[4] = self;
  v59 = x;
  v60 = y;
  v61 = v9;
  v62 = v8;
  v63 = width;
  v64 = height;
  v17 = v15;
  v58 = v17;
  [v16 addAnimations:v57 delayFactor:0.025];
  v33 = [v11 newSendMenuPresentPopoverCenterYAnimator];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_4;
  v49[3] = &unk_1E72F39F8;
  v49[4] = self;
  v51 = x;
  v52 = y;
  v53 = v9;
  v54 = v8;
  v55 = width;
  v56 = height;
  v18 = v17;
  v50 = v18;
  [v33 addAnimations:v49];
  v32 = [v11 newSendMenuPresentPopoverPlusCenterXAnimator];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_5;
  v48[3] = &unk_1E72EC7B0;
  *&v48[5] = v9;
  *&v48[6] = v8;
  *&v48[7] = width;
  *&v48[8] = height;
  v48[4] = self;
  [v32 addAnimations:v48 delayFactor:0.025];
  v19 = [v11 newSendMenuPresentPopoverPlusCenterYAnimator];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_6;
  v47[3] = &unk_1E72EC7B0;
  *&v47[5] = v9;
  *&v47[6] = v8;
  *&v47[7] = width;
  *&v47[8] = height;
  v47[4] = self;
  v20 = v19;
  [v19 addAnimations:v47];
  v21 = [v11 newSendMenuPresentPopoverPlusIconScaleXAnimator];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_7;
  v46[3] = &unk_1E72EBA18;
  v46[4] = self;
  v22 = v21;
  [v21 addAnimations:v46 delayFactor:0.025];
  v29 = [v11 newSendMenuPresentPopoverPlusIconScaleYAnimator];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_8;
  v45[3] = &unk_1E72EBA18;
  v45[4] = self;
  [v29 addAnimations:v45];
  v23 = [v11 newSendMenuPresentPopoverPlusIconBlurRadiusAnimator];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_9;
  v44[3] = &unk_1E72EBA18;
  v44[4] = self;
  [v23 addAnimations:v44];
  v24 = [v11 newSendMenuPresentPopoverPlusIconOpacityAnimator];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_10;
  v43[3] = &unk_1E72EBA18;
  v43[4] = self;
  [v24 addAnimations:v43];
  v25 = [v11 newSendMenuPresentPopoverAnimator];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_11;
  v36[3] = &unk_1E72F0128;
  v39 = v9;
  v40 = v8;
  v41 = width;
  v42 = height;
  v36[4] = self;
  v37 = v11;
  v38 = v18;
  v31 = v18;
  v30 = v11;
  [v25 addAnimations:v36];
  v77[0] = v34;
  v77[1] = v35;
  v77[2] = v16;
  v77[3] = v33;
  v77[4] = v25;
  v77[5] = v32;
  v77[6] = v20;
  v77[7] = v22;
  v77[8] = v29;
  v77[9] = v24;
  v77[10] = v23;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:11];
  v28 = [[CKSendMenuPopoverAnimation alloc] initWithAnimators:v26];

  return v28;
}

uint64_t __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke(uint64_t a1)
{
  Width = CGRectGetWidth(*(a1 + 48));
  [*(a1 + 32) ck_setBoundsWidth:?];
  v3 = [*(a1 + 32) blurBackgroundView];
  [v3 ck_setBoundsWidth:Width];

  v4 = [*(a1 + 32) backdropView];
  [v4 ck_setBoundsWidth:Width];

  v5 = *(a1 + 40);

  return [v5 ck_setScaleX:1.0];
}

uint64_t __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) ck_setBoundsHeight:*(a1 + 72)];
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) blurBackgroundView];
  [v3 ck_setBoundsHeight:v2];

  v4 = *(a1 + 72);
  v5 = [*(a1 + 32) backdropView];
  [v5 ck_setBoundsHeight:v4];

  v6 = *(a1 + 40);

  return [v6 ck_setScaleY:1.0];
}

void __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) ck_setPositionX:*(a1 + 48)];
  v2 = CGRectGetWidth(*(a1 + 64)) * 0.5;
  [*(a1 + 40) ck_setPositionX:v2];
  v3 = [*(a1 + 32) backdropView];
  [v3 ck_setPositionX:v2];

  v4 = [*(a1 + 32) blurBackgroundView];
  [v4 ck_setPositionX:v2];
}

void __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) ck_setPositionY:*(a1 + 56)];
  v2 = CGRectGetHeight(*(a1 + 64)) * 0.5;
  [*(a1 + 40) ck_setPositionY:v2];
  v3 = [*(a1 + 32) backdropView];
  [v3 ck_setPositionY:v2];

  v4 = [*(a1 + 32) blurBackgroundView];
  [v4 ck_setPositionY:v2];
}

void __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_5(uint64_t a1)
{
  v2 = CGRectGetWidth(*(a1 + 40)) * 0.5;
  v3 = [*(a1 + 32) plusButton];
  [v3 ck_setPositionX:v2];
}

void __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_6(uint64_t a1)
{
  v2 = CGRectGetHeight(*(a1 + 40)) * 0.5;
  v3 = [*(a1 + 32) plusButton];
  [v3 ck_setPositionY:v2];
}

void __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) plusButton];
  [v1 ck_setScaleX:8.1];
}

void __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_8(uint64_t a1)
{
  v1 = [*(a1 + 32) plusButton];
  [v1 ck_setScaleY:16.6];
}

void __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) plusButton];
  [v2 setBackgroundBlurRadiusLightMode:4.0];

  v3 = [*(a1 + 32) plusButton];
  [v3 setBackgroundBlurRadiusDarkMode:4.0];
}

void __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_10(uint64_t a1)
{
  v1 = [*(a1 + 32) plusButton];
  [v1 setAlpha:0.0];
}

uint64_t __98__CKSendMenuPresentationPopoverView_animationForPresentingInitialViewWithFinalBounds_finalCenter___block_invoke_11(uint64_t a1)
{
  v2 = CGRectGetWidth(*(a1 + 56)) * 0.5;
  if (v2 <= 40.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 40.0;
  }

  v4 = [*(a1 + 40) sendMenuPresentPopoverBackdropViewBackgroundColor];
  v5 = [*(a1 + 32) backdropView];
  [v5 setBackgroundColor:v4];

  v6 = [*(a1 + 32) backdropView];
  v7 = [v6 layer];
  [v7 setCornerRadius:v3];

  [*(a1 + 48) setAlpha:1.0];
  [*(a1 + 48) setUserInteractionEnabled:1];
  v8 = [*(a1 + 40) sendMenuPresentPopoverEffect];
  v9 = [*(a1 + 32) blurBackgroundView];
  [v9 setEffect:v8];

  v10 = [*(a1 + 32) blurBackgroundView];
  v11 = [v10 layer];
  [v11 setMasksToBounds:1];

  v12 = [*(a1 + 32) blurBackgroundView];
  v13 = [v12 layer];
  [v13 setCornerRadius:v3];

  v14 = [*(a1 + 32) blurBackgroundView];
  [v14 setClipsToBounds:1];

  v15 = *(a1 + 32);

  return [v15 setNeedsLayout];
}

- (id)animationForTransitioningToAppViewWithFinalBounds:(CGRect)a3 finalCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v7 = a3.origin.y;
  v8 = a3.origin.x;
  v34[5] = *MEMORY[0x1E69E9840];
  v10 = +[CKUIBehavior sharedBehaviors];
  v36.origin.x = v8;
  v36.origin.y = v7;
  v36.size.width = width;
  v36.size.height = height;
  v11 = CGRectGetWidth(v36);
  v12 = [(CKSendMenuPresentationPopoverView *)self sendMenuView];
  [v12 bounds];
  v13 = v11 / CGRectGetWidth(v37);

  v38.origin.x = v8;
  v38.origin.y = v7;
  v38.size.width = width;
  v38.size.height = height;
  v14 = CGRectGetHeight(v38);
  v15 = [(CKSendMenuPresentationPopoverView *)self sendMenuView];
  [v15 bounds];
  v16 = v14 / CGRectGetHeight(v39);

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke;
  v33[3] = &unk_1E72EC7B0;
  v33[4] = self;
  *&v33[5] = v8;
  *&v33[6] = v7;
  *&v33[7] = width;
  *&v33[8] = height;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v33];
  v17 = [v10 newSendMenuPresentAppInPopoverWidthAnimator];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_2;
  v32[3] = &unk_1E72F3A48;
  *&v32[5] = v8;
  *&v32[6] = v7;
  *&v32[7] = width;
  *&v32[8] = height;
  v32[4] = self;
  *&v32[9] = v13;
  [v17 addAnimations:v32 delayFactor:0.0];
  v18 = [v10 newSendMenuPresentAppInPopoverHeightAnimator];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_3;
  v31[3] = &unk_1E72F3A48;
  *&v31[5] = v8;
  *&v31[6] = v7;
  *&v31[7] = width;
  *&v31[8] = height;
  v31[4] = self;
  *&v31[9] = v16;
  [v18 addAnimations:v31];
  v19 = [v10 newSendMenuPresentAppInPopoverCenterXAnimator];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_4;
  v30[3] = &unk_1E72ECB00;
  v30[4] = self;
  *&v30[5] = x;
  *&v30[6] = y;
  *&v30[7] = v8;
  *&v30[8] = v7;
  *&v30[9] = width;
  *&v30[10] = height;
  [v19 addAnimations:v30 delayFactor:0.0];
  v20 = [v10 newSendMenuPresentAppInPopoverOpacityAnimator];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_5;
  v29[3] = &unk_1E72ECB00;
  *&v29[5] = v8;
  *&v29[6] = v7;
  *&v29[7] = width;
  *&v29[8] = height;
  v29[4] = self;
  *&v29[9] = x;
  *&v29[10] = y;
  [v20 addAnimations:v29];
  v21 = [v10 newSendMenuPresentAppInPopoverOpacityAnimator];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_6;
  v27[3] = &unk_1E72EB8D0;
  v27[4] = self;
  v28 = v10;
  v22 = v10;
  [v21 addAnimations:v27];
  v34[0] = v18;
  v34[1] = v17;
  v34[2] = v19;
  v34[3] = v20;
  v34[4] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
  v24 = [[CKSendMenuPopoverAnimation alloc] initWithAnimators:v23];

  return v24;
}

void __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) appView];
  [v6 setBounds:{v2, v3, v4, v5}];

  v7 = [*(a1 + 32) sendMenuView];
  [v7 center];
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) appView];
  [v12 setCenter:{v9, v11}];

  v13 = [*(a1 + 32) appView];
  [v13 setNeedsLayout];

  v14 = [*(a1 + 32) appView];
  [v14 layoutIfNeeded];

  v15 = [*(a1 + 32) appView];
  [v15 setAlpha:0.0];

  [*(a1 + 32) bounds];
  Width = CGRectGetWidth(v25);
  v17 = [*(a1 + 32) appView];
  [v17 bounds];
  v18 = Width / CGRectGetWidth(v26);

  [*(a1 + 32) bounds];
  Height = CGRectGetHeight(v27);
  v20 = [*(a1 + 32) appView];
  [v20 bounds];
  v21 = Height / CGRectGetHeight(v28);

  v22 = [*(a1 + 32) appView];
  [v22 ck_setScaleX:v18];

  v23 = [*(a1 + 32) appView];
  [v23 ck_setScaleY:v21];
}

void __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_2(uint64_t a1)
{
  Width = CGRectGetWidth(*(a1 + 40));
  [*(a1 + 32) ck_setBoundsWidth:?];
  v3 = [*(a1 + 32) backdropView];
  [v3 ck_setBoundsWidth:Width];

  v4 = [*(a1 + 32) appView];
  [v4 ck_setScaleX:1.0];

  v5 = *(a1 + 72);
  v6 = [*(a1 + 32) sendMenuView];
  [v6 ck_setScaleX:v5];

  v7 = CGRectGetWidth(*(a1 + 40));
  Height = CGRectGetHeight(*(a1 + 40));
  v9 = [*(a1 + 32) blurBackgroundView];
  [v9 setFrame:{0.0, 0.0, v7, Height}];
}

void __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_3(uint64_t a1)
{
  Height = CGRectGetHeight(*(a1 + 40));
  [*(a1 + 32) ck_setBoundsHeight:?];
  v3 = *(a1 + 72);
  v4 = [*(a1 + 32) sendMenuView];
  [v4 ck_setScaleY:v3];

  v5 = [*(a1 + 32) appView];
  [v5 ck_setScaleY:1.0];

  v6 = [*(a1 + 32) backdropView];
  [v6 ck_setBoundsHeight:Height];
}

void __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) ck_setPositionX:*(a1 + 40)];
  v2 = CGRectGetWidth(*(a1 + 56)) * 0.5;
  v3 = [*(a1 + 32) appView];
  [v3 ck_setPositionX:v2];

  v4 = [*(a1 + 32) sendMenuView];
  [v4 ck_setPositionX:v2];

  v5 = [*(a1 + 32) backdropView];
  [v5 ck_setPositionX:v2];
}

void __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_5(uint64_t a1)
{
  v2 = CGRectGetHeight(*(a1 + 40)) * 0.5;
  [*(a1 + 32) ck_setPositionY:*(a1 + 80)];
  v3 = [*(a1 + 32) backdropView];
  [v3 ck_setPositionY:v2];

  v4 = [*(a1 + 32) sendMenuView];
  [v4 ck_setPositionY:v2];

  v5 = [*(a1 + 32) appView];
  [v5 ck_setPositionY:v2];
}

void __99__CKSendMenuPresentationPopoverView_animationForTransitioningToAppViewWithFinalBounds_finalCenter___block_invoke_6(uint64_t a1)
{
  [*(a1 + 40) sendMenuPopoverPresentingAppCornerRadius];
  v3 = v2;
  v4 = [*(a1 + 32) backdropView];
  v5 = [v4 layer];
  [v5 setCornerRadius:v3];

  [*(a1 + 40) sendMenuPopoverPresentingAppCornerRadius];
  v7 = v6;
  v8 = [*(a1 + 32) blurBackgroundView];
  v9 = [v8 layer];
  [v9 setCornerRadius:v7];

  v10 = [*(a1 + 32) appView];
  [v10 setAlpha:1.0];

  v11 = [*(a1 + 32) sendMenuView];
  [v11 setAlpha:0.0];
}

- (id)animationForTransitioningToNewSize:(CGSize)a3 center:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 newSendMenuPresentAppInPopoverOpacityAnimator];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CKSendMenuPresentationPopoverView_animationForTransitioningToNewSize_center___block_invoke;
  v14[3] = &unk_1E72EC7B0;
  v14[4] = self;
  *&v14[5] = width;
  *&v14[6] = height;
  *&v14[7] = x;
  *&v14[8] = y;
  [v10 addAnimations:v14];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [[CKSendMenuPopoverAnimation alloc] initWithAnimators:v11];

  return v12;
}

uint64_t __79__CKSendMenuPresentationPopoverView_animationForTransitioningToNewSize_center___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBounds:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);

  return [v4 setCenter:{v2, v3}];
}

- (void)prepareForPresentation
{
  sendMenuView = self->_sendMenuView;
  if (!sendMenuView)
  {
    sendMenuView = self->_appView;
  }

  v4 = sendMenuView;
  [(UIView *)v4 bounds];
  v6 = v5;
  v8 = v7;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v9 = objc_opt_class();
  [(CKSendMenuPresentationPopoverView *)self bounds];
  if (v9)
  {
    [v9 affineTransformToDownScaleSize:v10 toSize:{v11, v6, v8}];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
  }

  v25 = v28;
  v26 = v29;
  v27 = v30;
  [(UIView *)v4 setTransform:&v25];
  [(CKSendMenuPresentationPopoverView *)self bounds];
  v13 = v12 * 0.5;
  [(CKSendMenuPresentationPopoverView *)self bounds];
  [(UIView *)v4 setCenter:v13, v14 * 0.5];

  [(CKSendMenuPresentationPopoverView *)self bounds];
  v15 = CGRectGetWidth(v31) * 0.5;
  v16 = [(CKSendMenuPresentationPopoverView *)self backdropView];
  v17 = [v16 layer];
  [v17 setCornerRadius:v15];

  v18 = [(CKSendMenuPresentationPopoverView *)self plusButton];
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  v25 = *MEMORY[0x1E695EFD0];
  v26 = v19;
  v27 = *(MEMORY[0x1E695EFD0] + 32);
  [v18 setTransform:&v25];

  v20 = +[CKUIBehavior sharedBehaviors];
  v21 = [v20 entryViewPlusButtonDefaultBackgroundColor];
  v22 = [(CKSendMenuPresentationPopoverView *)self backdropView];
  [v22 setBackgroundColor:v21];

  v23 = [(CKSendMenuPresentationPopoverView *)self backdropView];
  [v23 setHidden:0];

  v24 = [(CKSendMenuPresentationPopoverView *)self backdropView];
  [v24 setAlpha:1.0];
}

+ (CGAffineTransform)affineTransformToDownScaleSize:(SEL)a3 toSize:(CGSize)a4
{
  v5 = a4.width / a5.width;
  v6 = a4.height / a5.height;
  if (v5 >= v6)
  {
    v5 = v6;
  }

  return CGAffineTransformMakeScale(retstr, v5, v5);
}

@end