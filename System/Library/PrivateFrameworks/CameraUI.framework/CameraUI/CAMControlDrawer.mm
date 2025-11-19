@interface CAMControlDrawer
- ($F24F406B2B787EFB06265DBA3D28CBD5)_scrubberGradientEdgeInsets;
- (BOOL)isControlExpandedForType:(int64_t)a3;
- (BOOL)shouldAccessibilityGestureBeginForHUDManager:(id)a3;
- (CAMControlDrawer)initWithCoder:(id)a3;
- (CAMControlDrawer)initWithFrame:(CGRect)a3;
- (CAMControlDrawer)initWithLayoutStyle:(int64_t)a3;
- (CAMControlDrawerDelegate)delegate;
- (CAMControlDrawerPresentationDelegate)presentationDelegate;
- (CAMDrawerApertureButton)apertureButton;
- (CAMDrawerAspectRatioButton)aspectRatioButton;
- (CAMDrawerExposureButton)exposureButton;
- (CAMDrawerFilterButton)filterButton;
- (CAMDrawerFlashButton)flashButton;
- (CAMDrawerHDRButton)hdrButton;
- (CAMDrawerIntensityButton)intensityButton;
- (CAMDrawerLivePhotoButton)livePhotoButton;
- (CAMDrawerNightModeButton)nightModeButton;
- (CAMDrawerProResButton)proResButton;
- (CAMDrawerRAWButton)rawButton;
- (CAMDrawerSemanticStyleButton)semanticStyleButton;
- (CAMDrawerSharedLibraryButton)sharedLibraryButton;
- (CAMDrawerSmartStyleButton)smartStyleButton;
- (CAMDrawerTimerButton)timerButton;
- (CAMDrawerVideoStabilizationButton)videoStabilizationButton;
- (CGSize)_scrollingContentSizeForControlCount:(unint64_t)a3;
- (double)_controlCenterSpacingForControlCount:(unint64_t)a3;
- (id)_createControlForType:(int64_t)a3;
- (id)buttonForType:(int64_t)a3;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (id)touchingRecognizersToCancel;
- (int64_t)expandedControlType;
- (unint64_t)_sliderFontStyle;
- (unint64_t)_viewportMaximumControlCount;
- (void)_apertureSliderDidChangeValue;
- (void)_commonInitializationWithLayoutStyle:(int64_t)a3;
- (void)_ensureVisibleControls;
- (void)_exposureSliderDidChangeValue;
- (void)_filterScrubberDidChangeValue;
- (void)_handleControlReleased:(id)a3;
- (void)_handleControlValueChanged:(id)a3;
- (void)_installControlIfNeededForType:(int64_t)a3;
- (void)_intensitySliderDidChangeValue;
- (void)_iterateViewsForHUDManager:(id)a3 withItemFoundBlock:(id)a4;
- (void)_layoutApertureSlider;
- (void)_layoutExposureSlider;
- (void)_layoutFilterScrubberView;
- (void)_layoutFullWidthCustomView:(id)a3 forAssociatedControl:(id)a4 expanded:(BOOL)a5;
- (void)_layoutFullWidthCustomView:(id)a3 withAlignmentRect:(CGRect)a4 forAssociatedControl:(id)a5 expanded:(BOOL)a6;
- (void)_layoutIntensitySlider;
- (void)_layoutNightModeSlider;
- (void)_layoutScrubberView:(id)a3 forAssociatedControl:(id)a4 expanded:(BOOL)a5;
- (void)_layoutSemanticStyleControl;
- (void)_layoutVisibleControlForType:(int64_t)a3 visibleControlTypes:(id)a4;
- (void)_loadApertureSliderIfNeeded;
- (void)_loadControlIfNeededForType:(int64_t)a3;
- (void)_loadCustomUIIfNeededForControlType:(int64_t)a3;
- (void)_loadExposureSliderIfNeeded;
- (void)_loadFilterScrubberIfNeeded;
- (void)_loadIntensitySliderIfNeeded;
- (void)_loadNightModeSliderIfNeeded;
- (void)_loadSemanticStyleControlIfNeeded;
- (void)_nightModeSliderDidChangeValue;
- (void)_semanticStyleControlDidChangeValue;
- (void)_setExpandedControl:(id)a3 animated:(BOOL)a4 updatePreferredDrawerControl:(BOOL)a5;
- (void)_updateControlsScaleAnimated:(BOOL)a3;
- (void)_updateControlsVisibilityAnimated:(BOOL)a3;
- (void)_updateExpansionInsetsForExpandableButton:(id)a3;
- (void)expandableButton:(id)a3 willChangeExpanded:(BOOL)a4;
- (void)layoutSubviews;
- (void)menuButtonDidSelectItem:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)setExpanded:(BOOL)a3 forControlType:(int64_t)a4 animated:(BOOL)a5 updatePreferredDrawerControl:(BOOL)a6;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setVisibleControlTypes:(id)a3 animated:(BOOL)a4;
@end

@implementation CAMControlDrawer

- (CAMControlDrawer)initWithLayoutStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CAMControlDrawer;
  v4 = [(CAMControlDrawer *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMControlDrawer *)v4 _commonInitializationWithLayoutStyle:a3];
  }

  return v5;
}

- (void)_commonInitializationWithLayoutStyle:(int64_t)a3
{
  self->_layoutStyle = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  controlMap = self->__controlMap;
  self->__controlMap = v4;

  v6 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->__scrollView;
  self->__scrollView = v6;

  [(UIScrollView *)self->__scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->__scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->__scrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(UIScrollView *)self->__scrollView setDelegate:self];
  [(UIScrollView *)self->__scrollView setContentInsetAdjustmentBehavior:2];
  v8 = self->__scrollView;

  [(CAMControlDrawer *)self addSubview:v8];
}

- (CAMControlDrawer)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMControlDrawer;
  v3 = [(CAMControlDrawer *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 cam_initialLayoutStyle];

    [(CAMControlDrawer *)v3 _commonInitializationWithLayoutStyle:v5];
  }

  return v3;
}

- (CAMControlDrawer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CAMControlDrawer;
  v3 = [(CAMControlDrawer *)&v7 initWithCoder:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 cam_initialLayoutStyle];

    [(CAMControlDrawer *)v3 _commonInitializationWithLayoutStyle:v5];
  }

  return v3;
}

- (void)layoutSubviews
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [(CAMControlDrawer *)self visibleControlTypes];
  v4 = [(CAMControlDrawer *)self _scrollView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CAMControlDrawer *)self bounds];
  v51.origin.x = v13;
  v51.origin.y = v14;
  v51.size.width = v15;
  v51.size.height = v16;
  v50.origin.x = v6;
  v50.origin.y = v8;
  v50.size.width = v10;
  v50.size.height = v12;
  v17 = CGRectEqualToRect(v50, v51);

  if (!v17)
  {
    [(CAMControlDrawer *)self bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(CAMControlDrawer *)self _scrollView];
    [v26 setFrame:{v19, v21, v23, v25}];
  }

  -[CAMControlDrawer _scrollingContentSizeForControlCount:](self, "_scrollingContentSizeForControlCount:", [v3 count]);
  v28 = v27;
  v30 = v29;
  v31 = [(CAMControlDrawer *)self _scrollView];
  [v31 contentSize];
  v33 = v32;
  v35 = v34;

  if (v33 != v28 || v35 != v30)
  {
    v36 = [(CAMControlDrawer *)self _scrollView];
    [v36 setContentSize:{v28, v30}];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = v3;
  v38 = [v37 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v45;
    do
    {
      v41 = 0;
      do
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(v37);
        }

        -[CAMControlDrawer _layoutVisibleControlForType:visibleControlTypes:](self, "_layoutVisibleControlForType:visibleControlTypes:", [*(*(&v44 + 1) + 8 * v41++) integerValue], v37);
      }

      while (v39 != v41);
      v39 = [v37 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v39);
  }

  v42 = [(CAMControlDrawer *)self expandedControl];

  if (v42)
  {
    v43 = [(CAMControlDrawer *)self expandedControl];
    [(CAMControlDrawer *)self _updateExpansionInsetsForExpandableButton:v43];
  }

  [(CAMControlDrawer *)self _layoutFilterScrubberView];
  [(CAMControlDrawer *)self _layoutApertureSlider];
  [(CAMControlDrawer *)self _layoutIntensitySlider];
  [(CAMControlDrawer *)self _layoutExposureSlider];
  [(CAMControlDrawer *)self _layoutNightModeSlider];
  [(CAMControlDrawer *)self _layoutSemanticStyleControl];
  [(CAMControlDrawer *)self _updateControlsScaleAnimated:0];
  [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
}

- (id)_createControlForType:(int64_t)a3
{
  if (a3 > 0xF)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(*off_1E76F8470[a3]) initWithLayoutStyle:{-[CAMControlDrawer layoutStyle](self, "layoutStyle")}];
  }

  [v4 addTarget:self action:sel__handleControlValueChanged_ forControlEvents:4096];
  [v4 addTarget:self action:sel__handleControlReleased_ forControlEvents:64];
  [v4 setAlpha:0.0];

  return v4;
}

- (id)buttonForType:(int64_t)a3
{
  v4 = [(CAMControlDrawer *)self _controlMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (CAMDrawerFlashButton)flashButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C71D8];

  return v3;
}

- (CAMDrawerLivePhotoButton)livePhotoButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C71F0];

  return v3;
}

- (CAMDrawerAspectRatioButton)aspectRatioButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7208];

  return v3;
}

- (CAMDrawerTimerButton)timerButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7220];

  return v3;
}

- (CAMDrawerFilterButton)filterButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7238];

  return v3;
}

- (CAMDrawerApertureButton)apertureButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7250];

  return v3;
}

- (CAMDrawerIntensityButton)intensityButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7268];

  return v3;
}

- (CAMDrawerExposureButton)exposureButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7280];

  return v3;
}

- (CAMDrawerHDRButton)hdrButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7298];

  return v3;
}

- (CAMDrawerNightModeButton)nightModeButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C72B0];

  return v3;
}

- (CAMDrawerSemanticStyleButton)semanticStyleButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C72C8];

  return v3;
}

- (CAMDrawerSmartStyleButton)smartStyleButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C72E0];

  return v3;
}

- (CAMDrawerRAWButton)rawButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C72F8];

  return v3;
}

- (CAMDrawerProResButton)proResButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7310];

  return v3;
}

- (CAMDrawerSharedLibraryButton)sharedLibraryButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7328];

  return v3;
}

- (CAMDrawerVideoStabilizationButton)videoStabilizationButton
{
  v2 = [(CAMControlDrawer *)self _controlMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C7340];

  return v3;
}

- (void)_handleControlValueChanged:(id)a3
{
  v4 = [a3 controlType];
  v5 = [(CAMControlDrawer *)self delegate];
  [v5 controlDrawer:self didChangeValueForControlType:v4];

  if (v4 <= 4)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v7 = [(CAMControlDrawer *)self delegate];
        v6 = [(CAMControlDrawer *)self aspectRatioButton];
        [v7 controlDrawer:self didChangeAspectRatio:{objc_msgSend(v6, "aspectRatio")}];
      }

      else
      {
        if (v4 != 3)
        {
          return;
        }

        v7 = [(CAMControlDrawer *)self delegate];
        v6 = [(CAMControlDrawer *)self timerButton];
        [v7 controlDrawer:self didChangeTimerDuration:{objc_msgSend(v6, "timerDuration")}];
      }
    }

    else if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v7 = [(CAMControlDrawer *)self delegate];
      v6 = [(CAMControlDrawer *)self livePhotoButton];
      [v7 controlDrawer:self didChangeLivePhotoMode:{objc_msgSend(v6, "livePhotoMode")}];
    }

    else
    {
      v7 = [(CAMControlDrawer *)self delegate];
      v6 = [(CAMControlDrawer *)self flashButton];
      [v7 controlDrawer:self didChangeFlashMode:{objc_msgSend(v6, "flashMode")}];
    }
  }

  else if (v4 <= 12)
  {
    if (v4 == 5)
    {
      v7 = [(CAMControlDrawer *)self delegate];
      v6 = [(CAMControlDrawer *)self hdrButton];
      [v7 controlDrawer:self didChangeHDRMode:{objc_msgSend(v6, "hdrMode")}];
    }

    else
    {
      if (v4 != 12)
      {
        return;
      }

      v7 = [(CAMControlDrawer *)self delegate];
      v6 = [(CAMControlDrawer *)self rawButton];
      [v7 controlDrawer:self didChangeRAWMode:{objc_msgSend(v6, "rawMode")}];
    }
  }

  else
  {
    switch(v4)
    {
      case 13:
        v7 = [(CAMControlDrawer *)self delegate];
        v6 = [(CAMControlDrawer *)self proResButton];
        [v7 controlDrawer:self didChangeProResVideoMode:{objc_msgSend(v6, "proResVideoMode")}];
        break;
      case 14:
        v7 = [(CAMControlDrawer *)self delegate];
        v6 = [(CAMControlDrawer *)self sharedLibraryButton];
        [v7 controlDrawer:self didChangeSharedLibraryMode:{objc_msgSend(v6, "sharedLibraryMode")}];
        break;
      case 15:
        v7 = [(CAMControlDrawer *)self delegate];
        v6 = [(CAMControlDrawer *)self videoStabilizationButton];
        [v7 controlDrawer:self didChangeVideoStabilizationMode:{objc_msgSend(v6, "videoStabilizationMode")}];
        break;
      default:
        return;
    }
  }
}

- (void)_handleControlReleased:(id)a3
{
  v4 = [a3 controlType];
  [(CAMControlDrawer *)self _loadCustomUIIfNeededForControlType:v4];
  if (v4 == 4)
  {
    v8 = [(CAMControlDrawer *)self delegate];
    v7 = [(CAMControlDrawer *)self filterButton];
    [v8 controlDrawer:self wantsFilterScrubberVisible:{objc_msgSend(v7, "isExpanded") ^ 1}];
  }

  else
  {
    if (v4)
    {
      return;
    }

    v5 = [(CAMControlDrawer *)self flashButton];
    v6 = [v5 isFlashUnavailable];

    if (!v6)
    {
      return;
    }

    v8 = [(CAMControlDrawer *)self delegate];
    [v8 controlDrawerFlashButtonUnavailable:self];
  }
}

- (void)_loadCustomUIIfNeededForControlType:(int64_t)a3
{
  if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        [(CAMControlDrawer *)self _loadExposureSliderIfNeeded];
        break;
      case 9:
        [(CAMControlDrawer *)self _loadNightModeSliderIfNeeded];
        break;
      case 10:
        [(CAMControlDrawer *)self _loadSemanticStyleControlIfNeeded];
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        [(CAMControlDrawer *)self _loadFilterScrubberIfNeeded];
        break;
      case 6:
        [(CAMControlDrawer *)self _loadApertureSliderIfNeeded];
        break;
      case 7:
        [(CAMControlDrawer *)self _loadIntensitySliderIfNeeded];
        break;
    }
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_scrubberGradientEdgeInsets
{
  +[CAMControlDrawerButton buttonSize];
  v3 = v2 * 0.5 + 44.0 + 5.0;
  v4 = 20.0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)_loadFilterScrubberIfNeeded
{
  if (!self->_filterScrubberView)
  {
    v3 = objc_alloc(MEMORY[0x1E69938A0]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    filterScrubberView = self->_filterScrubberView;
    self->_filterScrubberView = v4;

    [(CEKWheelScrubberView *)self->_filterScrubberView setCornerStyle:1];
    [(CEKWheelScrubberView *)self->_filterScrubberView setTransparentGradients];
    [(CAMControlDrawer *)self _scrubberGradientEdgeInsets];
    [(CEKWheelScrubberView *)self->_filterScrubberView setGradientInsets:?];
    v6 = [(CAMControlDrawer *)self _scrollView];
    [v6 insertSubview:self->_filterScrubberView atIndex:0];

    [(CEKWheelScrubberView *)self->_filterScrubberView addTarget:self action:sel__filterScrubberDidChangeValue forControlEvents:4096];
    v7 = [(CAMControlDrawer *)self delegate];
    [v7 controlDrawerDidCreateFilterScrubber:self];

    [(CAMControlDrawer *)self _layoutFilterScrubberView];

    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
  }
}

- (void)_filterScrubberDidChangeValue
{
  v3 = [(CAMControlDrawer *)self delegate];
  [v3 controlDrawer:self didChangeValueForControlType:4];
}

- (void)_loadApertureSliderIfNeeded
{
  if (!self->_apertureSlider)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6993820]);
    apertureSlider = self->_apertureSlider;
    self->_apertureSlider = v3;

    [(CAMControlDrawer *)self _scrubberGradientEdgeInsets];
    [(CEKApertureSlider *)self->_apertureSlider setGradientInsets:?];
    [(CEKApertureSlider *)self->_apertureSlider setTitleAlignment:2];
    [(CEKApertureSlider *)self->_apertureSlider setFontStyle:[(CAMControlDrawer *)self _sliderFontStyle]];
    v5 = [(CAMControlDrawer *)self _scrollView];
    [v5 insertSubview:self->_apertureSlider atIndex:0];

    [(CAMControlDrawer *)self _layoutApertureSlider];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CEKApertureSlider *)self->_apertureSlider addTarget:self action:sel__apertureSliderDidChangeValue forControlEvents:4096];
    v6 = [(CAMControlDrawer *)self delegate];
    [v6 controlDrawerDidCreateApertureSlider:self];
  }
}

- (void)_apertureSliderDidChangeValue
{
  v3 = [(CAMControlDrawer *)self delegate];
  [v3 controlDrawer:self didChangeValueForControlType:6];
}

- (void)_loadIntensitySliderIfNeeded
{
  if (!self->_intensitySlider)
  {
    v9 = CAMLocalizedFrameworkString(@"PORTRAIT_INTENSITY_SLIDER_TITLE", 0);
    v3 = [objc_alloc(MEMORY[0x1E6993888]) initWithTitle:v9];
    intensitySlider = self->_intensitySlider;
    self->_intensitySlider = v3;

    [(CAMControlDrawer *)self _scrubberGradientEdgeInsets];
    [(CEKSlider *)self->_intensitySlider setGradientInsets:?];
    [(CEKSlider *)self->_intensitySlider setSliderVerticalAlignment:2];
    [(CEKSlider *)self->_intensitySlider setValueLabelVisibility:2];
    [(CEKSlider *)self->_intensitySlider setTitleAlignment:2];
    [(CEKSlider *)self->_intensitySlider setFontStyle:[(CAMControlDrawer *)self _sliderFontStyle]];
    v5 = self->_intensitySlider;
    v6 = [MEMORY[0x1E69DC888] blackColor];
    [(CEKSlider *)v5 setOpaqueGradientsWithColor:v6];

    v7 = [(CAMControlDrawer *)self _scrollView];
    [v7 insertSubview:self->_intensitySlider atIndex:0];

    [(CAMControlDrawer *)self _layoutIntensitySlider];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CEKSlider *)self->_intensitySlider addTarget:self action:sel__intensitySliderDidChangeValue forControlEvents:4096];
    v8 = [(CAMControlDrawer *)self delegate];
    [v8 controlDrawerDidCreateIntensitySlider:self];
  }
}

- (void)_intensitySliderDidChangeValue
{
  v3 = [(CAMControlDrawer *)self delegate];
  [v3 controlDrawer:self didChangeValueForControlType:7];
}

- (void)_loadNightModeSliderIfNeeded
{
  if (!self->_nightModeSlider)
  {
    v3 = objc_alloc_init(CAMNightModeSlider);
    nightModeSlider = self->_nightModeSlider;
    self->_nightModeSlider = v3;

    [(CAMControlDrawer *)self _scrubberGradientEdgeInsets];
    [(CEKDiscreteSlider *)self->_nightModeSlider setGradientInsets:?];
    [(CEKDiscreteSlider *)self->_nightModeSlider setTitleAlignment:2];
    [(CEKDiscreteSlider *)self->_nightModeSlider setFontStyle:[(CAMControlDrawer *)self _sliderFontStyle]];
    [(CEKDiscreteSlider *)self->_nightModeSlider setTransparentGradients];
    v5 = [(CAMControlDrawer *)self _scrollView];
    [v5 insertSubview:self->_nightModeSlider atIndex:0];

    [(CAMControlDrawer *)self _layoutNightModeSlider];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CAMNightModeSlider *)self->_nightModeSlider addTarget:self action:sel__nightModeSliderDidChangeValue forControlEvents:4096];
    v6 = [(CAMControlDrawer *)self delegate];
    [v6 controlDrawerDidCreateNightModeSlider:self];
  }
}

- (void)_nightModeSliderDidChangeValue
{
  v3 = [(CAMControlDrawer *)self delegate];
  [v3 controlDrawer:self didChangeValueForControlType:9];
}

- (void)_loadExposureSliderIfNeeded
{
  if (!self->_exposureSlider)
  {
    v3 = objc_alloc_init(CAMExposureSlider);
    exposureSlider = self->_exposureSlider;
    self->_exposureSlider = v3;

    [(CAMControlDrawer *)self _scrubberGradientEdgeInsets];
    [(CEKDiscreteSlider *)self->_exposureSlider setGradientInsets:?];
    [(CEKDiscreteSlider *)self->_exposureSlider setTitleAlignment:2];
    [(CEKDiscreteSlider *)self->_exposureSlider setFontStyle:[(CAMControlDrawer *)self _sliderFontStyle]];
    [(CEKDiscreteSlider *)self->_exposureSlider setTransparentGradients];
    v5 = [(CAMControlDrawer *)self _scrollView];
    [v5 insertSubview:self->_exposureSlider atIndex:0];

    [(CAMControlDrawer *)self _layoutExposureSlider];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CAMExposureSlider *)self->_exposureSlider addTarget:self action:sel__exposureSliderDidChangeValue forControlEvents:4096];
    v6 = [(CAMControlDrawer *)self delegate];
    [v6 controlDrawerDidCreateExposureSlider:self];
  }
}

- (void)_exposureSliderDidChangeValue
{
  v3 = [(CAMControlDrawer *)self delegate];
  [v3 controlDrawer:self didChangeValueForControlType:8];
}

- (void)_loadSemanticStyleControlIfNeeded
{
  if (!self->_semanticStyleControl)
  {
    v3 = objc_alloc_init(CAMSemanticStyleControl);
    semanticStyleControl = self->_semanticStyleControl;
    self->_semanticStyleControl = v3;

    [(CAMControlDrawer *)self _scrubberGradientEdgeInsets];
    [(CAMSemanticStyleControl *)self->_semanticStyleControl setGradientInsets:?];
    v5 = [(CAMControlDrawer *)self _scrollView];
    [v5 insertSubview:self->_semanticStyleControl atIndex:0];

    [(CAMControlDrawer *)self _layoutSemanticStyleControl];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CAMSemanticStyleControl *)self->_semanticStyleControl addTarget:self action:sel__semanticStyleControlDidChangeValue forControlEvents:4096];
    v6 = [(CAMControlDrawer *)self delegate];
    [v6 controlDrawerDidCreateSemanticStyleControl:self];
  }
}

- (void)_semanticStyleControlDidChangeValue
{
  v3 = [(CAMControlDrawer *)self delegate];
  [v3 controlDrawer:self didChangeValueForControlType:10];
}

- (unint64_t)_sliderFontStyle
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = [v2 sfCameraFontSupported];

  return v3;
}

- (unint64_t)_viewportMaximumControlCount
{
  [(CAMControlDrawer *)self _viewportLength];
  if (v2 < 375.0)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

- (double)_controlCenterSpacingForControlCount:(unint64_t)a3
{
  [(CAMControlDrawer *)self _viewportLength];
  v6 = v5;
  v7 = [(CAMControlDrawer *)self _viewportMaximumControlCount];
  result = 0.0;
  if (a3 >= 2)
  {
    if (v7 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v7;
    }

    return (v6 + -44.0 + -44.0) / (v9 - 1);
  }

  return result;
}

- (CGSize)_scrollingContentSizeForControlCount:(unint64_t)a3
{
  [(CAMControlDrawer *)self bounds];
  v6 = v5;
  v8 = v7;
  if ([(CAMControlDrawer *)self _viewportMaximumControlCount]< a3)
  {
    [(CAMControlDrawer *)self _controlCenterSpacingForControlCount:a3];
    v6 = v9 * (a3 - 1) + 88.0;
  }

  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_layoutVisibleControlForType:(int64_t)a3 visibleControlTypes:(id)a4
{
  v27 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v27 indexOfObject:v6];

  v7 = [(CAMControlDrawer *)self expandedControl];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "controlType")}];
    [v27 indexOfObject:v9];
  }

  [(CAMControlDrawer *)self bounds];
  v10 = [v27 count];
  v11 = [(CAMControlDrawer *)self _controlMap];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (v8)
  {
    +[CAMControlDrawerButton buttonSize];
  }

  else
  {
    [(CAMControlDrawer *)self _controlCenterSpacingForControlCount:v10];
  }

  [v13 intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [v13 frameForAlignmentRect:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (v8)
  {
    v22 = [(CAMControlDrawer *)self _scrollView];
    [(CAMControlDrawer *)self convertRect:v22 toView:v15, v17, v19, v21];
    v15 = v23;
    v17 = v24;
    v19 = v25;
    v21 = v26;
  }

  CAMViewSetBoundsAndCenterForFrame(v13, v15, v17, v19, v21);
}

- (void)_updateExpansionInsetsForExpandableButton:(id)a3
{
  v35 = a3;
  [v35 frame];
  [v35 alignmentRectForFrame:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v32 = v10;
  [(CAMControlDrawer *)self _viewportLength];
  UIRectIntegralWithScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CAMControlDrawer *)self _scrollView];
  [(CAMControlDrawer *)self convertRect:v19 toView:v12, v14, v16, v18];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v33 = *MEMORY[0x1E69DDCE0];
  v34 = *(MEMORY[0x1E69DDCE0] + 16);
  v37.origin.x = v5;
  v28 = v5;
  v37.origin.y = v7;
  v37.size.width = v9;
  v37.size.height = v32;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v21;
  v38.origin.y = v23;
  v38.size.width = v25;
  v38.size.height = v27;
  v30 = MinX - CGRectGetMinX(v38);
  v39.origin.x = v21;
  v39.origin.y = v23;
  v39.size.width = v25;
  v39.size.height = v27;
  MaxX = CGRectGetMaxX(v39);
  v40.origin.x = v28;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v32;
  [v35 setExpansionInsets:{v33, v30, v34, MaxX - CGRectGetMaxX(v40)}];
}

- (void)_layoutFullWidthCustomView:(id)a3 forAssociatedControl:(id)a4 expanded:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(CAMControlDrawer *)self bounds];
  v12 = CGRectInset(v11, 0.0, 2.0);
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:v9 withAlignmentRect:v8 forAssociatedControl:v5 expanded:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
}

- (void)_layoutFullWidthCustomView:(id)a3 withAlignmentRect:(CGRect)a4 forAssociatedControl:(id)a5 expanded:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v38 = a3;
  if (!a6)
  {
    v13 = a5;
    [v13 center];
    v15 = v14;
    v17 = v16;
    v18 = [v13 superview];

    [(CAMControlDrawer *)self convertPoint:v18 fromView:v15, v17];
    v20 = v19;

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    x = v20 - CGRectGetMidX(v40);
  }

  [v38 frameForAlignmentRect:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v38 superview];
  [(CAMControlDrawer *)self convertRect:v29 toView:v22, v24, v26, v28];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v38 setFrame:{v31, v33, v35, v37}];
}

- (void)_layoutApertureSlider
{
  v4 = [(CAMControlDrawer *)self apertureSlider];
  v3 = [(CAMControlDrawer *)self apertureButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:v4 forAssociatedControl:v3 expanded:[(CAMControlDrawer *)self isApertureSliderExpanded]];
}

- (void)_layoutIntensitySlider
{
  v4 = [(CAMControlDrawer *)self intensitySlider];
  v3 = [(CAMControlDrawer *)self intensityButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:v4 forAssociatedControl:v3 expanded:[(CAMControlDrawer *)self isIntensitySliderExpanded]];
}

- (void)_layoutExposureSlider
{
  v4 = [(CAMControlDrawer *)self exposureSlider];
  v3 = [(CAMControlDrawer *)self exposureButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:v4 forAssociatedControl:v3 expanded:[(CAMControlDrawer *)self isExposureSliderExpanded]];
}

- (void)_layoutNightModeSlider
{
  v4 = [(CAMControlDrawer *)self nightModeSlider];
  v3 = [(CAMControlDrawer *)self nightModeButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:v4 forAssociatedControl:v3 expanded:[(CAMControlDrawer *)self isNightModeSliderExpanded]];
}

- (void)_layoutSemanticStyleControl
{
  v4 = [(CAMControlDrawer *)self semanticStyleControl];
  v3 = [(CAMControlDrawer *)self semanticStyleButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:v4 forAssociatedControl:v3 expanded:[(CAMControlDrawer *)self isSemanticStyleControlExpanded]];
}

- (void)_layoutFilterScrubberView
{
  v4 = [(CAMControlDrawer *)self filterScrubberView];
  v3 = [(CAMControlDrawer *)self filterButton];
  [(CAMControlDrawer *)self _layoutScrubberView:v4 forAssociatedControl:v3 expanded:[(CAMControlDrawer *)self isFilterScrubberExpanded]];
}

- (void)_layoutScrubberView:(id)a3 forAssociatedControl:(id)a4 expanded:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    v8 = a4;
    v9 = a3;
    [v9 thumbnailSize];
    [(CAMControlDrawer *)self bounds];
    UIRectCenteredYInRectScale();
    [(CAMControlDrawer *)self _layoutFullWidthCustomView:v9 withAlignmentRect:v8 forAssociatedControl:v5 expanded:0];

    [v9 selectedThumbnailBorderWidth];
    UIFloorToViewScale();
    [v9 setSelectionDotCenterTopSpacing:?];
  }
}

- (void)setLayoutStyle:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(CAMControlDrawer *)self _controlMap];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) setLayoutStyle:a3];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setVisibleControlTypes:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  v28 = self;
  if (self->_visibleControlTypes != v7 && ![(NSArray *)v7 isEqualToArray:?])
  {
    v9 = self->_visibleControlTypes;
    objc_storeStrong(&self->_visibleControlTypes, a3);
    [(CAMControlDrawer *)self _ensureVisibleControls];
    v10 = [(CAMControlDrawer *)self expandedControl];
    v11 = v10;
    if (v10)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "controlType")}];
      v13 = [(NSArray *)v8 containsObject:v12];

      if (!v13)
      {
        [(CAMControlDrawer *)v28 _setExpandedControl:0 animated:v4 updatePreferredDrawerControl:0];
      }
    }

    if (v4)
    {
      v26 = v11;
      v27 = v9;
      v14 = [MEMORY[0x1E695DFD8] setWithArray:v9];
      v15 = v8;
      v16 = [MEMORY[0x1E695DFA8] setWithArray:v8];
      v25 = v14;
      [v16 minusSet:v14];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v35;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v34 + 1) + 8 * i);
            v23 = [v22 integerValue];
            v24 = MEMORY[0x1E69DD250];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __52__CAMControlDrawer_setVisibleControlTypes_animated___block_invoke;
            v30[3] = &unk_1E76F8400;
            v30[4] = v28;
            v33 = v23;
            v31 = v15;
            v32 = v22;
            [v24 performWithoutAnimation:v30];
          }

          v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v19);
      }

      [(CAMControlDrawer *)v28 setNeedsLayout];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __52__CAMControlDrawer_setVisibleControlTypes_animated___block_invoke_2;
      v29[3] = &unk_1E76F77B0;
      v29[4] = v28;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v29 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
      v8 = v15;
      v11 = v26;
      v9 = v27;
    }

    else
    {
      [(CAMControlDrawer *)v28 setNeedsLayout];
    }
  }
}

void __52__CAMControlDrawer_setVisibleControlTypes_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutVisibleControlForType:*(a1 + 56) visibleControlTypes:*(a1 + 40)];
  v3 = [*(a1 + 32) _controlMap];
  v2 = [v3 objectForKeyedSubscript:*(a1 + 48)];
  [v2 layoutIfNeeded];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_orientation != a3)
  {
    v4 = a4;
    self->_orientation = a3;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(CAMControlDrawer *)self _controlMap];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) setOrientation:a3 animated:v4];
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)setExpanded:(BOOL)a3 forControlType:(int64_t)a4 animated:(BOOL)a5 updatePreferredDrawerControl:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = [(CAMControlDrawer *)self _controlMap];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v13 = [v11 objectForKeyedSubscript:v12];

  if ([v13 isExpandable])
  {
    v14 = v13;
    v15 = v14;
    if (!a3)
    {
      if (![(CAMControlDrawer *)self isControlExpandedForType:a4])
      {
LABEL_6:

        goto LABEL_10;
      }

      v15 = 0;
    }

    [(CAMControlDrawer *)self _setExpandedControl:v15 animated:v7 updatePreferredDrawerControl:v6];
    goto LABEL_6;
  }

  v16 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CAMControlDrawer setExpanded:v13 forControlType:v16 animated:? updatePreferredDrawerControl:?];
  }

LABEL_10:
}

- (BOOL)isControlExpandedForType:(int64_t)a3
{
  v5 = [(CAMControlDrawer *)self expandedControl];
  if (v5)
  {
    v6 = [(CAMControlDrawer *)self expandedControl];
    v7 = [v6 controlType] == a3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)expandedControlType
{
  v3 = [(CAMControlDrawer *)self expandedControl];
  if (v3)
  {
    v4 = [(CAMControlDrawer *)self expandedControl];
    v5 = [v4 controlType];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (void)_ensureVisibleControls
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CAMControlDrawer *)self visibleControlTypes];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) integerValue];
        [(CAMControlDrawer *)self _loadControlIfNeededForType:v8];
        [(CAMControlDrawer *)self _installControlIfNeededForType:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_loadControlIfNeededForType:(int64_t)a3
{
  v9 = [(CAMControlDrawer *)self _controlMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v9 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [(CAMControlDrawer *)self _createControlForType:a3];
    [v6 setOrientation:{-[CAMControlDrawer orientation](self, "orientation")}];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v9 setObject:v6 forKeyedSubscript:v7];

    if ([v6 isExpandable])
    {
      [v6 setDelegate:self];
    }

    v8 = [(CAMControlDrawer *)self delegate];
    [v8 controlDrawer:self didCreateControlForType:a3];
  }
}

- (void)_installControlIfNeededForType:(int64_t)a3
{
  v9 = [(CAMControlDrawer *)self _scrollView];
  v5 = [(CAMControlDrawer *)self _controlMap];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 superview];

    if (v8 != v9)
    {
      [v9 addSubview:v7];
    }
  }
}

- (void)_updateControlsScaleAnimated:(BOOL)a3
{
  v3 = a3;
  [(CAMControlDrawer *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CAMControlDrawer *)self expandedControl];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__CAMControlDrawer__updateControlsScaleAnimated___block_invoke;
  v16[3] = &unk_1E76F8428;
  if (v3)
  {
    v14 = 0.5;
  }

  else
  {
    v14 = 0.0;
  }

  v18 = v6;
  v19 = v8;
  v20 = v10;
  v21 = v12;
  v16[4] = self;
  v17 = v13;
  v15 = v13;
  [CAMView animateIfNeededWithDuration:2 usingSpringWithDamping:v16 initialSpringVelocity:0 options:v14 animations:1.0 completion:1.0];
}

void __49__CAMControlDrawer__updateControlsScaleAnimated___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) _controlMap];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        [v8 intrinsicContentSize];
        if (v10 > *(a1 + 64) || ((v11 = *(a1 + 40), v11 != v8) ? (v12 = v11 == 0) : (v12 = 1), v12 ? (v13 = 1.0) : (v13 = 0.92), v9 > *(a1 + 72)))
        {
          v13 = 0.75;
        }

        CGAffineTransformMakeScale(&v15, v13, v13);
        v14 = v15;
        [v8 setTransform:&v14];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

- (void)_updateControlsVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMControlDrawer *)self expandedControl];
  v6 = MEMORY[0x1E695DFD8];
  v7 = [(CAMControlDrawer *)self visibleControlTypes];
  v8 = [v6 setWithArray:v7];

  v12[1] = 3221225472;
  v12[0] = MEMORY[0x1E69E9820];
  v12[2] = __54__CAMControlDrawer__updateControlsVisibilityAnimated___block_invoke;
  v12[3] = &unk_1E76F7938;
  if (v3)
  {
    v9 = 0.5;
  }

  else
  {
    v9 = 0.0;
  }

  v12[4] = self;
  v13 = v8;
  v14 = v5;
  v10 = v5;
  v11 = v8;
  [CAMView animateIfNeededWithDuration:2 usingSpringWithDamping:v12 initialSpringVelocity:0 options:v9 animations:1.0 completion:1.0];
}

void __54__CAMControlDrawer__updateControlsVisibilityAnimated___block_invoke(id *a1)
{
  v2 = [a1[4] _controlMap];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__CAMControlDrawer__updateControlsVisibilityAnimated___block_invoke_2;
  v18 = &unk_1E76F8450;
  v19 = a1[5];
  v20 = a1[6];
  [v2 enumerateKeysAndObjectsUsingBlock:&v15];

  if ([a1[4] isFilterScrubberExpanded])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [a1[4] filterScrubberView];
  [v4 setAlpha:v3];

  if ([a1[4] isApertureSliderExpanded])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [a1[4] apertureSlider];
  [v6 setAlpha:v5];

  if ([a1[4] isIntensitySliderExpanded])
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [a1[4] intensitySlider];
  [v8 setAlpha:v7];

  if ([a1[4] isExposureSliderExpanded])
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [a1[4] exposureSlider];
  [v10 setAlpha:v9];

  if ([a1[4] isNightModeSliderExpanded])
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [a1[4] nightModeSlider];
  [v12 setAlpha:v11];

  if ([a1[4] isSemanticStyleControlExpanded])
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [a1[4] semanticStyleControl];
  [v14 setAlpha:v13];
}

void __54__CAMControlDrawer__updateControlsVisibilityAnimated___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v9 = a3;
  [v9 setAlpha:{objc_msgSend(v5, "containsObject:", a2)}];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = v6 == v9;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  [v9 setUserInteractionEnabled:v8];
}

- (void)_setExpandedControl:(id)a3 animated:(BOOL)a4 updatePreferredDrawerControl:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  expandedControl = self->_expandedControl;
  if (expandedControl == v9)
  {
    goto LABEL_23;
  }

  if (v6)
  {
    [(CAMControlDrawer *)self layoutIfNeeded];
    expandedControl = self->_expandedControl;
  }

  if (expandedControl)
  {
    v11 = self->_expandedControl;
    self->_expandedControl = 0;
    v12 = expandedControl;

    [(CAMControlDrawerExpandableButton *)v12 setExpanded:0 animated:v6];
    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = v5;
    }

    v14 = [(CAMControlDrawer *)self presentationDelegate];
    [v14 controlDrawer:self didChangeExpanded:0 forControlType:-[CAMControlDrawerExpandableButton controlType](v12 animated:"controlType") updatePreferredDrawerControl:{v6, v13}];
  }

  if (v9)
  {
    [(CAMControlDrawer *)self _loadCustomUIIfNeededForControlType:[(CAMControlDrawerExpandableButton *)v9 controlType]];
    if (v6)
    {
      [(CAMControlDrawer *)self layoutIfNeeded];
    }
  }

  objc_storeStrong(&self->_expandedControl, a3);
  [(CAMControlDrawer *)self setNeedsLayout];
  if (!self->_expandedControl)
  {
    v28 = [(CAMControlDrawer *)self _scrollView];
    [v28 setScrollEnabled:1];
LABEL_18:

    goto LABEL_19;
  }

  [(CAMControlDrawer *)self bringSubviewToFront:?];
  [(CAMControlDrawerExpandableButton *)self->_expandedControl setExpanded:1 animated:v6];
  v15 = [(CAMControlDrawer *)self _scrollView];
  [v15 setScrollEnabled:0];

  v16 = [(CAMControlDrawer *)self _scrollView];
  [v16 stopScrollingAndZooming];

  [(CAMControlDrawerExpandableButton *)v9 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(CAMControlDrawer *)self _scrollView];
  v26 = [v25 _isRectFullyVisible:{v18, v20, v22, v24}];

  if ((v26 & 1) == 0)
  {
    v27 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v27, OS_LOG_TYPE_DEFAULT, "Scrolling control drawer to make control visible before expansion", buf, 2u);
    }

    v28 = [(CAMControlDrawer *)self _scrollView];
    [v28 scrollRectToVisible:0 animated:{v18, v20, v22, v24}];
    goto LABEL_18;
  }

LABEL_19:
  if (v6)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __78__CAMControlDrawer__setExpandedControl_animated_updatePreferredDrawerControl___block_invoke;
    v30[3] = &unk_1E76F77B0;
    v30[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v30 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
  }

  [(CAMControlDrawer *)self _updateControlsScaleAnimated:v6];
  [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:v6];
  if (v9)
  {
    v29 = [(CAMControlDrawer *)self presentationDelegate];
    [v29 controlDrawer:self didChangeExpanded:1 forControlType:-[CAMControlDrawerExpandableButton controlType](self->_expandedControl animated:"controlType") updatePreferredDrawerControl:{v6, v5}];
  }

LABEL_23:
}

- (void)expandableButton:(id)a3 willChangeExpanded:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 controlType];

  [(CAMControlDrawer *)self setExpanded:v4 forControlType:v6 animated:1 updatePreferredDrawerControl:1];
}

- (void)menuButtonDidSelectItem:(id)a3
{
  v4 = a3;
  v6 = [(CAMControlDrawer *)self delegate];
  v5 = [v4 controlType];

  [v6 controlDrawer:self didSelectMenuItemForControlType:v5];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(CAMControlDrawer *)self expandedControl];
  if (v4)
  {
    v5 = v4;
    [(CAMControlDrawer *)self setNeedsLayout];
    v4 = v5;
  }
}

- (id)touchingRecognizersToCancel
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(CAMControlDrawer *)self _scrollView];
  v3 = [v2 panGestureRecognizer];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)_iterateViewsForHUDManager:(id)a3 withItemFoundBlock:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CAMControlDrawer *)self expandedControl];

  if (v8)
  {
    v9 = [(CAMControlDrawer *)self expandedControl];
    v7[2](v7, v9);
  }

  else
  {
    v10 = [(CAMControlDrawer *)self _scrollView];
    [v6 locationOfAccessibilityGestureInView:v10];
    v12 = v11;
    v14 = v13;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [(CAMControlDrawer *)self visibleControlTypes];
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          v21 = [(CAMControlDrawer *)self _controlMap];
          v22 = [v21 objectForKeyedSubscript:v20];

          [v22 frame];
          v29.x = v12;
          v29.y = v14;
          if (CGRectContainsPoint(v30, v29))
          {
            v7[2](v7, v22);

            goto LABEL_13;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CAMControlDrawer_hudItemForAccessibilityHUDManager___block_invoke;
  v8[3] = &unk_1E76F79B0;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(CAMControlDrawer *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __54__CAMControlDrawer_hudItemForAccessibilityHUDManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hudItemForAccessibilityHUDManager:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CAMControlDrawer_selectedByAccessibilityHUDManager___block_invoke;
  v6[3] = &unk_1E76F79D8;
  v7 = v4;
  v5 = v4;
  [(CAMControlDrawer *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v6];
}

- (BOOL)shouldAccessibilityGestureBeginForHUDManager:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CAMControlDrawer_shouldAccessibilityGestureBeginForHUDManager___block_invoke;
  v7[3] = &unk_1E76F79B0;
  v9 = &v10;
  v5 = v4;
  v8 = v5;
  [(CAMControlDrawer *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __65__CAMControlDrawer_shouldAccessibilityGestureBeginForHUDManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 shouldAccessibilityGestureBeginForHUDManager:*(a1 + 32)];
  }
}

- (CAMControlDrawerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CAMControlDrawerPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (void)setExpanded:(uint64_t)a1 forControlType:(NSObject *)a2 animated:updatePreferredDrawerControl:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Trying to expand a control that is not expandable: %{public}@", &v2, 0xCu);
}

@end