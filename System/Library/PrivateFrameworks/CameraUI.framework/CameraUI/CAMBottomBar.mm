@interface CAMBottomBar
+ (BOOL)shouldUseSafeAreaInsetForLayoutStyle:(int64_t)style traitCollection:(id)collection;
+ (CGRect)shutterButtonAlignmentRectInBounds:(CGRect)bounds forLayoutStyle:(int64_t)style traitCollection:(id)collection safeAreaInsets:(UIEdgeInsets)insets;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CAMBottomBar)initWithCoder:(id)coder;
- (CAMBottomBar)initWithFrame:(CGRect)frame;
- (CAMBottomBar)initWithLayoutStyle:(int64_t)style;
- (CAMControlVisibilityUpdateDelegate)visibilityUpdateDelegate;
- (CGRect)collapsedFrameForMenuButton:(id)button;
- (CGRect)expandedFrameForMenuButton:(id)button;
- (double)_opacityForBackgroundStyle:(int64_t)style;
- (id)_currentMenuButtons;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (id)touchingRecognizersToCancel;
- (void)_commonCAMBottomBarInitializationInitWithLayoutStyle:(int64_t)style;
- (void)_ensureSubviewOrdering;
- (void)_iterateViewsInHUDManager:(id)manager forHUDItem:(id)item;
- (void)_layoutDoneButtonForLayoutStyle:(int64_t)style;
- (void)_layoutFlipButtonForLayoutStyle:(int64_t)style;
- (void)_layoutImageWellForLayoutStyle:(int64_t)style;
- (void)_layoutMenuButtons:(id)buttons apply:(BOOL)apply withExpandedMenuButton:(id)button collapsingMenuButton:(id)menuButton collapsingFrame:(CGRect *)frame;
- (void)_layoutModeDialForLayoutStyle:(int64_t)style;
- (void)_layoutReviewButtonForLayoutStyle:(int64_t)style;
- (void)_layoutShutterButtonForLayoutStyle:(int64_t)style;
- (void)_layoutStillDuringVideoButtonForLayoutStyle:(int64_t)style;
- (void)_layoutUtilityBarForLayoutStyle:(int64_t)style;
- (void)_updateControlVisibilityAnimated:(BOOL)animated;
- (void)_updateFlipButtonTappableEdgeInsets;
- (void)_updateImageWellTappableEdgeInsets;
- (void)collapseMenuButton:(id)button animated:(BOOL)animated;
- (void)expandMenuButton:(id)button animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)manager;
- (void)setApertureButton:(id)button;
- (void)setBackgroundStyle:(int64_t)style animated:(BOOL)animated;
- (void)setDoneButton:(id)button;
- (void)setFlashButton:(id)button;
- (void)setFlipButton:(id)button;
- (void)setHDRButton:(id)button;
- (void)setImageAnalysisButton:(id)button;
- (void)setImageAnalysisButtonBackgroundOverlay:(id)overlay;
- (void)setImageWell:(id)well;
- (void)setLayoutStyle:(int64_t)style;
- (void)setLivePhotoButton:(id)button;
- (void)setModeDial:(id)dial;
- (void)setReviewButton:(id)button;
- (void)setSharedLibraryButton:(id)button;
- (void)setShutterButton:(id)button;
- (void)setStillDuringVideoButton:(id)button;
- (void)setTimerButton:(id)button;
- (void)setUtilityBar:(id)bar;
- (void)setUtilityBarExtensionDistance:(double)distance;
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

  flipButton = [(CAMBottomBar *)self flipButton];
  [flipButton setTappableEdgeInsets:{v3, 11.0, v3, 11.0}];
}

- (void)_ensureSubviewOrdering
{
  utilityBar = [(CAMBottomBar *)self utilityBar];
  [(CAMBottomBar *)self bringSubviewToFront:utilityBar];
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
    _shouldReverseLayoutDirection = [(CAMBottomBar *)self _shouldReverseLayoutDirection];
    v4 = 0.0;
    if (_shouldReverseLayoutDirection)
    {
      v5 = 15.0;
    }

    else
    {
      v5 = 0.0;
    }

    if (_shouldReverseLayoutDirection)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 15.0;
    }
  }

  imageWell = [(CAMBottomBar *)self imageWell];
  [imageWell setTappableEdgeInsets:{v4, v6, v3, v5}];
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
  backgroundView = [(CAMBottomBar *)self backgroundView];
  [backgroundView setFrame:{v4, v6, v8, v10}];
  [(CAMBottomBar *)self _opacityForBackgroundStyle:[(CAMBottomBar *)self backgroundStyle]];
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v12];
  [backgroundView setBackgroundColor:v13];

  layoutStyle = [(CAMBottomBar *)self layoutStyle];
  [(CAMBottomBar *)self _layoutShutterButtonForLayoutStyle:layoutStyle];
  [(CAMBottomBar *)self _layoutStillDuringVideoButtonForLayoutStyle:layoutStyle];
  [(CAMBottomBar *)self _layoutImageWellForLayoutStyle:layoutStyle];
  [(CAMBottomBar *)self _layoutReviewButtonForLayoutStyle:layoutStyle];
  [(CAMBottomBar *)self _layoutModeDialForLayoutStyle:layoutStyle];
  [(CAMBottomBar *)self _layoutFlipButtonForLayoutStyle:layoutStyle];
  [(CAMBottomBar *)self _layoutUtilityBarForLayoutStyle:layoutStyle];
  [(CAMBottomBar *)self _layoutDoneButtonForLayoutStyle:layoutStyle];
  _currentMenuButtons = [(CAMBottomBar *)self _currentMenuButtons];
  _expandedMenuButton = [(CAMBottomBar *)self _expandedMenuButton];
  [(CAMBottomBar *)self _layoutMenuButtons:_currentMenuButtons apply:1 withExpandedMenuButton:_expandedMenuButton collapsingMenuButton:0 collapsingFrame:0];

  v17 = +[CAMCaptureCapabilities capabilities];
  LODWORD(_expandedMenuButton) = [v17 isFrontCameraOnRightEdge];

  v18 = [objc_opt_class() wantsVerticalBarForLayoutStyle:layoutStyle];
  superview = [(CAMBottomBar *)self superview];
  [superview bounds];
  v21 = v20;
  v23 = v22;

  if (_expandedMenuButton)
  {
    if (v18)
    {
      if (v23 > v21)
      {
        modeDial = [(CAMBottomBar *)self modeDial];

        if (modeDial)
        {
          v46.origin.x = v4;
          v46.origin.y = v6;
          v46.size.width = v8;
          v46.size.height = v10;
          MaxY = CGRectGetMaxY(v46);
          modeDial2 = [(CAMBottomBar *)self modeDial];
          [modeDial2 frame];
          v27 = MaxY - CGRectGetMaxY(v47);

          if (v27 >= 84.0)
          {
            v38 = backgroundView;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            subviews = [(CAMBottomBar *)self subviews];
            v29 = [subviews countByEnumeratingWithState:&v39 objects:v44 count:16];
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
                  objc_enumerationMutation(subviews);
                }

                v33 = *(*(&v39 + 1) + 8 * i);
                backgroundView2 = [(CAMBottomBar *)self backgroundView];
                if (v33 == backgroundView2)
                {
                  goto LABEL_16;
                }

                reviewButton = [(CAMBottomBar *)self reviewButton];
                v36 = reviewButton;
                if (v33 == reviewButton)
                {

LABEL_16:
                  continue;
                }

                doneButton = [(CAMBottomBar *)self doneButton];

                if (v33 != doneButton)
                {
                  [v33 center];
                  [v33 setCenter:?];
                }
              }

              v30 = [subviews countByEnumeratingWithState:&v39 objects:v44 count:16];
              if (!v30)
              {
LABEL_19:

                backgroundView = v38;
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

- (void)_commonCAMBottomBarInitializationInitWithLayoutStyle:(int64_t)style
{
  self->_layoutStyle = style;
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  [(UIView *)self->_backgroundView setAutoresizingMask:18];
  [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
  v7 = self->_backgroundView;

  [(CAMBottomBar *)self addSubview:v7];
}

- (CAMBottomBar)initWithLayoutStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = CAMBottomBar;
  v4 = [(CAMBottomBar *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMBottomBar *)v4 _commonCAMBottomBarInitializationInitWithLayoutStyle:style];
    v6 = v5;
  }

  return v5;
}

- (CAMBottomBar)initWithFrame:(CGRect)frame
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMBottomBar *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (CAMBottomBar)initWithCoder:(id)coder
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMBottomBar *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(CAMBottomBar *)self _updateImageWellTappableEdgeInsets];
    [(CAMBottomBar *)self _updateFlipButtonTappableEdgeInsets];

    [(CAMBottomBar *)self setNeedsLayout];
  }
}

- (void)setShutterButton:(id)button
{
  buttonCopy = button;
  shutterButton = self->_shutterButton;
  if (shutterButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(CUShutterButton *)shutterButton removeFromSuperview];
    objc_storeStrong(&self->_shutterButton, button);
    shutterButton = [(CAMBottomBar *)self addSubview:self->_shutterButton];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](shutterButton, buttonCopy);
}

- (void)setStillDuringVideoButton:(id)button
{
  buttonCopy = button;
  stillDuringVideoButton = self->_stillDuringVideoButton;
  if (stillDuringVideoButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(CUShutterButton *)stillDuringVideoButton removeFromSuperview];
    objc_storeStrong(&self->_stillDuringVideoButton, button);
    stillDuringVideoButton = [(CAMBottomBar *)self addSubview:self->_stillDuringVideoButton];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](stillDuringVideoButton, buttonCopy);
}

- (void)setModeDial:(id)dial
{
  dialCopy = dial;
  modeDial = self->_modeDial;
  if (modeDial != dialCopy)
  {
    v7 = dialCopy;
    [(CAMModeDial *)modeDial removeFromSuperview];
    objc_storeStrong(&self->_modeDial, dial);
    [(CAMBottomBar *)self addSubview:v7];
    modeDial = [(CAMBottomBar *)self _ensureSubviewOrdering];
    dialCopy = v7;
  }

  MEMORY[0x1EEE66BB8](modeDial, dialCopy);
}

- (void)setImageWell:(id)well
{
  wellCopy = well;
  imageWell = self->_imageWell;
  if (imageWell != wellCopy)
  {
    v7 = wellCopy;
    [(CAMImageWell *)imageWell removeFromSuperview];
    objc_storeStrong(&self->_imageWell, well);
    [(CAMBottomBar *)self _updateImageWellTappableEdgeInsets];
    imageWell = [(CAMBottomBar *)self addSubview:v7];
    wellCopy = v7;
  }

  MEMORY[0x1EEE66BB8](imageWell, wellCopy);
}

- (void)setReviewButton:(id)button
{
  buttonCopy = button;
  reviewButton = self->_reviewButton;
  if (reviewButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(UIButton *)reviewButton removeFromSuperview];
    objc_storeStrong(&self->_reviewButton, button);
    reviewButton = [(CAMBottomBar *)self addSubview:v7];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](reviewButton, buttonCopy);
}

- (void)setDoneButton:(id)button
{
  buttonCopy = button;
  doneButton = self->_doneButton;
  if (doneButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(PUReviewScreenDoneButton *)doneButton removeFromSuperview];
    objc_storeStrong(&self->_doneButton, button);
    doneButton = [(CAMBottomBar *)self addSubview:v7];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](doneButton, buttonCopy);
}

- (void)setFlipButton:(id)button
{
  buttonCopy = button;
  flipButton = self->_flipButton;
  if (flipButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(CAMFlipButton *)flipButton removeFromSuperview];
    objc_storeStrong(&self->_flipButton, button);
    [(CAMBottomBar *)self _updateFlipButtonTappableEdgeInsets];
    flipButton = [(CAMBottomBar *)self addSubview:v7];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](flipButton, buttonCopy);
}

- (void)setFlashButton:(id)button
{
  buttonCopy = button;
  flashButton = self->_flashButton;
  if (flashButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(CAMExpandableMenuButton *)flashButton setExpandableMenuDelegate:0];
    [(CAMFlashButton *)self->_flashButton removeFromSuperview];
    objc_storeStrong(&self->_flashButton, button);
    [(CAMExpandableMenuButton *)self->_flashButton setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)self->_flashButton setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    flashButton = [(CAMBottomBar *)self addSubview:v7];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](flashButton, buttonCopy);
}

- (void)setHDRButton:(id)button
{
  buttonCopy = button;
  HDRButton = self->_HDRButton;
  if (HDRButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(CAMExpandableMenuButton *)HDRButton setExpandableMenuDelegate:0];
    [(CAMHDRButton *)self->_HDRButton removeFromSuperview];
    objc_storeStrong(&self->_HDRButton, button);
    [(CAMExpandableMenuButton *)self->_HDRButton setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)self->_HDRButton setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    HDRButton = [(CAMBottomBar *)self addSubview:v7];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](HDRButton, buttonCopy);
}

- (void)setTimerButton:(id)button
{
  buttonCopy = button;
  timerButton = self->_timerButton;
  if (timerButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(CAMExpandableMenuButton *)timerButton setExpandableMenuDelegate:0];
    [(CAMTimerButton *)self->_timerButton removeFromSuperview];
    objc_storeStrong(&self->_timerButton, button);
    [(CAMExpandableMenuButton *)self->_timerButton setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)self->_timerButton setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    timerButton = [(CAMBottomBar *)self addSubview:v7];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](timerButton, buttonCopy);
}

- (void)setLivePhotoButton:(id)button
{
  buttonCopy = button;
  livePhotoButton = self->_livePhotoButton;
  if (livePhotoButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(CAMLivePhotoButton *)livePhotoButton removeFromSuperview];
    [(CAMExpandableMenuButton *)self->_livePhotoButton setExpandableMenuDelegate:0];
    objc_storeStrong(&self->_livePhotoButton, button);
    [(CAMExpandableMenuButton *)v7 setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)v7 setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    livePhotoButton = [(CAMBottomBar *)self addSubview:v7];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](livePhotoButton, buttonCopy);
}

- (void)setSharedLibraryButton:(id)button
{
  buttonCopy = button;
  sharedLibraryButton = self->_sharedLibraryButton;
  if (sharedLibraryButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(CAMSharedLibraryButton *)sharedLibraryButton removeFromSuperview];
    [(CAMExpandableMenuButton *)self->_sharedLibraryButton setExpandableMenuDelegate:0];
    objc_storeStrong(&self->_sharedLibraryButton, button);
    [(CAMExpandableMenuButton *)v7 setExpandableMenuDelegate:self];
    [(CAMExpandableMenuButton *)v7 setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    sharedLibraryButton = [(CAMBottomBar *)self addSubview:v7];
    buttonCopy = v7;
  }

  MEMORY[0x1EEE66BB8](sharedLibraryButton, buttonCopy);
}

- (void)setApertureButton:(id)button
{
  buttonCopy = button;
  apertureButton = self->_apertureButton;
  if (apertureButton != buttonCopy)
  {
    v9 = buttonCopy;
    superview = [(CEKApertureButton *)apertureButton superview];

    if (superview == self)
    {
      [(CEKApertureButton *)self->_apertureButton removeFromSuperview];
    }

    delegate = [(CEKApertureButton *)self->_apertureButton delegate];

    if (delegate == self)
    {
      [(CEKApertureButton *)self->_apertureButton setDelegate:0];
    }

    objc_storeStrong(&self->_apertureButton, button);
    [(CEKApertureButton *)v9 setDelegate:self];
    [(CEKApertureButton *)v9 setTappableEdgeInsets:5.0, 11.0, 5.0, 11.0];
    apertureButton = [(CAMBottomBar *)self addSubview:v9];
    buttonCopy = v9;
  }

  MEMORY[0x1EEE66BB8](apertureButton, buttonCopy);
}

- (void)setImageAnalysisButton:(id)button
{
  buttonCopy = button;
  imageAnalysisButton = self->_imageAnalysisButton;
  if (imageAnalysisButton != buttonCopy)
  {
    v9 = buttonCopy;
    superview = [(CAMImageAnalysisButton *)imageAnalysisButton superview];

    if (superview == self)
    {
      [(CAMImageAnalysisButton *)self->_imageAnalysisButton removeFromSuperview];
    }

    objc_storeStrong(&self->_imageAnalysisButton, button);
    [(VKImageAnalysisButton *)v9 setBackgroundDiameter:44.0];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    [(VKImageAnalysisButton *)v9 setCameraModeBackgroundColor:v8];

    imageAnalysisButton = [(CAMBottomBar *)self addSubview:v9];
    buttonCopy = v9;
  }

  MEMORY[0x1EEE66BB8](imageAnalysisButton, buttonCopy);
}

- (void)setImageAnalysisButtonBackgroundOverlay:(id)overlay
{
  overlayCopy = overlay;
  imageAnalysisButtonBackgroundOverlay = self->_imageAnalysisButtonBackgroundOverlay;
  if (imageAnalysisButtonBackgroundOverlay != overlayCopy)
  {
    v9 = overlayCopy;
    superview = [(UIView *)imageAnalysisButtonBackgroundOverlay superview];

    if (superview == self)
    {
      [(UIView *)self->_imageAnalysisButtonBackgroundOverlay removeFromSuperview];
    }

    objc_storeStrong(&self->_imageAnalysisButtonBackgroundOverlay, overlay);
    imageAnalysisButton = [(CAMBottomBar *)self imageAnalysisButton];
    [(CAMBottomBar *)self insertSubview:v9 belowSubview:imageAnalysisButton];

    overlayCopy = v9;
  }

  MEMORY[0x1EEE66BB8](imageAnalysisButtonBackgroundOverlay, overlayCopy);
}

- (void)_updateControlVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  visibilityUpdateDelegate = [(CAMBottomBar *)self visibilityUpdateDelegate];
  [visibilityUpdateDelegate updateControlVisibilityAnimated:animatedCopy];
}

- (void)setUtilityBar:(id)bar
{
  barCopy = bar;
  utilityBar = self->_utilityBar;
  if (utilityBar != barCopy)
  {
    v7 = barCopy;
    [(CAMUtilityBar *)utilityBar removeFromSuperview];
    objc_storeStrong(&self->_utilityBar, bar);
    [(CAMBottomBar *)self addSubview:v7];
    utilityBar = [(CAMBottomBar *)self _ensureSubviewOrdering];
    barCopy = v7;
  }

  MEMORY[0x1EEE66BB8](utilityBar, barCopy);
}

- (void)setUtilityBarExtensionDistance:(double)distance
{
  if (self->_utilityBarExtensionDistance != distance)
  {
    self->_utilityBarExtensionDistance = distance;
    [(CAMBottomBar *)self setNeedsLayout];
  }
}

+ (CGRect)shutterButtonAlignmentRectInBounds:(CGRect)bounds forLayoutStyle:(int64_t)style traitCollection:(id)collection safeAreaInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  collectionCopy = collection;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  CGRectGetHeight(v36);
  [collectionCopy displayScale];
  v31 = v14;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  CAMShutterButtonSpecForLayoutStyle(style, v34);
  v15 = 0.0;
  UIRectCenteredIntegralRectScale();
  v32 = v17;
  v33 = v16;
  v19 = v18;
  v21 = v20;
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:{style, 0}])
  {
    goto LABEL_16;
  }

  v30 = bottom;
  if (style < 3)
  {
    v22 = 1.0 / v31 + 23.0;
    v23 = 4.0;
LABEL_7:
    UIRoundToScale();
    v15 = v24;
    goto LABEL_8;
  }

  if (style == 3)
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

  if (([self shouldUseSafeAreaInsetForLayoutStyle:style traitCollection:collectionCopy] & (v23 < v30)) != 0)
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

+ (BOOL)shouldUseSafeAreaInsetForLayoutStyle:(int64_t)style traitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [self wantsVerticalBarForLayoutStyle:style];
  verticalSizeClass = [collectionCopy verticalSizeClass];

  if (verticalSizeClass == 2)
  {
    return v7 ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)_layoutShutterButtonForLayoutStyle:(int64_t)style
{
  [(CAMBottomBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  shutterButton = [(CAMBottomBar *)self shutterButton];
  v13 = objc_opt_class();
  traitCollection = [(CAMBottomBar *)self traitCollection];
  [(CAMBottomBar *)self safeAreaInsets];
  [v13 shutterButtonAlignmentRectInBounds:style forLayoutStyle:traitCollection traitCollection:v6 safeAreaInsets:{v8, v10, v12, v15, v16, v17, v18}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:style])
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

  [shutterButton setTappableEdgeInsets:{v28, v33, v38, v37}];
  [shutterButton frameForAlignmentRect:{v35, v22, v24, v26}];
  [shutterButton setFrame:?];
}

- (void)_layoutStillDuringVideoButtonForLayoutStyle:(int64_t)style
{
  if (([objc_opt_class() wantsVerticalBarForLayoutStyle:style] & 1) == 0)
  {
    stillDuringVideoButton = [(CAMBottomBar *)self stillDuringVideoButton];
    [stillDuringVideoButton intrinsicContentSize];
    v5 = v4;
    traitCollection = [(CAMBottomBar *)self traitCollection];
    [traitCollection displayScale];
    UIRectIntegralWithScale();
    v8 = v7;
    v10 = v9;

    [(CAMBottomBar *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    shutterButton = [(CAMBottomBar *)self shutterButton];
    [shutterButton frame];
    [shutterButton alignmentRectForFrame:?];
    CGRectGetMidY(v32);
    UIRoundToViewScale();
    v21 = v20;
    _shouldReverseLayoutDirection = [(CAMBottomBar *)self _shouldReverseLayoutDirection];
    v23 = v12;
    v24 = v14;
    v25 = v16;
    v26 = v18;
    if (_shouldReverseLayoutDirection)
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
    [stillDuringVideoButton setTappableEdgeInsets:{20.0, 20.0, 20.0, 20.0}];
    [stillDuringVideoButton frameForAlignmentRect:{v29, v21, v8, v10}];
    [stillDuringVideoButton setFrame:?];
  }
}

- (void)_layoutModeDialForLayoutStyle:(int64_t)style
{
  [(CAMBottomBar *)self bounds];
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  v50 = CGRectGetWidth(v54);
  shutterButton = [(CAMBottomBar *)self shutterButton];
  [shutterButton frame];
  [shutterButton alignmentRectForFrame:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  modeDial = [(CAMBottomBar *)self modeDial];
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:style])
  {
    v48 = y;
    v51 = width;
    imageWell = [(CAMBottomBar *)self imageWell];
    v19 = imageWell;
    v49 = v16;
    v47 = x;
    v20 = v14;
    if (imageWell)
    {
      shutterButton2 = imageWell;
    }

    else
    {
      shutterButton2 = [(CAMBottomBar *)self shutterButton];
    }

    v27 = shutterButton2;
    [shutterButton2 frame];
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
    [modeDial sizeThatFits:{v35, 190.0}];
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

    [modeDial frameForAlignmentRect:{v39, v37, v35, 190.0, *&v45}];
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

  [modeDial setFrame:{v23, MinY, v26, v25}];
}

- (void)_layoutImageWellForLayoutStyle:(int64_t)style
{
  [(CAMBottomBar *)self bounds];
  v30 = v5;
  v31 = v6;
  v8 = v7;
  v10 = v9;
  shutterButton = [(CAMBottomBar *)self shutterButton];
  [shutterButton frame];
  [shutterButton alignmentRectForFrame:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  imageWell = [(CAMBottomBar *)self imageWell];
  LODWORD(style) = [objc_opt_class() wantsVerticalBarForLayoutStyle:style];
  [imageWell intrinsicContentSize];
  v21 = v20;
  v23 = v22;
  if (style)
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

  [imageWell frameForAlignmentRect:{v25, v24, v21, v23, *&rect}];
  [imageWell setFrame:?];
}

- (void)_layoutReviewButtonForLayoutStyle:(int64_t)style
{
  [(CAMBottomBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  reviewButton = [(CAMBottomBar *)self reviewButton];
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:style])
  {
    [reviewButton intrinsicContentSize];
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
    [reviewButton frameForAlignmentRect:{v14, MaxY - CGRectGetHeight(v52) + -31.0, v18, v20, 0}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
  }

  else
  {
    _shouldReverseLayoutDirection = [(CAMBottomBar *)self _shouldReverseLayoutDirection];
    [reviewButton intrinsicContentSize];
    v48 = v12;
    v32 = v31;
    shutterButton = [(CAMBottomBar *)self shutterButton];
    [shutterButton frame];
    [shutterButton alignmentRectForFrame:?];
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
    if (_shouldReverseLayoutDirection)
    {
      v56.origin.x = v6;
      v56.origin.y = v8;
      v56.size.width = v10;
      v56.size.height = v48;
      v43 = CGRectGetMaxX(v56) - v32 + -15.0;
    }

    [reviewButton frameForAlignmentRect:{v43, v42, v39, v40, 0}];
    v23 = v44;
    v25 = v45;
    v27 = v46;
    v29 = v47;
  }

  [reviewButton setFrame:{v23, v25, v27, v29}];
}

- (void)_layoutDoneButtonForLayoutStyle:(int64_t)style
{
  [(CAMBottomBar *)self bounds];
  doneButton = [(CAMBottomBar *)self doneButton];
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:style])
  {
    CAMPixelWidthForView(self);
    [doneButton intrinsicContentSize];
    UIRectCenteredIntegralRectScale();
    [doneButton frameForAlignmentRect:0];
    [doneButton setFrame:?];
  }
}

- (void)_layoutFlipButtonForLayoutStyle:(int64_t)style
{
  v4 = [objc_opt_class() wantsVerticalBarForLayoutStyle:style];
  [(CAMBottomBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v35 = v9;
  v36 = v10;
  shutterButton = [(CAMBottomBar *)self shutterButton];
  [shutterButton frame];
  [shutterButton alignmentRectForFrame:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  flipButton = [(CAMBottomBar *)self flipButton];
  [flipButton intrinsicContentSize];
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
    _shouldReverseLayoutDirection = [(CAMBottomBar *)self _shouldReverseLayoutDirection];
    v29 = v6;
    v30 = v8;
    v31 = v35;
    v32 = v36;
    if (_shouldReverseLayoutDirection)
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

  [flipButton frameForAlignmentRect:{v25, v26, v21, v23}];
  [flipButton setFrame:?];
}

- (void)_layoutUtilityBarForLayoutStyle:(int64_t)style
{
  [(CAMBottomBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_class();
  layoutStyle = [(CAMBottomBar *)self layoutStyle];
  traitCollection = [(CAMBottomBar *)self traitCollection];
  [(CAMBottomBar *)self safeAreaInsets];
  [v13 shutterButtonAlignmentRectInBounds:layoutStyle forLayoutStyle:traitCollection traitCollection:v6 safeAreaInsets:{v8, v10, v12, v16, v17, v18, v19}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [(CAMBottomBar *)self utilityBarExtensionDistance];
  v29 = v28;
  v30 = [objc_opt_class() wantsVerticalBarForLayoutStyle:style];
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

  utilityBar = [(CAMBottomBar *)self utilityBar];
  [utilityBar frameForAlignmentRect:{v31, v36, v10, v12}];
  [utilityBar setFrame:?];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v30 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  _expandedMenuButton = [(CAMBottomBar *)self _expandedMenuButton];
  v9 = _expandedMenuButton;
  if (_expandedMenuButton && ([_expandedMenuButton frame], v32.x = x, v32.y = y, CGRectContainsPoint(v34, v32)))
  {
    v10 = v9;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = CAMBottomBar;
    v10 = [(CAMBottomBar *)&v28 hitTest:eventCopy withEvent:x, y];
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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v20.receiver = self;
  v20.super_class = CAMBottomBar;
  v7 = [(CAMBottomBar *)&v20 pointInside:event withEvent:?];
  _expandedMenuButton = [(CAMBottomBar *)self _expandedMenuButton];
  v9 = _expandedMenuButton;
  if (_expandedMenuButton)
  {
    [_expandedMenuButton frame];
    v21.x = x;
    v21.y = y;
    v10 = CGRectContainsPoint(v24, v21);
  }

  else
  {
    v10 = 0;
  }

  utilityBar = [(CAMBottomBar *)self utilityBar];
  v12 = utilityBar;
  if (!utilityBar || ([utilityBar isHidden] & 1) != 0 || (objc_msgSend(v12, "alpha"), v13 <= 0.0))
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

  imageAnalysisButtonBackgroundOverlay = [(CAMBottomBar *)self imageAnalysisButtonBackgroundOverlay];
  v16 = imageAnalysisButtonBackgroundOverlay;
  if (imageAnalysisButtonBackgroundOverlay)
  {
    if (([imageAnalysisButtonBackgroundOverlay isHidden] & 1) != 0 || (objc_msgSend(v16, "alpha"), v17 <= 0.0))
    {
      LOBYTE(imageAnalysisButtonBackgroundOverlay) = 0;
    }

    else
    {
      [v16 frame];
      v23.x = x;
      v23.y = y;
      LOBYTE(imageAnalysisButtonBackgroundOverlay) = CGRectContainsPoint(v26, v23);
    }
  }

  if ((v7 | v10))
  {
    v18 = 1;
  }

  else
  {
    v18 = v14 | imageAnalysisButtonBackgroundOverlay;
  }

  return v18 & 1;
}

- (void)setBackgroundStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    if (animated)
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

- (double)_opacityForBackgroundStyle:(int64_t)style
{
  result = 0.0;
  if (style == 2)
  {
    result = 1.0;
  }

  if (!style)
  {
    return 0.3;
  }

  return result;
}

- (void)_layoutMenuButtons:(id)buttons apply:(BOOL)apply withExpandedMenuButton:(id)button collapsingMenuButton:(id)menuButton collapsingFrame:(CGRect *)frame
{
  applyCopy = apply;
  buttonsCopy = buttons;
  buttonCopy = button;
  menuButtonCopy = menuButton;
  layoutStyle = [(CAMBottomBar *)self layoutStyle];
  if ([objc_opt_class() wantsVerticalBarForLayoutStyle:layoutStyle])
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
    flipButton = [(CAMBottomBar *)self flipButton];
    v25 = flipButton;
    if (flipButton)
    {
      [flipButton frame];
      [v25 alignmentRectForFrame:?];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = +[CAMCaptureCapabilities capabilities];
      overContentFlipButtonSupported = [v34 overContentFlipButtonSupported];

      v92.origin.x = v27;
      v92.origin.y = v29;
      v92.size.width = v31;
      v92.size.height = v33;
      MinY = CGRectGetMinY(v92);
      v37 = 29.0;
      if (overContentFlipButtonSupported)
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
      traitCollection = [(CAMBottomBar *)self traitCollection];
      [(CAMBottomBar *)self safeAreaInsets];
      [v39 shutterButtonAlignmentRectInBounds:layoutStyle forLayoutStyle:traitCollection traitCollection:v41 safeAreaInsets:{v43, v45, v47, v49, v50, v51, v52}];
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
    v78 = menuButtonCopy;
    v81 = &v88;
    v79 = buttonCopy;
    selfCopy = self;
    frameCopy = frame;
    v87 = applyCopy;
    [buttonsCopy enumerateObjectsWithOptions:2 usingBlock:&v74];
    apertureButton = [(CAMBottomBar *)self apertureButton];
    v62 = apertureButton;
    if (apertureButton)
    {
      [apertureButton intrinsicContentSize];
      UIRectCenteredIntegralRectScale();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      lastObject = [buttonsCopy lastObject];
      [lastObject frame];
      [lastObject alignmentRectForFrame:?];
      MaxY = CGRectGetMaxY(v94);
      if (applyCopy)
      {
        v71 = MaxY;
        [v62 setExpansionDirection:2];
        [v62 frameForAlignmentRect:{v64, v71 + 10.0, v66, v68}];
        [v62 setFrame:?];
      }
    }

    imageAnalysisButton = [(CAMBottomBar *)self imageAnalysisButton];
    v73 = imageAnalysisButton;
    if (imageAnalysisButton && applyCopy)
    {
      [imageAnalysisButton frame];
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

- (CGRect)collapsedFrameForMenuButton:(id)button
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  v11 = *MEMORY[0x1E695F058];
  v12 = v4;
  buttonCopy = button;
  _currentMenuButtons = [(CAMBottomBar *)self _currentMenuButtons];
  [(CAMBottomBar *)self _layoutMenuButtons:_currentMenuButtons apply:0 withExpandedMenuButton:0 collapsingMenuButton:buttonCopy collapsingFrame:&v11];

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

- (void)collapseMenuButton:(id)button animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  if ([buttonCopy isExpanded])
  {
    [(CAMBottomBar *)self collapsedFrameForMenuButton:buttonCopy];
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
    v16 = buttonCopy;
    v18 = v16;
    v19 = v8;
    v20 = v10;
    v21 = v12;
    v22 = v14;
    [v15 performWithoutAnimation:v17];
    [v16 finishCollapsingAnimated:animatedCopy];
    [(CAMBottomBar *)self _updateControlVisibilityAnimated:animatedCopy];
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

- (CGRect)expandedFrameForMenuButton:(id)button
{
  buttonCopy = button;
  v5 = [buttonCopy orientation] - 3;
  [(CAMBottomBar *)self bounds];
  [(CAMBottomBar *)self alignmentRectForFrame:?];
  v43 = v7;
  v44 = v6;
  v45 = v8;
  rect = v9;
  [(CAMBottomBar *)self collapsedFrameForMenuButton:buttonCopy];
  v11 = v10;
  v13 = v12;
  v46 = v15;
  v47 = v14;
  [buttonCopy alignmentRectForFrame:0 expanded:?];
  v17 = v16;
  MinY = v18;
  v21 = v20;
  v23 = v22;
  [buttonCopy intrinsicContentSizeForExpansion:1];
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
    [buttonCopy frame];
    v30 = v29;
    v25 = v31;
    v49.origin.y = v43;
    v49.origin.x = v44;
    v27 = v45;
    v49.size.width = v45;
    v49.size.height = rect;
    MinY = CGRectGetMinY(v49);
  }

  [buttonCopy frameForAlignmentRect:0 expanded:{v30, MinY, v25, v27}];
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

- (void)expandMenuButton:(id)button animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  if (([buttonCopy isExpanded] & 1) == 0)
  {
    _expandedMenuButton = [(CAMBottomBar *)self _expandedMenuButton];
    v8 = _expandedMenuButton;
    if (_expandedMenuButton)
    {
      v9 = MEMORY[0x1E69DD250];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __42__CAMBottomBar_expandMenuButton_animated___block_invoke;
      v26[3] = &unk_1E76F7960;
      v26[4] = self;
      v27 = _expandedMenuButton;
      [v9 performWithoutAnimation:v26];
    }

    [(CAMBottomBar *)self _setExpandedMenuButton:buttonCopy];
    [(CAMBottomBar *)self expandedFrameForMenuButton:buttonCopy];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__CAMBottomBar_expandMenuButton_animated___block_invoke_2;
    v20[3] = &unk_1E76F7768;
    v19 = buttonCopy;
    v21 = v19;
    v22 = v11;
    v23 = v13;
    v24 = v15;
    v25 = v17;
    [v18 performWithoutAnimation:v20];
    [v19 finishExpansionAnimated:animatedCopy];
    [(CAMBottomBar *)self _updateControlVisibilityAnimated:animatedCopy];
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
  _currentMenuButtons = [(CAMBottomBar *)self _currentMenuButtons];
  v5 = [_currentMenuButtons countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_currentMenuButtons);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          touchingGestureRecognizer = [v9 touchingGestureRecognizer];
          [v3 addObject:touchingGestureRecognizer];
        }
      }

      v6 = [_currentMenuButtons countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_iterateViewsInHUDManager:(id)manager forHUDItem:(id)item
{
  v33 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  itemCopy = item;
  v31 = 0;
  _expandedMenuButton = [(CAMBottomBar *)self _expandedMenuButton];

  if (_expandedMenuButton)
  {
    _expandedMenuButton2 = [(CAMBottomBar *)self _expandedMenuButton];
    itemCopy[2](itemCopy, _expandedMenuButton2, &v31);
  }

  else
  {
    _currentMenuButtons = [(CAMBottomBar *)self _currentMenuButtons];
    v11 = [_currentMenuButtons mutableCopy];

    modeDial = [(CAMBottomBar *)self modeDial];
    [v11 addObject:modeDial];

    apertureButton = [(CAMBottomBar *)self apertureButton];

    if (apertureButton)
    {
      apertureButton2 = [(CAMBottomBar *)self apertureButton];
      [v11 addObject:apertureButton2];
    }

    flipButton = [(CAMBottomBar *)self flipButton];

    if (flipButton)
    {
      flipButton2 = [(CAMBottomBar *)self flipButton];
      [v11 addObject:flipButton2];
    }

    [managerCopy locationOfAccessibilityGestureInView:self];
    v18 = v17;
    v20 = v19;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    _expandedMenuButton2 = v11;
    v21 = [_expandedMenuButton2 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(_expandedMenuButton2);
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
                itemCopy[2](itemCopy, v25, &v31);
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
          v22 = [_expandedMenuButton2 countByEnumeratingWithState:&v27 objects:v32 count:16];
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

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
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
  v5 = managerCopy;
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

- (void)selectedByAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CAMBottomBar_selectedByAccessibilityHUDManager___block_invoke;
  v6[3] = &unk_1E76F7CA0;
  v7 = managerCopy;
  v5 = managerCopy;
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