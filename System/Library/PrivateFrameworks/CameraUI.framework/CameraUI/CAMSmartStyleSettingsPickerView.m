@interface CAMSmartStyleSettingsPickerView
- (CAMSmartStyleSettingsPickerView)initWithPHPickerView:(id)a3;
- (void)_setConstraints;
- (void)_updateContinueButtonConfiguration;
- (void)_updateDeselectAllButtonConfiguration;
- (void)setWaitingOnLoading:(BOOL)a3;
@end

@implementation CAMSmartStyleSettingsPickerView

- (CAMSmartStyleSettingsPickerView)initWithPHPickerView:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35.receiver = self;
  v35.super_class = CAMSmartStyleSettingsPickerView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(CAMSmartStyleSettingsPickerView *)&v35 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  if (v10)
  {
    v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSmartStyleSettingsPickerView *)v10 setBackgroundColor:v11];

    objc_storeStrong(&v10->__pickerView, a3);
    [(CAMSmartStyleSettingsPickerView *)v10 addSubview:v5];
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

    v22 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v23 = [v22 colorWithAlphaComponent:0.3];
    [(UIView *)v10->__pickerOverlayDisablingView setBackgroundColor:v23];

    [(UIView *)v10->__pickerOverlayDisablingView setAlpha:0.0];
    [(CAMSmartStyleSettingsPickerView *)v10 addSubview:v10->__pickerOverlayDisablingView];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = [(CAMSmartStyleSettingsPickerView *)v10 subviews];
    v25 = [v24 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(v24);
          }

          [*(*(&v31 + 1) + 8 * i) setTranslatesAutoresizingMaskIntoConstraints:0];
        }

        v26 = [v24 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
  v3 = [(CAMSmartStyleSettingsPickerView *)self _pickerView];
  v4 = [(CAMSmartStyleSettingsPickerView *)self _pickerOverlayDisablingView];
  v5 = [(CAMSmartStyleSettingsPickerView *)self continueButton];
  v6 = [(CAMSmartStyleSettingsPickerView *)self deselectAllButton];
  v36 = MEMORY[0x1E696ACD8];
  v57 = [v3 topAnchor];
  v58 = [(CAMSmartStyleSettingsPickerView *)self safeAreaLayoutGuide];
  v56 = [v58 topAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v59[0] = v55;
  v53 = [v3 bottomAnchor];
  v52 = [v6 topAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 constant:-20.0];
  v59[1] = v51;
  v54 = v3;
  v50 = [v3 leadingAnchor];
  v49 = [(CAMSmartStyleSettingsPickerView *)self leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v59[2] = v48;
  v47 = [v3 trailingAnchor];
  v46 = [(CAMSmartStyleSettingsPickerView *)self trailingAnchor];
  v44 = [v47 constraintEqualToAnchor:v46];
  v59[3] = v44;
  v42 = [v4 topAnchor];
  v43 = [(CAMSmartStyleSettingsPickerView *)self safeAreaLayoutGuide];
  v41 = [v43 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v59[4] = v40;
  v39 = [v4 bottomAnchor];
  v38 = [(CAMSmartStyleSettingsPickerView *)self bottomAnchor];
  v35 = [v39 constraintEqualToAnchor:v38];
  v59[5] = v35;
  v45 = v4;
  v34 = [v4 leadingAnchor];
  v33 = [(CAMSmartStyleSettingsPickerView *)self leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v59[6] = v32;
  v31 = [v4 trailingAnchor];
  v30 = [(CAMSmartStyleSettingsPickerView *)self trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v59[7] = v29;
  v26 = [v5 bottomAnchor];
  v27 = [(CAMSmartStyleSettingsPickerView *)self safeAreaLayoutGuide];
  v25 = [v27 bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:-0.0];
  v59[8] = v24;
  v37 = v5;
  v23 = [v5 leadingAnchor];
  v22 = [(CAMSmartStyleSettingsPickerView *)self leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:28.0];
  v59[9] = v21;
  v20 = [v5 trailingAnchor];
  v19 = [(CAMSmartStyleSettingsPickerView *)self trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:-28.0];
  v59[10] = v18;
  v17 = [v6 bottomAnchor];
  v7 = [(CAMSmartStyleSettingsPickerView *)self continueButton];
  v8 = [v7 topAnchor];
  v9 = [v17 constraintEqualToAnchor:v8 constant:-10.0];
  v59[11] = v9;
  v28 = v6;
  v10 = [v6 leadingAnchor];
  v11 = [(CAMSmartStyleSettingsPickerView *)self leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:28.0];
  v59[12] = v12;
  v13 = [v6 trailingAnchor];
  v14 = [(CAMSmartStyleSettingsPickerView *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-28.0];
  v59[13] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:14];
  [v36 activateConstraints:v16];
}

- (void)setWaitingOnLoading:(BOOL)a3
{
  if (self->_waitingOnLoading != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_waitingOnLoading = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__CAMSmartStyleSettingsPickerView_setWaitingOnLoading___block_invoke;
    v6[3] = &unk_1E76F7850;
    v6[4] = self;
    v7 = a3;
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
  v3 = [(CAMSmartStyleSettingsPickerView *)self isWaitingOnLoading];
  if (v3)
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

  v7 = [(UIButton *)self->_continueButton configuration];
  v8 = [v7 copy];

  [v8 setShowsActivityIndicator:v3];
  [v8 setImagePlacement:8];
  [v8 setImagePadding:8.0];
  [v8 setTitleAlignment:2];
  [(UIButton *)self->_continueButton setConfiguration:v8];
  [(UIButton *)self->_continueButton setNeedsUpdateConfiguration];
}

- (void)_updateDeselectAllButtonConfiguration
{
  v3 = [(CAMSmartStyleSettingsPickerView *)self deselectAllButton];
  v2 = CAMLocalizedFrameworkString(@"SMART_STYLES_SETTINGS_DESELECT_ALL", 0);
  [v3 setTitle:v2 forState:0];

  [v3 setNeedsUpdateConfiguration];
}

@end