@interface CAMControlDrawer
- ($F24F406B2B787EFB06265DBA3D28CBD5)_scrubberGradientEdgeInsets;
- (BOOL)isControlExpandedForType:(int64_t)type;
- (BOOL)shouldAccessibilityGestureBeginForHUDManager:(id)manager;
- (CAMControlDrawer)initWithCoder:(id)coder;
- (CAMControlDrawer)initWithFrame:(CGRect)frame;
- (CAMControlDrawer)initWithLayoutStyle:(int64_t)style;
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
- (CGSize)_scrollingContentSizeForControlCount:(unint64_t)count;
- (double)_controlCenterSpacingForControlCount:(unint64_t)count;
- (id)_createControlForType:(int64_t)type;
- (id)buttonForType:(int64_t)type;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (id)touchingRecognizersToCancel;
- (int64_t)expandedControlType;
- (unint64_t)_sliderFontStyle;
- (unint64_t)_viewportMaximumControlCount;
- (void)_apertureSliderDidChangeValue;
- (void)_commonInitializationWithLayoutStyle:(int64_t)style;
- (void)_ensureVisibleControls;
- (void)_exposureSliderDidChangeValue;
- (void)_filterScrubberDidChangeValue;
- (void)_handleControlReleased:(id)released;
- (void)_handleControlValueChanged:(id)changed;
- (void)_installControlIfNeededForType:(int64_t)type;
- (void)_intensitySliderDidChangeValue;
- (void)_iterateViewsForHUDManager:(id)manager withItemFoundBlock:(id)block;
- (void)_layoutApertureSlider;
- (void)_layoutExposureSlider;
- (void)_layoutFilterScrubberView;
- (void)_layoutFullWidthCustomView:(id)view forAssociatedControl:(id)control expanded:(BOOL)expanded;
- (void)_layoutFullWidthCustomView:(id)view withAlignmentRect:(CGRect)rect forAssociatedControl:(id)control expanded:(BOOL)expanded;
- (void)_layoutIntensitySlider;
- (void)_layoutNightModeSlider;
- (void)_layoutScrubberView:(id)view forAssociatedControl:(id)control expanded:(BOOL)expanded;
- (void)_layoutSemanticStyleControl;
- (void)_layoutVisibleControlForType:(int64_t)type visibleControlTypes:(id)types;
- (void)_loadApertureSliderIfNeeded;
- (void)_loadControlIfNeededForType:(int64_t)type;
- (void)_loadCustomUIIfNeededForControlType:(int64_t)type;
- (void)_loadExposureSliderIfNeeded;
- (void)_loadFilterScrubberIfNeeded;
- (void)_loadIntensitySliderIfNeeded;
- (void)_loadNightModeSliderIfNeeded;
- (void)_loadSemanticStyleControlIfNeeded;
- (void)_nightModeSliderDidChangeValue;
- (void)_semanticStyleControlDidChangeValue;
- (void)_setExpandedControl:(id)control animated:(BOOL)animated updatePreferredDrawerControl:(BOOL)drawerControl;
- (void)_updateControlsScaleAnimated:(BOOL)animated;
- (void)_updateControlsVisibilityAnimated:(BOOL)animated;
- (void)_updateExpansionInsetsForExpandableButton:(id)button;
- (void)expandableButton:(id)button willChangeExpanded:(BOOL)expanded;
- (void)layoutSubviews;
- (void)menuButtonDidSelectItem:(id)item;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectedByAccessibilityHUDManager:(id)manager;
- (void)setExpanded:(BOOL)expanded forControlType:(int64_t)type animated:(BOOL)animated updatePreferredDrawerControl:(BOOL)control;
- (void)setLayoutStyle:(int64_t)style;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setVisibleControlTypes:(id)types animated:(BOOL)animated;
@end

@implementation CAMControlDrawer

- (CAMControlDrawer)initWithLayoutStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = CAMControlDrawer;
  v4 = [(CAMControlDrawer *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMControlDrawer *)v4 _commonInitializationWithLayoutStyle:style];
  }

  return v5;
}

- (void)_commonInitializationWithLayoutStyle:(int64_t)style
{
  self->_layoutStyle = style;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  controlMap = self->__controlMap;
  self->__controlMap = dictionary;

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

- (CAMControlDrawer)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMControlDrawer;
  v3 = [(CAMControlDrawer *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

    [(CAMControlDrawer *)v3 _commonInitializationWithLayoutStyle:cam_initialLayoutStyle];
  }

  return v3;
}

- (CAMControlDrawer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CAMControlDrawer;
  v3 = [(CAMControlDrawer *)&v7 initWithCoder:coder];
  if (v3)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

    [(CAMControlDrawer *)v3 _commonInitializationWithLayoutStyle:cam_initialLayoutStyle];
  }

  return v3;
}

- (void)layoutSubviews
{
  v49 = *MEMORY[0x1E69E9840];
  visibleControlTypes = [(CAMControlDrawer *)self visibleControlTypes];
  _scrollView = [(CAMControlDrawer *)self _scrollView];
  [_scrollView frame];
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
    _scrollView2 = [(CAMControlDrawer *)self _scrollView];
    [_scrollView2 setFrame:{v19, v21, v23, v25}];
  }

  -[CAMControlDrawer _scrollingContentSizeForControlCount:](self, "_scrollingContentSizeForControlCount:", [visibleControlTypes count]);
  v28 = v27;
  v30 = v29;
  _scrollView3 = [(CAMControlDrawer *)self _scrollView];
  [_scrollView3 contentSize];
  v33 = v32;
  v35 = v34;

  if (v33 != v28 || v35 != v30)
  {
    _scrollView4 = [(CAMControlDrawer *)self _scrollView];
    [_scrollView4 setContentSize:{v28, v30}];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = visibleControlTypes;
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

  expandedControl = [(CAMControlDrawer *)self expandedControl];

  if (expandedControl)
  {
    expandedControl2 = [(CAMControlDrawer *)self expandedControl];
    [(CAMControlDrawer *)self _updateExpansionInsetsForExpandableButton:expandedControl2];
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

- (id)_createControlForType:(int64_t)type
{
  if (type > 0xF)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(*off_1E76F8470[type]) initWithLayoutStyle:{-[CAMControlDrawer layoutStyle](self, "layoutStyle")}];
  }

  [v4 addTarget:self action:sel__handleControlValueChanged_ forControlEvents:4096];
  [v4 addTarget:self action:sel__handleControlReleased_ forControlEvents:64];
  [v4 setAlpha:0.0];

  return v4;
}

- (id)buttonForType:(int64_t)type
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [_controlMap objectForKeyedSubscript:v5];

  return v6;
}

- (CAMDrawerFlashButton)flashButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C71D8];

  return v3;
}

- (CAMDrawerLivePhotoButton)livePhotoButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C71F0];

  return v3;
}

- (CAMDrawerAspectRatioButton)aspectRatioButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7208];

  return v3;
}

- (CAMDrawerTimerButton)timerButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7220];

  return v3;
}

- (CAMDrawerFilterButton)filterButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7238];

  return v3;
}

- (CAMDrawerApertureButton)apertureButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7250];

  return v3;
}

- (CAMDrawerIntensityButton)intensityButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7268];

  return v3;
}

- (CAMDrawerExposureButton)exposureButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7280];

  return v3;
}

- (CAMDrawerHDRButton)hdrButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7298];

  return v3;
}

- (CAMDrawerNightModeButton)nightModeButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C72B0];

  return v3;
}

- (CAMDrawerSemanticStyleButton)semanticStyleButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C72C8];

  return v3;
}

- (CAMDrawerSmartStyleButton)smartStyleButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C72E0];

  return v3;
}

- (CAMDrawerRAWButton)rawButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C72F8];

  return v3;
}

- (CAMDrawerProResButton)proResButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7310];

  return v3;
}

- (CAMDrawerSharedLibraryButton)sharedLibraryButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7328];

  return v3;
}

- (CAMDrawerVideoStabilizationButton)videoStabilizationButton
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v3 = [_controlMap objectForKeyedSubscript:&unk_1F16C7340];

  return v3;
}

- (void)_handleControlValueChanged:(id)changed
{
  controlType = [changed controlType];
  delegate = [(CAMControlDrawer *)self delegate];
  [delegate controlDrawer:self didChangeValueForControlType:controlType];

  if (controlType <= 4)
  {
    if (controlType > 1)
    {
      if (controlType == 2)
      {
        delegate2 = [(CAMControlDrawer *)self delegate];
        aspectRatioButton = [(CAMControlDrawer *)self aspectRatioButton];
        [delegate2 controlDrawer:self didChangeAspectRatio:{objc_msgSend(aspectRatioButton, "aspectRatio")}];
      }

      else
      {
        if (controlType != 3)
        {
          return;
        }

        delegate2 = [(CAMControlDrawer *)self delegate];
        aspectRatioButton = [(CAMControlDrawer *)self timerButton];
        [delegate2 controlDrawer:self didChangeTimerDuration:{objc_msgSend(aspectRatioButton, "timerDuration")}];
      }
    }

    else if (controlType)
    {
      if (controlType != 1)
      {
        return;
      }

      delegate2 = [(CAMControlDrawer *)self delegate];
      aspectRatioButton = [(CAMControlDrawer *)self livePhotoButton];
      [delegate2 controlDrawer:self didChangeLivePhotoMode:{objc_msgSend(aspectRatioButton, "livePhotoMode")}];
    }

    else
    {
      delegate2 = [(CAMControlDrawer *)self delegate];
      aspectRatioButton = [(CAMControlDrawer *)self flashButton];
      [delegate2 controlDrawer:self didChangeFlashMode:{objc_msgSend(aspectRatioButton, "flashMode")}];
    }
  }

  else if (controlType <= 12)
  {
    if (controlType == 5)
    {
      delegate2 = [(CAMControlDrawer *)self delegate];
      aspectRatioButton = [(CAMControlDrawer *)self hdrButton];
      [delegate2 controlDrawer:self didChangeHDRMode:{objc_msgSend(aspectRatioButton, "hdrMode")}];
    }

    else
    {
      if (controlType != 12)
      {
        return;
      }

      delegate2 = [(CAMControlDrawer *)self delegate];
      aspectRatioButton = [(CAMControlDrawer *)self rawButton];
      [delegate2 controlDrawer:self didChangeRAWMode:{objc_msgSend(aspectRatioButton, "rawMode")}];
    }
  }

  else
  {
    switch(controlType)
    {
      case 13:
        delegate2 = [(CAMControlDrawer *)self delegate];
        aspectRatioButton = [(CAMControlDrawer *)self proResButton];
        [delegate2 controlDrawer:self didChangeProResVideoMode:{objc_msgSend(aspectRatioButton, "proResVideoMode")}];
        break;
      case 14:
        delegate2 = [(CAMControlDrawer *)self delegate];
        aspectRatioButton = [(CAMControlDrawer *)self sharedLibraryButton];
        [delegate2 controlDrawer:self didChangeSharedLibraryMode:{objc_msgSend(aspectRatioButton, "sharedLibraryMode")}];
        break;
      case 15:
        delegate2 = [(CAMControlDrawer *)self delegate];
        aspectRatioButton = [(CAMControlDrawer *)self videoStabilizationButton];
        [delegate2 controlDrawer:self didChangeVideoStabilizationMode:{objc_msgSend(aspectRatioButton, "videoStabilizationMode")}];
        break;
      default:
        return;
    }
  }
}

- (void)_handleControlReleased:(id)released
{
  controlType = [released controlType];
  [(CAMControlDrawer *)self _loadCustomUIIfNeededForControlType:controlType];
  if (controlType == 4)
  {
    delegate = [(CAMControlDrawer *)self delegate];
    filterButton = [(CAMControlDrawer *)self filterButton];
    [delegate controlDrawer:self wantsFilterScrubberVisible:{objc_msgSend(filterButton, "isExpanded") ^ 1}];
  }

  else
  {
    if (controlType)
    {
      return;
    }

    flashButton = [(CAMControlDrawer *)self flashButton];
    isFlashUnavailable = [flashButton isFlashUnavailable];

    if (!isFlashUnavailable)
    {
      return;
    }

    delegate = [(CAMControlDrawer *)self delegate];
    [delegate controlDrawerFlashButtonUnavailable:self];
  }
}

- (void)_loadCustomUIIfNeededForControlType:(int64_t)type
{
  if (type > 7)
  {
    switch(type)
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
    switch(type)
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
    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [_scrollView insertSubview:self->_filterScrubberView atIndex:0];

    [(CEKWheelScrubberView *)self->_filterScrubberView addTarget:self action:sel__filterScrubberDidChangeValue forControlEvents:4096];
    delegate = [(CAMControlDrawer *)self delegate];
    [delegate controlDrawerDidCreateFilterScrubber:self];

    [(CAMControlDrawer *)self _layoutFilterScrubberView];

    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
  }
}

- (void)_filterScrubberDidChangeValue
{
  delegate = [(CAMControlDrawer *)self delegate];
  [delegate controlDrawer:self didChangeValueForControlType:4];
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
    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [_scrollView insertSubview:self->_apertureSlider atIndex:0];

    [(CAMControlDrawer *)self _layoutApertureSlider];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CEKApertureSlider *)self->_apertureSlider addTarget:self action:sel__apertureSliderDidChangeValue forControlEvents:4096];
    delegate = [(CAMControlDrawer *)self delegate];
    [delegate controlDrawerDidCreateApertureSlider:self];
  }
}

- (void)_apertureSliderDidChangeValue
{
  delegate = [(CAMControlDrawer *)self delegate];
  [delegate controlDrawer:self didChangeValueForControlType:6];
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
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(CEKSlider *)v5 setOpaqueGradientsWithColor:blackColor];

    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [_scrollView insertSubview:self->_intensitySlider atIndex:0];

    [(CAMControlDrawer *)self _layoutIntensitySlider];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CEKSlider *)self->_intensitySlider addTarget:self action:sel__intensitySliderDidChangeValue forControlEvents:4096];
    delegate = [(CAMControlDrawer *)self delegate];
    [delegate controlDrawerDidCreateIntensitySlider:self];
  }
}

- (void)_intensitySliderDidChangeValue
{
  delegate = [(CAMControlDrawer *)self delegate];
  [delegate controlDrawer:self didChangeValueForControlType:7];
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
    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [_scrollView insertSubview:self->_nightModeSlider atIndex:0];

    [(CAMControlDrawer *)self _layoutNightModeSlider];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CAMNightModeSlider *)self->_nightModeSlider addTarget:self action:sel__nightModeSliderDidChangeValue forControlEvents:4096];
    delegate = [(CAMControlDrawer *)self delegate];
    [delegate controlDrawerDidCreateNightModeSlider:self];
  }
}

- (void)_nightModeSliderDidChangeValue
{
  delegate = [(CAMControlDrawer *)self delegate];
  [delegate controlDrawer:self didChangeValueForControlType:9];
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
    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [_scrollView insertSubview:self->_exposureSlider atIndex:0];

    [(CAMControlDrawer *)self _layoutExposureSlider];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CAMExposureSlider *)self->_exposureSlider addTarget:self action:sel__exposureSliderDidChangeValue forControlEvents:4096];
    delegate = [(CAMControlDrawer *)self delegate];
    [delegate controlDrawerDidCreateExposureSlider:self];
  }
}

- (void)_exposureSliderDidChangeValue
{
  delegate = [(CAMControlDrawer *)self delegate];
  [delegate controlDrawer:self didChangeValueForControlType:8];
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
    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [_scrollView insertSubview:self->_semanticStyleControl atIndex:0];

    [(CAMControlDrawer *)self _layoutSemanticStyleControl];
    [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:0];
    [(CAMSemanticStyleControl *)self->_semanticStyleControl addTarget:self action:sel__semanticStyleControlDidChangeValue forControlEvents:4096];
    delegate = [(CAMControlDrawer *)self delegate];
    [delegate controlDrawerDidCreateSemanticStyleControl:self];
  }
}

- (void)_semanticStyleControlDidChangeValue
{
  delegate = [(CAMControlDrawer *)self delegate];
  [delegate controlDrawer:self didChangeValueForControlType:10];
}

- (unint64_t)_sliderFontStyle
{
  v2 = +[CAMCaptureCapabilities capabilities];
  sfCameraFontSupported = [v2 sfCameraFontSupported];

  return sfCameraFontSupported;
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

- (double)_controlCenterSpacingForControlCount:(unint64_t)count
{
  [(CAMControlDrawer *)self _viewportLength];
  v6 = v5;
  _viewportMaximumControlCount = [(CAMControlDrawer *)self _viewportMaximumControlCount];
  result = 0.0;
  if (count >= 2)
  {
    if (_viewportMaximumControlCount >= count)
    {
      countCopy = count;
    }

    else
    {
      countCopy = _viewportMaximumControlCount;
    }

    return (v6 + -44.0 + -44.0) / (countCopy - 1);
  }

  return result;
}

- (CGSize)_scrollingContentSizeForControlCount:(unint64_t)count
{
  [(CAMControlDrawer *)self bounds];
  v6 = v5;
  v8 = v7;
  if ([(CAMControlDrawer *)self _viewportMaximumControlCount]< count)
  {
    [(CAMControlDrawer *)self _controlCenterSpacingForControlCount:count];
    v6 = v9 * (count - 1) + 88.0;
  }

  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_layoutVisibleControlForType:(int64_t)type visibleControlTypes:(id)types
{
  typesCopy = types;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [typesCopy indexOfObject:v6];

  expandedControl = [(CAMControlDrawer *)self expandedControl];
  v8 = expandedControl;
  if (expandedControl)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(expandedControl, "controlType")}];
    [typesCopy indexOfObject:v9];
  }

  [(CAMControlDrawer *)self bounds];
  v10 = [typesCopy count];
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v13 = [_controlMap objectForKeyedSubscript:v12];

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
    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [(CAMControlDrawer *)self convertRect:_scrollView toView:v15, v17, v19, v21];
    v15 = v23;
    v17 = v24;
    v19 = v25;
    v21 = v26;
  }

  CAMViewSetBoundsAndCenterForFrame(v13, v15, v17, v19, v21);
}

- (void)_updateExpansionInsetsForExpandableButton:(id)button
{
  buttonCopy = button;
  [buttonCopy frame];
  [buttonCopy alignmentRectForFrame:?];
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
  _scrollView = [(CAMControlDrawer *)self _scrollView];
  [(CAMControlDrawer *)self convertRect:_scrollView toView:v12, v14, v16, v18];
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
  [buttonCopy setExpansionInsets:{v33, v30, v34, MaxX - CGRectGetMaxX(v40)}];
}

- (void)_layoutFullWidthCustomView:(id)view forAssociatedControl:(id)control expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  controlCopy = control;
  viewCopy = view;
  [(CAMControlDrawer *)self bounds];
  v12 = CGRectInset(v11, 0.0, 2.0);
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:viewCopy withAlignmentRect:controlCopy forAssociatedControl:expandedCopy expanded:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
}

- (void)_layoutFullWidthCustomView:(id)view withAlignmentRect:(CGRect)rect forAssociatedControl:(id)control expanded:(BOOL)expanded
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  if (!expanded)
  {
    controlCopy = control;
    [controlCopy center];
    v15 = v14;
    v17 = v16;
    superview = [controlCopy superview];

    [(CAMControlDrawer *)self convertPoint:superview fromView:v15, v17];
    v20 = v19;

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    x = v20 - CGRectGetMidX(v40);
  }

  [viewCopy frameForAlignmentRect:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  superview2 = [viewCopy superview];
  [(CAMControlDrawer *)self convertRect:superview2 toView:v22, v24, v26, v28];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [viewCopy setFrame:{v31, v33, v35, v37}];
}

- (void)_layoutApertureSlider
{
  apertureSlider = [(CAMControlDrawer *)self apertureSlider];
  apertureButton = [(CAMControlDrawer *)self apertureButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:apertureSlider forAssociatedControl:apertureButton expanded:[(CAMControlDrawer *)self isApertureSliderExpanded]];
}

- (void)_layoutIntensitySlider
{
  intensitySlider = [(CAMControlDrawer *)self intensitySlider];
  intensityButton = [(CAMControlDrawer *)self intensityButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:intensitySlider forAssociatedControl:intensityButton expanded:[(CAMControlDrawer *)self isIntensitySliderExpanded]];
}

- (void)_layoutExposureSlider
{
  exposureSlider = [(CAMControlDrawer *)self exposureSlider];
  exposureButton = [(CAMControlDrawer *)self exposureButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:exposureSlider forAssociatedControl:exposureButton expanded:[(CAMControlDrawer *)self isExposureSliderExpanded]];
}

- (void)_layoutNightModeSlider
{
  nightModeSlider = [(CAMControlDrawer *)self nightModeSlider];
  nightModeButton = [(CAMControlDrawer *)self nightModeButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:nightModeSlider forAssociatedControl:nightModeButton expanded:[(CAMControlDrawer *)self isNightModeSliderExpanded]];
}

- (void)_layoutSemanticStyleControl
{
  semanticStyleControl = [(CAMControlDrawer *)self semanticStyleControl];
  semanticStyleButton = [(CAMControlDrawer *)self semanticStyleButton];
  [(CAMControlDrawer *)self _layoutFullWidthCustomView:semanticStyleControl forAssociatedControl:semanticStyleButton expanded:[(CAMControlDrawer *)self isSemanticStyleControlExpanded]];
}

- (void)_layoutFilterScrubberView
{
  filterScrubberView = [(CAMControlDrawer *)self filterScrubberView];
  filterButton = [(CAMControlDrawer *)self filterButton];
  [(CAMControlDrawer *)self _layoutScrubberView:filterScrubberView forAssociatedControl:filterButton expanded:[(CAMControlDrawer *)self isFilterScrubberExpanded]];
}

- (void)_layoutScrubberView:(id)view forAssociatedControl:(id)control expanded:(BOOL)expanded
{
  if (view)
  {
    expandedCopy = expanded;
    controlCopy = control;
    viewCopy = view;
    [viewCopy thumbnailSize];
    [(CAMControlDrawer *)self bounds];
    UIRectCenteredYInRectScale();
    [(CAMControlDrawer *)self _layoutFullWidthCustomView:viewCopy withAlignmentRect:controlCopy forAssociatedControl:expandedCopy expanded:0];

    [viewCopy selectedThumbnailBorderWidth];
    UIFloorToViewScale();
    [viewCopy setSelectionDotCenterTopSpacing:?];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _controlMap = [(CAMControlDrawer *)self _controlMap];
    allValues = [_controlMap allValues];

    v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v10 + 1) + 8 * i) setLayoutStyle:style];
        }

        v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setVisibleControlTypes:(id)types animated:(BOOL)animated
{
  animatedCopy = animated;
  v39 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v8 = typesCopy;
  selfCopy = self;
  if (self->_visibleControlTypes != typesCopy && ![(NSArray *)typesCopy isEqualToArray:?])
  {
    v9 = self->_visibleControlTypes;
    objc_storeStrong(&self->_visibleControlTypes, types);
    [(CAMControlDrawer *)self _ensureVisibleControls];
    expandedControl = [(CAMControlDrawer *)self expandedControl];
    v11 = expandedControl;
    if (expandedControl)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(expandedControl, "controlType")}];
      v13 = [(NSArray *)v8 containsObject:v12];

      if (!v13)
      {
        [(CAMControlDrawer *)selfCopy _setExpandedControl:0 animated:animatedCopy updatePreferredDrawerControl:0];
      }
    }

    if (animatedCopy)
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
            integerValue = [v22 integerValue];
            v24 = MEMORY[0x1E69DD250];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __52__CAMControlDrawer_setVisibleControlTypes_animated___block_invoke;
            v30[3] = &unk_1E76F8400;
            v30[4] = selfCopy;
            v33 = integerValue;
            v31 = v15;
            v32 = v22;
            [v24 performWithoutAnimation:v30];
          }

          v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v19);
      }

      [(CAMControlDrawer *)selfCopy setNeedsLayout];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __52__CAMControlDrawer_setVisibleControlTypes_animated___block_invoke_2;
      v29[3] = &unk_1E76F77B0;
      v29[4] = selfCopy;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v29 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
      v8 = v15;
      v11 = v26;
      v9 = v27;
    }

    else
    {
      [(CAMControlDrawer *)selfCopy setNeedsLayout];
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

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_orientation != orientation)
  {
    animatedCopy = animated;
    self->_orientation = orientation;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    _controlMap = [(CAMControlDrawer *)self _controlMap];
    allValues = [_controlMap allValues];

    v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v12 + 1) + 8 * i) setOrientation:orientation animated:animatedCopy];
        }

        v9 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)setExpanded:(BOOL)expanded forControlType:(int64_t)type animated:(BOOL)animated updatePreferredDrawerControl:(BOOL)control
{
  controlCopy = control;
  animatedCopy = animated;
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v13 = [_controlMap objectForKeyedSubscript:v12];

  if ([v13 isExpandable])
  {
    v14 = v13;
    v15 = v14;
    if (!expanded)
    {
      if (![(CAMControlDrawer *)self isControlExpandedForType:type])
      {
LABEL_6:

        goto LABEL_10;
      }

      v15 = 0;
    }

    [(CAMControlDrawer *)self _setExpandedControl:v15 animated:animatedCopy updatePreferredDrawerControl:controlCopy];
    goto LABEL_6;
  }

  v16 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CAMControlDrawer setExpanded:v13 forControlType:v16 animated:? updatePreferredDrawerControl:?];
  }

LABEL_10:
}

- (BOOL)isControlExpandedForType:(int64_t)type
{
  expandedControl = [(CAMControlDrawer *)self expandedControl];
  if (expandedControl)
  {
    expandedControl2 = [(CAMControlDrawer *)self expandedControl];
    v7 = [expandedControl2 controlType] == type;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)expandedControlType
{
  expandedControl = [(CAMControlDrawer *)self expandedControl];
  if (expandedControl)
  {
    expandedControl2 = [(CAMControlDrawer *)self expandedControl];
    controlType = [expandedControl2 controlType];
  }

  else
  {
    controlType = -1;
  }

  return controlType;
}

- (void)_ensureVisibleControls
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  visibleControlTypes = [(CAMControlDrawer *)self visibleControlTypes];
  v4 = [visibleControlTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(visibleControlTypes);
        }

        integerValue = [*(*(&v9 + 1) + 8 * v7) integerValue];
        [(CAMControlDrawer *)self _loadControlIfNeededForType:integerValue];
        [(CAMControlDrawer *)self _installControlIfNeededForType:integerValue];
        ++v7;
      }

      while (v5 != v7);
      v5 = [visibleControlTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_loadControlIfNeededForType:(int64_t)type
{
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [_controlMap objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [(CAMControlDrawer *)self _createControlForType:type];
    [v6 setOrientation:{-[CAMControlDrawer orientation](self, "orientation")}];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [_controlMap setObject:v6 forKeyedSubscript:v7];

    if ([v6 isExpandable])
    {
      [v6 setDelegate:self];
    }

    delegate = [(CAMControlDrawer *)self delegate];
    [delegate controlDrawer:self didCreateControlForType:type];
  }
}

- (void)_installControlIfNeededForType:(int64_t)type
{
  _scrollView = [(CAMControlDrawer *)self _scrollView];
  _controlMap = [(CAMControlDrawer *)self _controlMap];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [_controlMap objectForKeyedSubscript:v6];

  if (v7)
  {
    superview = [v7 superview];

    if (superview != _scrollView)
    {
      [_scrollView addSubview:v7];
    }
  }
}

- (void)_updateControlsScaleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CAMControlDrawer *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  expandedControl = [(CAMControlDrawer *)self expandedControl];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__CAMControlDrawer__updateControlsScaleAnimated___block_invoke;
  v16[3] = &unk_1E76F8428;
  if (animatedCopy)
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
  v17 = expandedControl;
  v15 = expandedControl;
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

- (void)_updateControlsVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  expandedControl = [(CAMControlDrawer *)self expandedControl];
  v6 = MEMORY[0x1E695DFD8];
  visibleControlTypes = [(CAMControlDrawer *)self visibleControlTypes];
  v8 = [v6 setWithArray:visibleControlTypes];

  v12[1] = 3221225472;
  v12[0] = MEMORY[0x1E69E9820];
  v12[2] = __54__CAMControlDrawer__updateControlsVisibilityAnimated___block_invoke;
  v12[3] = &unk_1E76F7938;
  if (animatedCopy)
  {
    v9 = 0.5;
  }

  else
  {
    v9 = 0.0;
  }

  v12[4] = self;
  v13 = v8;
  v14 = expandedControl;
  v10 = expandedControl;
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

- (void)_setExpandedControl:(id)control animated:(BOOL)animated updatePreferredDrawerControl:(BOOL)drawerControl
{
  drawerControlCopy = drawerControl;
  animatedCopy = animated;
  controlCopy = control;
  expandedControl = self->_expandedControl;
  if (expandedControl == controlCopy)
  {
    goto LABEL_23;
  }

  if (animatedCopy)
  {
    [(CAMControlDrawer *)self layoutIfNeeded];
    expandedControl = self->_expandedControl;
  }

  if (expandedControl)
  {
    v11 = self->_expandedControl;
    self->_expandedControl = 0;
    v12 = expandedControl;

    [(CAMControlDrawerExpandableButton *)v12 setExpanded:0 animated:animatedCopy];
    if (controlCopy)
    {
      v13 = 0;
    }

    else
    {
      v13 = drawerControlCopy;
    }

    presentationDelegate = [(CAMControlDrawer *)self presentationDelegate];
    [presentationDelegate controlDrawer:self didChangeExpanded:0 forControlType:-[CAMControlDrawerExpandableButton controlType](v12 animated:"controlType") updatePreferredDrawerControl:{animatedCopy, v13}];
  }

  if (controlCopy)
  {
    [(CAMControlDrawer *)self _loadCustomUIIfNeededForControlType:[(CAMControlDrawerExpandableButton *)controlCopy controlType]];
    if (animatedCopy)
    {
      [(CAMControlDrawer *)self layoutIfNeeded];
    }
  }

  objc_storeStrong(&self->_expandedControl, control);
  [(CAMControlDrawer *)self setNeedsLayout];
  if (!self->_expandedControl)
  {
    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [_scrollView setScrollEnabled:1];
LABEL_18:

    goto LABEL_19;
  }

  [(CAMControlDrawer *)self bringSubviewToFront:?];
  [(CAMControlDrawerExpandableButton *)self->_expandedControl setExpanded:1 animated:animatedCopy];
  _scrollView2 = [(CAMControlDrawer *)self _scrollView];
  [_scrollView2 setScrollEnabled:0];

  _scrollView3 = [(CAMControlDrawer *)self _scrollView];
  [_scrollView3 stopScrollingAndZooming];

  [(CAMControlDrawerExpandableButton *)controlCopy frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  _scrollView4 = [(CAMControlDrawer *)self _scrollView];
  v26 = [_scrollView4 _isRectFullyVisible:{v18, v20, v22, v24}];

  if ((v26 & 1) == 0)
  {
    v27 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v27, OS_LOG_TYPE_DEFAULT, "Scrolling control drawer to make control visible before expansion", buf, 2u);
    }

    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [_scrollView scrollRectToVisible:0 animated:{v18, v20, v22, v24}];
    goto LABEL_18;
  }

LABEL_19:
  if (animatedCopy)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __78__CAMControlDrawer__setExpandedControl_animated_updatePreferredDrawerControl___block_invoke;
    v30[3] = &unk_1E76F77B0;
    v30[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v30 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
  }

  [(CAMControlDrawer *)self _updateControlsScaleAnimated:animatedCopy];
  [(CAMControlDrawer *)self _updateControlsVisibilityAnimated:animatedCopy];
  if (controlCopy)
  {
    presentationDelegate2 = [(CAMControlDrawer *)self presentationDelegate];
    [presentationDelegate2 controlDrawer:self didChangeExpanded:1 forControlType:-[CAMControlDrawerExpandableButton controlType](self->_expandedControl animated:"controlType") updatePreferredDrawerControl:{animatedCopy, drawerControlCopy}];
  }

LABEL_23:
}

- (void)expandableButton:(id)button willChangeExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  controlType = [button controlType];

  [(CAMControlDrawer *)self setExpanded:expandedCopy forControlType:controlType animated:1 updatePreferredDrawerControl:1];
}

- (void)menuButtonDidSelectItem:(id)item
{
  itemCopy = item;
  delegate = [(CAMControlDrawer *)self delegate];
  controlType = [itemCopy controlType];

  [delegate controlDrawer:self didSelectMenuItemForControlType:controlType];
}

- (void)scrollViewDidScroll:(id)scroll
{
  expandedControl = [(CAMControlDrawer *)self expandedControl];
  if (expandedControl)
  {
    v5 = expandedControl;
    [(CAMControlDrawer *)self setNeedsLayout];
    expandedControl = v5;
  }
}

- (id)touchingRecognizersToCancel
{
  v6[1] = *MEMORY[0x1E69E9840];
  _scrollView = [(CAMControlDrawer *)self _scrollView];
  panGestureRecognizer = [_scrollView panGestureRecognizer];
  v6[0] = panGestureRecognizer;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)_iterateViewsForHUDManager:(id)manager withItemFoundBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  blockCopy = block;
  expandedControl = [(CAMControlDrawer *)self expandedControl];

  if (expandedControl)
  {
    expandedControl2 = [(CAMControlDrawer *)self expandedControl];
    blockCopy[2](blockCopy, expandedControl2);
  }

  else
  {
    _scrollView = [(CAMControlDrawer *)self _scrollView];
    [managerCopy locationOfAccessibilityGestureInView:_scrollView];
    v12 = v11;
    v14 = v13;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    visibleControlTypes = [(CAMControlDrawer *)self visibleControlTypes];
    v16 = [visibleControlTypes countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(visibleControlTypes);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          _controlMap = [(CAMControlDrawer *)self _controlMap];
          v22 = [_controlMap objectForKeyedSubscript:v20];

          [v22 frame];
          v29.x = v12;
          v29.y = v14;
          if (CGRectContainsPoint(v30, v29))
          {
            blockCopy[2](blockCopy, v22);

            goto LABEL_13;
          }
        }

        v17 = [visibleControlTypes countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
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
  v5 = managerCopy;
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

- (void)selectedByAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CAMControlDrawer_selectedByAccessibilityHUDManager___block_invoke;
  v6[3] = &unk_1E76F79D8;
  v7 = managerCopy;
  v5 = managerCopy;
  [(CAMControlDrawer *)self _iterateViewsForHUDManager:v5 withItemFoundBlock:v6];
}

- (BOOL)shouldAccessibilityGestureBeginForHUDManager:(id)manager
{
  managerCopy = manager;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CAMControlDrawer_shouldAccessibilityGestureBeginForHUDManager___block_invoke;
  v7[3] = &unk_1E76F79B0;
  v9 = &v10;
  v5 = managerCopy;
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