@interface CAMSmartStyleSettingsView
+ (id)_descriptionForStylePreset:(int64_t)preset;
+ (id)confirmButtonConfiguration;
+ (id)showAssetsButtonConfiguration;
+ (void)_updateButtonConfiguration:(id)configuration;
- (BOOL)scrollEnabled;
- (CAMSmartStyleSettingsView)initWithDelegate:(id)delegate stylePresets:(id)presets selectedIndex:(int64_t)index;
- (CAMSmartStyleSettingsViewDelegate)delegate;
- (CEKSmartStyle)_selectedStyle;
- (double)_desiredCarouselRatio;
- (id)_assetButtonConfiguration;
- (id)_centerSquareOfImage:(id)image appliesScale:(BOOL)scale;
- (id)_confirmButtonTitle;
- (id)_debugStringForStage:(unint64_t)stage;
- (id)_fontWithTextStyle:(id)style traits:(unsigned int)traits;
- (id)_newInstructionLabel;
- (id)_newSecondaryButton;
- (id)_secondaryButtonConfiguration;
- (id)_selectedStyleDescription;
- (id)_showGridButtonConfiguration;
- (id)_titleCheckmarkView;
- (id)_titleLabelWithText:(id)text;
- (int64_t)_selectedStylePreset;
- (unint64_t)_firstNeededTuneStage;
- (void)_addConstraints;
- (void)_advanceToTuneStageIfPossible;
- (void)_beginAssetSelection:(id)selection;
- (void)_createNeededStylePages;
- (void)_dpadControlUpdated:(id)updated;
- (void)_handleConfirmButton:(id)button;
- (void)_handleCustomizeButton:(id)button;
- (void)_handlePageControlValueChanged:(id)changed;
- (void)_handleStylePickerTap:(id)tap;
- (void)_intensitySliderUpdated;
- (void)_layoutMaskedViews;
- (void)_moveToNextStageIfAllowedAnimated:(BOOL)animated;
- (void)_performHaptics;
- (void)_playChooseInstructionAnimations;
- (void)_playTuneInstructionAnimations;
- (void)_prepareHaptics;
- (void)_resetCurrentStyleToDefaults;
- (void)_setAnimationSequence:(id)sequence;
- (void)_setBooleanPreference:(BOOL)preference forKey:(id)key;
- (void)_setPreviewViewControllersExpandedItemIndex:(unint64_t)index animated:(BOOL)animated;
- (void)_setStage:(unint64_t)stage animated:(BOOL)animated;
- (void)_setStageButtonsEnabled:(BOOL)enabled forReason:(id)reason;
- (void)_setVisiblePreviewIndex:(int64_t)index updatePageControl:(BOOL)control updateStylePicker:(BOOL)picker animated:(BOOL)animated notifyDelegate:(BOOL)delegate;
- (void)_stageUpdates;
- (void)_updateConfirmButtonTitle;
- (void)_updateDpadForPresetType:(int64_t)type animated:(BOOL)animated;
- (void)_updateForStageAnimated:(BOOL)animated scrollToTop:(BOOL)top;
- (void)_updatePreviewAdjustmentsFromCurrentSliderValues:(BOOL)values updateModelValues:(BOOL)modelValues;
- (void)_updatePreviewPageDots;
- (void)_updateScrollViewEnablement;
- (void)_updateShowGridButtonAnimated:(BOOL)animated;
- (void)didMoveToWindow;
- (void)flashScrollIndicators;
- (void)layoutSubviews;
- (void)scrollViewDidLayoutSubviews:(id)subviews;
- (void)semanticStylePickerDidChangeSelectedStyle:(id)style;
- (void)semanticStylePickerDidScroll:(id)scroll;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)speedUpFadeInAnimations;
- (void)stopAllAnimations;
- (void)updateImageViews;
@end

@implementation CAMSmartStyleSettingsView

- (CAMSmartStyleSettingsView)initWithDelegate:(id)delegate stylePresets:(id)presets selectedIndex:(int64_t)index
{
  delegateCopy = delegate;
  presetsCopy = presets;
  v100.receiver = self;
  v100.super_class = CAMSmartStyleSettingsView;
  v10 = [(CAMSmartStyleSettingsView *)&v100 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSmartStyleSettingsView *)v11 setBackgroundColor:systemBackgroundColor];

    v13 = objc_alloc_init(CAMScrollViewWithLayoutDelegate);
    scrollView = v11->__scrollView;
    v11->__scrollView = v13;

    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView setShowsVerticalScrollIndicator:1];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView setShowsHorizontalScrollIndicator:0];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView setLayoutDelegate:v11];
    [(CAMSmartStyleSettingsView *)v11 addSubview:v11->__scrollView];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    styleNameBadges = v11->__styleNameBadges;
    v11->__styleNameBadges = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    intensitySliders = v11->__intensitySliders;
    v11->__intensitySliders = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    styleDescriptionLabels = v11->__styleDescriptionLabels;
    v11->__styleDescriptionLabels = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    styleBadgeCenterXConstraints = v11->__styleBadgeCenterXConstraints;
    v11->__styleBadgeCenterXConstraints = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    descriptionBottomConstraints = v11->__descriptionBottomConstraints;
    v11->__descriptionBottomConstraints = v23;

    if ([presetsCopy count] >= index)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = 0;
    }

    v26 = [presetsCopy objectAtIndexedSubscript:indexCopy];
    integerValue = [v26 integerValue];

    WeakRetained = objc_loadWeakRetained(&v11->_delegate);
    v29 = [WeakRetained settingsView:v11 requestsStyleForPresetType:integerValue];

    v30 = [presetsCopy copy];
    styleTypes = v11->__styleTypes;
    v11->__styleTypes = v30;

    if (indexCopy > 0 || ([v29 isNeutral] & 1) == 0)
    {
      [(CAMSmartStyleSettingsView *)v11 _setDidCompleteChooseInstructions:1];
    }

    v91 = v29;
    v11->_visiblePreviewIndex = indexCopy;
    v11->__stage = 0;
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    previewViewControllersByStyleIndex = v11->__previewViewControllersByStyleIndex;
    v11->__previewViewControllersByStyleIndex = v32;

    v34 = [MEMORY[0x1E695DFA8] set];
    stageButtonSuppressionReasons = v11->__stageButtonSuppressionReasons;
    v11->__stageButtonSuppressionReasons = v34;

    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(NSArray *)v11->__styleTypes count])
    {
      v37 = 0;
      do
      {
        v38 = objc_alloc_init(MEMORY[0x1E69DD250]);
        [v38 setClipsToBounds:1];
        [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v38];
        [v36 addObject:v38];

        ++v37;
      }

      while (v37 < [(NSArray *)v11->__styleTypes count]);
    }

    objc_storeStrong(&v11->__styleClippingContainerViews, v36);
    [(CAMSmartStyleSettingsView *)v11 _createNeededStylePages];
    v39 = objc_alloc_init(CAMSemanticStylePicker);
    stylePicker = v11->__stylePicker;
    v11->__stylePicker = v39;

    [(CAMSemanticStylePicker *)v11->__stylePicker setDelegate:v11];
    [(CAMSemanticStylePicker *)v11->__stylePicker setNumberOfStyles:[(NSArray *)v11->__styleTypes count]];
    [(CAMSemanticStylePicker *)v11->__stylePicker setSelectedStyleIndex:indexCopy];
    [(CAMSemanticStylePicker *)v11->__stylePicker setHidesSelfWhenNotExpanded:0];
    [(CAMSemanticStylePicker *)v11->__stylePicker setExpanded:1];
    [(CAMSemanticStylePicker *)v11->__stylePicker setSpacerWidth:3.0];
    [(CAMSemanticStylePicker *)v11->__stylePicker setMaterial:4];
    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSemanticStylePicker *)v11->__stylePicker setMaterialColor:systemBackgroundColor2];

    pageControl = [(CAMSemanticStylePicker *)v11->__stylePicker pageControl];
    [pageControl setHidden:1];

    v43 = v11->__stylePicker;
    v44 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v11 action:sel__handleStylePickerTap_];
    [(CAMSemanticStylePicker *)v43 addGestureRecognizer:v44];

    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v11->__stylePicker];
    v45 = v11->__styleTypes;
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __73__CAMSmartStyleSettingsView_initWithDelegate_stylePresets_selectedIndex___block_invoke;
    v98[3] = &unk_1E76FBB58;
    v46 = v11;
    v99 = v46;
    [(NSArray *)v45 enumerateObjectsUsingBlock:v98];
    v92 = delegateCopy;
    if (indexCopy >= [(NSArray *)v11->__styleTypes count])
    {
      v47 = &unk_1F16C7DC0;
    }

    else
    {
      v47 = [(NSArray *)v11->__styleTypes objectAtIndexedSubscript:indexCopy];
    }

    integerValue2 = [v47 integerValue];
    v49 = [objc_alloc(MEMORY[0x1E69C42C0]) initWithSize:{125.0, 125.0}];
    dpadControl = v46->__dpadControl;
    v46->__dpadControl = v49;

    [delegateCopy addChildViewController:v46->__dpadControl toView:v11->__scrollView];
    objc_initWeak(&location, v46);
    v51 = [objc_alloc(MEMORY[0x1E69C42D0]) initWithTone:0.0 color:0.0 palette:1.0];
    styleValuesPlatterView = v46->__styleValuesPlatterView;
    v46->__styleValuesPlatterView = v51;

    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __73__CAMSmartStyleSettingsView_initWithDelegate_stylePresets_selectedIndex___block_invoke_218;
    v95[3] = &unk_1E76F8580;
    objc_copyWeak(&v96, &location);
    [(PEPhotoStyleValuesPlatterView *)v46->__styleValuesPlatterView setResetAction:v95];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__styleValuesPlatterView];
    view = [(PEPhotoStyleDPad *)v46->__dpadControl view];
    [view layoutIfNeeded];

    [(CAMSmartStyleSettingsView *)v46 _updateDpadForPresetType:integerValue2 animated:0];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __73__CAMSmartStyleSettingsView_initWithDelegate_stylePresets_selectedIndex___block_invoke_2_220;
    v93[3] = &unk_1E76FBCE0;
    objc_copyWeak(&v94, &location);
    [(PEPhotoStyleDPad *)v46->__dpadControl setOnValueChanged:v93];
    v54 = objc_alloc_init(MEMORY[0x1E69DCD10]);
    previewPageDots = v46->__previewPageDots;
    v46->__previewPageDots = v54;

    [(UIPageControl *)v46->__previewPageDots setUserInteractionEnabled:1];
    [(UIPageControl *)v46->__previewPageDots setAllowsContinuousInteraction:1];
    [(UIPageControl *)v46->__previewPageDots setNumberOfPages:[(NSArray *)v11->__styleTypes count]];
    [(CAMSmartStyleSettingsView *)v46 _updatePreviewPageDots];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UIPageControl *)v46->__previewPageDots setPageIndicatorTintColor:systemGrayColor];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIPageControl *)v46->__previewPageDots setCurrentPageIndicatorTintColor:labelColor];

    [(UIPageControl *)v46->__previewPageDots addTarget:v46 action:sel__handlePageControlValueChanged_ forControlEvents:4096];
    [(UIPageControl *)v46->__previewPageDots addTarget:v46 action:sel__handlePageControlTouchDown_ forControlEvents:1];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__previewPageDots];
    v58 = MEMORY[0x1E69DC738];
    _assetButtonConfiguration = [(CAMSmartStyleSettingsView *)v46 _assetButtonConfiguration];
    v60 = [v58 buttonWithConfiguration:_assetButtonConfiguration primaryAction:0];
    selectAssetsButton = v46->__selectAssetsButton;
    v46->__selectAssetsButton = v60;

    [(UIButton *)v46->__selectAssetsButton addTarget:v46 action:sel__beginAssetSelection_ forControlEvents:64];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__selectAssetsButton];
    v62 = MEMORY[0x1E69DC738];
    _showGridButtonConfiguration = [(CAMSmartStyleSettingsView *)v46 _showGridButtonConfiguration];
    v64 = [v62 buttonWithConfiguration:_showGridButtonConfiguration primaryAction:0];
    showGridButton = v46->__showGridButton;
    v46->__showGridButton = v64;

    [(UIButton *)v46->__showGridButton addTarget:v46 action:sel__handleShowGridButton_ forControlEvents:64];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__showGridButton];
    _newInstructionLabel = [(CAMSmartStyleSettingsView *)v46 _newInstructionLabel];
    chooseInstructionLabel = v46->__chooseInstructionLabel;
    v46->__chooseInstructionLabel = _newInstructionLabel;

    v68 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_CHOOSE_INSTRUCTION", 0);
    [(UILabel *)v46->__chooseInstructionLabel setText:v68];

    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__chooseInstructionLabel];
    v69 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v70 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.forward" withConfiguration:v69];
    v71 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v70];
    chooseInstructionArrow = v46->__chooseInstructionArrow;
    v46->__chooseInstructionArrow = v71;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v46->__chooseInstructionArrow setTintColor:secondaryLabelColor];

    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__chooseInstructionArrow];
    _newInstructionLabel2 = [(CAMSmartStyleSettingsView *)v46 _newInstructionLabel];
    tuneInstructionLabel = v46->__tuneInstructionLabel;
    v46->__tuneInstructionLabel = _newInstructionLabel2;

    v76 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_TUNE_INSTRUCTION", 0);
    [(UILabel *)v46->__tuneInstructionLabel setText:v76];

    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__tuneInstructionLabel];
    v77 = MEMORY[0x1E69DC738];
    confirmButtonConfiguration = [objc_opt_class() confirmButtonConfiguration];
    v79 = [v77 buttonWithConfiguration:confirmButtonConfiguration primaryAction:0];
    confirmButton = v46->__confirmButton;
    v46->__confirmButton = v79;

    [(UIButton *)v46->__confirmButton addTarget:v46 action:sel__handleConfirmButton_ forControlEvents:64];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__confirmButton];
    _newSecondaryButton = [(CAMSmartStyleSettingsView *)v46 _newSecondaryButton];
    customizeButton = v46->__customizeButton;
    v46->__customizeButton = _newSecondaryButton;

    v83 = v46->__customizeButton;
    v84 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_CUSTOMIZE", 0);
    [(UIButton *)v83 setTitle:v84 forState:0];

    [(UIButton *)v46->__customizeButton addTarget:v46 action:sel__handleCustomizeButton_ forControlEvents:64];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__customizeButton];
    [(CAMSmartStyleSettingsView *)v46 _addConstraints];
    [(CAMSmartStyleSettingsView *)v46 _updatePreviewAdjustmentsFromCurrentSliderValues:0 updateModelValues:0];
    [(CAMSmartStyleSettingsView *)v46 _stageUpdates];
    if (![(CAMSmartStyleSettingsView *)v46 _didCompleteChooseInstructions])
    {
      [(CAMSmartStyleSettingsView *)v46 _playChooseInstructionAnimations];
    }

    v85 = +[CAMCaptureCapabilities capabilities];
    allowHaptics = [v85 allowHaptics];

    if (allowHaptics)
    {
      v87 = +[CAMFeedbackController sharedController];
      feedbackController = v46->__feedbackController;
      v46->__feedbackController = v87;
    }

    objc_destroyWeak(&v94);
    objc_destroyWeak(&v96);
    objc_destroyWeak(&location);

    delegateCopy = v92;
  }

  return v11;
}

void __73__CAMSmartStyleSettingsView_initWithDelegate_stylePresets_selectedIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 integerValue];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 416));
  v6 = [WeakRetained settingsView:*(a1 + 32) requestsStyleForPresetType:v4];

  v7 = objc_alloc_init(MEMORY[0x1E6993830]);
  [v7 setFontStyle:1];
  v8 = [MEMORY[0x1E69DC888] systemGray5Color];
  v9 = [v8 colorWithAlphaComponent:0.9];
  [v7 _setFillColor:v9];

  v10 = [MEMORY[0x1E69DC888] labelColor];
  [v7 _setContentColor:v10];

  v11 = [v6 displayName];
  v12 = CAMPreferredLocale();
  v13 = [v11 uppercaseStringWithLocale:v12];
  [v7 _setText:v13];

  v14 = objc_alloc(MEMORY[0x1E69C42C8]);
  [v6 castIntensity];
  v15 = [v14 initWithValue:?];
  v16 = +[CAMCaptureConversions PISemanticStyleCastForCEKCastType:](CAMCaptureConversions, "PISemanticStyleCastForCEKCastType:", [v6 castType]);
  [v15 setGradientCast:v16];

  [v15 setHidden:{objc_msgSend(MEMORY[0x1E6993890], "canCustomizeCastIntensityForCastType:", objc_msgSend(v6, "castType")) ^ 1}];
  objc_initWeak(&location, *(a1 + 32));
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __73__CAMSmartStyleSettingsView_initWithDelegate_stylePresets_selectedIndex___block_invoke_2;
  v23 = &unk_1E76F7E90;
  objc_copyWeak(&v24, &location);
  [v15 setOnValueChanged:&v20];
  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v17 setTextAlignment:{1, v20, v21, v22, v23}];
  [v17 setNumberOfLines:0];
  [v17 setLineBreakMode:0];
  v18 = [*(a1 + 32) _fontWithTextStyle:*MEMORY[0x1E69DDD00]];
  [v17 setFont:v18];

  v19 = [objc_opt_class() _descriptionForStylePreset:v4];
  [v17 setText:v19];

  [*(*(a1 + 32) + 424) addSubview:v7];
  [*(*(a1 + 32) + 424) addSubview:v15];
  [*(*(a1 + 32) + 424) addSubview:v17];
  [*(*(a1 + 32) + 480) addObject:v7];
  [*(*(a1 + 32) + 504) addObject:v15];
  [*(*(a1 + 32) + 512) addObject:v17];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __73__CAMSmartStyleSettingsView_initWithDelegate_stylePresets_selectedIndex___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _intensitySliderUpdated];
}

void __73__CAMSmartStyleSettingsView_initWithDelegate_stylePresets_selectedIndex___block_invoke_218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetCurrentStyleToDefaults];
}

void __73__CAMSmartStyleSettingsView_initWithDelegate_stylePresets_selectedIndex___block_invoke_2_220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained _isSettingDpadValue] & 1) == 0)
  {
    v2 = objc_loadWeakRetained((a1 + 32));
    v3 = [v2 _dpadControl];
    [WeakRetained _dpadControlUpdated:v3];
  }
}

- (id)_newInstructionLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  [v3 setLineBreakMode:0];
  v4 = [(CAMSmartStyleSettingsView *)self _fontWithTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 setFont:v4];

  return v3;
}

- (id)_newSecondaryButton
{
  v2 = MEMORY[0x1E69DC738];
  _secondaryButtonConfiguration = [(CAMSmartStyleSettingsView *)self _secondaryButtonConfiguration];
  v4 = [v2 buttonWithConfiguration:_secondaryButtonConfiguration primaryAction:0];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setTitleColor:systemBlueColor forState:0];

  return v4;
}

- (void)_createNeededStylePages
{
  _previewViewControllersByStyleIndex = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleSettingsView visiblePreviewIndex](self, "visiblePreviewIndex")}];
  v5 = [_previewViewControllersByStyleIndex objectForKeyedSubscript:v4];

  _styleClippingContainerViews = [(CAMSmartStyleSettingsView *)self _styleClippingContainerViews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CAMSmartStyleSettingsView__createNeededStylePages__block_invoke;
  v8[3] = &unk_1E76FBD08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [_styleClippingContainerViews enumerateObjectsUsingBlock:v8];
}

void __52__CAMSmartStyleSettingsView__createNeededStylePages__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) visiblePreviewIndex];
  v7 = v6 - 1;
  v8 = v6 + 1;
  v9 = [v5 viewWithTag:47];
  v10 = v9;
  if (v7 <= a3 && v8 >= a3 && v9 == 0)
  {
    v13 = [*(a1 + 32) _styleTypes];
    v14 = [v13 objectAtIndexedSubscript:a3];
    v15 = [v14 integerValue];

    v16 = [*(a1 + 32) delegate];
    v17 = *(a1 + 32);
    v23 = 0;
    v18 = [v16 settingsView:v17 requestsViewControllerForPresetType:v15 pageIndex:a3 parentViewController:&v23];
    v19 = v23;

    [v19 addChildViewController:v18];
    v20 = *(a1 + 40);
    if (v20)
    {
      [v18 setExpandedItemIndex:{objc_msgSend(v20, "expandedItemIndex")}];
    }

    v21 = *(*(a1 + 32) + 464);
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v21 setObject:v18 forKeyedSubscript:v22];

    v10 = [v18 view];
    [v10 setTag:47];
    [v5 addSubview:v10];
    [v18 didMoveToParentViewController:v19];
  }
}

- (BOOL)scrollEnabled
{
  _stylePicker = [(CAMSmartStyleSettingsView *)self _stylePicker];
  scrollEnabled = [_stylePicker scrollEnabled];

  return scrollEnabled;
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _stylePicker = [(CAMSmartStyleSettingsView *)self _stylePicker];
  [_stylePicker setScrollEnabled:enabledCopy];
}

- (void)updateImageViews
{
  v13 = *MEMORY[0x1E69E9840];
  window = [(CAMSmartStyleSettingsView *)self window];

  if (window)
  {
    _previewViewControllersByStyleIndex = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleSettingsView visiblePreviewIndex](self, "visiblePreviewIndex")}];
    v6 = [_previewViewControllersByStyleIndex objectForKeyedSubscript:v5];

    [v6 updateViewsWithLoadResults];
    if ([v6 didFinishRendering])
    {
      _previewViewControllersByStyleIndex2 = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __45__CAMSmartStyleSettingsView_updateImageViews__block_invoke;
      v9[3] = &unk_1E76FBD30;
      v10 = v6;
      [_previewViewControllersByStyleIndex2 enumerateKeysAndObjectsUsingBlock:v9];

      v8 = v10;
    }

    else
    {
      v8 = os_log_create("com.apple.camera", "SmartStyleSettings");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        visiblePreviewIndex = [(CAMSmartStyleSettingsView *)self visiblePreviewIndex];
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Skipping updates to other pages while waiting to set resources on page: %lu", buf, 0xCu);
      }
    }
  }
}

uint64_t __45__CAMSmartStyleSettingsView_updateImageViews__block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 32) != a3)
  {
    return [a3 updateViewsWithLoadResults];
  }

  return result;
}

- (void)stopAllAnimations
{
  [(CAMSmartStyleSettingsView *)self _setAnimationSequence:0];
  _dpadControl = [(CAMSmartStyleSettingsView *)self _dpadControl];
  [_dpadControl setPulsingValueIndicator:0];
}

- (void)speedUpFadeInAnimations
{
  _previewViewControllersByStyleIndex = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  [_previewViewControllersByStyleIndex enumerateKeysAndObjectsUsingBlock:&__block_literal_global_36];
}

- (void)flashScrollIndicators
{
  _scrollView = [(CAMSmartStyleSettingsView *)self _scrollView];
  isScrollEnabled = [_scrollView isScrollEnabled];

  if (isScrollEnabled)
  {
    _scrollView2 = [(CAMSmartStyleSettingsView *)self _scrollView];
    [_scrollView2 flashScrollIndicators];
  }
}

- (void)_setVisiblePreviewIndex:(int64_t)index updatePageControl:(BOOL)control updateStylePicker:(BOOL)picker animated:(BOOL)animated notifyDelegate:(BOOL)delegate
{
  if (self->_visiblePreviewIndex != index)
  {
    delegateCopy = delegate;
    animatedCopy = animated;
    pickerCopy = picker;
    self->_visiblePreviewIndex = index;
    if (control)
    {
      [(CAMSmartStyleSettingsView *)self _updatePreviewPageDots];
    }

    if (pickerCopy)
    {
      _stylePicker = [(CAMSmartStyleSettingsView *)self _stylePicker];
      [_stylePicker setSelectedStyleIndex:index animated:animatedCopy];
    }

    [(CAMSmartStyleSettingsView *)self _createNeededStylePages];
    _styleTypes = [(CAMSmartStyleSettingsView *)self _styleTypes];
    v14 = [_styleTypes objectAtIndexedSubscript:index];
    integerValue = [v14 integerValue];

    [(CAMSmartStyleSettingsView *)self _updateDpadForPresetType:integerValue animated:animatedCopy];
    [(CAMSmartStyleSettingsView *)self _updatePreviewAdjustmentsFromCurrentSliderValues:0 updateModelValues:0];
    if (delegateCopy)
    {
      delegate = [(CAMSmartStyleSettingsView *)self delegate];
      [delegate settingsView:self didChangeToStylePreset:integerValue];
    }
  }
}

- (void)_updatePreviewPageDots
{
  visiblePreviewIndex = [(CAMSmartStyleSettingsView *)self visiblePreviewIndex];
  previewPageDots = self->__previewPageDots;

  [(UIPageControl *)previewPageDots setCurrentPage:visiblePreviewIndex];
}

- (id)_centerSquareOfImage:(id)image appliesScale:(BOOL)scale
{
  scaleCopy = scale;
  imageCopy = image;
  v7 = 1.0;
  if (scaleCopy)
  {
    window = [(CAMSmartStyleSettingsView *)self window];
    windowScene = [window windowScene];
    screen = [windowScene screen];
    [screen scale];
    v7 = v11;
  }

  [imageCopy size];
  v13 = v7 * v12;
  [imageCopy size];
  v15 = fmin(v13, v7 * v14);
  Width = CGImageGetWidth([imageCopy CGImage]);
  v17 = (CGImageGetHeight([imageCopy CGImage]) - v15) * 0.5;
  cGImage = [imageCopy CGImage];
  v23.origin.x = (Width - v15) * 0.5;
  v23.origin.y = v17;
  v23.size.width = v15;
  v23.size.height = v15;
  v19 = CGImageCreateWithImageInRect(cGImage, v23);
  v20 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v19];
  CGImageRelease(v19);

  return v20;
}

- (void)_updateForStageAnimated:(BOOL)animated scrollToTop:(BOOL)top
{
  animatedCopy = animated;
  [(CAMSmartStyleSettingsView *)self _setStageButtonsEnabled:0 forReason:@"StageUpdate"];
  v7 = 0.35;
  if (!animatedCopy)
  {
    v7 = 0.0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CAMSmartStyleSettingsView__updateForStageAnimated_scrollToTop___block_invoke;
  v9[3] = &unk_1E76F7850;
  v9[4] = self;
  topCopy = top;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__CAMSmartStyleSettingsView__updateForStageAnimated_scrollToTop___block_invoke_2;
  v8[3] = &unk_1E76F7988;
  v8[4] = self;
  [CAMView animateIfNeededWithDuration:v9 animations:v8 completion:v7];
}

void __65__CAMSmartStyleSettingsView__updateForStageAnimated_scrollToTop___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stageUpdates];
  [*(a1 + 32) layoutIfNeeded];
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) _scrollView];
    [v2 adjustedContentInset];
    v4 = -v3;

    v5 = [*(a1 + 32) _scrollView];
    [v5 setContentOffset:{0.0, v4}];
  }
}

- (void)_setStageButtonsEnabled:(BOOL)enabled forReason:(id)reason
{
  stageButtonSuppressionReasons = self->__stageButtonSuppressionReasons;
  if (enabled)
  {
    [(NSMutableSet *)stageButtonSuppressionReasons removeObject:reason];
  }

  else
  {
    [(NSMutableSet *)stageButtonSuppressionReasons addObject:reason];
  }
}

- (void)_stageUpdates
{
  stage = self->__stage;
  v4 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_TITLE", 0);
  v5 = stage & 0xFFFFFFFFFFFFFFFELL;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (stage >= 2)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = v5 == 2;
  v10 = v5 == 2;
  if (v9)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  [WeakRetained settingsView:self requestsTitle:v4 showDoneButton:v10];

  [(NSLayoutConstraint *)self->__pickerTopConstraintChooseStages setActive:stage < 2];
  [(NSLayoutConstraint *)self->__pickerTopConstraintTuneStages setActive:v10];
  if (stage)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  [(UILabel *)self->__chooseInstructionLabel setAlpha:v12];
  [(UIImageView *)self->__chooseInstructionArrow setAlpha:v12];
  [(UILabel *)self->__tuneInstructionLabel setAlpha:v11];
  [(NSLayoutConstraint *)self->__tuneInstructionLabelBottomConstraint setActive:v10];
  [(CAMSmartStyleSettingsView *)self _updateShowGridButtonAnimated:0];
  _styleDescriptionLabels = [(CAMSmartStyleSettingsView *)self _styleDescriptionLabels];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__CAMSmartStyleSettingsView__stageUpdates__block_invoke;
  v19[3] = &unk_1E76FBD78;
  v20 = stage < 2;
  v19[4] = self;
  [_styleDescriptionLabels enumerateObjectsUsingBlock:v19];

  [(CAMSmartStyleSettingsView *)self _updatePreviewPageDots];
  view = [(PEPhotoStyleDPad *)self->__dpadControl view];
  [view setAlpha:v11];

  [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView setAlpha:v11];
  _intensitySliders = [(CAMSmartStyleSettingsView *)self _intensitySliders];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__CAMSmartStyleSettingsView__stageUpdates__block_invoke_2;
  v17[3] = &__block_descriptor_33_e42_v32__0__PEPhotoStylePaletteSlider_8Q16_B24l;
  v18 = v10;
  [_intensitySliders enumerateObjectsUsingBlock:v17];

  [(CAMSmartStyleSettingsView *)self _updateConfirmButtonTitle];
  [(UIButton *)self->__confirmButton setAlpha:v8];
  [(UIButton *)self->__customizeButton setAlpha:v8];
  if (+[CAMFrameworkUtilities isPasscodeLocked])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  [(UIButton *)self->__selectAssetsButton setAlpha:v16];
}

void __42__CAMSmartStyleSettingsView__stageUpdates__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0.0;
  if (*(a1 + 40))
  {
    v5 = 1.0;
  }

  [a2 setAlpha:v5];
  v6 = *(a1 + 40);
  v8 = [*(a1 + 32) _descriptionBottomConstraints];
  v7 = [v8 objectAtIndexedSubscript:a3];
  [v7 setActive:v6];
}

- (void)_updateShowGridButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = 0.0;
  if (self->__stage <= 3)
  {
    _previewViewControllersByStyleIndex = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleSettingsView visiblePreviewIndex](self, "visiblePreviewIndex")}];
    v8 = [_previewViewControllersByStyleIndex objectForKeyedSubscript:v7];

    if ([v8 expandedItemIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }
  }

  v10[1] = 3221225472;
  v9 = 0.25;
  v10[0] = MEMORY[0x1E69E9820];
  v10[2] = __59__CAMSmartStyleSettingsView__updateShowGridButtonAnimated___block_invoke;
  v10[3] = &unk_1E76F7A38;
  if (!animatedCopy)
  {
    v9 = 0.0;
  }

  v10[4] = self;
  *&v10[5] = v5;
  [CAMView animateIfNeededWithDuration:v10 animations:v9];
}

- (int64_t)_selectedStylePreset
{
  v2 = [(NSArray *)self->__styleTypes objectAtIndexedSubscript:[(CAMSmartStyleSettingsView *)self visiblePreviewIndex]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (CEKSmartStyle)_selectedStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained settingsView:self requestsStyleForPresetType:{-[CAMSmartStyleSettingsView _selectedStylePreset](self, "_selectedStylePreset")}];

  return v4;
}

- (id)_selectedStyleDescription
{
  v3 = objc_opt_class();
  _selectedStylePreset = [(CAMSmartStyleSettingsView *)self _selectedStylePreset];

  return [v3 _descriptionForStylePreset:_selectedStylePreset];
}

+ (id)_descriptionForStylePreset:(int64_t)preset
{
  if (preset <= 5)
  {
    if (preset > 2)
    {
      v6 = @"SMART_STYLES_SETTINGS_DESCRIPTION_BLUSH_WARM";
      v7 = @"SMART_STYLES_SETTINGS_DESCRIPTION_GOLD_WARM";
      v9 = @"SMART_STYLES_SETTINGS_DESCRIPTION_COOL";
      if (preset != 5)
      {
        v9 = 0;
      }

      if (preset != 4)
      {
        v7 = v9;
      }

      v8 = preset == 3;
    }

    else
    {
      if (!preset)
      {
        goto LABEL_3;
      }

      v6 = @"SMART_STYLES_SETTINGS_DESCRIPTION_STANDARD";
      v7 = @"SMART_STYLES_SETTINGS_DESCRIPTION_TAN_WARM";
      if (preset != 2)
      {
        v7 = 0;
      }

      v8 = preset == 1;
    }

LABEL_19:
    if (v8)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }

    goto LABEL_22;
  }

  if ((preset - 7) >= 9)
  {
    v6 = @"SMART_STYLES_SETTINGS_DESCRIPTION_NEUTRAL";
    v7 = @"SMART_STYLES_SETTINGS_DESCRIPTION_BRIGHT_POP";
    if (preset != 16)
    {
      v7 = 0;
    }

    v8 = preset == 6;
    goto LABEL_19;
  }

LABEL_3:
  v4 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CAMSmartStyleSettingsView *)preset _descriptionForStylePreset:v4];
  }

  v5 = 0;
LABEL_22:
  v10 = CAMLocalizedFrameworkString(v5, 0);

  return v10;
}

- (id)_confirmButtonTitle
{
  _selectedStyle = [(CAMSmartStyleSettingsView *)self _selectedStyle];
  if ([_selectedStyle presetType] == 1 && objc_msgSend(_selectedStyle, "isCustomized"))
  {
    displayName = CEKLocalizedFrameworkString();
  }

  else
  {
    displayName = [_selectedStyle displayName];
  }

  v4 = displayName;
  v5 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_CONFIRM_STYLE_FORMAT", 0);
  v6 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, v4];

  return v6;
}

- (void)_updateConfirmButtonTitle
{
  confirmButton = self->__confirmButton;
  _confirmButtonTitle = [(CAMSmartStyleSettingsView *)self _confirmButtonTitle];
  [(UIButton *)confirmButton setTitle:_confirmButtonTitle forState:0];
}

- (void)_beginAssetSelection:(id)selection
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsViewRequestsUserAssetSelection:self];
}

- (void)_dpadControlUpdated:(id)updated
{
  [(CAMSmartStyleSettingsView *)self _updatePreviewAdjustmentsFromCurrentSliderValues:1 updateModelValues:1];

  [(CAMSmartStyleSettingsView *)self _advanceToTuneStageIfPossible];
}

- (void)_intensitySliderUpdated
{
  [(CAMSmartStyleSettingsView *)self _updatePreviewAdjustmentsFromCurrentSliderValues:1 updateModelValues:1];

  [(CAMSmartStyleSettingsView *)self _advanceToTuneStageIfPossible];
}

- (void)_resetCurrentStyleToDefaults
{
  visiblePreviewIndex = [(CAMSmartStyleSettingsView *)self visiblePreviewIndex];
  v9 = [(NSArray *)self->__styleTypes objectAtIndexedSubscript:visiblePreviewIndex];
  integerValue = [v9 integerValue];
  _dpadControl = [(CAMSmartStyleSettingsView *)self _dpadControl];
  _intensitySliders = [(CAMSmartStyleSettingsView *)self _intensitySliders];
  v7 = [_intensitySliders objectAtIndexedSubscript:visiblePreviewIndex];

  v8 = [objc_alloc(MEMORY[0x1E6993890]) initWithPresetType:integerValue];
  [CAMSmartStyleUtilities slider2DValueForStyle:v8 limitRangeForSystemStyles:1];
  [_dpadControl setValue:?];
  [v8 castIntensity];
  [v7 setValue:?];
  [(CAMSmartStyleSettingsView *)self _updatePreviewAdjustmentsFromCurrentSliderValues:1 updateModelValues:1];
  [(CAMSmartStyleSettingsView *)self _advanceToTuneStageIfPossible];
}

- (void)_advanceToTuneStageIfPossible
{
  if (self->__stage == 2)
  {
    [(CAMSmartStyleSettingsView *)self _moveToNextStageIfAllowedAnimated:1];

    [(CAMSmartStyleSettingsView *)self _updatePreviewAdjustmentsFromCurrentSliderValues:1 updateModelValues:1];
  }
}

- (void)_updatePreviewAdjustmentsFromCurrentSliderValues:(BOOL)values updateModelValues:(BOOL)modelValues
{
  modelValuesCopy = modelValues;
  valuesCopy = values;
  visiblePreviewIndex = [(CAMSmartStyleSettingsView *)self visiblePreviewIndex];
  v21 = [(NSArray *)self->__styleTypes objectAtIndexedSubscript:visiblePreviewIndex];
  integerValue = [v21 integerValue];
  _styleValuesPlatterView = [(CAMSmartStyleSettingsView *)self _styleValuesPlatterView];
  if (valuesCopy)
  {
    WeakRetained = [(CAMSmartStyleSettingsView *)self _dpadControl];
    _intensitySliders = [(CAMSmartStyleSettingsView *)self _intensitySliders];
    v12 = [_intensitySliders objectAtIndexedSubscript:visiblePreviewIndex];

    [WeakRetained value];
    [CAMSmartStyleUtilities colorAndToneBiasForSlider2DValue:1 limitRangeForSystemStyles:?];
    v13 = objc_alloc(MEMORY[0x1E6993890]);
    [v12 value];
    v14 = [v13 initWithPresetType:integerValue castIntensity:? toneBias:? colorBias:?];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [WeakRetained settingsView:self requestsStyleForPresetType:integerValue];
  }

  _previewViewControllersByStyleIndex = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:visiblePreviewIndex];
  v17 = [_previewViewControllersByStyleIndex objectForKeyedSubscript:v16];

  [v17 updateWithStyle:v14];
  v18 = [objc_alloc(MEMORY[0x1E6993890]) initWithPresetType:{objc_msgSend(v14, "presetType")}];
  LODWORD(v16) = [v14 isEqualToSmartStyle:v18];
  v19 = self->__stage != 2;
  [v14 toneBias];
  [_styleValuesPlatterView setTone:?];
  [v14 colorBias];
  [_styleValuesPlatterView setColor:?];
  [v14 castIntensity];
  [_styleValuesPlatterView setPalette:?];
  [_styleValuesPlatterView setHidePaletteLabel:{objc_msgSend(MEMORY[0x1E6993890], "canCustomizeCastIntensityForCastType:", objc_msgSend(v14, "castType")) ^ 1}];
  [_styleValuesPlatterView setHideResetButton:0];
  [_styleValuesPlatterView setIsResetButtonEnabled:v19 & ~v16];
  if (modelValuesCopy)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 settingsView:self didUpdateStyle:v14 forPresetType:integerValue];
  }
}

- (void)_updateDpadForPresetType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = [WeakRetained settingsView:self requestsStyleForPresetType:type];

  v8 = [objc_alloc(MEMORY[0x1E6993890]) initWithPresetType:type];
  [CAMSmartStyleUtilities slider2DValueForStyle:v19 limitRangeForSystemStyles:1];
  v10 = v9;
  v12 = v11;
  [CAMSmartStyleUtilities slider2DValueForStyle:v8 limitRangeForSystemStyles:1];
  v14 = v13;
  v16 = v15;
  [(CAMSmartStyleSettingsView *)self _settingDpadValue:1];
  [(PEPhotoStyleDPad *)self->__dpadControl setValue:animatedCopy animated:v10, v12];
  [(PEPhotoStyleDPad *)self->__dpadControl setDefaultValue:animatedCopy animated:v14, v16];
  [(CAMSmartStyleSettingsView *)self _settingDpadValue:0];
  v17 = +[CAMCaptureConversions PISemanticStyleCastForCEKCastType:](CAMCaptureConversions, "PISemanticStyleCastForCEKCastType:", [MEMORY[0x1E6993890] castTypeForPresetType:type]);
  _dpadControl = [(CAMSmartStyleSettingsView *)self _dpadControl];
  [_dpadControl setGradientCast:v17];
}

- (void)_handleConfirmButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsViewDidConfirmStyle:self];

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 settingsViewRequestsDismiss:self completion:0];
}

- (void)_handleCustomizeButton:(id)button
{
  [(CAMSmartStyleSettingsView *)self _setStage:[(CAMSmartStyleSettingsView *)self _firstNeededTuneStage] animated:1];
  v3 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v3 hostProcess];

  v5 = CAMSmartStylesOnboardingCameraAppDidTapCustomize;
  if (hostProcess)
  {
    v5 = CAMSmartStylesOnboardingSettingsDidTapCustomize;
  }

  v6 = *v5;
  [CAMPreferencesUtilities setBool:1 inCameraDomainForKey:v6];
}

- (id)_debugStringForStage:(unint64_t)stage
{
  if (stage > 3)
  {
    return 0;
  }

  else
  {
    return off_1E76FBEC0[stage];
  }
}

- (void)_setStage:(unint64_t)stage animated:(BOOL)animated
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->__stage != stage)
  {
    animatedCopy = animated;
    v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CAMSmartStyleSettingsView *)self _debugStringForStage:stage];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Settings: changing stage to %{public}@", &v10, 0xCu);
    }

    [(CAMSmartStyleSettingsView *)self _setAnimationSequence:0];
    [(PEPhotoStyleDPad *)self->__dpadControl setPulsingValueIndicator:0];
    [(CAMSmartStyleSettingsView *)self layoutIfNeeded];
    stage = self->__stage;
    self->__stage = stage;
    if (stage == 2)
    {
      [(CAMSmartStyleSettingsView *)self _playTuneInstructionAnimations];
    }

    else if (stage == 3)
    {
      [(CAMSmartStyleSettingsView *)self _setDidCompleteTuneInstructions:1];
      [(CAMSmartStyleSettingsView *)self _updatePreviewAdjustmentsFromCurrentSliderValues:0 updateModelValues:0];
    }

    [(CAMSmartStyleSettingsView *)self _updateForStageAnimated:animatedCopy scrollToTop:[(CAMSmartStyleSettingsView *)self _userFacingContentPageNumberForStage:stage]!= [(CAMSmartStyleSettingsView *)self _userFacingContentPageNumberForStage:stage]];
  }
}

- (void)_moveToNextStageIfAllowedAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(CAMSmartStyleSettingsView *)self _isBlockingStageButtons])
  {
    stage = self->__stage;
    switch(stage)
    {
      case 2uLL:
        stage = 3;
        break;
      case 1uLL:
        stage = [(CAMSmartStyleSettingsView *)self _firstNeededTuneStage];
        break;
      case 0uLL:
        stage = 1;
        break;
    }

    [(CAMSmartStyleSettingsView *)self _setStage:stage animated:animatedCopy];
  }
}

- (unint64_t)_firstNeededTuneStage
{
  if ([(CAMSmartStyleSettingsView *)self _didCompleteTuneInstructions])
  {
    return 3;
  }

  _selectedStyle = [(CAMSmartStyleSettingsView *)self _selectedStyle];
  if ([_selectedStyle isCustomized])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)_setAnimationSequence:(id)sequence
{
  sequenceCopy = sequence;
  animationSequence = self->__animationSequence;
  if (animationSequence != sequenceCopy)
  {
    v7 = sequenceCopy;
    [(CEKAnimationSequence *)animationSequence stopAllAnimations];
    objc_storeStrong(&self->__animationSequence, sequence);
    sequenceCopy = v7;
  }

  MEMORY[0x1EEE66BB8](animationSequence, sequenceCopy);
}

- (void)_playChooseInstructionAnimations
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E6993880]) initWithWithIdentifier:@"InitialDelay" duration:&__block_literal_global_319 updateHandler:0.5];
  v10[0] = v3;
  v4 = objc_alloc(MEMORY[0x1E6993880]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CAMSmartStyleSettingsView__playChooseInstructionAnimations__block_invoke_2;
  v9[3] = &unk_1E76FBDE0;
  v9[4] = self;
  v5 = [v4 initWithWithIdentifier:@"AnimateArrow" duration:v9 updateHandler:2.5];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v7 = [objc_alloc(MEMORY[0x1E6993810]) initWithAnimations:v6 completionHandler:&__block_literal_global_326];
  [(CAMSmartStyleSettingsView *)self _setAnimationSequence:v7];

  _animationSequence = [(CAMSmartStyleSettingsView *)self _animationSequence];
  [_animationSequence start];
}

uint64_t __61__CAMSmartStyleSettingsView__playChooseInstructionAnimations__block_invoke_2(uint64_t a1, double a2)
{
  v3 = (sin((a2 + a2 + a2 + a2) * 3.14159265 + -1.57079633) + 1.0) * 8.0;
  v4 = *(*(a1 + 32) + 648);

  return [v4 setConstant:v3];
}

- (void)_playTuneInstructionAnimations
{
  v34[4] = *MEMORY[0x1E69E9840];
  _selectedStyle = [(CAMSmartStyleSettingsView *)self _selectedStyle];
  [_selectedStyle colorBias];
  v5 = v4;
  [_selectedStyle toneBias];
  [CAMSmartStyleUtilities slider2DValueForColorBias:1 toneBias:v5 limitRangeForSystemStyles:v6];
  v8 = v7;
  v10 = v9;
  v11 = objc_alloc(MEMORY[0x1E6993880]);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke;
  v33[3] = &unk_1E76FBDE0;
  v33[4] = self;
  v12 = [v11 initWithWithIdentifier:@"InitialDelay" duration:v33 updateHandler:0.5];
  v34[0] = v12;
  v13 = objc_alloc(MEMORY[0x1E6993880]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_2;
  v30[3] = &unk_1E76FBE08;
  v14 = _selectedStyle;
  v31 = v14;
  selfCopy = self;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_3;
  v29[3] = &unk_1E76FBE30;
  v29[4] = self;
  v29[5] = v8;
  v29[6] = v10;
  v15 = [v13 initWithWithIdentifier:@"TuneTone" duration:v30 updateHandler:v29 completion:2.5];
  v34[1] = v15;
  v16 = [objc_alloc(MEMORY[0x1E6993880]) initWithWithIdentifier:@"MiddleDelay" duration:&__block_literal_global_334 updateHandler:0.5];
  v34[2] = v16;
  v17 = objc_alloc(MEMORY[0x1E6993880]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_5;
  v26[3] = &unk_1E76FBE08;
  v27 = v14;
  selfCopy2 = self;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_6;
  v25[3] = &unk_1E76FBE30;
  v25[4] = self;
  v25[5] = v8;
  v25[6] = v10;
  v18 = v14;
  v19 = [v17 initWithWithIdentifier:@"TuneColor" duration:v26 updateHandler:v25 completion:2.5];
  v34[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];

  v21 = objc_alloc(MEMORY[0x1E6993810]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_7;
  v24[3] = &unk_1E76F7988;
  v24[4] = self;
  v22 = [v21 initWithAnimations:v20 completionHandler:v24];
  [(CAMSmartStyleSettingsView *)self _setAnimationSequence:v22];

  _animationSequence = [(CAMSmartStyleSettingsView *)self _animationSequence];
  [_animationSequence start];
}

uint64_t __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_2(uint64_t a1, double a2)
{
  [*(a1 + 32) toneBias];
  v5 = asin(v4 / 0.5);
  sin(v5 + (a2 + a2) * 3.14159265);
  [*(a1 + 32) colorBias];
  [CAMSmartStyleUtilities slider2DValueForColorBias:"slider2DValueForColorBias:toneBias:limitRangeForSystemStyles:" toneBias:1 limitRangeForSystemStyles:?];
  [*(*(a1 + 40) + 488) setValue:0 notifyObserver:?];
  v6 = *(a1 + 40);

  return [v6 _updatePreviewAdjustmentsFromCurrentSliderValues:1 updateModelValues:0];
}

uint64_t __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 488) setValue:0 notifyObserver:{*(result + 40), *(result + 48)}];
  }

  return result;
}

uint64_t __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_5(uint64_t a1, double a2)
{
  [*(a1 + 32) colorBias];
  v5 = asin(-v4 / 0.5);
  v6 = -(sin(v5 + (a2 + a2) * 3.14159265) * 0.5);
  [*(a1 + 32) colorBias];
  if (v7 == 0.0 && v6 < 0.0)
  {
    v8 = -fabs(sqrt(-v6));
    if (v6 == INFINITY)
    {
      v6 = -INFINITY;
    }

    else
    {
      v6 = v8;
    }
  }

  [*(a1 + 32) toneBias];
  [CAMSmartStyleUtilities slider2DValueForColorBias:1 toneBias:v6 limitRangeForSystemStyles:v9];
  [*(*(a1 + 40) + 488) setValue:0 notifyObserver:?];
  v10 = *(a1 + 40);

  return [v10 _updatePreviewAdjustmentsFromCurrentSliderValues:1 updateModelValues:0];
}

uint64_t __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_6(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 488) setValue:0 notifyObserver:{*(result + 40), *(result + 48)}];
  }

  return result;
}

uint64_t __59__CAMSmartStyleSettingsView__playTuneInstructionAnimations__block_invoke_7(uint64_t a1, int a2)
{
  result = [*(*(a1 + 32) + 488) setSnapIndicatorToGrid:1];
  if (a2)
  {
    v5 = *(*(a1 + 32) + 488);

    return [v5 setPulsingValueIndicator:1];
  }

  return result;
}

- (void)_layoutMaskedViews
{
  _stylePicker = [(CAMSmartStyleSettingsView *)self _stylePicker];
  [_stylePicker frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _styleClippingContainerViews = [(CAMSmartStyleSettingsView *)self _styleClippingContainerViews];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__CAMSmartStyleSettingsView__layoutMaskedViews__block_invoke;
  v14[3] = &unk_1E76FBE58;
  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v15 = _stylePicker;
  selfCopy = self;
  v13 = _stylePicker;
  [_styleClippingContainerViews enumerateObjectsUsingBlock:v14];
}

void __47__CAMSmartStyleSettingsView__layoutMaskedViews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v19 = a2;
  [*(a1 + 32) modelStyleRectAtIndex:a3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(a1 + 32);
  v14 = [v19 superview];
  [v13 convertRect:v14 toView:{v6, v8, v10, v12}];
  [v19 setFrame:?];

  v15 = [v19 subviews];
  v16 = [v15 firstObject];

  v17 = [*(a1 + 32) superview];
  [v17 convertRect:v19 toView:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v16 setFrame:?];

  if ([*(*(a1 + 40) + 632) count] <= a3)
  {
    v18 = 0;
  }

  else
  {
    v18 = [*(*(a1 + 40) + 632) objectAtIndexedSubscript:a3];
  }

  [v19 frame];
  [v18 setConstant:CGRectGetMidX(v21)];
}

- (void)_addConstraints
{
  v157 = *MEMORY[0x1E69E9840];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  subviews = [(CAMSmartStyleSettingsView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v150 objects:v156 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v151;
    do
    {
      v7 = 0;
      do
      {
        if (*v151 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v150 + 1) + 8 * v7++) setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v150 objects:v156 count:16];
    }

    while (v5);
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  _scrollView = [(CAMSmartStyleSettingsView *)self _scrollView];
  subviews2 = [_scrollView subviews];

  v10 = [subviews2 countByEnumeratingWithState:&v146 objects:v155 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v147;
    do
    {
      v13 = 0;
      do
      {
        if (*v147 != v12)
        {
          objc_enumerationMutation(subviews2);
        }

        [*(*(&v146 + 1) + 8 * v13++) setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      while (v11 != v13);
      v11 = [subviews2 countByEnumeratingWithState:&v146 objects:v155 count:16];
    }

    while (v11);
  }

  topAnchor = [(CAMSemanticStylePicker *)self->__stylePicker topAnchor];
  bottomAnchor = [(UIImageView *)self->__chooseInstructionArrow bottomAnchor];
  v16 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:12.0];
  pickerTopConstraintChooseStages = self->__pickerTopConstraintChooseStages;
  self->__pickerTopConstraintChooseStages = v16;

  topAnchor2 = [(CAMSemanticStylePicker *)self->__stylePicker topAnchor];
  bottomAnchor2 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView bottomAnchor];
  v20 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:12.0];
  pickerTopConstraintTuneStages = self->__pickerTopConstraintTuneStages;
  self->__pickerTopConstraintTuneStages = v20;

  centerXAnchor = [(UIImageView *)self->__chooseInstructionArrow centerXAnchor];
  centerXAnchor2 = [(UIPageControl *)self->__previewPageDots centerXAnchor];
  v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  chooseInstructionArrowXConstraint = self->__chooseInstructionArrowXConstraint;
  self->__chooseInstructionArrowXConstraint = v24;

  lastBaselineAnchor = [(UILabel *)self->__tuneInstructionLabel lastBaselineAnchor];
  bottomAnchor3 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView bottomAnchor];
  v28 = [lastBaselineAnchor constraintLessThanOrEqualToAnchor:bottomAnchor3];
  tuneInstructionLabelBottomConstraint = self->__tuneInstructionLabelBottomConstraint;
  self->__tuneInstructionLabelBottomConstraint = v28;

  _dpadControl = [(CAMSmartStyleSettingsView *)self _dpadControl];
  _styleTypes = [(CAMSmartStyleSettingsView *)self _styleTypes];
  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 3221225472;
  v143[2] = __44__CAMSmartStyleSettingsView__addConstraints__block_invoke;
  v143[3] = &unk_1E76FBE80;
  v143[4] = self;
  v144 = _dpadControl;
  v145 = xmmword_1A3A6A110;
  v141 = _dpadControl;
  [_styleTypes enumerateObjectsUsingBlock:v143];

  _intensitySliders = [(CAMSmartStyleSettingsView *)self _intensitySliders];
  firstObject = [_intensitySliders firstObject];

  contentLayoutGuide = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView contentLayoutGuide];
  heightAnchor = [contentLayoutGuide heightAnchor];
  safeAreaLayoutGuide = [(CAMSmartStyleSettingsView *)self safeAreaLayoutGuide];
  heightAnchor2 = [safeAreaLayoutGuide heightAnchor];
  v37 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  LODWORD(v38) = 1132003328;
  v131 = v37;
  [v37 setPriority:v38];
  v101 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView leadingAnchor];
  leadingAnchor2 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v138 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v154[0] = v138;
  trailingAnchor = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView trailingAnchor];
  trailingAnchor2 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v135 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v154[1] = v135;
  topAnchor3 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView topAnchor];
  topAnchor4 = [(CAMSmartStyleSettingsView *)self topAnchor];
  v132 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v154[2] = v132;
  bottomAnchor4 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView bottomAnchor];
  bottomAnchor5 = [(CAMSmartStyleSettingsView *)self bottomAnchor];
  v128 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v154[3] = v128;
  contentLayoutGuide2 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView contentLayoutGuide];
  heightAnchor3 = [contentLayoutGuide2 heightAnchor];
  safeAreaLayoutGuide2 = [(CAMSmartStyleSettingsView *)self safeAreaLayoutGuide];
  heightAnchor4 = [safeAreaLayoutGuide2 heightAnchor];
  v123 = [heightAnchor3 constraintGreaterThanOrEqualToAnchor:heightAnchor4];
  v154[4] = v123;
  v154[5] = v37;
  topAnchor5 = [(CAMSemanticStylePicker *)self->__stylePicker topAnchor];
  topAnchor6 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView topAnchor];
  v120 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
  v154[6] = v120;
  leadingAnchor3 = [(CAMSemanticStylePicker *)self->__stylePicker leadingAnchor];
  leadingAnchor4 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v117 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v154[7] = v117;
  trailingAnchor3 = [(CAMSemanticStylePicker *)self->__stylePicker trailingAnchor];
  trailingAnchor4 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v114 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v154[8] = v114;
  heightAnchor5 = [(CAMSemanticStylePicker *)self->__stylePicker heightAnchor];
  widthAnchor = [(CAMSemanticStylePicker *)self->__stylePicker widthAnchor];
  [(CAMSmartStyleSettingsView *)self _desiredCarouselRatio];
  v111 = [heightAnchor5 constraintEqualToAnchor:widthAnchor multiplier:?];
  v154[9] = v111;
  centerXAnchor3 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView centerXAnchor];
  centerXAnchor4 = [(CAMSmartStyleSettingsView *)self centerXAnchor];
  v108 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v154[10] = v108;
  topAnchor7 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView topAnchor];
  topAnchor8 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView topAnchor];
  v105 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:12.0];
  v154[11] = v105;
  leadingAnchor5 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView leadingAnchor];
  leadingAnchor6 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v102 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:28.0];
  v154[12] = v102;
  trailingAnchor5 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView trailingAnchor];
  trailingAnchor6 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v98 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-28.0];
  v154[13] = v98;
  topAnchor9 = [(UIPageControl *)self->__previewPageDots topAnchor];
  bottomAnchor6 = [(CAMSemanticStylePicker *)self->__stylePicker bottomAnchor];
  v93 = [topAnchor9 constraintEqualToAnchor:bottomAnchor6 constant:12.0];
  v154[14] = v93;
  centerXAnchor5 = [(UIPageControl *)self->__previewPageDots centerXAnchor];
  centerXAnchor6 = [(CAMSmartStyleSettingsView *)self centerXAnchor];
  v89 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v154[15] = v89;
  bottomAnchor7 = [(UIButton *)self->__selectAssetsButton bottomAnchor];
  bottomAnchor8 = [(CAMSemanticStylePicker *)self->__stylePicker bottomAnchor];
  v86 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-12.0];
  v154[16] = v86;
  leadingAnchor7 = [(UIButton *)self->__selectAssetsButton leadingAnchor];
  leadingAnchor8 = [(CAMSemanticStylePicker *)self->__stylePicker leadingAnchor];
  v83 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:24.0];
  v154[17] = v83;
  topAnchor10 = [(UIButton *)self->__showGridButton topAnchor];
  topAnchor11 = [(CAMSemanticStylePicker *)self->__stylePicker topAnchor];
  v80 = [topAnchor10 constraintEqualToAnchor:topAnchor11 constant:8.0];
  v154[18] = v80;
  leadingAnchor9 = [(UIButton *)self->__showGridButton leadingAnchor];
  leadingAnchor10 = [(CAMSemanticStylePicker *)self->__stylePicker leadingAnchor];
  v77 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:20.0];
  v154[19] = v77;
  topAnchor12 = [(UILabel *)self->__chooseInstructionLabel topAnchor];
  topAnchor13 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView topAnchor];
  v74 = [topAnchor12 constraintEqualToAnchor:topAnchor13 constant:12.0];
  v154[20] = v74;
  leadingAnchor11 = [(UILabel *)self->__chooseInstructionLabel leadingAnchor];
  leadingAnchor12 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v71 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:28.0];
  v154[21] = v71;
  trailingAnchor7 = [(UILabel *)self->__chooseInstructionLabel trailingAnchor];
  trailingAnchor8 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v68 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-28.0];
  v154[22] = v68;
  centerYAnchor = [(UIImageView *)self->__chooseInstructionArrow centerYAnchor];
  bottomAnchor9 = [(UILabel *)self->__chooseInstructionLabel bottomAnchor];
  v66 = [centerYAnchor constraintEqualToAnchor:bottomAnchor9 constant:20.0];
  v39 = self->__chooseInstructionArrowXConstraint;
  v154[23] = v66;
  v154[24] = v39;
  topAnchor14 = [(UILabel *)self->__tuneInstructionLabel topAnchor];
  bottomAnchor10 = [firstObject bottomAnchor];
  v64 = [topAnchor14 constraintEqualToAnchor:bottomAnchor10 constant:12.0];
  v154[25] = v64;
  leadingAnchor13 = [(UILabel *)self->__tuneInstructionLabel leadingAnchor];
  leadingAnchor14 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v61 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:28.0];
  v154[26] = v61;
  trailingAnchor9 = [(UILabel *)self->__tuneInstructionLabel trailingAnchor];
  trailingAnchor10 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v59 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-28.0];
  v154[27] = v59;
  leadingAnchor15 = [(UIButton *)self->__confirmButton leadingAnchor];
  leadingAnchor16 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v56 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16 constant:28.0];
  v154[28] = v56;
  trailingAnchor11 = [(UIButton *)self->__confirmButton trailingAnchor];
  trailingAnchor12 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v53 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-28.0];
  v154[29] = v53;
  leadingAnchor17 = [(UIButton *)self->__customizeButton leadingAnchor];
  leadingAnchor18 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v50 = [leadingAnchor17 constraintEqualToAnchor:leadingAnchor18 constant:28.0];
  v154[30] = v50;
  trailingAnchor13 = [(UIButton *)self->__customizeButton trailingAnchor];
  trailingAnchor14 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v42 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14 constant:-28.0];
  v154[31] = v42;
  bottomAnchor11 = [(UIButton *)self->__customizeButton bottomAnchor];
  bottomAnchor12 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView bottomAnchor];
  v45 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12 constant:-0.0];
  v154[32] = v45;
  bottomAnchor13 = [(UIButton *)self->__confirmButton bottomAnchor];
  topAnchor15 = [(UIButton *)self->__customizeButton topAnchor];
  v48 = [bottomAnchor13 constraintEqualToAnchor:topAnchor15 constant:-10.0];
  v154[33] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:34];
  [v101 activateConstraints:v49];
}

void __44__CAMSmartStyleSettingsView__addConstraints__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _styleNameBadges];
  v56 = [v5 objectAtIndexedSubscript:a3];

  v6 = [*(a1 + 32) _intensitySliders];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = [*(a1 + 32) _styleDescriptionLabels];
  v9 = [v8 objectAtIndexedSubscript:a3];

  v10 = [v56 centerYAnchor];
  v11 = [*(*(a1 + 32) + 432) centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [v56 centerXAnchor];
  v14 = [*(a1 + 32) leftAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  [v15 setActive:1];
  [*(*(a1 + 32) + 632) addObject:v15];
  if (!a3)
  {
    v16 = [*(a1 + 40) view];
    v17 = [v16 topAnchor];
    v18 = [*(*(a1 + 32) + 472) bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:*(a1 + 48)];
    [v19 setActive:1];

    v20 = [*(a1 + 40) view];
    v21 = [v20 widthAnchor];
    v22 = [*(a1 + 32) widthAnchor];
    +[CAMSmartStyleSettingsView dpadWidthRatio];
    v23 = [v21 constraintEqualToAnchor:v22 multiplier:?];
    [v23 setActive:1];

    v24 = [*(a1 + 40) view];
    v25 = [v24 heightAnchor];
    v26 = [*(a1 + 40) view];
    v27 = [v26 widthAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [v28 setActive:1];

    v29 = [*(a1 + 40) view];
    v30 = [v29 centerXAnchor];
    v31 = [*(*(a1 + 32) + 456) centerXAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v32 setActive:1];
  }

  v33 = [v7 topAnchor];
  v34 = [*(a1 + 40) view];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:*(a1 + 48)];
  [v36 setActive:1];

  v37 = [v7 widthAnchor];
  v38 = [v37 constraintEqualToConstant:108.0];
  [v38 setActive:1];

  v39 = [v7 heightAnchor];
  v40 = [v39 constraintEqualToConstant:20.0];
  [v40 setActive:1];

  v41 = [v7 centerXAnchor];
  v42 = [v56 centerXAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  v44 = [v9 topAnchor];
  v45 = [*(*(a1 + 32) + 472) bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:*(a1 + 48)];
  [v46 setActive:1];

  v47 = [v9 centerXAnchor];
  v48 = [v56 centerXAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = [v9 widthAnchor];
  v51 = [*(a1 + 32) widthAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:*(a1 + 56) * -2.0];
  [v52 setActive:1];

  v53 = [v9 bottomAnchor];
  v54 = [*(*(a1 + 32) + 544) topAnchor];
  v55 = [v53 constraintLessThanOrEqualToAnchor:v54 constant:-*(a1 + 48)];

  [*(*(a1 + 32) + 640) addObject:v55];
}

- (double)_desiredCarouselRatio
{
  [(CAMSmartStyleSettingsView *)self bounds];
  v4 = fabs(v3 / v2 + -1.77777778);
  +[CAMSmartStylePreviewViewController desiredCarouselRatio];
  if (v4 < 0.01)
  {
    return 0.875;
  }

  return result;
}

- (id)_titleCheckmarkView
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB0]];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle" withConfiguration:v2];
  v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v3];
  systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
  [v4 setTintColor:systemGreenColor];

  return v4;
}

- (id)_titleLabelWithText:(id)text
{
  v3 = MEMORY[0x1E69DB880];
  v4 = *MEMORY[0x1E69DDDB0];
  textCopy = text;
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:32770 options:0];
  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v8 setText:textCopy];

  [v8 setFont:v7];
  [v8 setNumberOfLines:0];
  [v8 setTextAlignment:1];

  return v8;
}

- (id)_assetButtonConfiguration
{
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [filledButtonConfiguration setCornerStyle:4];
  [filledButtonConfiguration setButtonSize:3];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v4 = [blackColor colorWithAlphaComponent:0.3];
  [filledButtonConfiguration setBaseBackgroundColor:v4];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [filledButtonConfiguration setBaseForegroundColor:whiteColor];

  v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:14.0];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle" withConfiguration:v6];
  [filledButtonConfiguration setImage:v7];

  [filledButtonConfiguration setContentInsets:{12.0, 12.0, 12.0, 12.0}];

  return filledButtonConfiguration;
}

- (id)_showGridButtonConfiguration
{
  borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  [borderlessButtonConfiguration setButtonSize:3];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [borderlessButtonConfiguration setBaseForegroundColor:whiteColor];

  v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:16.0];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.grid.2x2.fill" withConfiguration:v4];
  [borderlessButtonConfiguration setImage:v5];

  [borderlessButtonConfiguration setContentInsets:{12.0, 12.0, 12.0, 12.0}];

  return borderlessButtonConfiguration;
}

+ (void)_updateButtonConfiguration:(id)configuration
{
  v3 = MEMORY[0x1E69DB880];
  v4 = *MEMORY[0x1E69DDD40];
  configurationCopy = configuration;
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:0 options:0];
  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];
  [configurationCopy setContentInsets:{16.0, 16.0, 16.0, 16.0}];
  [configurationCopy setCornerStyle:4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__CAMSmartStyleSettingsView__updateButtonConfiguration___block_invoke;
  v9[3] = &unk_1E76FBBD0;
  v10 = v7;
  v8 = v7;
  [configurationCopy setTitleTextAttributesTransformer:v9];
}

id __56__CAMSmartStyleSettingsView__updateButtonConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

+ (id)confirmButtonConfiguration
{
  tintedGlassButtonConfiguration = [MEMORY[0x1E69DC740] tintedGlassButtonConfiguration];
  [self _updateButtonConfiguration:tintedGlassButtonConfiguration];

  return tintedGlassButtonConfiguration;
}

+ (id)showAssetsButtonConfiguration
{
  glassButtonConfiguration = [MEMORY[0x1E69DC740] glassButtonConfiguration];
  [self _updateButtonConfiguration:glassButtonConfiguration];

  return glassButtonConfiguration;
}

- (id)_secondaryButtonConfiguration
{
  glassButtonConfiguration = [MEMORY[0x1E69DC740] glassButtonConfiguration];
  [objc_opt_class() _updateButtonConfiguration:glassButtonConfiguration];

  return glassButtonConfiguration;
}

- (id)_fontWithTextStyle:(id)style traits:(unsigned int)traits
{
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (void)_handleStylePickerTap:(id)tap
{
  tapCopy = tap;
  _previewViewControllersByStyleIndex = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleSettingsView visiblePreviewIndex](self, "visiblePreviewIndex")}];
  v6 = [_previewViewControllersByStyleIndex objectForKeyedSubscript:v5];

  view = [v6 view];
  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    view2 = [v6 view];
    [view2 handleTap:tapCopy];
    -[CAMSmartStyleSettingsView _setPreviewViewControllersExpandedItemIndex:animated:](self, "_setPreviewViewControllersExpandedItemIndex:animated:", [view2 expandedItemIndex], 1);
    [(CAMSmartStyleSettingsView *)self _updateShowGridButtonAnimated:1];
  }
}

- (void)_setPreviewViewControllersExpandedItemIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  _previewViewControllersByStyleIndex = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__CAMSmartStyleSettingsView__setPreviewViewControllersExpandedItemIndex_animated___block_invoke;
  v8[3] = &__block_descriptor_41_e61_v32__0__NSNumber_8__CAMSmartStylePreviewViewController_16_B24l;
  v8[4] = index;
  v9 = animatedCopy;
  [_previewViewControllersByStyleIndex enumerateKeysAndObjectsUsingBlock:v8];

  [(CAMSmartStyleSettingsView *)self _updateShowGridButtonAnimated:animatedCopy];
}

- (void)semanticStylePickerDidChangeSelectedStyle:(id)style
{
  -[CAMSmartStyleSettingsView _setVisiblePreviewIndex:updatePageControl:updateStylePicker:animated:notifyDelegate:](self, "_setVisiblePreviewIndex:updatePageControl:updateStylePicker:animated:notifyDelegate:", [style selectedStyleIndex], 1, 0, 1, 1);

  [(CAMSmartStyleSettingsView *)self _updateConfirmButtonTitle];
}

- (void)semanticStylePickerDidScroll:(id)scroll
{
  [(CAMSmartStyleSettingsView *)self _layoutMaskedViews];
  [(CAMSmartStyleSettingsView *)self _setDidCompleteChooseInstructions:1];

  [(CAMSmartStyleSettingsView *)self speedUpFadeInAnimations];
}

- (void)_prepareHaptics
{
  _feedbackController = [(CAMSmartStyleSettingsView *)self _feedbackController];
  [_feedbackController prepareDiscreteFeedback:0];
}

- (void)_performHaptics
{
  _feedbackController = [(CAMSmartStyleSettingsView *)self _feedbackController];
  [_feedbackController performDiscreteFeedback:0];
}

- (void)_handlePageControlValueChanged:(id)changed
{
  changedCopy = changed;
  [(CAMSmartStyleSettingsView *)self _performHaptics];
  [(CAMSmartStyleSettingsView *)self _prepareHaptics];
  interactionState = [changedCopy interactionState];

  [(CAMSmartStyleSettingsView *)self _setVisiblePreviewIndex:[(CAMSmartStyleSettingsView *)self _previewIndexFromPageDots] updatePageControl:0 updateStylePicker:1 animated:interactionState == 1 notifyDelegate:1];

  [(CAMSmartStyleSettingsView *)self _updateConfirmButtonTitle];
}

- (void)didMoveToWindow
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CAMSmartStyleSettingsView_didMoveToWindow__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CAMSmartStyleSettingsView;
  [(CAMSmartStyleSettingsView *)&v3 layoutSubviews];
  [(CAMSmartStyleSettingsView *)self _updateScrollViewEnablement];
}

- (void)_updateScrollViewEnablement
{
  v9 = self->__scrollView;
  [(CAMScrollViewWithLayoutDelegate *)v9 safeAreaInsets];
  v3 = v2;
  v5 = v4;
  [(CAMScrollViewWithLayoutDelegate *)v9 bounds];
  v7 = v6 - v3 - v5;
  [(CAMScrollViewWithLayoutDelegate *)v9 contentSize];
  [(CAMScrollViewWithLayoutDelegate *)v9 setScrollEnabled:v8 > v7];
}

- (void)scrollViewDidLayoutSubviews:(id)subviews
{
  [(CAMSmartStyleSettingsView *)self _layoutMaskedViews];

  [(CAMSmartStyleSettingsView *)self _updateScrollViewEnablement];
}

- (void)_setBooleanPreference:(BOOL)preference forKey:(id)key
{
  preferenceCopy = preference;
  v5 = MEMORY[0x1E696AD98];
  keyCopy = key;
  CFPreferencesSetAppValue(keyCopy, [v5 numberWithBool:preferenceCopy], @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (CAMSmartStyleSettingsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)_descriptionForStylePreset:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = CEKDebugStringForSmartStylePresetType();
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Unexpected style preset %{public}@", &v4, 0xCu);
}

@end