@interface CAMSmartStyleSettingsView
+ (id)_descriptionForStylePreset:(int64_t)a3;
+ (id)confirmButtonConfiguration;
+ (id)showAssetsButtonConfiguration;
+ (void)_updateButtonConfiguration:(id)a3;
- (BOOL)scrollEnabled;
- (CAMSmartStyleSettingsView)initWithDelegate:(id)a3 stylePresets:(id)a4 selectedIndex:(int64_t)a5;
- (CAMSmartStyleSettingsViewDelegate)delegate;
- (CEKSmartStyle)_selectedStyle;
- (double)_desiredCarouselRatio;
- (id)_assetButtonConfiguration;
- (id)_centerSquareOfImage:(id)a3 appliesScale:(BOOL)a4;
- (id)_confirmButtonTitle;
- (id)_debugStringForStage:(unint64_t)a3;
- (id)_fontWithTextStyle:(id)a3 traits:(unsigned int)a4;
- (id)_newInstructionLabel;
- (id)_newSecondaryButton;
- (id)_secondaryButtonConfiguration;
- (id)_selectedStyleDescription;
- (id)_showGridButtonConfiguration;
- (id)_titleCheckmarkView;
- (id)_titleLabelWithText:(id)a3;
- (int64_t)_selectedStylePreset;
- (unint64_t)_firstNeededTuneStage;
- (void)_addConstraints;
- (void)_advanceToTuneStageIfPossible;
- (void)_beginAssetSelection:(id)a3;
- (void)_createNeededStylePages;
- (void)_dpadControlUpdated:(id)a3;
- (void)_handleConfirmButton:(id)a3;
- (void)_handleCustomizeButton:(id)a3;
- (void)_handlePageControlValueChanged:(id)a3;
- (void)_handleStylePickerTap:(id)a3;
- (void)_intensitySliderUpdated;
- (void)_layoutMaskedViews;
- (void)_moveToNextStageIfAllowedAnimated:(BOOL)a3;
- (void)_performHaptics;
- (void)_playChooseInstructionAnimations;
- (void)_playTuneInstructionAnimations;
- (void)_prepareHaptics;
- (void)_resetCurrentStyleToDefaults;
- (void)_setAnimationSequence:(id)a3;
- (void)_setBooleanPreference:(BOOL)a3 forKey:(id)a4;
- (void)_setPreviewViewControllersExpandedItemIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)_setStage:(unint64_t)a3 animated:(BOOL)a4;
- (void)_setStageButtonsEnabled:(BOOL)a3 forReason:(id)a4;
- (void)_setVisiblePreviewIndex:(int64_t)a3 updatePageControl:(BOOL)a4 updateStylePicker:(BOOL)a5 animated:(BOOL)a6 notifyDelegate:(BOOL)a7;
- (void)_stageUpdates;
- (void)_updateConfirmButtonTitle;
- (void)_updateDpadForPresetType:(int64_t)a3 animated:(BOOL)a4;
- (void)_updateForStageAnimated:(BOOL)a3 scrollToTop:(BOOL)a4;
- (void)_updatePreviewAdjustmentsFromCurrentSliderValues:(BOOL)a3 updateModelValues:(BOOL)a4;
- (void)_updatePreviewPageDots;
- (void)_updateScrollViewEnablement;
- (void)_updateShowGridButtonAnimated:(BOOL)a3;
- (void)didMoveToWindow;
- (void)flashScrollIndicators;
- (void)layoutSubviews;
- (void)scrollViewDidLayoutSubviews:(id)a3;
- (void)semanticStylePickerDidChangeSelectedStyle:(id)a3;
- (void)semanticStylePickerDidScroll:(id)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)speedUpFadeInAnimations;
- (void)stopAllAnimations;
- (void)updateImageViews;
@end

@implementation CAMSmartStyleSettingsView

- (CAMSmartStyleSettingsView)initWithDelegate:(id)a3 stylePresets:(id)a4 selectedIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v100.receiver = self;
  v100.super_class = CAMSmartStyleSettingsView;
  v10 = [(CAMSmartStyleSettingsView *)&v100 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSmartStyleSettingsView *)v11 setBackgroundColor:v12];

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

    if ([v9 count] >= a5)
    {
      v25 = a5;
    }

    else
    {
      v25 = 0;
    }

    v26 = [v9 objectAtIndexedSubscript:v25];
    v27 = [v26 integerValue];

    WeakRetained = objc_loadWeakRetained(&v11->_delegate);
    v29 = [WeakRetained settingsView:v11 requestsStyleForPresetType:v27];

    v30 = [v9 copy];
    styleTypes = v11->__styleTypes;
    v11->__styleTypes = v30;

    if (v25 > 0 || ([v29 isNeutral] & 1) == 0)
    {
      [(CAMSmartStyleSettingsView *)v11 _setDidCompleteChooseInstructions:1];
    }

    v91 = v29;
    v11->_visiblePreviewIndex = v25;
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
    [(CAMSemanticStylePicker *)v11->__stylePicker setSelectedStyleIndex:v25];
    [(CAMSemanticStylePicker *)v11->__stylePicker setHidesSelfWhenNotExpanded:0];
    [(CAMSemanticStylePicker *)v11->__stylePicker setExpanded:1];
    [(CAMSemanticStylePicker *)v11->__stylePicker setSpacerWidth:3.0];
    [(CAMSemanticStylePicker *)v11->__stylePicker setMaterial:4];
    v41 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSemanticStylePicker *)v11->__stylePicker setMaterialColor:v41];

    v42 = [(CAMSemanticStylePicker *)v11->__stylePicker pageControl];
    [v42 setHidden:1];

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
    v92 = v8;
    if (v25 >= [(NSArray *)v11->__styleTypes count])
    {
      v47 = &unk_1F16C7DC0;
    }

    else
    {
      v47 = [(NSArray *)v11->__styleTypes objectAtIndexedSubscript:v25];
    }

    v48 = [v47 integerValue];
    v49 = [objc_alloc(MEMORY[0x1E69C42C0]) initWithSize:{125.0, 125.0}];
    dpadControl = v46->__dpadControl;
    v46->__dpadControl = v49;

    [v8 addChildViewController:v46->__dpadControl toView:v11->__scrollView];
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
    v53 = [(PEPhotoStyleDPad *)v46->__dpadControl view];
    [v53 layoutIfNeeded];

    [(CAMSmartStyleSettingsView *)v46 _updateDpadForPresetType:v48 animated:0];
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
    v56 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UIPageControl *)v46->__previewPageDots setPageIndicatorTintColor:v56];

    v57 = [MEMORY[0x1E69DC888] labelColor];
    [(UIPageControl *)v46->__previewPageDots setCurrentPageIndicatorTintColor:v57];

    [(UIPageControl *)v46->__previewPageDots addTarget:v46 action:sel__handlePageControlValueChanged_ forControlEvents:4096];
    [(UIPageControl *)v46->__previewPageDots addTarget:v46 action:sel__handlePageControlTouchDown_ forControlEvents:1];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__previewPageDots];
    v58 = MEMORY[0x1E69DC738];
    v59 = [(CAMSmartStyleSettingsView *)v46 _assetButtonConfiguration];
    v60 = [v58 buttonWithConfiguration:v59 primaryAction:0];
    selectAssetsButton = v46->__selectAssetsButton;
    v46->__selectAssetsButton = v60;

    [(UIButton *)v46->__selectAssetsButton addTarget:v46 action:sel__beginAssetSelection_ forControlEvents:64];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__selectAssetsButton];
    v62 = MEMORY[0x1E69DC738];
    v63 = [(CAMSmartStyleSettingsView *)v46 _showGridButtonConfiguration];
    v64 = [v62 buttonWithConfiguration:v63 primaryAction:0];
    showGridButton = v46->__showGridButton;
    v46->__showGridButton = v64;

    [(UIButton *)v46->__showGridButton addTarget:v46 action:sel__handleShowGridButton_ forControlEvents:64];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__showGridButton];
    v66 = [(CAMSmartStyleSettingsView *)v46 _newInstructionLabel];
    chooseInstructionLabel = v46->__chooseInstructionLabel;
    v46->__chooseInstructionLabel = v66;

    v68 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_CHOOSE_INSTRUCTION", 0);
    [(UILabel *)v46->__chooseInstructionLabel setText:v68];

    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__chooseInstructionLabel];
    v69 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v70 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.forward" withConfiguration:v69];
    v71 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v70];
    chooseInstructionArrow = v46->__chooseInstructionArrow;
    v46->__chooseInstructionArrow = v71;

    v73 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v46->__chooseInstructionArrow setTintColor:v73];

    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__chooseInstructionArrow];
    v74 = [(CAMSmartStyleSettingsView *)v46 _newInstructionLabel];
    tuneInstructionLabel = v46->__tuneInstructionLabel;
    v46->__tuneInstructionLabel = v74;

    v76 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_TUNE_INSTRUCTION", 0);
    [(UILabel *)v46->__tuneInstructionLabel setText:v76];

    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__tuneInstructionLabel];
    v77 = MEMORY[0x1E69DC738];
    v78 = [objc_opt_class() confirmButtonConfiguration];
    v79 = [v77 buttonWithConfiguration:v78 primaryAction:0];
    confirmButton = v46->__confirmButton;
    v46->__confirmButton = v79;

    [(UIButton *)v46->__confirmButton addTarget:v46 action:sel__handleConfirmButton_ forControlEvents:64];
    [(CAMScrollViewWithLayoutDelegate *)v11->__scrollView addSubview:v46->__confirmButton];
    v81 = [(CAMSmartStyleSettingsView *)v46 _newSecondaryButton];
    customizeButton = v46->__customizeButton;
    v46->__customizeButton = v81;

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
    v86 = [v85 allowHaptics];

    if (v86)
    {
      v87 = +[CAMFeedbackController sharedController];
      feedbackController = v46->__feedbackController;
      v46->__feedbackController = v87;
    }

    objc_destroyWeak(&v94);
    objc_destroyWeak(&v96);
    objc_destroyWeak(&location);

    v8 = v92;
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
  v3 = [(CAMSmartStyleSettingsView *)self _secondaryButtonConfiguration];
  v4 = [v2 buttonWithConfiguration:v3 primaryAction:0];

  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setTitleColor:v5 forState:0];

  return v4;
}

- (void)_createNeededStylePages
{
  v3 = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleSettingsView visiblePreviewIndex](self, "visiblePreviewIndex")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(CAMSmartStyleSettingsView *)self _styleClippingContainerViews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CAMSmartStyleSettingsView__createNeededStylePages__block_invoke;
  v8[3] = &unk_1E76FBD08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
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
  v2 = [(CAMSmartStyleSettingsView *)self _stylePicker];
  v3 = [v2 scrollEnabled];

  return v3;
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMSmartStyleSettingsView *)self _stylePicker];
  [v4 setScrollEnabled:v3];
}

- (void)updateImageViews
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(CAMSmartStyleSettingsView *)self window];

  if (v3)
  {
    v4 = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleSettingsView visiblePreviewIndex](self, "visiblePreviewIndex")}];
    v6 = [v4 objectForKeyedSubscript:v5];

    [v6 updateViewsWithLoadResults];
    if ([v6 didFinishRendering])
    {
      v7 = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __45__CAMSmartStyleSettingsView_updateImageViews__block_invoke;
      v9[3] = &unk_1E76FBD30;
      v10 = v6;
      [v7 enumerateKeysAndObjectsUsingBlock:v9];

      v8 = v10;
    }

    else
    {
      v8 = os_log_create("com.apple.camera", "SmartStyleSettings");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = [(CAMSmartStyleSettingsView *)self visiblePreviewIndex];
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
  v3 = [(CAMSmartStyleSettingsView *)self _dpadControl];
  [v3 setPulsingValueIndicator:0];
}

- (void)speedUpFadeInAnimations
{
  v2 = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  [v2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_36];
}

- (void)flashScrollIndicators
{
  v3 = [(CAMSmartStyleSettingsView *)self _scrollView];
  v4 = [v3 isScrollEnabled];

  if (v4)
  {
    v5 = [(CAMSmartStyleSettingsView *)self _scrollView];
    [v5 flashScrollIndicators];
  }
}

- (void)_setVisiblePreviewIndex:(int64_t)a3 updatePageControl:(BOOL)a4 updateStylePicker:(BOOL)a5 animated:(BOOL)a6 notifyDelegate:(BOOL)a7
{
  if (self->_visiblePreviewIndex != a3)
  {
    v7 = a7;
    v8 = a6;
    v9 = a5;
    self->_visiblePreviewIndex = a3;
    if (a4)
    {
      [(CAMSmartStyleSettingsView *)self _updatePreviewPageDots];
    }

    if (v9)
    {
      v12 = [(CAMSmartStyleSettingsView *)self _stylePicker];
      [v12 setSelectedStyleIndex:a3 animated:v8];
    }

    [(CAMSmartStyleSettingsView *)self _createNeededStylePages];
    v13 = [(CAMSmartStyleSettingsView *)self _styleTypes];
    v14 = [v13 objectAtIndexedSubscript:a3];
    v15 = [v14 integerValue];

    [(CAMSmartStyleSettingsView *)self _updateDpadForPresetType:v15 animated:v8];
    [(CAMSmartStyleSettingsView *)self _updatePreviewAdjustmentsFromCurrentSliderValues:0 updateModelValues:0];
    if (v7)
    {
      v16 = [(CAMSmartStyleSettingsView *)self delegate];
      [v16 settingsView:self didChangeToStylePreset:v15];
    }
  }
}

- (void)_updatePreviewPageDots
{
  v3 = [(CAMSmartStyleSettingsView *)self visiblePreviewIndex];
  previewPageDots = self->__previewPageDots;

  [(UIPageControl *)previewPageDots setCurrentPage:v3];
}

- (id)_centerSquareOfImage:(id)a3 appliesScale:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = 1.0;
  if (v4)
  {
    v8 = [(CAMSmartStyleSettingsView *)self window];
    v9 = [v8 windowScene];
    v10 = [v9 screen];
    [v10 scale];
    v7 = v11;
  }

  [v6 size];
  v13 = v7 * v12;
  [v6 size];
  v15 = fmin(v13, v7 * v14);
  Width = CGImageGetWidth([v6 CGImage]);
  v17 = (CGImageGetHeight([v6 CGImage]) - v15) * 0.5;
  v18 = [v6 CGImage];
  v23.origin.x = (Width - v15) * 0.5;
  v23.origin.y = v17;
  v23.size.width = v15;
  v23.size.height = v15;
  v19 = CGImageCreateWithImageInRect(v18, v23);
  v20 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v19];
  CGImageRelease(v19);

  return v20;
}

- (void)_updateForStageAnimated:(BOOL)a3 scrollToTop:(BOOL)a4
{
  v5 = a3;
  [(CAMSmartStyleSettingsView *)self _setStageButtonsEnabled:0 forReason:@"StageUpdate"];
  v7 = 0.35;
  if (!v5)
  {
    v7 = 0.0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CAMSmartStyleSettingsView__updateForStageAnimated_scrollToTop___block_invoke;
  v9[3] = &unk_1E76F7850;
  v9[4] = self;
  v10 = a4;
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

- (void)_setStageButtonsEnabled:(BOOL)a3 forReason:(id)a4
{
  stageButtonSuppressionReasons = self->__stageButtonSuppressionReasons;
  if (a3)
  {
    [(NSMutableSet *)stageButtonSuppressionReasons removeObject:a4];
  }

  else
  {
    [(NSMutableSet *)stageButtonSuppressionReasons addObject:a4];
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
  v13 = [(CAMSmartStyleSettingsView *)self _styleDescriptionLabels];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__CAMSmartStyleSettingsView__stageUpdates__block_invoke;
  v19[3] = &unk_1E76FBD78;
  v20 = stage < 2;
  v19[4] = self;
  [v13 enumerateObjectsUsingBlock:v19];

  [(CAMSmartStyleSettingsView *)self _updatePreviewPageDots];
  v14 = [(PEPhotoStyleDPad *)self->__dpadControl view];
  [v14 setAlpha:v11];

  [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView setAlpha:v11];
  v15 = [(CAMSmartStyleSettingsView *)self _intensitySliders];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__CAMSmartStyleSettingsView__stageUpdates__block_invoke_2;
  v17[3] = &__block_descriptor_33_e42_v32__0__PEPhotoStylePaletteSlider_8Q16_B24l;
  v18 = v10;
  [v15 enumerateObjectsUsingBlock:v17];

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

- (void)_updateShowGridButtonAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = 0.0;
  if (self->__stage <= 3)
  {
    v6 = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleSettingsView visiblePreviewIndex](self, "visiblePreviewIndex")}];
    v8 = [v6 objectForKeyedSubscript:v7];

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
  if (!v3)
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
  v3 = [v2 integerValue];

  return v3;
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
  v4 = [(CAMSmartStyleSettingsView *)self _selectedStylePreset];

  return [v3 _descriptionForStylePreset:v4];
}

+ (id)_descriptionForStylePreset:(int64_t)a3
{
  if (a3 <= 5)
  {
    if (a3 > 2)
    {
      v6 = @"SMART_STYLES_SETTINGS_DESCRIPTION_BLUSH_WARM";
      v7 = @"SMART_STYLES_SETTINGS_DESCRIPTION_GOLD_WARM";
      v9 = @"SMART_STYLES_SETTINGS_DESCRIPTION_COOL";
      if (a3 != 5)
      {
        v9 = 0;
      }

      if (a3 != 4)
      {
        v7 = v9;
      }

      v8 = a3 == 3;
    }

    else
    {
      if (!a3)
      {
        goto LABEL_3;
      }

      v6 = @"SMART_STYLES_SETTINGS_DESCRIPTION_STANDARD";
      v7 = @"SMART_STYLES_SETTINGS_DESCRIPTION_TAN_WARM";
      if (a3 != 2)
      {
        v7 = 0;
      }

      v8 = a3 == 1;
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

  if ((a3 - 7) >= 9)
  {
    v6 = @"SMART_STYLES_SETTINGS_DESCRIPTION_NEUTRAL";
    v7 = @"SMART_STYLES_SETTINGS_DESCRIPTION_BRIGHT_POP";
    if (a3 != 16)
    {
      v7 = 0;
    }

    v8 = a3 == 6;
    goto LABEL_19;
  }

LABEL_3:
  v4 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CAMSmartStyleSettingsView *)a3 _descriptionForStylePreset:v4];
  }

  v5 = 0;
LABEL_22:
  v10 = CAMLocalizedFrameworkString(v5, 0);

  return v10;
}

- (id)_confirmButtonTitle
{
  v2 = [(CAMSmartStyleSettingsView *)self _selectedStyle];
  if ([v2 presetType] == 1 && objc_msgSend(v2, "isCustomized"))
  {
    v3 = CEKLocalizedFrameworkString();
  }

  else
  {
    v3 = [v2 displayName];
  }

  v4 = v3;
  v5 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_CONFIRM_STYLE_FORMAT", 0);
  v6 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, v4];

  return v6;
}

- (void)_updateConfirmButtonTitle
{
  confirmButton = self->__confirmButton;
  v3 = [(CAMSmartStyleSettingsView *)self _confirmButtonTitle];
  [(UIButton *)confirmButton setTitle:v3 forState:0];
}

- (void)_beginAssetSelection:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsViewRequestsUserAssetSelection:self];
}

- (void)_dpadControlUpdated:(id)a3
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
  v3 = [(CAMSmartStyleSettingsView *)self visiblePreviewIndex];
  v9 = [(NSArray *)self->__styleTypes objectAtIndexedSubscript:v3];
  v4 = [v9 integerValue];
  v5 = [(CAMSmartStyleSettingsView *)self _dpadControl];
  v6 = [(CAMSmartStyleSettingsView *)self _intensitySliders];
  v7 = [v6 objectAtIndexedSubscript:v3];

  v8 = [objc_alloc(MEMORY[0x1E6993890]) initWithPresetType:v4];
  [CAMSmartStyleUtilities slider2DValueForStyle:v8 limitRangeForSystemStyles:1];
  [v5 setValue:?];
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

- (void)_updatePreviewAdjustmentsFromCurrentSliderValues:(BOOL)a3 updateModelValues:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CAMSmartStyleSettingsView *)self visiblePreviewIndex];
  v21 = [(NSArray *)self->__styleTypes objectAtIndexedSubscript:v7];
  v8 = [v21 integerValue];
  v9 = [(CAMSmartStyleSettingsView *)self _styleValuesPlatterView];
  if (v5)
  {
    WeakRetained = [(CAMSmartStyleSettingsView *)self _dpadControl];
    v11 = [(CAMSmartStyleSettingsView *)self _intensitySliders];
    v12 = [v11 objectAtIndexedSubscript:v7];

    [WeakRetained value];
    [CAMSmartStyleUtilities colorAndToneBiasForSlider2DValue:1 limitRangeForSystemStyles:?];
    v13 = objc_alloc(MEMORY[0x1E6993890]);
    [v12 value];
    v14 = [v13 initWithPresetType:v8 castIntensity:? toneBias:? colorBias:?];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [WeakRetained settingsView:self requestsStyleForPresetType:v8];
  }

  v15 = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v17 = [v15 objectForKeyedSubscript:v16];

  [v17 updateWithStyle:v14];
  v18 = [objc_alloc(MEMORY[0x1E6993890]) initWithPresetType:{objc_msgSend(v14, "presetType")}];
  LODWORD(v16) = [v14 isEqualToSmartStyle:v18];
  v19 = self->__stage != 2;
  [v14 toneBias];
  [v9 setTone:?];
  [v14 colorBias];
  [v9 setColor:?];
  [v14 castIntensity];
  [v9 setPalette:?];
  [v9 setHidePaletteLabel:{objc_msgSend(MEMORY[0x1E6993890], "canCustomizeCastIntensityForCastType:", objc_msgSend(v14, "castType")) ^ 1}];
  [v9 setHideResetButton:0];
  [v9 setIsResetButtonEnabled:v19 & ~v16];
  if (v4)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 settingsView:self didUpdateStyle:v14 forPresetType:v8];
  }
}

- (void)_updateDpadForPresetType:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = [WeakRetained settingsView:self requestsStyleForPresetType:a3];

  v8 = [objc_alloc(MEMORY[0x1E6993890]) initWithPresetType:a3];
  [CAMSmartStyleUtilities slider2DValueForStyle:v19 limitRangeForSystemStyles:1];
  v10 = v9;
  v12 = v11;
  [CAMSmartStyleUtilities slider2DValueForStyle:v8 limitRangeForSystemStyles:1];
  v14 = v13;
  v16 = v15;
  [(CAMSmartStyleSettingsView *)self _settingDpadValue:1];
  [(PEPhotoStyleDPad *)self->__dpadControl setValue:v4 animated:v10, v12];
  [(PEPhotoStyleDPad *)self->__dpadControl setDefaultValue:v4 animated:v14, v16];
  [(CAMSmartStyleSettingsView *)self _settingDpadValue:0];
  v17 = +[CAMCaptureConversions PISemanticStyleCastForCEKCastType:](CAMCaptureConversions, "PISemanticStyleCastForCEKCastType:", [MEMORY[0x1E6993890] castTypeForPresetType:a3]);
  v18 = [(CAMSmartStyleSettingsView *)self _dpadControl];
  [v18 setGradientCast:v17];
}

- (void)_handleConfirmButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsViewDidConfirmStyle:self];

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 settingsViewRequestsDismiss:self completion:0];
}

- (void)_handleCustomizeButton:(id)a3
{
  [(CAMSmartStyleSettingsView *)self _setStage:[(CAMSmartStyleSettingsView *)self _firstNeededTuneStage] animated:1];
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 hostProcess];

  v5 = CAMSmartStylesOnboardingCameraAppDidTapCustomize;
  if (v4)
  {
    v5 = CAMSmartStylesOnboardingSettingsDidTapCustomize;
  }

  v6 = *v5;
  [CAMPreferencesUtilities setBool:1 inCameraDomainForKey:v6];
}

- (id)_debugStringForStage:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E76FBEC0[a3];
  }
}

- (void)_setStage:(unint64_t)a3 animated:(BOOL)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->__stage != a3)
  {
    v4 = a4;
    v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CAMSmartStyleSettingsView *)self _debugStringForStage:a3];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Settings: changing stage to %{public}@", &v10, 0xCu);
    }

    [(CAMSmartStyleSettingsView *)self _setAnimationSequence:0];
    [(PEPhotoStyleDPad *)self->__dpadControl setPulsingValueIndicator:0];
    [(CAMSmartStyleSettingsView *)self layoutIfNeeded];
    stage = self->__stage;
    self->__stage = a3;
    if (a3 == 2)
    {
      [(CAMSmartStyleSettingsView *)self _playTuneInstructionAnimations];
    }

    else if (a3 == 3)
    {
      [(CAMSmartStyleSettingsView *)self _setDidCompleteTuneInstructions:1];
      [(CAMSmartStyleSettingsView *)self _updatePreviewAdjustmentsFromCurrentSliderValues:0 updateModelValues:0];
    }

    [(CAMSmartStyleSettingsView *)self _updateForStageAnimated:v4 scrollToTop:[(CAMSmartStyleSettingsView *)self _userFacingContentPageNumberForStage:stage]!= [(CAMSmartStyleSettingsView *)self _userFacingContentPageNumberForStage:a3]];
  }
}

- (void)_moveToNextStageIfAllowedAnimated:(BOOL)a3
{
  v3 = a3;
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

    [(CAMSmartStyleSettingsView *)self _setStage:stage animated:v3];
  }
}

- (unint64_t)_firstNeededTuneStage
{
  if ([(CAMSmartStyleSettingsView *)self _didCompleteTuneInstructions])
  {
    return 3;
  }

  v4 = [(CAMSmartStyleSettingsView *)self _selectedStyle];
  if ([v4 isCustomized])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)_setAnimationSequence:(id)a3
{
  v5 = a3;
  animationSequence = self->__animationSequence;
  if (animationSequence != v5)
  {
    v7 = v5;
    [(CEKAnimationSequence *)animationSequence stopAllAnimations];
    objc_storeStrong(&self->__animationSequence, a3);
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](animationSequence, v5);
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

  v8 = [(CAMSmartStyleSettingsView *)self _animationSequence];
  [v8 start];
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
  v3 = [(CAMSmartStyleSettingsView *)self _selectedStyle];
  [v3 colorBias];
  v5 = v4;
  [v3 toneBias];
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
  v14 = v3;
  v31 = v14;
  v32 = self;
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
  v28 = self;
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

  v23 = [(CAMSmartStyleSettingsView *)self _animationSequence];
  [v23 start];
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
  v3 = [(CAMSmartStyleSettingsView *)self _stylePicker];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CAMSmartStyleSettingsView *)self _styleClippingContainerViews];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__CAMSmartStyleSettingsView__layoutMaskedViews__block_invoke;
  v14[3] = &unk_1E76FBE58;
  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v15 = v3;
  v16 = self;
  v13 = v3;
  [v12 enumerateObjectsUsingBlock:v14];
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
  v3 = [(CAMSmartStyleSettingsView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v150 objects:v156 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v150 + 1) + 8 * v7++) setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v150 objects:v156 count:16];
    }

    while (v5);
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v8 = [(CAMSmartStyleSettingsView *)self _scrollView];
  v9 = [v8 subviews];

  v10 = [v9 countByEnumeratingWithState:&v146 objects:v155 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v146 + 1) + 8 * v13++) setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v146 objects:v155 count:16];
    }

    while (v11);
  }

  v14 = [(CAMSemanticStylePicker *)self->__stylePicker topAnchor];
  v15 = [(UIImageView *)self->__chooseInstructionArrow bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:12.0];
  pickerTopConstraintChooseStages = self->__pickerTopConstraintChooseStages;
  self->__pickerTopConstraintChooseStages = v16;

  v18 = [(CAMSemanticStylePicker *)self->__stylePicker topAnchor];
  v19 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:12.0];
  pickerTopConstraintTuneStages = self->__pickerTopConstraintTuneStages;
  self->__pickerTopConstraintTuneStages = v20;

  v22 = [(UIImageView *)self->__chooseInstructionArrow centerXAnchor];
  v23 = [(UIPageControl *)self->__previewPageDots centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  chooseInstructionArrowXConstraint = self->__chooseInstructionArrowXConstraint;
  self->__chooseInstructionArrowXConstraint = v24;

  v26 = [(UILabel *)self->__tuneInstructionLabel lastBaselineAnchor];
  v27 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView bottomAnchor];
  v28 = [v26 constraintLessThanOrEqualToAnchor:v27];
  tuneInstructionLabelBottomConstraint = self->__tuneInstructionLabelBottomConstraint;
  self->__tuneInstructionLabelBottomConstraint = v28;

  v30 = [(CAMSmartStyleSettingsView *)self _dpadControl];
  v31 = [(CAMSmartStyleSettingsView *)self _styleTypes];
  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 3221225472;
  v143[2] = __44__CAMSmartStyleSettingsView__addConstraints__block_invoke;
  v143[3] = &unk_1E76FBE80;
  v143[4] = self;
  v144 = v30;
  v145 = xmmword_1A3A6A110;
  v141 = v30;
  [v31 enumerateObjectsUsingBlock:v143];

  v32 = [(CAMSmartStyleSettingsView *)self _intensitySliders];
  v142 = [v32 firstObject];

  v33 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView contentLayoutGuide];
  v34 = [v33 heightAnchor];
  v35 = [(CAMSmartStyleSettingsView *)self safeAreaLayoutGuide];
  v36 = [v35 heightAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];

  LODWORD(v38) = 1132003328;
  v131 = v37;
  [v37 setPriority:v38];
  v101 = MEMORY[0x1E696ACD8];
  v140 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView leadingAnchor];
  v139 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v138 = [v140 constraintEqualToAnchor:v139];
  v154[0] = v138;
  v137 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView trailingAnchor];
  v136 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v135 = [v137 constraintEqualToAnchor:v136];
  v154[1] = v135;
  v134 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView topAnchor];
  v133 = [(CAMSmartStyleSettingsView *)self topAnchor];
  v132 = [v134 constraintEqualToAnchor:v133];
  v154[2] = v132;
  v130 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView bottomAnchor];
  v129 = [(CAMSmartStyleSettingsView *)self bottomAnchor];
  v128 = [v130 constraintEqualToAnchor:v129];
  v154[3] = v128;
  v127 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView contentLayoutGuide];
  v125 = [v127 heightAnchor];
  v126 = [(CAMSmartStyleSettingsView *)self safeAreaLayoutGuide];
  v124 = [v126 heightAnchor];
  v123 = [v125 constraintGreaterThanOrEqualToAnchor:v124];
  v154[4] = v123;
  v154[5] = v37;
  v122 = [(CAMSemanticStylePicker *)self->__stylePicker topAnchor];
  v121 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView topAnchor];
  v120 = [v122 constraintGreaterThanOrEqualToAnchor:v121];
  v154[6] = v120;
  v119 = [(CAMSemanticStylePicker *)self->__stylePicker leadingAnchor];
  v118 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v117 = [v119 constraintEqualToAnchor:v118];
  v154[7] = v117;
  v116 = [(CAMSemanticStylePicker *)self->__stylePicker trailingAnchor];
  v115 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v114 = [v116 constraintEqualToAnchor:v115];
  v154[8] = v114;
  v113 = [(CAMSemanticStylePicker *)self->__stylePicker heightAnchor];
  v112 = [(CAMSemanticStylePicker *)self->__stylePicker widthAnchor];
  [(CAMSmartStyleSettingsView *)self _desiredCarouselRatio];
  v111 = [v113 constraintEqualToAnchor:v112 multiplier:?];
  v154[9] = v111;
  v110 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView centerXAnchor];
  v109 = [(CAMSmartStyleSettingsView *)self centerXAnchor];
  v108 = [v110 constraintEqualToAnchor:v109];
  v154[10] = v108;
  v107 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView topAnchor];
  v106 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView topAnchor];
  v105 = [v107 constraintEqualToAnchor:v106 constant:12.0];
  v154[11] = v105;
  v104 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView leadingAnchor];
  v103 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v102 = [v104 constraintEqualToAnchor:v103 constant:28.0];
  v154[12] = v102;
  v100 = [(PEPhotoStyleValuesPlatterView *)self->__styleValuesPlatterView trailingAnchor];
  v99 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v98 = [v100 constraintEqualToAnchor:v99 constant:-28.0];
  v154[13] = v98;
  v97 = [(UIPageControl *)self->__previewPageDots topAnchor];
  v94 = [(CAMSemanticStylePicker *)self->__stylePicker bottomAnchor];
  v93 = [v97 constraintEqualToAnchor:v94 constant:12.0];
  v154[14] = v93;
  v91 = [(UIPageControl *)self->__previewPageDots centerXAnchor];
  v90 = [(CAMSmartStyleSettingsView *)self centerXAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v154[15] = v89;
  v88 = [(UIButton *)self->__selectAssetsButton bottomAnchor];
  v87 = [(CAMSemanticStylePicker *)self->__stylePicker bottomAnchor];
  v86 = [v88 constraintEqualToAnchor:v87 constant:-12.0];
  v154[16] = v86;
  v85 = [(UIButton *)self->__selectAssetsButton leadingAnchor];
  v84 = [(CAMSemanticStylePicker *)self->__stylePicker leadingAnchor];
  v83 = [v85 constraintEqualToAnchor:v84 constant:24.0];
  v154[17] = v83;
  v82 = [(UIButton *)self->__showGridButton topAnchor];
  v81 = [(CAMSemanticStylePicker *)self->__stylePicker topAnchor];
  v80 = [v82 constraintEqualToAnchor:v81 constant:8.0];
  v154[18] = v80;
  v79 = [(UIButton *)self->__showGridButton leadingAnchor];
  v78 = [(CAMSemanticStylePicker *)self->__stylePicker leadingAnchor];
  v77 = [v79 constraintEqualToAnchor:v78 constant:20.0];
  v154[19] = v77;
  v76 = [(UILabel *)self->__chooseInstructionLabel topAnchor];
  v75 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView topAnchor];
  v74 = [v76 constraintEqualToAnchor:v75 constant:12.0];
  v154[20] = v74;
  v73 = [(UILabel *)self->__chooseInstructionLabel leadingAnchor];
  v72 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v71 = [v73 constraintEqualToAnchor:v72 constant:28.0];
  v154[21] = v71;
  v70 = [(UILabel *)self->__chooseInstructionLabel trailingAnchor];
  v69 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69 constant:-28.0];
  v154[22] = v68;
  v96 = [(UIImageView *)self->__chooseInstructionArrow centerYAnchor];
  v67 = [(UILabel *)self->__chooseInstructionLabel bottomAnchor];
  v66 = [v96 constraintEqualToAnchor:v67 constant:20.0];
  v39 = self->__chooseInstructionArrowXConstraint;
  v154[23] = v66;
  v154[24] = v39;
  v95 = [(UILabel *)self->__tuneInstructionLabel topAnchor];
  v65 = [v142 bottomAnchor];
  v64 = [v95 constraintEqualToAnchor:v65 constant:12.0];
  v154[25] = v64;
  v63 = [(UILabel *)self->__tuneInstructionLabel leadingAnchor];
  v62 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v61 = [v63 constraintEqualToAnchor:v62 constant:28.0];
  v154[26] = v61;
  v92 = [(UILabel *)self->__tuneInstructionLabel trailingAnchor];
  v60 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v59 = [v92 constraintEqualToAnchor:v60 constant:-28.0];
  v154[27] = v59;
  v58 = [(UIButton *)self->__confirmButton leadingAnchor];
  v57 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:28.0];
  v154[28] = v56;
  v55 = [(UIButton *)self->__confirmButton trailingAnchor];
  v54 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54 constant:-28.0];
  v154[29] = v53;
  v52 = [(UIButton *)self->__customizeButton leadingAnchor];
  v51 = [(CAMSmartStyleSettingsView *)self leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:28.0];
  v154[30] = v50;
  v40 = [(UIButton *)self->__customizeButton trailingAnchor];
  v41 = [(CAMSmartStyleSettingsView *)self trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-28.0];
  v154[31] = v42;
  v43 = [(UIButton *)self->__customizeButton bottomAnchor];
  v44 = [(CAMScrollViewWithLayoutDelegate *)self->__scrollView bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-0.0];
  v154[32] = v45;
  v46 = [(UIButton *)self->__confirmButton bottomAnchor];
  v47 = [(UIButton *)self->__customizeButton topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-10.0];
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
  v5 = [MEMORY[0x1E69DC888] systemGreenColor];
  [v4 setTintColor:v5];

  return v4;
}

- (id)_titleLabelWithText:(id)a3
{
  v3 = MEMORY[0x1E69DB880];
  v4 = *MEMORY[0x1E69DDDB0];
  v5 = a3;
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:32770 options:0];
  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v8 setText:v5];

  [v8 setFont:v7];
  [v8 setNumberOfLines:0];
  [v8 setTextAlignment:1];

  return v8;
}

- (id)_assetButtonConfiguration
{
  v2 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [v2 setCornerStyle:4];
  [v2 setButtonSize:3];
  v3 = [MEMORY[0x1E69DC888] blackColor];
  v4 = [v3 colorWithAlphaComponent:0.3];
  [v2 setBaseBackgroundColor:v4];

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setBaseForegroundColor:v5];

  v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:14.0];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle" withConfiguration:v6];
  [v2 setImage:v7];

  [v2 setContentInsets:{12.0, 12.0, 12.0, 12.0}];

  return v2;
}

- (id)_showGridButtonConfiguration
{
  v2 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  [v2 setButtonSize:3];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setBaseForegroundColor:v3];

  v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:16.0];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.grid.2x2.fill" withConfiguration:v4];
  [v2 setImage:v5];

  [v2 setContentInsets:{12.0, 12.0, 12.0, 12.0}];

  return v2;
}

+ (void)_updateButtonConfiguration:(id)a3
{
  v3 = MEMORY[0x1E69DB880];
  v4 = *MEMORY[0x1E69DDD40];
  v5 = a3;
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:0 options:0];
  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];
  [v5 setContentInsets:{16.0, 16.0, 16.0, 16.0}];
  [v5 setCornerStyle:4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__CAMSmartStyleSettingsView__updateButtonConfiguration___block_invoke;
  v9[3] = &unk_1E76FBBD0;
  v10 = v7;
  v8 = v7;
  [v5 setTitleTextAttributesTransformer:v9];
}

id __56__CAMSmartStyleSettingsView__updateButtonConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

+ (id)confirmButtonConfiguration
{
  v3 = [MEMORY[0x1E69DC740] tintedGlassButtonConfiguration];
  [a1 _updateButtonConfiguration:v3];

  return v3;
}

+ (id)showAssetsButtonConfiguration
{
  v3 = [MEMORY[0x1E69DC740] glassButtonConfiguration];
  [a1 _updateButtonConfiguration:v3];

  return v3;
}

- (id)_secondaryButtonConfiguration
{
  v2 = [MEMORY[0x1E69DC740] glassButtonConfiguration];
  [objc_opt_class() _updateButtonConfiguration:v2];

  return v2;
}

- (id)_fontWithTextStyle:(id)a3 traits:(unsigned int)a4
{
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:*&a4 options:0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (void)_handleStylePickerTap:(id)a3
{
  v9 = a3;
  v4 = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleSettingsView visiblePreviewIndex](self, "visiblePreviewIndex")}];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 view];
  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    v8 = [v6 view];
    [v8 handleTap:v9];
    -[CAMSmartStyleSettingsView _setPreviewViewControllersExpandedItemIndex:animated:](self, "_setPreviewViewControllersExpandedItemIndex:animated:", [v8 expandedItemIndex], 1);
    [(CAMSmartStyleSettingsView *)self _updateShowGridButtonAnimated:1];
  }
}

- (void)_setPreviewViewControllersExpandedItemIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(CAMSmartStyleSettingsView *)self _previewViewControllersByStyleIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__CAMSmartStyleSettingsView__setPreviewViewControllersExpandedItemIndex_animated___block_invoke;
  v8[3] = &__block_descriptor_41_e61_v32__0__NSNumber_8__CAMSmartStylePreviewViewController_16_B24l;
  v8[4] = a3;
  v9 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];

  [(CAMSmartStyleSettingsView *)self _updateShowGridButtonAnimated:v4];
}

- (void)semanticStylePickerDidChangeSelectedStyle:(id)a3
{
  -[CAMSmartStyleSettingsView _setVisiblePreviewIndex:updatePageControl:updateStylePicker:animated:notifyDelegate:](self, "_setVisiblePreviewIndex:updatePageControl:updateStylePicker:animated:notifyDelegate:", [a3 selectedStyleIndex], 1, 0, 1, 1);

  [(CAMSmartStyleSettingsView *)self _updateConfirmButtonTitle];
}

- (void)semanticStylePickerDidScroll:(id)a3
{
  [(CAMSmartStyleSettingsView *)self _layoutMaskedViews];
  [(CAMSmartStyleSettingsView *)self _setDidCompleteChooseInstructions:1];

  [(CAMSmartStyleSettingsView *)self speedUpFadeInAnimations];
}

- (void)_prepareHaptics
{
  v2 = [(CAMSmartStyleSettingsView *)self _feedbackController];
  [v2 prepareDiscreteFeedback:0];
}

- (void)_performHaptics
{
  v2 = [(CAMSmartStyleSettingsView *)self _feedbackController];
  [v2 performDiscreteFeedback:0];
}

- (void)_handlePageControlValueChanged:(id)a3
{
  v4 = a3;
  [(CAMSmartStyleSettingsView *)self _performHaptics];
  [(CAMSmartStyleSettingsView *)self _prepareHaptics];
  v5 = [v4 interactionState];

  [(CAMSmartStyleSettingsView *)self _setVisiblePreviewIndex:[(CAMSmartStyleSettingsView *)self _previewIndexFromPageDots] updatePageControl:0 updateStylePicker:1 animated:v5 == 1 notifyDelegate:1];

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

- (void)scrollViewDidLayoutSubviews:(id)a3
{
  [(CAMSmartStyleSettingsView *)self _layoutMaskedViews];

  [(CAMSmartStyleSettingsView *)self _updateScrollViewEnablement];
}

- (void)_setBooleanPreference:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x1E696AD98];
  v6 = a4;
  CFPreferencesSetAppValue(v6, [v5 numberWithBool:v4], @"com.apple.camera");

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