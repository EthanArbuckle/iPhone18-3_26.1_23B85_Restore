@interface HUROARUpgradeView
- (BOOL)_shouldShowMainButton;
- (HUROARUpgradeView)initWithUpgradeViewReason:(unint64_t)a3 home:(id)a4;
- (HUROARUpgradeViewDelegate)delegate;
- (id)_mainButtonAction;
- (id)_mainButtonString;
- (id)_subtitleString;
- (id)_supplementaryButtonAction;
- (id)_titleString;
- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5;
- (void)layoutSubviews;
- (void)updateScrollViewContentSize;
@end

@implementation HUROARUpgradeView

- (HUROARUpgradeView)initWithUpgradeViewReason:(unint64_t)a3 home:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v55.receiver = self;
  v55.super_class = HUROARUpgradeView;
  v8 = [(HUROARUpgradeView *)&v55 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    v10 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v10 addHomeManagerObserver:v9];

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 uniqueIdentifier];
      v13 = HF_HomeAccessNotAllowedReasonCodeString();
      *buf = 138413058;
      v57 = v7;
      v58 = 2114;
      v59 = v12;
      v60 = 2048;
      v61 = a3;
      v62 = 2114;
      v63 = v13;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "<HUROARUpgradeView:initWithUpgradeViewReason> home = %@ (uniqueIdentifier:%{public}@) | upgradeViewReason = %lu (%{public}@)", buf, 0x2Au);
    }

    v9->_upgradeViewReason = a3;
    v14 = objc_opt_new();
    scrollView = v9->_scrollView;
    v9->_scrollView = v14;

    [(UIScrollView *)v9->_scrollView setAlwaysBounceVertical:1];
    [(UIScrollView *)v9->_scrollView _setHiddenPocketEdges:1];
    [(HUROARUpgradeView *)v9 addSubview:v9->_scrollView];
    v16 = 0x277D75000uLL;
    if (a3 == 2)
    {
      v17 = [MEMORY[0x277CE1CB8] _typeOfCurrentDevice];
      v53 = [v17 identifier];
      v54 = 0;
      v18 = [MEMORY[0x277D1B1D8] symbolForTypeIdentifier:v53 error:&v54];
      v19 = objc_alloc_init(MEMORY[0x277D1B170]);
      [v19 setSymbolSize:3];
      v20 = [v18 imageForDescriptor:v19];
      [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v20, "CGImage")}];
      v22 = v21 = v7;
      v23 = [MEMORY[0x277D75348] systemWhiteColor];
      v24 = [v22 imageWithTintColor:v23];

      v16 = 0x277D75000;
      v7 = v21;
    }

    else
    {
      v17 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:72.0];
      v24 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit" withConfiguration:v17];
    }

    v25 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v24];
    deviceImageView = v9->_deviceImageView;
    v9->_deviceImageView = v25;

    v27 = [*(v16 + 840) systemWhiteColor];
    [(UIImageView *)v9->_deviceImageView setTintColor:v27];

    [(UIScrollView *)v9->_scrollView addSubview:v9->_deviceImageView];
    v28 = objc_alloc_init(MEMORY[0x277D756B8]);
    title = v9->_title;
    v9->_title = v28;

    v30 = [(HUROARUpgradeView *)v9 _titleString];
    [(UILabel *)v9->_title setText:v30];

    [(UILabel *)v9->_title setTextAlignment:1];
    v31 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    [(UILabel *)v9->_title setFont:v31];

    v32 = [*(v16 + 840) systemWhiteColor];
    [(UILabel *)v9->_title setTextColor:v32];

    [(UILabel *)v9->_title setNumberOfLines:0];
    [(UILabel *)v9->_title setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v9->_title sizeToFit];
    [(UIScrollView *)v9->_scrollView addSubview:v9->_title];
    v33 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitle = v9->_subtitle;
    v9->_subtitle = v33;

    v35 = [(HUROARUpgradeView *)v9 _subtitleString];
    [(UILabel *)v9->_subtitle setText:v35];

    [(UILabel *)v9->_subtitle setTextAlignment:1];
    v36 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v9->_subtitle setFont:v36];

    [(UILabel *)v9->_subtitle setNumberOfLines:0];
    v37 = [*(v16 + 840) systemWhiteColor];
    [(UILabel *)v9->_subtitle setTextColor:v37];

    [(UILabel *)v9->_subtitle setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v9->_subtitle sizeToFit];
    [(UIScrollView *)v9->_scrollView addSubview:v9->_subtitle];
    v38 = [MEMORY[0x277D75230] filledButtonConfiguration];
    v39 = [(HUROARUpgradeView *)v9 _mainButtonString];
    [v38 setTitle:v39];

    [v38 setButtonSize:3];
    [v38 setCornerStyle:3];
    v40 = [*(v16 + 840) systemBlackColor];
    [v38 setBaseForegroundColor:v40];

    v41 = [*(v16 + 840) systemWhiteColor];
    [v38 setBaseBackgroundColor:v41];

    v42 = [(HUROARUpgradeView *)v9 _mainButtonAction];
    v43 = [MEMORY[0x277D75220] buttonWithConfiguration:v38 primaryAction:v42];
    button = v9->_button;
    v9->_button = v43;

    [(HUROARUpgradeView *)v9 addSubview:v9->_button];
    [(UIButton *)v9->_button setHidden:1];
    if ([(HUROARUpgradeView *)v9 _shouldShowSupplementaryButton])
    {
      v45 = [MEMORY[0x277D75230] filledButtonConfiguration];
      v46 = _HULocalizedStringWithDefaultValue(@"HULearnMoreTitle", @"HULearnMoreTitle", 1);
      [v45 setTitle:v46];

      [v45 setButtonSize:3];
      v47 = [*(v16 + 840) systemWhiteColor];
      [v45 setBaseForegroundColor:v47];

      v48 = [*(v16 + 840) clearColor];
      [v45 setBaseBackgroundColor:v48];

      v49 = [(HUROARUpgradeView *)v9 _supplementaryButtonAction];
      v50 = [MEMORY[0x277D75220] buttonWithConfiguration:v45 primaryAction:v49];
      supplementaryButton = v9->_supplementaryButton;
      v9->_supplementaryButton = v50;

      [(HUROARUpgradeView *)v9 addSubview:v9->_supplementaryButton];
      [(UIButton *)v9->_supplementaryButton setHidden:1];
    }
  }

  return v9;
}

- (void)layoutSubviews
{
  v132.receiver = self;
  v132.super_class = HUROARUpgradeView;
  [(HUROARUpgradeView *)&v132 layoutSubviews];
  v3 = [(HUROARUpgradeView *)self constraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUROARUpgradeView *)self scrollView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(HUROARUpgradeView *)self deviceImageView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(HUROARUpgradeView *)self subtitle];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(HUROARUpgradeView *)self title];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(HUROARUpgradeView *)self button];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(HUROARUpgradeView *)self supplementaryButton];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    if ([(HUROARUpgradeView *)self _shouldShowSupplementaryButton])
    {
      v11 = [(HUROARUpgradeView *)self supplementaryButton];
      v12 = [v11 bottomAnchor];
      v13 = [(HUROARUpgradeView *)self layoutMarginsGuide];
      v14 = [v13 bottomAnchor];
      v15 = [v12 constraintEqualToAnchor:v14];
      [v4 na_safeAddObject:v15];

      v16 = [(HUROARUpgradeView *)self supplementaryButton];
      v17 = [v16 leadingAnchor];
      v18 = [(HUROARUpgradeView *)self leadingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      [v4 na_safeAddObject:v19];

      v20 = [(HUROARUpgradeView *)self supplementaryButton];
      v21 = [v20 trailingAnchor];
      v22 = [(HUROARUpgradeView *)self trailingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      [v4 na_safeAddObject:v23];

      v24 = [(HUROARUpgradeView *)self supplementaryButton];
      v25 = [v24 centerXAnchor];
      v26 = [(HUROARUpgradeView *)self centerXAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      [v4 na_safeAddObject:v27];

      v28 = [(HUROARUpgradeView *)self button];
      v29 = [v28 bottomAnchor];
      v30 = [(HUROARUpgradeView *)self supplementaryButton];
      v31 = [v30 topAnchor];
      v32 = [v29 constraintEqualToAnchor:v31 constant:-10.0];
      [v4 na_safeAddObject:v32];

      v33 = [(HUROARUpgradeView *)self button];
      v34 = [v33 leadingAnchor];
      v35 = [(HUROARUpgradeView *)self leadingAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      [v4 na_safeAddObject:v36];

      v37 = [(HUROARUpgradeView *)self button];
      v38 = [v37 trailingAnchor];
      v39 = [(HUROARUpgradeView *)self trailingAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];
      [v4 na_safeAddObject:v40];

      v41 = [(HUROARUpgradeView *)self button];
      v42 = [v41 centerXAnchor];
      v43 = [(HUROARUpgradeView *)self centerXAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      [v4 na_safeAddObject:v44];
    }

    else
    {
      v45 = [(HUROARUpgradeView *)self button];
      v46 = [v45 bottomAnchor];
      v47 = [(HUROARUpgradeView *)self layoutMarginsGuide];
      v48 = [v47 bottomAnchor];
      v49 = [v46 constraintEqualToAnchor:v48];
      [v4 addObject:v49];

      v50 = [(HUROARUpgradeView *)self button];
      v51 = [v50 leadingAnchor];
      v52 = [(HUROARUpgradeView *)self leadingAnchor];
      v53 = [v51 constraintEqualToAnchor:v52];
      [v4 addObject:v53];

      v54 = [(HUROARUpgradeView *)self button];
      v55 = [v54 trailingAnchor];
      v56 = [(HUROARUpgradeView *)self trailingAnchor];
      v57 = [v55 constraintEqualToAnchor:v56];
      [v4 addObject:v57];

      v41 = [(HUROARUpgradeView *)self button];
      v42 = [v41 centerXAnchor];
      v43 = [(HUROARUpgradeView *)self centerXAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      [v4 addObject:v44];
    }

    v58 = [(HUROARUpgradeView *)self scrollView];
    v59 = [v58 leadingAnchor];
    v60 = [(HUROARUpgradeView *)self leadingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    [v4 na_safeAddObject:v61];

    v62 = [(HUROARUpgradeView *)self scrollView];
    v63 = [v62 topAnchor];
    v64 = [(HUROARUpgradeView *)self topAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:50.0];
    [v4 na_safeAddObject:v65];

    v66 = [(HUROARUpgradeView *)self scrollView];
    v67 = [v66 trailingAnchor];
    v68 = [(HUROARUpgradeView *)self trailingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    [v4 na_safeAddObject:v69];

    v70 = [(HUROARUpgradeView *)self scrollView];
    v71 = [v70 bottomAnchor];
    v72 = [(HUROARUpgradeView *)self button];
    v73 = [v72 topAnchor];
    v74 = [v71 constraintEqualToAnchor:v73];
    [v4 na_safeAddObject:v74];

    v75 = [(HUROARUpgradeView *)self deviceImageView];
    v76 = [v75 centerXAnchor];
    v77 = [(HUROARUpgradeView *)self scrollView];
    v78 = [v77 centerXAnchor];
    v79 = [v76 constraintEqualToAnchor:v78];
    [v4 na_safeAddObject:v79];

    v80 = [(HUROARUpgradeView *)self deviceImageView];
    v81 = [v80 topAnchor];
    v82 = [(HUROARUpgradeView *)self scrollView];
    v83 = [v82 topAnchor];
    v84 = [v81 constraintEqualToAnchor:v83 constant:50.0];
    [v4 na_safeAddObject:v84];

    v85 = [(HUROARUpgradeView *)self title];
    v86 = [v85 leadingAnchor];
    v87 = [(HUROARUpgradeView *)self scrollView];
    v88 = [v87 leadingAnchor];
    v89 = [v86 constraintEqualToAnchor:v88];
    [v4 na_safeAddObject:v89];

    v90 = [(HUROARUpgradeView *)self title];
    v91 = [v90 trailingAnchor];
    v92 = [(HUROARUpgradeView *)self scrollView];
    v93 = [v92 trailingAnchor];
    v94 = [v91 constraintEqualToAnchor:v93];
    [v4 na_safeAddObject:v94];

    v95 = [(HUROARUpgradeView *)self title];
    v96 = [v95 centerXAnchor];
    v97 = [(HUROARUpgradeView *)self scrollView];
    v98 = [v97 centerXAnchor];
    v99 = [v96 constraintEqualToAnchor:v98];
    [v4 na_safeAddObject:v99];

    v100 = [(HUROARUpgradeView *)self title];
    v101 = [v100 topAnchor];
    v102 = [(HUROARUpgradeView *)self deviceImageView];
    v103 = [v102 bottomAnchor];
    v104 = [v101 constraintEqualToAnchor:v103 constant:10.0];
    [v4 na_safeAddObject:v104];

    v105 = [(HUROARUpgradeView *)self subtitle];
    v106 = [v105 topAnchor];
    v107 = [(HUROARUpgradeView *)self title];
    v108 = [v107 bottomAnchor];
    v109 = [v106 constraintEqualToAnchor:v108 constant:5.0];
    [v4 na_safeAddObject:v109];

    v110 = [(HUROARUpgradeView *)self subtitle];
    v111 = [v110 leadingAnchor];
    v112 = [(HUROARUpgradeView *)self scrollView];
    v113 = [v112 leadingAnchor];
    v114 = [v111 constraintEqualToAnchor:v113];
    [v4 na_safeAddObject:v114];

    v115 = [(HUROARUpgradeView *)self subtitle];
    v116 = [v115 trailingAnchor];
    v117 = [(HUROARUpgradeView *)self scrollView];
    v118 = [v117 trailingAnchor];
    v119 = [v116 constraintEqualToAnchor:v118];
    [v4 na_safeAddObject:v119];

    v120 = [(HUROARUpgradeView *)self subtitle];
    v121 = [v120 centerXAnchor];
    v122 = [(HUROARUpgradeView *)self scrollView];
    v123 = [v122 centerXAnchor];
    v124 = [v121 constraintEqualToAnchor:v123];
    [v4 na_safeAddObject:v124];

    [(HUROARUpgradeView *)self setConstraints:v4];
    v125 = MEMORY[0x277CCAAD0];
    v126 = [(HUROARUpgradeView *)self constraints];
    [v125 activateConstraints:v126];
  }

  v127 = [(HUROARUpgradeView *)self _shouldShowMainButton];
  v128 = [(HUROARUpgradeView *)self button];
  [v128 setHidden:!v127];

  v129 = [(HUROARUpgradeView *)self _shouldShowSupplementaryButton];
  v130 = [(HUROARUpgradeView *)self supplementaryButton];
  [v130 setHidden:!v129];

  v131 = [(HUROARUpgradeView *)self scrollView];
  [v131 sizeToFit];

  [(HUROARUpgradeView *)self updateScrollViewContentSize];
}

- (void)updateScrollViewContentSize
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(HUROARUpgradeView *)self deviceImageView];
  [v3 frame];
  v5 = v4;
  v6 = [(HUROARUpgradeView *)self deviceImageView];
  [v6 frame];
  v8 = v5 + v7 + 50.0;
  v9 = [(HUROARUpgradeView *)self title];
  [v9 frame];
  v11 = v8 + v10 + 10.0;
  v12 = [(HUROARUpgradeView *)self subtitle];
  [v12 frame];
  v14 = v11 + v13 + 5.0;

  v15 = [(HUROARUpgradeView *)self scrollView];
  [v15 contentSize];
  v17 = v16;
  v19 = v18;

  v20 = [(HUROARUpgradeView *)self scrollView];
  [v20 frame];
  v22 = fmax(v21, v14);

  v23 = [(HUROARUpgradeView *)self scrollView];
  [v23 frame];
  v25 = v24;

  if (v25 == *MEMORY[0x277CBF3A8] && v22 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v26 = HFLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      v27 = "<HUROARUpgradeView:updateScrollViewContentSize> New calculated content size is zero. Not updating.";
      v28 = v26;
      v29 = 2;
LABEL_11:
      _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_INFO, v27, &v31, v29);
    }
  }

  else if (v17 == v25 && v19 == v22)
  {
    v26 = HFLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v31 = 134218240;
      v32 = v25;
      v33 = 2048;
      v34 = v22;
      v27 = "<HUROARUpgradeView:updateScrollViewContentSize> maintaining content size (%f, %f)";
      v28 = v26;
      v29 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v30 = [(HUROARUpgradeView *)self scrollView];
    [v30 setContentSize:{v25, v22}];

    v26 = HFLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v31 = 134218752;
      v32 = v17;
      v33 = 2048;
      v34 = v19;
      v35 = 2048;
      v36 = v25;
      v37 = 2048;
      v38 = v22;
      v27 = "<HUROARUpgradeView:updateScrollViewContentSize> Updating to new content size | currentSize (%f, %f) |  newSize (%f, %f)";
      v28 = v26;
      v29 = 42;
      goto LABEL_11;
    }
  }
}

- (id)_titleString
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUSetupCellROARRequired_Title", @"HUSetupCellROARRequired_Title", 1);
  if ([(HUROARUpgradeView *)self isUpgradeViewReasonUnsupportedHomeHubVersion])
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HUAppleHomeUpdateRequired_Title", @"HUAppleHomeUpdateRequired_Title", 1);

    v3 = v4;
  }

  return v3;
}

- (id)_subtitleString
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUSetupCellROARRequired_Details", @"HUSetupCellROARRequired_Details", 1);
  if ([(HUROARUpgradeView *)self isUpgradeViewReasonUnsupportedHomeHubVersion])
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HUROARRequired_Details_SupplementaryDescription_Default", @"HUROARRequired_Details_SupplementaryDescription_Default", 1);

    v5 = [(HUROARUpgradeView *)self home];
    v6 = [v5 hf_currentUserIsOwner];

    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = _HULocalizedStringWithDefaultValue(@"HUROARRequired_Details_SupplementaryDescription_forOwner", @"HUROARRequired_Details_SupplementaryDescription_forOwner", 1);
      v3 = [v7 stringWithFormat:@"%@\n\n%@", v4, v8];
    }

    else
    {
      v3 = v4;
    }
  }

  return v3;
}

- (id)_mainButtonString
{
  if ([(HUROARUpgradeView *)self upgradeViewReason]== 2)
  {
    v3 = @"HUSetupCellSoftwareUpdate";
  }

  else if ([(HUROARUpgradeView *)self isUpgradeViewReasonUnsupportedHomeHubVersion])
  {
    v3 = @"HUROARRequired_UpdateAppleHomeButton";
  }

  else
  {
    v3 = @"HUUnsupportedHomeHub_LearnMore";
  }

  v4 = _HULocalizedStringWithDefaultValue(v3, v3, 1);

  return v4;
}

- (id)_mainButtonAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__HUROARUpgradeView__mainButtonAction__block_invoke;
  v5[3] = &unk_277DB8950;
  objc_copyWeak(&v6, &location);
  v3 = [v2 actionWithHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __38__HUROARUpgradeView__mainButtonAction__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isUpgradeViewReasonUnsupportedHomeHubVersion];
  v3 = HFLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (v4)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(HUROARUpgradeView:_mainButtonAction) User tapped the main button 'system software update'", &v12, 2u);
    }

    v8 = [MEMORY[0x277D148E8] sharedInstance];
    v10 = [MEMORY[0x277CBEBC0] hf_systemSoftwareUpdate];
    v11 = [v8 openSensitiveURL:v10];

    goto LABEL_9;
  }

  if (v4)
  {
    [WeakRetained upgradeViewReason];
    v5 = HF_HomeAccessNotAllowedReasonCodeString();
    v12 = 138412546;
    v13 = v5;
    v14 = 2048;
    v15 = [WeakRetained upgradeViewReason];
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(HUROARUpgradeView:_mainButtonAction) User tapped the main button 'Update Apple Home' | reason = %@ (%lu)", &v12, 0x16u);
  }

  v6 = [WeakRetained delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [WeakRetained delegate];
    v9 = [v8 presentROARUpgradeView:WeakRetained];
LABEL_9:
  }
}

- (id)_supplementaryButtonAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HUROARUpgradeView__supplementaryButtonAction__block_invoke;
  v5[3] = &unk_277DB8950;
  objc_copyWeak(&v6, &location);
  v3 = [v2 actionWithHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __47__HUROARUpgradeView__supplementaryButtonAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isUpgradeViewReasonUnsupportedHomeHubVersion];
  v3 = HFLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(HUROARUpgradeView:_supplementaryButtonAction) User tapped the supplementary button 'learn more'", buf, 2u);
    }

    v3 = [MEMORY[0x277D148E8] sharedInstance];
    v5 = [MEMORY[0x277CBEBC0] hu_homeUpdateLearnMoreURL];
    v6 = [v3 openURL:v5];
  }

  else if (v4)
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(HUROARUpgradeView:_supplementaryButtonAction) User tapped the supplementary button (No action)", v7, 2u);
  }
}

- (BOOL)_shouldShowMainButton
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(HUROARUpgradeView *)self upgradeViewReason]== 2)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(HUROARUpgradeView *)self home];
    if (v4)
    {
      v5 = [(HUROARUpgradeView *)self home];
      v3 = [v5 hf_currentUserIsOwner] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  v6 = [(HUROARUpgradeView *)self isUpgradeViewReasonUnsupportedHomeHubVersion]| v3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(HUROARUpgradeView *)self upgradeViewReason];
    [(HUROARUpgradeView *)self upgradeViewReason];
    v9 = HF_HomeAccessNotAllowedReasonCodeString();
    v10 = [(HUROARUpgradeView *)self home];
    v11 = [(HUROARUpgradeView *)self home];
    v12 = [v11 uniqueIdentifier];
    v14[0] = 67110146;
    v14[1] = v6 & 1;
    v15 = 2048;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "<HUROARUpgradeView:_shouldShowMainButton> result = %{BOOL}d | upgradeViewReason = %ld (%{public}@) | home = %@ (uniqueIdentifier: %{public}@)", v14, 0x30u);
  }

  return v6 & 1;
}

- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uniqueIdentifier];
    v9 = [(HUROARUpgradeView *)self home];
    v10 = [(HUROARUpgradeView *)self home];
    v11 = [v10 uniqueIdentifier];
    v33 = 138413058;
    v34 = v6;
    v35 = 2114;
    v36 = v8;
    v37 = 2112;
    v38 = v9;
    v39 = 2114;
    v40 = v11;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "<HUROARUpgradeView:didChangeHome> Switched to new Home %@ (uniqueIdentifier: %{public}@) - previous Home %@ (uniqueIdentifier: %{public}@)", &v33, 0x2Au);
  }

  v12 = [(HUROARUpgradeView *)self home];

  if (v12 != v6)
  {
    [(HUROARUpgradeView *)self setHome:v6];
    v13 = [(HUROARUpgradeView *)self home];
    -[HUROARUpgradeView setUpgradeViewReason:](self, "setUpgradeViewReason:", [v13 hf_blockCurrentUserFromHomeReason]);

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(HUROARUpgradeView *)self upgradeViewReason];
      [(HUROARUpgradeView *)self upgradeViewReason];
      v16 = HF_HomeAccessNotAllowedReasonCodeString();
      v17 = [v6 hf_currentUserIsOwner];
      v33 = 134218498;
      v34 = v15;
      v35 = 2114;
      v36 = v16;
      v37 = 1024;
      LODWORD(v38) = v17;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "<HUROARUpgradeView:didChangeHome> upgradeViewReason %lu (%{public}@) - currentUserIsOwner %{BOOL}d", &v33, 0x1Cu);
    }

    v18 = [(HUROARUpgradeView *)self _titleString];
    v19 = [(HUROARUpgradeView *)self title];
    [v19 setText:v18];

    v20 = [(HUROARUpgradeView *)self _subtitleString];
    v21 = [(HUROARUpgradeView *)self subtitle];
    [v21 setText:v20];

    v22 = [(HUROARUpgradeView *)self _shouldShowMainButton]^ 1;
    v23 = [(HUROARUpgradeView *)self button];
    [v23 setHidden:v22];

    if ((v22 & 1) == 0)
    {
      v24 = [(HUROARUpgradeView *)self _mainButtonString];
      v25 = [(HUROARUpgradeView *)self button];
      v26 = [v25 configuration];
      [v26 setTitle:v24];
    }

    v27 = [(HUROARUpgradeView *)self _shouldShowSupplementaryButton]^ 1;
    v28 = [(HUROARUpgradeView *)self supplementaryButton];
    [v28 setHidden:v27];

    if ((v27 & 1) == 0)
    {
      v29 = _HULocalizedStringWithDefaultValue(@"HULearnMoreTitle", @"HULearnMoreTitle", 1);
      v30 = [(HUROARUpgradeView *)self supplementaryButton];
      v31 = [v30 configuration];
      [v31 setTitle:v29];
    }

    v32 = [(HUROARUpgradeView *)self scrollView];
    [v32 layoutIfNeeded];

    [(HUROARUpgradeView *)self updateScrollViewContentSize];
  }
}

- (HUROARUpgradeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end