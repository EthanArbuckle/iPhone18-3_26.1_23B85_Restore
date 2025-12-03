@interface HUICCFooterView
- (BOOL)isHighlighted;
- (HACCContentModuleDelegate)delegate;
- (HUICCFooterView)initWithModule:(unint64_t)module;
- (id)accessibilityLabel;
- (void)_openSettingsWithURL:(id)l;
- (void)footerTapped:(id)tapped;
- (void)setFooterAction:(id)action;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)setupFooterActionIfNecessary;
@end

@implementation HUICCFooterView

- (HUICCFooterView)initWithModule:(unint64_t)module
{
  v54[10] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = HUICCFooterView;
  v4 = [(HUICCFooterView *)&v53 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    [(HUICCFooterView *)v4 setModule:module];
    _tertiaryView = [MEMORY[0x277CFC968] _tertiaryView];
    highlightedBackgroundView = v5->_highlightedBackgroundView;
    v5->_highlightedBackgroundView = _tertiaryView;

    [(UIView *)v5->_highlightedBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_highlightedBackgroundView setAlpha:0.0];
    [(HUICCFooterView *)v5 addSubview:v5->_highlightedBackgroundView];
    v8 = HUICCMenuTextLabel();
    footerLabel = v5->_footerLabel;
    v5->_footerLabel = v8;

    v10 = v5->_footerLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v10 setTextColor:whiteColor];

    [(UILabel *)v5->_footerLabel setNumberOfLines:0];
    [(UILabel *)v5->_footerLabel setTextAlignment:1];
    [(UILabel *)v5->_footerLabel setLineBreakMode:4];
    [(UILabel *)v5->_footerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUICCFooterView *)v5 addSubview:v5->_footerLabel];
    v43 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UILabel *)v5->_footerLabel leadingAnchor];
    leadingAnchor2 = [(HUICCFooterView *)v5 leadingAnchor];
    CCUILayoutGutter();
    v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v54[0] = v50;
    trailingAnchor = [(UILabel *)v5->_footerLabel trailingAnchor];
    trailingAnchor2 = [(HUICCFooterView *)v5 trailingAnchor];
    CCUILayoutGutter();
    v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v12];
    v54[1] = v47;
    topAnchor = [(UILabel *)v5->_footerLabel topAnchor];
    topAnchor2 = [(HUICCFooterView *)v5 topAnchor];
    CCUILayoutGutter();
    v44 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v13 * 0.25];
    v54[2] = v44;
    bottomAnchor = [(UILabel *)v5->_footerLabel bottomAnchor];
    bottomAnchor2 = [(HUICCFooterView *)v5 bottomAnchor];
    CCUILayoutGutter();
    v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v14 * -0.25];
    v54[3] = v40;
    heightAnchor = [(UILabel *)v5->_footerLabel heightAnchor];
    v38 = [heightAnchor constraintGreaterThanOrEqualToConstant:52.0];
    v54[4] = v38;
    centerYAnchor = [(UILabel *)v5->_footerLabel centerYAnchor];
    centerYAnchor2 = [(HUICCFooterView *)v5 centerYAnchor];
    v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v54[5] = v35;
    leadingAnchor3 = [(UIView *)v5->_highlightedBackgroundView leadingAnchor];
    leadingAnchor4 = [(HUICCFooterView *)v5 leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v54[6] = v32;
    trailingAnchor3 = [(UIView *)v5->_highlightedBackgroundView trailingAnchor];
    trailingAnchor4 = [(HUICCFooterView *)v5 trailingAnchor];
    v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v54[7] = v16;
    topAnchor3 = [(UIView *)v5->_highlightedBackgroundView topAnchor];
    topAnchor4 = [(HUICCFooterView *)v5 topAnchor];
    v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v54[8] = v19;
    bottomAnchor3 = [(UIView *)v5->_highlightedBackgroundView bottomAnchor];
    bottomAnchor4 = [(HUICCFooterView *)v5 bottomAnchor];
    v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v54[9] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:10];
    [v43 activateConstraints:v23];

    [(HUICCFooterView *)v5 setupFooterActionIfNecessary];
    v24 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v5 action:sel_footerTapped_];
    [(HUICCFooterView *)v5 addGestureRecognizer:v24];
    v25 = objc_alloc(MEMORY[0x277D75A10]);
    lightConfiguration = [MEMORY[0x277D76228] lightConfiguration];
    v27 = [v25 initWithConfiguration:lightConfiguration view:v5];
    feedbackGenerator = v5->_feedbackGenerator;
    v5->_feedbackGenerator = v27;

    v29 = HUICCBackgroundVisualStylingProviderForCategory(1);
    [(HUICCFooterView *)v5 setVisualStylingProvider:v29 forCategory:1];
  }

  return v5;
}

- (void)setupFooterActionIfNecessary
{
  module = [(HUICCFooterView *)self module];
  if (module == 22)
  {
    v4 = @"prefs:root=ACCESSIBILITY&path=HEARING_AID_TITLE";
    goto LABEL_8;
  }

  if (module == 33)
  {
    footerLabel = [(HUICCFooterView *)self footerLabel];
    v6 = paLocString();
    [footerLabel setText:v6];

    goto LABEL_6;
  }

  if (module != 29)
  {
LABEL_6:
    v7 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v4 = @"prefs:root=ACCESSIBILITY&path=AUDIO_VISUAL_TITLE/AXCSEnableSpecID#CSFeatureToggleSpecID";
LABEL_8:
  v7 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  v8 = hearingLocString();
  if (v8 && v7)
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D750C8];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__HUICCFooterView_setupFooterActionIfNecessary__block_invoke;
    v11[3] = &unk_2796F7148;
    objc_copyWeak(&v13, &location);
    v7 = v7;
    v12 = v7;
    v10 = [v9 actionWithTitle:v8 image:0 identifier:v8 handler:v11];
    [(HUICCFooterView *)self setFooterAction:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

LABEL_11:
}

void __47__HUICCFooterView_setupFooterActionIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openSettingsWithURL:*(a1 + 32)];
}

- (void)_openSettingsWithURL:(id)l
{
  lCopy = l;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HUICCFooterView__openSettingsWithURL___block_invoke;
  v7[3] = &unk_2796F6CA8;
  v8 = lCopy;
  selfCopy = self;
  v6 = lCopy;
  dispatch_async(v5, v7);
}

void __40__HUICCFooterView__openSettingsWithURL___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v2 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  v30 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v35 = __getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke;
    v36 = &unk_2796F7170;
    v37 = &v27;
    v3 = FrontBoardServicesLibrary();
    v4 = dlsym(v3, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    *(v37[1] + 24) = v4;
    getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(v37[1] + 24);
    v2 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v2)
  {
    goto LABEL_18;
  }

  v5 = *v2;
  v31[0] = v5;
  v6 = MEMORY[0x277CBEC38];
  v33[0] = MEMORY[0x277CBEC38];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v7 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  v30 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v35 = __getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_block_invoke;
    v36 = &unk_2796F7170;
    v37 = &v27;
    v8 = FrontBoardServicesLibrary();
    v9 = dlsym(v8, "FBSOpenApplicationOptionKeyUnlockDevice");
    *(v37[1] + 24) = v9;
    getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = *(v37[1] + 24);
    v7 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v7)
  {
    goto LABEL_18;
  }

  v10 = *v7;
  v31[1] = v10;
  v33[1] = v6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v11 = getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr;
  v30 = getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v35 = __getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_block_invoke;
    v36 = &unk_2796F7170;
    v37 = &v27;
    v12 = FrontBoardServicesLibrary();
    v13 = dlsym(v12, "FBSOpenApplicationOptionKeyLaunchOrigin");
    *(v37[1] + 24) = v13;
    getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr = *(v37[1] + 24);
    v11 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v11)
  {
LABEL_18:
    __40__HUICCFooterView__openSettingsWithURL___block_invoke_cold_2();
    __break(1u);
  }

  v32 = *v11;
  v33[2] = @"HUICCFooterView";
  v14 = MEMORY[0x277CBEAC0];
  v15 = v32;
  v16 = [v14 dictionaryWithObjects:v33 forKeys:v31 count:3];

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v17 = getLSApplicationWorkspaceClass_softClass;
  v30 = getLSApplicationWorkspaceClass_softClass;
  if (!getLSApplicationWorkspaceClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v35 = __getLSApplicationWorkspaceClass_block_invoke;
    v36 = &unk_2796F7170;
    v37 = &v27;
    __getLSApplicationWorkspaceClass_block_invoke(&buf);
    v17 = v28[3];
  }

  v18 = v17;
  _Block_object_dispose(&v27, 8);
  v19 = [v17 defaultWorkspace];
  v20 = *(a1 + 32);
  v26 = 0;
  v21 = [v19 openSensitiveURL:v20 withOptions:v16 error:&v26];
  v22 = v26;

  v23 = AXLogCommon();
  v24 = v23;
  if (v21)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 40) footerLabel];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_252166000, v24, OS_LOG_TYPE_DEFAULT, "[HearingCC] Open URL for %@", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    __40__HUICCFooterView__openSettingsWithURL___block_invoke_cold_1(a1, v24);
  }
}

- (void)setFooterAction:(id)action
{
  objc_storeStrong(&self->_footerAction, action);
  actionCopy = action;
  footerLabel = [(HUICCFooterView *)self footerLabel];
  title = [(UIAction *)self->_footerAction title];

  [footerLabel setText:title];
}

- (void)footerTapped:(id)tapped
{
  footerAction = [(HUICCFooterView *)self footerAction];

  if (footerAction)
  {
    footerAction2 = [(HUICCFooterView *)self footerAction];
    [footerAction2 performWithSender:self target:0];
  }
}

- (BOOL)isHighlighted
{
  highlightedBackgroundView = [(HUICCFooterView *)self highlightedBackgroundView];
  [highlightedBackgroundView alpha];
  v4 = v3 == 1.0;

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  footerAction = [(HUICCFooterView *)self footerAction];
  if (footerAction)
  {
    v6 = footerAction;
    isHighlighted = [(HUICCFooterView *)self isHighlighted];

    if (isHighlighted != highlightedCopy)
    {
      v8 = 0.0;
      if (highlightedCopy)
      {
        feedbackGenerator = [(HUICCFooterView *)self feedbackGenerator];
        [feedbackGenerator selectionChanged];

        v8 = 1.0;
      }

      highlightedBackgroundView = [(HUICCFooterView *)self highlightedBackgroundView];
      [highlightedBackgroundView setAlpha:v8];
    }
  }
}

- (id)accessibilityLabel
{
  footerLabel = [(HUICCFooterView *)self footerLabel];
  accessibilityLabel = [footerLabel accessibilityLabel];

  return accessibilityLabel;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(HUICCFooterView *)self requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v9 = [requiredVisualStyleCategories containsObject:v8];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__HUICCFooterView_setVisualStylingProvider_forCategory___block_invoke;
    v10[3] = &unk_2796F6CA8;
    v11 = providerCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __56__HUICCFooterView_setVisualStylingProvider_forCategory___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) footerLabel];
  [v1 automaticallyUpdateView:v2 withStyle:0];
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

void __40__HUICCFooterView__openSettingsWithURL___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 40) footerLabel];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_252166000, a2, OS_LOG_TYPE_ERROR, "[HearingCC] Failed to open URL for %@", &v4, 0xCu);
}

uint64_t __40__HUICCFooterView__openSettingsWithURL___block_invoke_cold_2()
{
  dlerror();
  abort_report_np();
  return __getLSApplicationWorkspaceClass_block_invoke_cold_1();
}

@end