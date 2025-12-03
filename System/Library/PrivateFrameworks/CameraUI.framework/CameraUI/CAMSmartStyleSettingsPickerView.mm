@interface CAMSmartStyleSettingsPickerView
- (CAMSmartStyleSettingsPickerView)initWithPHPickerView:(id)view;
- (void)_setConstraints;
- (void)_updateContinueButtonConfiguration;
- (void)_updateDeselectAllButtonConfiguration;
- (void)setWaitingOnLoading:(BOOL)loading;
@end

@implementation CAMSmartStyleSettingsPickerView

- (CAMSmartStyleSettingsPickerView)initWithPHPickerView:(id)view
{
  v37 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v35.receiver = self;
  v35.super_class = CAMSmartStyleSettingsPickerView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(CAMSmartStyleSettingsPickerView *)&v35 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  if (v10)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSmartStyleSettingsPickerView *)v10 setBackgroundColor:systemBackgroundColor];

    objc_storeStrong(&v10->__pickerView, view);
    [(CAMSmartStyleSettingsPickerView *)v10 addSubview:viewCopy];
    v12 = MEMORY[0x1E69DC738];
    v13 = +[CAMSmartStyleSettingsView confirmButtonConfiguration];
    v14 = [v12 buttonWithConfiguration:v13 primaryAction:0];
    continueButton = v10->_continueButton;
    v10->_continueButton = v14;

    [(CAMSmartStyleSettingsPickerView *)v10 _updateContinueButtonConfiguration];
    [(CAMSmartStyleSettingsPickerView *)v10 addSubview:v10->_continueButton];
    v16 = MEMORY[0x1E69DC738];
    v17 = +[CAMSmartStyleSettingsView showAssetsButtonConfiguration];
    v18 = [v16 buttonWithConfiguration:v17 primaryAction:0];
    deselectAllButton = v10->_deselectAllButton;
    v10->_deselectAllButton = v18;

    [(CAMSmartStyleSettingsPickerView *)v10 _updateDeselectAllButtonConfiguration];
    [(CAMSmartStyleSettingsPickerView *)v10 addSubview:v10->_deselectAllButton];
    v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    pickerOverlayDisablingView = v10->__pickerOverlayDisablingView;
    v10->__pickerOverlayDisablingView = v20;

    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v23 = [systemBackgroundColor2 colorWithAlphaComponent:0.3];
    [(UIView *)v10->__pickerOverlayDisablingView setBackgroundColor:v23];

    [(UIView *)v10->__pickerOverlayDisablingView setAlpha:0.0];
    [(CAMSmartStyleSettingsPickerView *)v10 addSubview:v10->__pickerOverlayDisablingView];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    subviews = [(CAMSmartStyleSettingsPickerView *)v10 subviews];
    v25 = [subviews countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v31 + 1) + 8 * i) setTranslatesAutoresizingMaskIntoConstraints:0];
        }

        v26 = [subviews countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v26);
    }

    [(CAMSmartStyleSettingsPickerView *)v10 _setConstraints];
    v29 = v10;
  }

  return v10;
}

- (void)_setConstraints
{
  v59[14] = *MEMORY[0x1E69E9840];
  _pickerView = [(CAMSmartStyleSettingsPickerView *)self _pickerView];
  _pickerOverlayDisablingView = [(CAMSmartStyleSettingsPickerView *)self _pickerOverlayDisablingView];
  continueButton = [(CAMSmartStyleSettingsPickerView *)self continueButton];
  deselectAllButton = [(CAMSmartStyleSettingsPickerView *)self deselectAllButton];
  v36 = MEMORY[0x1E696ACD8];
  topAnchor = [_pickerView topAnchor];
  safeAreaLayoutGuide = [(CAMSmartStyleSettingsPickerView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v55 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v59[0] = v55;
  bottomAnchor = [_pickerView bottomAnchor];
  topAnchor3 = [deselectAllButton topAnchor];
  v51 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-20.0];
  v59[1] = v51;
  v54 = _pickerView;
  leadingAnchor = [_pickerView leadingAnchor];
  leadingAnchor2 = [(CAMSmartStyleSettingsPickerView *)self leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v59[2] = v48;
  trailingAnchor = [_pickerView trailingAnchor];
  trailingAnchor2 = [(CAMSmartStyleSettingsPickerView *)self trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v59[3] = v44;
  topAnchor4 = [_pickerOverlayDisablingView topAnchor];
  safeAreaLayoutGuide2 = [(CAMSmartStyleSettingsPickerView *)self safeAreaLayoutGuide];
  topAnchor5 = [safeAreaLayoutGuide2 topAnchor];
  v40 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v59[4] = v40;
  bottomAnchor2 = [_pickerOverlayDisablingView bottomAnchor];
  bottomAnchor3 = [(CAMSmartStyleSettingsPickerView *)self bottomAnchor];
  v35 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v59[5] = v35;
  v45 = _pickerOverlayDisablingView;
  leadingAnchor3 = [_pickerOverlayDisablingView leadingAnchor];
  leadingAnchor4 = [(CAMSmartStyleSettingsPickerView *)self leadingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v59[6] = v32;
  trailingAnchor3 = [_pickerOverlayDisablingView trailingAnchor];
  trailingAnchor4 = [(CAMSmartStyleSettingsPickerView *)self trailingAnchor];
  v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v59[7] = v29;
  bottomAnchor4 = [continueButton bottomAnchor];
  safeAreaLayoutGuide3 = [(CAMSmartStyleSettingsPickerView *)self safeAreaLayoutGuide];
  bottomAnchor5 = [safeAreaLayoutGuide3 bottomAnchor];
  v24 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-0.0];
  v59[8] = v24;
  v37 = continueButton;
  leadingAnchor5 = [continueButton leadingAnchor];
  leadingAnchor6 = [(CAMSmartStyleSettingsPickerView *)self leadingAnchor];
  v21 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:28.0];
  v59[9] = v21;
  trailingAnchor5 = [continueButton trailingAnchor];
  trailingAnchor6 = [(CAMSmartStyleSettingsPickerView *)self trailingAnchor];
  v18 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-28.0];
  v59[10] = v18;
  bottomAnchor6 = [deselectAllButton bottomAnchor];
  continueButton2 = [(CAMSmartStyleSettingsPickerView *)self continueButton];
  topAnchor6 = [continueButton2 topAnchor];
  v9 = [bottomAnchor6 constraintEqualToAnchor:topAnchor6 constant:-10.0];
  v59[11] = v9;
  v28 = deselectAllButton;
  leadingAnchor7 = [deselectAllButton leadingAnchor];
  leadingAnchor8 = [(CAMSmartStyleSettingsPickerView *)self leadingAnchor];
  v12 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:28.0];
  v59[12] = v12;
  trailingAnchor7 = [deselectAllButton trailingAnchor];
  trailingAnchor8 = [(CAMSmartStyleSettingsPickerView *)self trailingAnchor];
  v15 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-28.0];
  v59[13] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:14];
  [v36 activateConstraints:v16];
}

- (void)setWaitingOnLoading:(BOOL)loading
{
  if (self->_waitingOnLoading != loading)
  {
    v8 = v3;
    v9 = v4;
    self->_waitingOnLoading = loading;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__CAMSmartStyleSettingsPickerView_setWaitingOnLoading___block_invoke;
    v6[3] = &unk_1E76F7850;
    v6[4] = self;
    loadingCopy = loading;
    [CAMView animateIfNeededWithDuration:v6 animations:0.25];
    [(CAMSmartStyleSettingsPickerView *)self _updateContinueButtonConfiguration];
  }
}

uint64_t __55__CAMSmartStyleSettingsPickerView_setWaitingOnLoading___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 440) setAlpha:v1];
}

- (void)_updateContinueButtonConfiguration
{
  isWaitingOnLoading = [(CAMSmartStyleSettingsPickerView *)self isWaitingOnLoading];
  if (isWaitingOnLoading)
  {
    v4 = @"SMART_STYLES_SETTINGS_LOADING";
  }

  else
  {
    v4 = @"SMART_STYLES_SETTINGS_CONTINUE";
  }

  continueButton = self->_continueButton;
  v6 = CAMLocalizedFrameworkString(v4, 0);
  [(UIButton *)continueButton setTitle:v6 forState:0];

  configuration = [(UIButton *)self->_continueButton configuration];
  v8 = [configuration copy];

  [v8 setShowsActivityIndicator:isWaitingOnLoading];
  [v8 setImagePlacement:8];
  [v8 setImagePadding:8.0];
  [v8 setTitleAlignment:2];
  [(UIButton *)self->_continueButton setConfiguration:v8];
  [(UIButton *)self->_continueButton setNeedsUpdateConfiguration];
}

- (void)_updateDeselectAllButtonConfiguration
{
  deselectAllButton = [(CAMSmartStyleSettingsPickerView *)self deselectAllButton];
  v2 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_DESELECT_ALL", 0);
  [deselectAllButton setTitle:v2 forState:0];

  [deselectAllButton setNeedsUpdateConfiguration];
}

@end