@interface CAMBottomBar
+ (BOOL)shouldUseSafeAreaInsetForLayoutStyle:(int64_t)a3 traitCollection:(id)a4;
+ (CGRect)shutterButtonAlignmentRectInBounds:(CGRect)a3 forLayoutStyle:(int64_t)a4 traitCollection:(id)a5 safeAreaInsets:(UIEdgeInsets)a6;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CAMBottomBar)initWithCoder:(id)a3;
- (CAMBottomBar)initWithFrame:(CGRect)a3;
- (CAMBottomBar)initWithLayoutStyle:(int64_t)a3;
- (CAMControlVisibilityUpdateDelegate)visibilityUpdateDelegate;
- (CGRect)collapsedFrameForMenuButton:(id)a3;
- (CGRect)expandedFrameForMenuButton:(id)a3;
- (double)_opacityForBackgroundStyle:(int64_t)a3;
- (id)_currentMenuButtons;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (id)touchingRecognizersToCancel;
- (void)_commonCAMBottomBarInitializationInitWithLayoutStyle:(int64_t)a3;
- (void)_ensureSubviewOrdering;
- (void)_iterateViewsInHUDManager:(id)a3 forHUDItem:(id)a4;
- (void)_layoutDoneButtonForLayoutStyle:(int64_t)a3;
- (void)_layoutFlipButtonForLayoutStyle:(int64_t)a3;
- (void)_layoutImageWellForLayoutStyle:(int64_t)a3;
- (void)_layoutMenuButtons:(id)a3 apply:(BOOL)a4 withExpandedMenuButton:(id)a5 collapsingMenuButton:(id)a6 collapsingFrame:(CGRect *)a7;
- (void)_layoutModeDialForLayoutStyle:(int64_t)a3;
- (void)_layoutReviewButtonForLayoutStyle:(int64_t)a3;
- (void)_layoutShutterButtonForLayoutStyle:(int64_t)a3;
- (void)_layoutStillDuringVideoButtonForLayoutStyle:(int64_t)a3;
- (void)_layoutUtilityBarForLayoutStyle:(int64_t)a3;
- (void)_updateControlVisibilityAnimated:(BOOL)a3;
- (void)_updateFlipButtonTappableEdgeInsets;
- (void)_updateImageWellTappableEdgeInsets;
- (void)collapseMenuButton:(id)a3 animated:(BOOL)a4;
- (void)expandMenuButton:(id)a3 animated:(BOOL)a4;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)setApertureButton:(id)a3;
- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setDoneButton:(id)a3;
- (void)setFlashButton:(id)a3;
- (void)setFlipButton:(id)a3;
- (void)setHDRButton:(id)a3;
- (void)setImageAnalysisButton:(id)a3;
- (void)setImageAnalysisButtonBackgroundOverlay:(id)a3;
- (void)setImageWell:(id)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setLivePhotoButton:(id)a3;
- (void)setModeDial:(id)a3;
- (void)setReviewButton:(id)a3;
- (void)setSharedLibraryButton:(id)a3;
- (void)setShutterButton:(id)a3;
- (void)setStillDuringVideoButton:(id)a3;
- (void)setTimerButton:(id)a3;
- (void)setUtilityBar:(id)a3;
- (void)setUtilityBarExtensionDistance:(double)a3;
@end

@implementation CAMBottomBar

- (void)_updateFlipButtonTappableEdgeInsets
{
  v3 = 5.0;
  if (([objc_opt_class() wantsVerticalBarForLayoutStyle:{-[CAMBottomBar layoutStyle](self, "layoutStyle")}] & 1) == 0)
  {
    [(CAMBottomBar *)self _shouldReverseLayoutDirection];
    v3 = 11.0;
  }

  v4 = [(CAMBottomBar *)self flipButton];
  [v4 setTappableEdgeInsets:{v3, 11.0, v3, 11.0}];
}

- (void)_ensureSubviewOrdering
{
  v3 = [(CAMBottomBar *)self utilityBar];
  [(CAMBottomBar *)self bringSubviewToFront:v3];
}

- (void)_updateImageWellTappableEdgeInsets
{
  v3 = 11.0;
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:{-[CAMBottomBar layoutStyle](self, "layoutStyle")}])
  {
    v4 = 5.0;
    v5 = 11.0;
    v3 = 5.0;
    v6 = 11.0;
  }

  else
  {
    v7 = [(CAMBottomBar *)self _shouldReverseLayoutDirection];
    v4 = 0.0;
    if (v7)
    {
      v5 = 15.0;
    }

    else
    {
      v5 = 0.0;
    }

    if (v7)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 15.0;
    }
  }

  v8 = [(CAMBottomBar *)self imageWell];
  [v8 setTappableEdgeInsets:{v4, v6, v3, v5}];
}

- (void)layoutSubviews
{
  v45 = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = CAMBottomBar;
  [(CAMBottomBar *)&v43 layoutSubviews];
  [(CAMBottomBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMBottomBar *)self backgroundView];
  [v11 setFrame:{v4, v6, v8, v10}];
  [(CAMBottomBar *)self _opacityForBackgroundStyle:[(CAMBottomBar *)self backgroundStyle]];
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v12];
  [v11 setBackgroundColor:v13];

  v14 = [(CAMBottomBar *)self layoutStyle];
  [(CAMBottomBar *)self _layoutShutterButtonForLayoutStyle:v14];
  [(CAMBottomBar *)self _layoutStillDuringVideoButtonForLayoutStyle:v14];
  [(CAMBottomBar *)self _layoutImageWellForLayoutStyle:v14];
  [(CAMBottomBar *)self _layoutReviewButtonForLayoutStyle:v14];
  [(CAMBottomBar *)self _layoutModeDialForLayoutStyle:v14];
  [(CAMBottomBar *)self _layoutFlipButtonForLayoutStyle:v14];
  [(CAMBottomBar *)self _layoutUtilityBarForLayoutStyle:v14];
  [(CAMBottomBar *)self _layoutDoneButtonForLayoutStyle:v14];
  v15 = [(CAMBottomBar *)self _currentMenuButtons];
  v16 = [(CAMBottomBar *)self _expandedMenuButton];
  [(CAMBottomBar *)self _layoutMenuButtons:v15 apply:1 withExpandedMenuButton:v16 collapsingMenuButton:0 collapsingFrame:0];

  v17 = +[CAMCaptureCapabilities capabilities];
  LODWORD(v16) = [v17 isFrontCameraOnRightEdge];

  v18 = [objc_opt_class() wantsVerticalBarForLayoutStyle:v14];
  v19 = [(CAMBottomBar *)self superview];
  [v19 bounds];
  v21 = v20;
  v23 = v22;

  if (v16)
  {
    if (v18)
    {
      if (v23 > v21)
      {
        v24 = [(CAMBottomBar *)self modeDial];

        if (v24)
        {
          v46.origin.x = v4;
          v46.origin.y = v6;
          v46.size.width = v8;
          v46.size.height = v10;
          MaxY = CGRectGetMaxY(v46);
          v26 = [(CAMBottomBar *)self modeDial];
          [v26 frame];
          v27 = MaxY - CGRectGetMaxY(v47);

          if (v27 >= 84.0)
          {
            v38 = v11;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v28 = [(CAMBottomBar *)self subviews];
            v29 = [v28 countByEnumeratingWithState:&v39 objects:v44 count:16];
            if (!v29)
            {
              goto LABEL_19;
            }

            v30 = v29;
            v31 = *v40;
            while (1)
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v40 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v39 + 1) + 8 * i);
                v34 = [(CAMBottomBar *)self backgroundView];
                if (v33 == v34)
                {
                  goto LABEL_16;
                }

                v35 = [(CAMBottomBar *)self reviewButton];
                v36 = v35;
                if (v33 == v35)
                {

LABEL_16:
                  continue;
                }

                v37 = [(CAMBottomBar *)self doneButton];

                if (v33 != v37)
                {
                  [v33 center];
                  [v33 setCenter:?];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v39 objects:v44 count:16];
              if (!v30)
              {
LABEL_19:

                v11 = v38;
                break;
              }
            }
          }
        }
      }
    }
  }
}

- (id)_currentMenuButtons
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (self->_imageAnalysisButton)
  {
    [v3 addObject:?];
  }

  if (self->_livePhotoButton)
  {
    [v4 addObject:?];
  }

  if (self->_HDRButton)
  {
    [v4 addObject:?];
  }

  if (self->_timerButton)
  {
    [v4 addObject:?];
  }

  if (self->_flashButton)
  {
    [v4 addObject:?];
  }

  if (self->_sharedLibraryButton)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (void)_commonCAMBottomBarInitializationInitWithLayoutStyle:(int64_t)a3
{
  self->_layoutStyle = a3;
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  [(UIView *)self->_backgroundView setAutoresizingMask:18];
  [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
  v7 = self->_backgroundView;

  [(CAMBottomBar *)self addSubview:v7];
}

- (CAMBottomBar)initWithLayoutStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMBottomBar;
  v4 = [(CAMBottomBar *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMBottomBar *)v4 _commonCAMBottomBarInitializationInitWithLayoutStyle:a3];
    v6 = v5;
  }

  return v5;
}

- (CAMBottomBar)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMBottomBar *)self initWithLayoutStyle:v5];
}

- (CAMBottomBar)initWithCoder:(id)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMBottomBar *)self initWithLayoutStyle:v5];
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(CAMBottomBar *)self _updateImageWellTappableEdgeInsets];
    [(CAMBottomBar *)self _updateFlipButtonTappableEdgeInsets];

    [(CAMBottomBar *)self setNeedsLayout];
  }
}

- (void)setShutterButton:(id)a3
{
  v5 = a3;
  shutterButton = self->_shutterButton;
  if (shutterButton != v5)
  {
    v7 = v5;
    [(CUShutterButton *)shutterButton removeFromSuperview];
    objc_storeStrong(&self->_shutterButton, a3);
    shutterButton = [(CAMBottomBar *)self addSubview:self->_shutterButton];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](shutterButton, v5);
}

- (void)setStillDuringVideoButton:(id)a3
{
  v5 = a3;
  stillDuringVideoButton = self->_stillDuringVideoButton;
  if (stillDuringVideoButton != v5)
  {
    v7 = v5;
    [(CUShutterButton *)stillDuringVideoButton removeFromSuperview];
    objc_storeStrong(&self->_stillDuringVideoButton, a3);
    stillDuringVideoButton = [(CAMBottomBar *)self addSubview:self->_stillDuringVideoButton];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](stillDuringVideoButton, v5);
}

- (void)setModeDial:(id)a3
{
  v5 = a3;
  modeDial = self->_modeDial;
  if (modeDial != v5)
  {
    v7 = v5;
    [(CAMModeDial *)modeDial removeFromSuperview];
    objc_storeStrong(&self->_modeDial, a3);
    [(CAMBottomBar *)self addSubview:v7];
    modeDial = [(CAMBottomBar *)self _ensureSubviewOrdering];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](modeDial, v5);
}

- (void)setImageWell:(id)a3
{
  v5 = a3;
  imageWell = self->_imageWell;
  if (imageWell != v5)
  {
    v7 = v5;
    [(CAMImageWell *)imageWell removeFromSuperview];
    objc_storeStrong(&self->_imageWell, a3);
    [(CAMBottomBar *)self _updateImageWellTappableEdgeInsets];
    imageWell = [(CAMBottomBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](imageWell, v5);
}

- (void)setReviewButton:(id)a3
{
  v5 = a3;
  reviewButton = self->_reviewButton;
  if (reviewButton != v5)
  {
    v7 = v5;
    [(UIButton *)reviewButton removeFromSuperview];
    objc_storeStrong(&self->_reviewButton, a3);
    reviewButton = [(CAMBottomBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](reviewButton, v5);
}

- (void)setDoneButton:(id)a3
{
  v5 = a3;
  doneButton = self->_doneButton;
  if (doneButton != v5)
  {
    v7 = v5;
    [(PUReviewScreenDoneButton *)doneButton removeFromSuperview];
    objc_storeStrong(&self->_doneButton, a3);
    doneButton = [(CAMBottomBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](doneButton, v5);
}

- (void)setFlipButton:(id)a3
{
  v5 = a3;
  flipButton = self->_flipButton;
  if (flipButton != v5)
  {
    v7 = v5;
    [(CAMFlipButton *)flipButton removeFromSuperview];
    objc_storeStrong(&self->_flipButton, a3);
    [(CAMBottomBar *)self _updateFlipButtonTappableEdgeInsets];
    flipButton = [(CAMBottomBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](flipButton, v5);
}

- (void)setFlashButton:(id)a3
{
  v5 = a3;
  flashButton = self->_flashButton;
  if (flashButton != v5)
  {
    v7 = v5;
    [(CAMExpandableMenuButton *)flashButton setExpandableMenuDelegate:0];
    [(CAMFlashButton *)self->_flashButton removeFromSuperview];
    objc_storeStrong(&self->_flashButton, a3);
    [(CAMExpandableMenuButton *)self->_flashButton setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)self->_flashButton setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    flashButton = [(CAMBottomBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](flashButton, v5);
}

- (void)setHDRButton:(id)a3
{
  v5 = a3;
  HDRButton = self->_HDRButton;
  if (HDRButton != v5)
  {
    v7 = v5;
    [(CAMExpandableMenuButton *)HDRButton setExpandableMenuDelegate:0];
    [(CAMHDRButton *)self->_HDRButton removeFromSuperview];
    objc_storeStrong(&self->_HDRButton, a3);
    [(CAMExpandableMenuButton *)self->_HDRButton setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)self->_HDRButton setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    HDRButton = [(CAMBottomBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](HDRButton, v5);
}

- (void)setTimerButton:(id)a3
{
  v5 = a3;
  timerButton = self->_timerButton;
  if (timerButton != v5)
  {
    v7 = v5;
    [(CAMExpandableMenuButton *)timerButton setExpandableMenuDelegate:0];
    [(CAMTimerButton *)self->_timerButton removeFromSuperview];
    objc_storeStrong(&self->_timerButton, a3);
    [(CAMExpandableMenuButton *)self->_timerButton setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)self->_timerButton setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    timerButton = [(CAMBottomBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](timerButton, v5);
}

- (void)setLivePhotoButton:(id)a3
{
  v5 = a3;
  livePhotoButton = self->_livePhotoButton;
  if (livePhotoButton != v5)
  {
    v7 = v5;
    [(CAMLivePhotoButton *)livePhotoButton removeFromSuperview];
    [(CAMExpandableMenuButton *)self->_livePhotoButton setExpandableMenuDelegate:0];
    objc_storeStrong(&self->_livePhotoButton, a3);
    [(CAMExpandableMenuButton *)v7 setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)v7 setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    livePhotoButton = [(CAMBottomBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](livePhotoButton, v5);
}

- (void)setSharedLibraryButton:(id)a3
{
  v5 = a3;
  sharedLibraryButton = self->_sharedLibraryButton;
  if (sharedLibraryButton != v5)
  {
    v7 = v5;
    [(CAMSharedLibraryButton *)sharedLibraryButton removeFromSuperview];
    [(CAMExpandableMenuButton *)self->_sharedLibraryButton setExpandableMenuDelegate:0];
    objc_storeStrong(&self->_sharedLibraryButton, a3);
    [(CAMExpandableMenuButton *)v7 setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)v7 setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    sharedLibraryButton = [(CAMBottomBar *)self addSubview:v7];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](sharedLibraryButton, v5);
}

- (void)setApertureButton:(id)a3
{
  v5 = a3;
  apertureButton = self->_apertureButton;
  if (apertureButton != v5)
  {
    v9 = v5;
    v7 = [(CEKApertureButton *)apertureButton superview];

    if (v7 == self)
    {
      [(CEKApertureButton *)self->_apertureButton removeFromSuperview];
    }

    v8 = [(CEKApertureButton *)self->_apertureButton delegate];

    if (v8 == self)
    {
      [(CEKApertureButton *)self->_apertureButton setDelegate:0];
    }

    objc_storeStrong(&self->_apertureButton, a3);
    [(CEKApertureButton *)v9 setDelegate:self];
    [(CEKApertureButton *)v9 setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    apertureButton = [(CAMBottomBar *)self addSubview:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](apertureButton, v5);
}

- (void)setImageAnalysisButton:(id)a3
{
  v5 = a3;
  imageAnalysisButton = self->_imageAnalysisButton;
  if (imageAnalysisButton != v5)
  {
    v9 = v5;
    v7 = [(CAMImageAnalysisButton *)imageAnalysisButton superview];

    if (v7 == self)
    {
      [(CAMImageAnalysisButton *)self->_imageAnalysisButton removeFromSuperview];
    }

    objc_storeStrong(&self->_imageAnalysisButton, a3);
    [(VKImageAnalysisButton *)v9 setBackgroundDiameter:44.0];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    [(VKImageAnalysisButton *)v9 setCameraModeBackgroundColor:v8];

    imageAnalysisButton = [(CAMBottomBar *)self addSubview:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](imageAnalysisButton, v5);
}

- (void)setImageAnalysisButtonBackgroundOverlay:(id)a3
{
  v5 = a3;
  imageAnalysisButtonBackgroundOverlay = self->_imageAnalysisButtonBackgroundOverlay;
  if (imageAnalysisButtonBackgroundOverlay != v5)
  {
    v9 = v5;
    v7 = [(UIView *)imageAnalysisButtonBackgroundOverlay superview];

    if (v7 == self)
    {
      [(UIView *)self->_imageAnalysisButtonBackgroundOverlay removeFromSuperview];
    }

    objc_storeStrong(&self->_imageAnalysisButtonBackgroundOverlay, a3);
    v8 = [(CAMBottomBar *)self imageAnalysisButton];
    [(CAMBottomBar *)self insertSubview:v9 belowSubview:v8];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](imageAnalysisButtonBackgroundOverlay, v5);
}

- (void)_updateControlVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMBottomBar *)self visibilityUpdateDelegate];
  [v4 updateControlVisibilityAnimated:v3];
}

- (void)setUtilityBar:(id)a3
{
  v5 = a3;
  utilityBar = self->_utilityBar;
  if (utilityBar != v5)
  {
    v7 = v5;
    [(CAMUtilityBar *)utilityBar removeFromSuperview];
    objc_storeStrong(&self->_utilityBar, a3);
    [(CAMBottomBar *)self addSubview:v7];
    utilityBar = [(CAMBottomBar *)self _ensureSubviewOrdering];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](utilityBar, v5);
}

- (void)setUtilityBarExtensionDistance:(double)a3
{
  if (self->_utilityBarExtensionDistance != a3)
  {
    self->_utilityBarExtensionDistance = a3;
    [(CAMBottomBar *)self setNeedsLayout];
  }
}

+ (CGRect)shutterButtonAlignmentRectInBounds:(CGRect)a3 forLayoutStyle:(int64_t)a4 traitCollection:(id)a5 safeAreaInsets:(UIEdgeInsets)a6
{
  bottom = a6.bottom;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a5;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  CGRectGetHeight(v36);
  [v13 displayScale];
  v31 = v14;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  CAMShutterButtonSpecForLayoutStyle(a4, v34);
  v15 = 0.0;
  UIRectCenteredIntegralRectScale();
  v32 = v17;
  v33 = v16;
  v19 = v18;
  v21 = v20;
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:{a4, 0}])
  {
    goto LABEL_16;
  }

  v30 = bottom;
  if (a4 < 3)
  {
    v22 = 1.0 / v31 + 23.0;
    v23 = 4.0;
LABEL_7:
    UIRoundToScale();
    v15 = v24;
    goto LABEL_8;
  }

  if (a4 == 3)
  {
    v23 = 0.0;
    v22 = 1.79769313e308;
    goto LABEL_7;
  }

  v22 = 1.79769313e308;
  v23 = 0.0;
LABEL_8:
  if (v22 >= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = v22;
  }

  if (v25 >= v23)
  {
    v23 = v25;
  }

  if (([a1 shouldUseSafeAreaInsetForLayoutStyle:a4 traitCollection:v13] & (v23 < v30)) != 0)
  {
    v23 = v30;
  }

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v19 = CGRectGetMaxY(v37) - v23 - v21;
LABEL_16:

  v27 = v32;
  v26 = v33;
  v28 = v19;
  v29 = v21;
  result.size.height = v29;
  result.size.width = v27;
  result.origin.y = v28;
  result.origin.x = v26;
  return result;
}

+ (BOOL)shouldUseSafeAreaInsetForLayoutStyle:(int64_t)a3 traitCollection:(id)a4
{
  v6 = a4;
  v7 = [a1 wantsVerticalBarForLayoutStyle:a3];
  v8 = [v6 verticalSizeClass];

  if (v8 == 2)
  {
    return v7 ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)_layoutShutterButtonForLayoutStyle:(int64_t)a3
{
  [(CAMBottomBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v41 = [(CAMBottomBar *)self shutterButton];
  v13 = objc_opt_class();
  v14 = [(CAMBottomBar *)self traitCollection];
  [(CAMBottomBar *)self safeAreaInsets];
  [v13 shutterButtonAlignmentRectInBounds:a3 forLayoutStyle:v14 traitCollection:v6 safeAreaInsets:{v8, v10, v12, v15, v16, v17, v18}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:a3])
  {
    v43.origin.x = v20;
    v43.origin.y = v22;
    v43.size.width = v24;
    v43.size.height = v26;
    MinX = CGRectGetMinX(v43);
    if (MinX < 0.0)
    {
      MinX = 0.0;
    }

    v44.size.height = v12;
    v28 = 25.0;
    v44.size.width = v10;
    v29 = v26;
    v30 = v24;
    v31 = v22;
    v32 = v20;
    v33 = fmin(MinX, 25.0);
    v44.origin.x = v6;
    v44.origin.y = v8;
    Width = CGRectGetWidth(v44);
    v35 = v32;
    v45.origin.x = v32;
    v22 = v31;
    v24 = v30;
    v26 = v29;
    v45.origin.y = v22;
    v45.size.width = v24;
    v45.size.height = v29;
    v36 = Width - CGRectGetMaxX(v45) + -10.0;
    if (v36 < 0.0)
    {
      v36 = 0.0;
    }

    v37 = fmin(v36, 25.0);
    v38 = 25.0;
  }

  else
  {
    v46.origin.x = v6;
    v46.origin.y = v8;
    v46.size.width = v10;
    v46.size.height = v12;
    Height = CGRectGetHeight(v46);
    v35 = v20;
    v47.origin.x = v20;
    v47.origin.y = v22;
    v47.size.width = v24;
    v47.size.height = v26;
    v40 = Height - CGRectGetMaxY(v47) + -5.0;
    v28 = 0.0;
    if (v40 < 0.0)
    {
      v40 = 0.0;
    }

    v33 = 24.0;
    v38 = fmin(v40, 24.0);
    v37 = 24.0;
  }

  [v41 setTappableEdgeInsets:{v28, v33, v38, v37}];
  [v41 frameForAlignmentRect:{v35, v22, v24, v26}];
  [v41 setFrame:?];
}

- (void)_layoutStillDuringVideoButtonForLayoutStyle:(int64_t)a3
{
  if (([objc_opt_class() wantsVerticalBarForLayoutStyle:a3] & 1) == 0)
  {
    v30 = [(CAMBottomBar *)self stillDuringVideoButton];
    [v30 intrinsicContentSize];
    v5 = v4;
    v6 = [(CAMBottomBar *)self traitCollection];
    [v6 displayScale];
    UIRectIntegralWithScale();
    v8 = v7;
    v10 = v9;

    [(CAMBottomBar *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(CAMBottomBar *)self shutterButton];
    [v19 frame];
    [v19 alignmentRectForFrame:?];
    CGRectGetMidY(v32);
    UIRoundToViewScale();
    v21 = v20;
    v22 = [(CAMBottomBar *)self _shouldReverseLayoutDirection];
    v23 = v12;
    v24 = v14;
    v25 = v16;
    v26 = v18;
    if (v22)
    {
      MinX = CGRectGetMaxX(*&v23) - v5;
      v28 = -15.0;
    }

    else
    {
      MinX = CGRectGetMinX(*&v23);
      v28 = 15.0;
    }

    v29 = MinX + v28;
    [v30 setTappableEdgeInsets:{20.0, 20.0, 20.0, 20.0}];
    [v30 frameForAlignmentRect:{v29, v21, v8, v10}];
    [v30 setFrame:?];
  }
}

- (void)_layoutModeDialForLayoutStyle:(int64_t)a3
{
  [(CAMBottomBar *)self bounds];
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  v50 = CGRectGetWidth(v54);
  v52 = [(CAMBottomBar *)self shutterButton];
  [v52 frame];
  [v52 alignmentRectForFrame:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(CAMBottomBar *)self modeDial];
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:a3])
  {
    v48 = y;
    v51 = width;
    v18 = [(CAMBottomBar *)self imageWell];
    v19 = v18;
    v49 = v16;
    v47 = x;
    v20 = v14;
    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = [(CAMBottomBar *)self shutterButton];
    }

    v27 = v21;
    [v21 frame];
    [v27 alignmentRectForFrame:?];
    v29 = v28;
    v31 = v30;
    v45 = v32;
    v46 = v33;
    v58.origin.x = v10;
    v58.origin.y = v12;
    v34 = v20;
    v58.size.width = v20;
    v58.size.height = v49;
    v35 = CGRectGetWidth(v58);
    [v17 sizeThatFits:{v35, 190.0}];
    if (v35 < v36)
    {
      v35 = v36;
    }

    v59.origin.x = v29;
    v59.origin.y = v31;
    v59.size.width = v45;
    v59.size.height = v46;
    v37 = CGRectGetMaxY(v59) + 30.0;
    v60.origin.x = v10;
    v60.origin.y = v12;
    v60.size.width = v34;
    v60.size.height = v49;
    CGRectGetMidX(v60);
    UIRoundToViewScale();
    v39 = v38;
    v61.origin.x = v47;
    v61.origin.y = v48;
    v61.size.width = v51;
    v61.size.height = height;
    v40 = CGRectGetMaxX(v61) + -10.0;
    v62.origin.x = v39;
    v62.origin.y = v37;
    v62.size.width = v35;
    v62.size.height = 190.0;
    if (v40 < CGRectGetMaxX(v62))
    {
      v63.origin.x = v10;
      v63.origin.y = v12;
      v63.size.width = v34;
      v63.size.height = v49;
      v39 = CGRectGetMaxX(v63) - v35;
    }

    [v17 frameForAlignmentRect:{v39, v37, v35, 190.0, *&v45}];
    v23 = v41;
    MinY = v42;
    v26 = v43;
    v25 = v44;
  }

  else
  {
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    MinX = CGRectGetMinX(v55);
    v56.size.width = width;
    v23 = MinX;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.height = height;
    MinY = CGRectGetMinY(v56);
    v57.origin.x = v10;
    v57.origin.y = v12;
    v57.size.width = v14;
    v57.size.height = v16;
    v25 = CGRectGetMinY(v57);
    v26 = v50;
  }

  [v17 setFrame:{v23, MinY, v26, v25}];
}

- (void)_layoutImageWellForLayoutStyle:(int64_t)a3
{
  [(CAMBottomBar *)self bounds];
  v30 = v5;
  v31 = v6;
  v8 = v7;
  v10 = v9;
  v32 = [(CAMBottomBar *)self shutterButton];
  [v32 frame];
  [v32 alignmentRectForFrame:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CAMBottomBar *)self imageWell];
  LODWORD(a3) = [objc_opt_class() wantsVerticalBarForLayoutStyle:a3];
  [v19 intrinsicContentSize];
  v21 = v20;
  v23 = v22;
  if (a3)
  {
    v34.origin.x = v12;
    v34.origin.y = v14;
    v34.size.width = v16;
    v34.size.height = v18;
    v24 = CGRectGetMaxY(v34) + 30.0;
    v35.origin.x = v12;
    v35.origin.y = v14;
    v35.size.width = v16;
    v35.size.height = v18;
    CGRectGetMidX(v35);
    UIRoundToViewScale();
  }

  else
  {
    rect = v10;
    v36.origin.x = v12;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v18;
    CGRectGetMidY(v36);
    UIRoundToViewScale();
    v24 = v26;
    if ([(CAMBottomBar *)self _shouldReverseLayoutDirection])
    {
      v37.origin.x = v30;
      v37.origin.y = v31;
      v37.size.width = v8;
      v37.size.height = rect;
      MinX = CGRectGetMaxX(v37) - v21;
      v28 = -15.0;
    }

    else
    {
      v38.origin.x = v30;
      v38.origin.y = v31;
      v38.size.width = v8;
      v38.size.height = rect;
      MinX = CGRectGetMinX(v38);
      v28 = 15.0;
    }

    v25 = MinX + v28;
  }

  [v19 frameForAlignmentRect:{v25, v24, v21, v23, *&rect}];
  [v19 setFrame:?];
}

- (void)_layoutReviewButtonForLayoutStyle:(int64_t)a3
{
  [(CAMBottomBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v49 = [(CAMBottomBar *)self reviewButton];
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:a3])
  {
    [v49 intrinsicContentSize];
    UIRectCenteredIntegralRectScale();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v51.origin.x = v6;
    v51.origin.y = v8;
    v51.size.width = v10;
    v51.size.height = v12;
    MaxY = CGRectGetMaxY(v51);
    v52.origin.x = v14;
    v52.origin.y = v16;
    v52.size.width = v18;
    v52.size.height = v20;
    [v49 frameForAlignmentRect:{v14, MaxY - CGRectGetHeight(v52) + -31.0, v18, v20, 0}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v30 = [(CAMBottomBar *)self _shouldReverseLayoutDirection];
    [v49 intrinsicContentSize];
    v48 = v12;
    v32 = v31;
    v33 = [(CAMBottomBar *)self shutterButton];
    [v33 frame];
    [v33 alignmentRectForFrame:?];
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
    CGRectGetMidX(v53);
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    MidY = CGRectGetMidY(v54);
    UIRectCenteredIntegralRectScale();
    v39 = v55.size.width;
    v40 = v55.size.height;
    CGRectGetHeight(v55);
    UIRoundToViewScale();
    v42 = MidY - v41;
    v43 = 15.0;
    if (v30)
    {
      v56.origin.x = v6;
      v56.origin.y = v8;
      v56.size.width = v10;
      v56.size.height = v48;
      v43 = CGRectGetMaxX(v56) - v32 + -15.0;
    }

    [v49 frameForAlignmentRect:{v43, v42, v39, v40, 0}];
    v23 = v44;
    v25 = v45;
    v27 = v46;
    v29 = v47;
  }

  [v49 setFrame:{v23, v25, v27, v29}];
}

- (void)_layoutDoneButtonForLayoutStyle:(int64_t)a3
{
  [(CAMBottomBar *)self bounds];
  v5 = [(CAMBottomBar *)self doneButton];
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:a3])
  {
    CAMPixelWidthForView(self);
    [v5 intrinsicContentSize];
    UIRectCenteredIntegralRectScale();
    [v5 frameForAlignmentRect:0];
    [v5 setFrame:?];
  }
}

- (void)_layoutFlipButtonForLayoutStyle:(int64_t)a3
{
  v4 = [objc_opt_class() wantsVerticalBarForLayoutStyle:a3];
  [(CAMBottomBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v35 = v9;
  v36 = v10;
  v37 = [(CAMBottomBar *)self shutterButton];
  [v37 frame];
  [v37 alignmentRectForFrame:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CAMBottomBar *)self flipButton];
  [v19 intrinsicContentSize];
  v21 = v20;
  v23 = v22;
  if (v4)
  {
    v39.origin.x = v12;
    v39.origin.y = v14;
    v39.size.width = v16;
    v39.size.height = v18;
    CGRectGetMidX(v39);
    UIRoundToViewScale();
    v25 = v24;
    v40.origin.x = v12;
    v40.origin.y = v14;
    v40.size.width = v16;
    v40.size.height = v18;
    v26 = CGRectGetMinY(v40) + -29.0 - v23;
  }

  else
  {
    v41.origin.x = v12;
    v41.origin.y = v14;
    v41.size.width = v16;
    v41.size.height = v18;
    CGRectGetMidY(v41);
    UIRoundToViewScale();
    v26 = v27;
    v28 = [(CAMBottomBar *)self _shouldReverseLayoutDirection];
    v29 = v6;
    v30 = v8;
    v31 = v35;
    v32 = v36;
    if (v28)
    {
      MinX = CGRectGetMinX(*&v29);
      v34 = 20.0;
    }

    else
    {
      MinX = CGRectGetMaxX(*&v29) - v21;
      v34 = -20.0;
    }

    v25 = MinX + v34;
  }

  [v19 frameForAlignmentRect:{v25, v26, v21, v23}];
  [v19 setFrame:?];
}

- (void)_layoutUtilityBarForLayoutStyle:(int64_t)a3
{
  [(CAMBottomBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_class();
  v14 = [(CAMBottomBar *)self layoutStyle];
  v15 = [(CAMBottomBar *)self traitCollection];
  [(CAMBottomBar *)self safeAreaInsets];
  [v13 shutterButtonAlignmentRectInBounds:v14 forLayoutStyle:v15 traitCollection:v6 safeAreaInsets:{v8, v10, v12, v16, v17, v18, v19}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [(CAMBottomBar *)self utilityBarExtensionDistance];
  v29 = v28;
  v30 = [objc_opt_class() wantsVerticalBarForLayoutStyle:a3];
  v31 = -v29;
  v32 = v21;
  v33 = v23;
  v34 = v25;
  v35 = v27;
  if (v30)
  {
    v10 = v29 + CGRectGetMinX(*&v32);
    v36 = 0.0;
  }

  else
  {
    v12 = v29 + CGRectGetMinY(*&v32);
    v36 = -v29;
    v31 = 0.0;
  }

  v37 = [(CAMBottomBar *)self utilityBar];
  [v37 frameForAlignmentRect:{v31, v36, v10, v12}];
  [v37 setFrame:?];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(CAMBottomBar *)self _expandedMenuButton];
  v9 = v8;
  if (v8 && ([v8 frame], v32.x = x, v32.y = y, CGRectContainsPoint(v34, v32)))
  {
    v10 = v9;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = CAMBottomBar;
    v10 = [(CAMBottomBar *)&v28 hitTest:v7 withEvent:x, y];
    if ([(CAMBottomBar *)self backgroundStyle]== 1 && v10 == self)
    {
      [(CAMBottomBar *)self subviews];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v27 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
LABEL_8:
        v15 = 0;
        while (1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
            if (([v17 isEnabled] & 1) == 0)
            {
              [(CAMBottomBar *)self convertPoint:v17 toView:x, y];
              v19 = v18;
              v21 = v20;
              [v17 alpha];
              if (v22 > 0.0)
              {
                [v17 bounds];
                v33.x = v19;
                v33.y = v21;
                if (CGRectContainsPoint(v35, v33))
                {

                  if (v17)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_20;
                }
              }
            }
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
            if (v13)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

LABEL_20:
      v17 = 0;
      v10 = 0;
LABEL_21:
    }
  }

  return v10;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v20.receiver = self;
  v20.super_class = CAMBottomBar;
  v7 = [(CAMBottomBar *)&v20 pointInside:a4 withEvent:?];
  v8 = [(CAMBottomBar *)self _expandedMenuButton];
  v9 = v8;
  if (v8)
  {
    [v8 frame];
    v21.x = x;
    v21.y = y;
    v10 = CGRectContainsPoint(v24, v21);
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CAMBottomBar *)self utilityBar];
  v12 = v11;
  if (!v11 || ([v11 isHidden] & 1) != 0 || (objc_msgSend(v12, "alpha"), v13 <= 0.0))
  {
    v14 = 0;
  }

  else
  {
    [v12 frame];
    v22.x = x;
    v22.y = y;
    v14 = CGRectContainsPoint(v25, v22);
  }

  v15 = [(CAMBottomBar *)self imageAnalysisButtonBackgroundOverlay];
  v16 = v15;
  if (v15)
  {
    if (([v15 isHidden] & 1) != 0 || (objc_msgSend(v16, "alpha"), v17 <= 0.0))
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      [v16 frame];
      v23.x = x;
      v23.y = y;
      LOBYTE(v15) = CGRectContainsPoint(v26, v23);
    }
  }

  if ((v7 | v10))
  {
    v18 = 1;
  }

  else
  {
    v18 = v14 | v15;
  }

  return v18 & 1;
}

- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_backgroundStyle != a3)
  {
    self->_backgroundStyle = a3;
    if (a4)
    {
      [(CAMBottomBar *)self layoutIfNeeded];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __44__CAMBottomBar_setBackgroundStyle_animated___block_invoke;
      v5[3] = &unk_1E76F77B0;
      v5[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v5 options:0 animations:0.3 completion:0.0];
    }

    else
    {

      [(CAMBottomBar *)self setNeedsLayout];
    }
  }
}

uint64_t __44__CAMBottomBar_setBackgroundStyle_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (double)_opacityForBackgroundStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 == 2)
  {
    result = 1.0;
  }

  if (!a3)
  {
    return 0.3;
  }

  return result;
}

- (void)_layoutMenuButtons:(id)a3 apply:(BOOL)a4 withExpandedMenuButton:(id)a5 collapsingMenuButton:(id)a6 collapsingFrame:(CGRect *)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [(CAMBottomBar *)self layoutStyle];
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:v15])
  {
    [(CAMBottomBar *)self bounds];
    [(CAMBottomBar *)self alignmentRectForFrame:?];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v91 = 0;
    v24 = [(CAMBottomBar *)self flipButton];
    v25 = v24;
    if (v24)
    {
      [v24 frame];
      [v25 alignmentRectForFrame:?];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = +[CAMCaptureCapabilities capabilities];
      v35 = [v34 overContentFlipButtonSupported];

      v92.origin.x = v27;
      v92.origin.y = v29;
      v92.size.width = v31;
      v92.size.height = v33;
      MinY = CGRectGetMinY(v92);
      v37 = 29.0;
      if (v35)
      {
        v37 = 10.0;
      }

      v38 = MinY - v37;
    }

    else
    {
      v39 = objc_opt_class();
      [(CAMBottomBar *)self bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v48 = [(CAMBottomBar *)self traitCollection];
      [(CAMBottomBar *)self safeAreaInsets];
      [v39 shutterButtonAlignmentRectInBounds:v15 forLayoutStyle:v48 traitCollection:v41 safeAreaInsets:{v43, v45, v47, v49, v50, v51, v52}];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;

      v93.origin.x = v54;
      v93.origin.y = v56;
      v93.size.width = v58;
      v93.size.height = v60;
      v38 = CGRectGetMinY(v93) + -30.0;
    }

    v89[3] = v38;
    v74 = MEMORY[0x1E69E9820];
    v75 = 3221225472;
    v76 = __101__CAMBottomBar__layoutMenuButtons_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke;
    v77 = &unk_1E76F7C50;
    v82 = v17;
    v83 = v19;
    v84 = v21;
    v85 = v23;
    v78 = v14;
    v81 = &v88;
    v79 = v13;
    v80 = self;
    v86 = a7;
    v87 = v10;
    [v12 enumerateObjectsWithOptions:2 usingBlock:&v74];
    v61 = [(CAMBottomBar *)self apertureButton];
    v62 = v61;
    if (v61)
    {
      [v61 intrinsicContentSize];
      UIRectCenteredIntegralRectScale();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v69 = [v12 lastObject];
      [v69 frame];
      [v69 alignmentRectForFrame:?];
      MaxY = CGRectGetMaxY(v94);
      if (v10)
      {
        v71 = MaxY;
        [v62 setExpansionDirection:2];
        [v62 frameForAlignmentRect:{v64, v71 + 10.0, v66, v68}];
        [v62 setFrame:?];
      }
    }

    v72 = [(CAMBottomBar *)self imageAnalysisButton];
    v73 = v72;
    if (v72 && v10)
    {
      [v72 frame];
      UIRectInset();
      [v73 setFrame:?];
    }

    _Block_object_dispose(&v88, 8);
  }
}

void __101__CAMBottomBar__layoutMenuButtons_apply_withExpandedMenuButton_collapsingMenuButton_collapsingFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v20 = v3;
  if (v4 == v3)
  {
    [v4 intrinsicContentSizeForExpansion:0];
  }

  else
  {
    [v3 intrinsicContentSize];
  }

  UIRectCenteredIntegralRectScale();
  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 24) - v7;
  v13 = *(a1 + 32);
  if (v13 == v20)
  {
    [v13 frameForAlignmentRect:0 expanded:{v5, *(v11 + 24) - v7, v6, v7, 0}];
  }

  else
  {
    [v20 frameForAlignmentRect:{v5, *(v11 + 24) - v7, v6, v7, 0}];
  }

  v18 = v20;
  if (*(a1 + 40) == v20)
  {
    [*(a1 + 48) expandedFrameForMenuButton:?];
    v18 = v20;
  }

  if (*(a1 + 32) == v18)
  {
    v19 = *(a1 + 96);
    if (v19)
    {
      *v19 = v14;
      v19[1] = v15;
      v19[2] = v16;
      v19[3] = v17;
    }
  }

  if (*(a1 + 104) == 1)
  {
    [v20 setFrame:?];
  }

  v22.origin.x = v8;
  v22.origin.y = v12;
  v22.size.width = v9;
  v22.size.height = v10;
  *(*(*(a1 + 56) + 8) + 24) = CGRectGetMinY(v22) + -10.0;
}

- (CGRect)collapsedFrameForMenuButton:(id)a3
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  v11 = *MEMORY[0x1E695F058];
  v12 = v4;
  v5 = a3;
  v6 = [(CAMBottomBar *)self _currentMenuButtons];
  [(CAMBottomBar *)self _layoutMenuButtons:v6 apply:0 withExpandedMenuButton:0 collapsingMenuButton:v5 collapsingFrame:&v11];

  v8 = *(&v11 + 1);
  v7 = *&v11;
  v10 = *(&v12 + 1);
  v9 = *&v12;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)collapseMenuButton:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isExpanded])
  {
    [(CAMBottomBar *)self collapsedFrameForMenuButton:v6];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(CAMBottomBar *)self _setExpandedMenuButton:0];
    v15 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__CAMBottomBar_collapseMenuButton_animated___block_invoke;
    v17[3] = &unk_1E76F7768;
    v16 = v6;
    v18 = v16;
    v19 = v8;
    v20 = v10;
    v21 = v12;
    v22 = v14;
    [v15 performWithoutAnimation:v17];
    [v16 finishCollapsingAnimated:v4];
    [(CAMBottomBar *)self _updateControlVisibilityAnimated:v4];
  }
}

uint64_t __44__CAMBottomBar_collapseMenuButton_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startCollapsingWithProposedFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

- (CGRect)expandedFrameForMenuButton:(id)a3
{
  v4 = a3;
  v5 = [v4 orientation] - 3;
  [(CAMBottomBar *)self bounds];
  [(CAMBottomBar *)self alignmentRectForFrame:?];
  v43 = v7;
  v44 = v6;
  v45 = v8;
  rect = v9;
  [(CAMBottomBar *)self collapsedFrameForMenuButton:v4];
  v11 = v10;
  v13 = v12;
  v46 = v15;
  v47 = v14;
  [v4 alignmentRectForFrame:0 expanded:?];
  v17 = v16;
  MinY = v18;
  v21 = v20;
  v23 = v22;
  [v4 intrinsicContentSizeForExpansion:1];
  v25 = v24;
  v27 = v26;
  v48.origin.x = v17;
  v48.origin.y = MinY;
  v48.size.width = v21;
  v48.size.height = v23;
  MaxX = CGRectGetMaxX(v48);
  if (v5 > 1)
  {
    v30 = MaxX - v25;
  }

  else
  {
    [v4 frame];
    v30 = v29;
    v25 = v31;
    v49.origin.y = v43;
    v49.origin.x = v44;
    v27 = v45;
    v49.size.width = v45;
    v49.size.height = rect;
    MinY = CGRectGetMinY(v49);
  }

  [v4 frameForAlignmentRect:0 expanded:{v30, MinY, v25, v27}];
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  CGRectGetHeight(v50);
  v51.origin.y = v46;
  v51.origin.x = v47;
  v51.size.width = v11;
  v51.size.height = v13;
  CGRectGetHeight(v51);
  UIRoundToViewScale();
  v37 = y - v36;

  v38 = x;
  v39 = v37;
  v40 = width;
  v41 = height;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (void)expandMenuButton:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([v6 isExpanded] & 1) == 0)
  {
    v7 = [(CAMBottomBar *)self _expandedMenuButton];
    v8 = v7;
    if (v7)
    {
      v9 = MEMORY[0x1E69DD250];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __42__CAMBottomBar_expandMenuButton_animated___block_invoke;
      v26[3] = &unk_1E76F7960;
      v26[4] = self;
      v27 = v7;
      [v9 performWithoutAnimation:v26];
    }

    [(CAMBottomBar *)self _setExpandedMenuButton:v6];
    [(CAMBottomBar *)self expandedFrameForMenuButton:v6];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__CAMBottomBar_expandMenuButton_animated___block_invoke_2;
    v20[3] = &unk_1E76F7768;
    v19 = v6;
    v21 = v19;
    v22 = v11;
    v23 = v13;
    v24 = v15;
    v25 = v17;
    [v18 performWithoutAnimation:v20];
    [v19 finishExpansionAnimated:v4];
    [(CAMBottomBar *)self _updateControlVisibilityAnimated:v4];
  }
}

uint64_t __42__CAMBottomBar_expandMenuButton_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) collapsedFrameForMenuButton:*(a1 + 40)];
  [*(a1 + 40) startCollapsingWithProposedFrame:?];
  v2 = *(a1 + 40);

  return [v2 finishCollapsingAnimated:0];
}

uint64_t __42__CAMBottomBar_expandMenuButton_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) startExpansionWithProposedFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

- (id)touchingRecognizersToCancel
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CAMBottomBar *)self _currentMenuButtons];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 touchingGestureRecognizer];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_iterateViewsInHUDManager:(id)a3 forHUDItem:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v8 = [(CAMBottomBar *)self _expandedMenuButton];

  if (v8)
  {
    v9 = [(CAMBottomBar *)self _expandedMenuButton];
    v7[2](v7, v9, &v31);
  }

  else
  {
    v10 = [(CAMBottomBar *)self _currentMenuButtons];
    v11 = [v10 mutableCopy];

    v12 = [(CAMBottomBar *)self modeDial];
    [v11 addObject:v12];

    v13 = [(CAMBottomBar *)self apertureButton];

    if (v13)
    {
      v14 = [(CAMBottomBar *)self apertureButton];
      [v11 addObject:v14];
    }

    v15 = [(CAMBottomBar *)self flipButton];

    if (v15)
    {
      v16 = [(CAMBottomBar *)self flipButton];
      [v11 addObject:v16];
    }

    [v6 locationOfAccessibilityGestureInView:self];
    v18 = v17;
    v20 = v19;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v11;
    v21 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
LABEL_9:
      v24 = 0;
      while (1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v9);
        }

        v25 = *(*(&v27 + 1) + 8 * v24);
        [v25 frame];
        v34.x = v18;
        v34.y = v20;
        if (CGRectContainsPoint(v35, v34))
        {
          if ([v25 conformsToProtocol:&unk_1F16D4378])
          {
            if (([v25 isHidden] & 1) == 0)
            {
              [v25 alpha];
              if (v26 != 0.0)
              {
                v7[2](v7, v25, &v31);
                if (v31)
                {
                  break;
                }
              }
            }
          }
        }

        if (v22 == ++v24)
        {
          v22 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v22)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }
  }
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CAMBottomBar_hudItemForAccessibilityHUDManager___block_invoke;
  v8[3] = &unk_1E76F7C78;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(CAMBottomBar *)self _iterateViewsInHUDManager:v5 forHUDItem:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __50__CAMBottomBar_hudItemForAccessibilityHUDManager___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 hudItemForAccessibilityHUDManager:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CAMBottomBar_selectedByAccessibilityHUDManager___block_invoke;
  v6[3] = &unk_1E76F7CA0;
  v7 = v4;
  v5 = v4;
  [(CAMBottomBar *)self _iterateViewsInHUDManager:v5 forHUDItem:v6];
}

uint64_t __50__CAMBottomBar_selectedByAccessibilityHUDManager___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 selectedByAccessibilityHUDManager:*(a1 + 32)];
  *a3 = 1;
  return result;
}

- (CAMControlVisibilityUpdateDelegate)visibilityUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_visibilityUpdateDelegate);

  return WeakRetained;
}

@end