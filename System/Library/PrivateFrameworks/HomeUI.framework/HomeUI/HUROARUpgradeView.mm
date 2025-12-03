@interface HUROARUpgradeView
- (BOOL)_shouldShowMainButton;
- (HUROARUpgradeView)initWithUpgradeViewReason:(unint64_t)reason home:(id)home;
- (HUROARUpgradeViewDelegate)delegate;
- (id)_mainButtonAction;
- (id)_mainButtonString;
- (id)_subtitleString;
- (id)_supplementaryButtonAction;
- (id)_titleString;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
- (void)layoutSubviews;
- (void)updateScrollViewContentSize;
@end

@implementation HUROARUpgradeView

- (HUROARUpgradeView)initWithUpgradeViewReason:(unint64_t)reason home:(id)home
{
  v64 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v55.receiver = self;
  v55.super_class = HUROARUpgradeView;
  v8 = [(HUROARUpgradeView *)&v55 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addHomeManagerObserver:v9];

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [homeCopy uniqueIdentifier];
      v13 = HF_HomeAccessNotAllowedReasonCodeString();
      *buf = 138413058;
      v57 = homeCopy;
      v58 = 2114;
      v59 = uniqueIdentifier;
      v60 = 2048;
      reasonCopy = reason;
      v62 = 2114;
      v63 = v13;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "<HUROARUpgradeView:initWithUpgradeViewReason> home = %@ (uniqueIdentifier:%{public}@) | upgradeViewReason = %lu (%{public}@)", buf, 0x2Au);
    }

    v9->_upgradeViewReason = reason;
    v14 = objc_opt_new();
    scrollView = v9->_scrollView;
    v9->_scrollView = v14;

    [(UIScrollView *)v9->_scrollView setAlwaysBounceVertical:1];
    [(UIScrollView *)v9->_scrollView _setHiddenPocketEdges:1];
    [(HUROARUpgradeView *)v9 addSubview:v9->_scrollView];
    v16 = 0x277D75000uLL;
    if (reason == 2)
    {
      _typeOfCurrentDevice = [MEMORY[0x277CE1CB8] _typeOfCurrentDevice];
      identifier = [_typeOfCurrentDevice identifier];
      v54 = 0;
      v18 = [MEMORY[0x277D1B1D8] symbolForTypeIdentifier:identifier error:&v54];
      v19 = objc_alloc_init(MEMORY[0x277D1B170]);
      [v19 setSymbolSize:3];
      v20 = [v18 imageForDescriptor:v19];
      [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v20, "CGImage")}];
      v22 = v21 = homeCopy;
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
      v24 = [v22 imageWithTintColor:systemWhiteColor];

      v16 = 0x277D75000;
      homeCopy = v21;
    }

    else
    {
      _typeOfCurrentDevice = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:72.0];
      v24 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit" withConfiguration:_typeOfCurrentDevice];
    }

    v25 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v24];
    deviceImageView = v9->_deviceImageView;
    v9->_deviceImageView = v25;

    systemWhiteColor2 = [*(v16 + 840) systemWhiteColor];
    [(UIImageView *)v9->_deviceImageView setTintColor:systemWhiteColor2];

    [(UIScrollView *)v9->_scrollView addSubview:v9->_deviceImageView];
    v28 = objc_alloc_init(MEMORY[0x277D756B8]);
    title = v9->_title;
    v9->_title = v28;

    _titleString = [(HUROARUpgradeView *)v9 _titleString];
    [(UILabel *)v9->_title setText:_titleString];

    [(UILabel *)v9->_title setTextAlignment:1];
    v31 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    [(UILabel *)v9->_title setFont:v31];

    systemWhiteColor3 = [*(v16 + 840) systemWhiteColor];
    [(UILabel *)v9->_title setTextColor:systemWhiteColor3];

    [(UILabel *)v9->_title setNumberOfLines:0];
    [(UILabel *)v9->_title setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v9->_title sizeToFit];
    [(UIScrollView *)v9->_scrollView addSubview:v9->_title];
    v33 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitle = v9->_subtitle;
    v9->_subtitle = v33;

    _subtitleString = [(HUROARUpgradeView *)v9 _subtitleString];
    [(UILabel *)v9->_subtitle setText:_subtitleString];

    [(UILabel *)v9->_subtitle setTextAlignment:1];
    v36 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v9->_subtitle setFont:v36];

    [(UILabel *)v9->_subtitle setNumberOfLines:0];
    systemWhiteColor4 = [*(v16 + 840) systemWhiteColor];
    [(UILabel *)v9->_subtitle setTextColor:systemWhiteColor4];

    [(UILabel *)v9->_subtitle setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v9->_subtitle sizeToFit];
    [(UIScrollView *)v9->_scrollView addSubview:v9->_subtitle];
    filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
    _mainButtonString = [(HUROARUpgradeView *)v9 _mainButtonString];
    [filledButtonConfiguration setTitle:_mainButtonString];

    [filledButtonConfiguration setButtonSize:3];
    [filledButtonConfiguration setCornerStyle:3];
    systemBlackColor = [*(v16 + 840) systemBlackColor];
    [filledButtonConfiguration setBaseForegroundColor:systemBlackColor];

    systemWhiteColor5 = [*(v16 + 840) systemWhiteColor];
    [filledButtonConfiguration setBaseBackgroundColor:systemWhiteColor5];

    _mainButtonAction = [(HUROARUpgradeView *)v9 _mainButtonAction];
    v43 = [MEMORY[0x277D75220] buttonWithConfiguration:filledButtonConfiguration primaryAction:_mainButtonAction];
    button = v9->_button;
    v9->_button = v43;

    [(HUROARUpgradeView *)v9 addSubview:v9->_button];
    [(UIButton *)v9->_button setHidden:1];
    if ([(HUROARUpgradeView *)v9 _shouldShowSupplementaryButton])
    {
      filledButtonConfiguration2 = [MEMORY[0x277D75230] filledButtonConfiguration];
      v46 = _HULocalizedStringWithDefaultValue(@"HULearnMoreTitle", @"HULearnMoreTitle", 1);
      [filledButtonConfiguration2 setTitle:v46];

      [filledButtonConfiguration2 setButtonSize:3];
      systemWhiteColor6 = [*(v16 + 840) systemWhiteColor];
      [filledButtonConfiguration2 setBaseForegroundColor:systemWhiteColor6];

      clearColor = [*(v16 + 840) clearColor];
      [filledButtonConfiguration2 setBaseBackgroundColor:clearColor];

      _supplementaryButtonAction = [(HUROARUpgradeView *)v9 _supplementaryButtonAction];
      v50 = [MEMORY[0x277D75220] buttonWithConfiguration:filledButtonConfiguration2 primaryAction:_supplementaryButtonAction];
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
  constraints = [(HUROARUpgradeView *)self constraints];

  if (!constraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    scrollView = [(HUROARUpgradeView *)self scrollView];
    [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

    deviceImageView = [(HUROARUpgradeView *)self deviceImageView];
    [deviceImageView setTranslatesAutoresizingMaskIntoConstraints:0];

    subtitle = [(HUROARUpgradeView *)self subtitle];
    [subtitle setTranslatesAutoresizingMaskIntoConstraints:0];

    title = [(HUROARUpgradeView *)self title];
    [title setTranslatesAutoresizingMaskIntoConstraints:0];

    button = [(HUROARUpgradeView *)self button];
    [button setTranslatesAutoresizingMaskIntoConstraints:0];

    supplementaryButton = [(HUROARUpgradeView *)self supplementaryButton];
    [supplementaryButton setTranslatesAutoresizingMaskIntoConstraints:0];

    if ([(HUROARUpgradeView *)self _shouldShowSupplementaryButton])
    {
      supplementaryButton2 = [(HUROARUpgradeView *)self supplementaryButton];
      bottomAnchor = [supplementaryButton2 bottomAnchor];
      layoutMarginsGuide = [(HUROARUpgradeView *)self layoutMarginsGuide];
      bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [array na_safeAddObject:v15];

      supplementaryButton3 = [(HUROARUpgradeView *)self supplementaryButton];
      leadingAnchor = [supplementaryButton3 leadingAnchor];
      leadingAnchor2 = [(HUROARUpgradeView *)self leadingAnchor];
      v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [array na_safeAddObject:v19];

      supplementaryButton4 = [(HUROARUpgradeView *)self supplementaryButton];
      trailingAnchor = [supplementaryButton4 trailingAnchor];
      trailingAnchor2 = [(HUROARUpgradeView *)self trailingAnchor];
      v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [array na_safeAddObject:v23];

      supplementaryButton5 = [(HUROARUpgradeView *)self supplementaryButton];
      centerXAnchor = [supplementaryButton5 centerXAnchor];
      centerXAnchor2 = [(HUROARUpgradeView *)self centerXAnchor];
      v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [array na_safeAddObject:v27];

      button2 = [(HUROARUpgradeView *)self button];
      bottomAnchor3 = [button2 bottomAnchor];
      supplementaryButton6 = [(HUROARUpgradeView *)self supplementaryButton];
      topAnchor = [supplementaryButton6 topAnchor];
      v32 = [bottomAnchor3 constraintEqualToAnchor:topAnchor constant:-10.0];
      [array na_safeAddObject:v32];

      button3 = [(HUROARUpgradeView *)self button];
      leadingAnchor3 = [button3 leadingAnchor];
      leadingAnchor4 = [(HUROARUpgradeView *)self leadingAnchor];
      v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [array na_safeAddObject:v36];

      button4 = [(HUROARUpgradeView *)self button];
      trailingAnchor3 = [button4 trailingAnchor];
      trailingAnchor4 = [(HUROARUpgradeView *)self trailingAnchor];
      v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [array na_safeAddObject:v40];

      button5 = [(HUROARUpgradeView *)self button];
      centerXAnchor3 = [button5 centerXAnchor];
      centerXAnchor4 = [(HUROARUpgradeView *)self centerXAnchor];
      v44 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      [array na_safeAddObject:v44];
    }

    else
    {
      button6 = [(HUROARUpgradeView *)self button];
      bottomAnchor4 = [button6 bottomAnchor];
      layoutMarginsGuide2 = [(HUROARUpgradeView *)self layoutMarginsGuide];
      bottomAnchor5 = [layoutMarginsGuide2 bottomAnchor];
      v49 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      [array addObject:v49];

      button7 = [(HUROARUpgradeView *)self button];
      leadingAnchor5 = [button7 leadingAnchor];
      leadingAnchor6 = [(HUROARUpgradeView *)self leadingAnchor];
      v53 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      [array addObject:v53];

      button8 = [(HUROARUpgradeView *)self button];
      trailingAnchor5 = [button8 trailingAnchor];
      trailingAnchor6 = [(HUROARUpgradeView *)self trailingAnchor];
      v57 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      [array addObject:v57];

      button5 = [(HUROARUpgradeView *)self button];
      centerXAnchor3 = [button5 centerXAnchor];
      centerXAnchor4 = [(HUROARUpgradeView *)self centerXAnchor];
      v44 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      [array addObject:v44];
    }

    scrollView2 = [(HUROARUpgradeView *)self scrollView];
    leadingAnchor7 = [scrollView2 leadingAnchor];
    leadingAnchor8 = [(HUROARUpgradeView *)self leadingAnchor];
    v61 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [array na_safeAddObject:v61];

    scrollView3 = [(HUROARUpgradeView *)self scrollView];
    topAnchor2 = [scrollView3 topAnchor];
    topAnchor3 = [(HUROARUpgradeView *)self topAnchor];
    v65 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:50.0];
    [array na_safeAddObject:v65];

    scrollView4 = [(HUROARUpgradeView *)self scrollView];
    trailingAnchor7 = [scrollView4 trailingAnchor];
    trailingAnchor8 = [(HUROARUpgradeView *)self trailingAnchor];
    v69 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [array na_safeAddObject:v69];

    scrollView5 = [(HUROARUpgradeView *)self scrollView];
    bottomAnchor6 = [scrollView5 bottomAnchor];
    button9 = [(HUROARUpgradeView *)self button];
    topAnchor4 = [button9 topAnchor];
    v74 = [bottomAnchor6 constraintEqualToAnchor:topAnchor4];
    [array na_safeAddObject:v74];

    deviceImageView2 = [(HUROARUpgradeView *)self deviceImageView];
    centerXAnchor5 = [deviceImageView2 centerXAnchor];
    scrollView6 = [(HUROARUpgradeView *)self scrollView];
    centerXAnchor6 = [scrollView6 centerXAnchor];
    v79 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [array na_safeAddObject:v79];

    deviceImageView3 = [(HUROARUpgradeView *)self deviceImageView];
    topAnchor5 = [deviceImageView3 topAnchor];
    scrollView7 = [(HUROARUpgradeView *)self scrollView];
    topAnchor6 = [scrollView7 topAnchor];
    v84 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:50.0];
    [array na_safeAddObject:v84];

    title2 = [(HUROARUpgradeView *)self title];
    leadingAnchor9 = [title2 leadingAnchor];
    scrollView8 = [(HUROARUpgradeView *)self scrollView];
    leadingAnchor10 = [scrollView8 leadingAnchor];
    v89 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    [array na_safeAddObject:v89];

    title3 = [(HUROARUpgradeView *)self title];
    trailingAnchor9 = [title3 trailingAnchor];
    scrollView9 = [(HUROARUpgradeView *)self scrollView];
    trailingAnchor10 = [scrollView9 trailingAnchor];
    v94 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    [array na_safeAddObject:v94];

    title4 = [(HUROARUpgradeView *)self title];
    centerXAnchor7 = [title4 centerXAnchor];
    scrollView10 = [(HUROARUpgradeView *)self scrollView];
    centerXAnchor8 = [scrollView10 centerXAnchor];
    v99 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [array na_safeAddObject:v99];

    title5 = [(HUROARUpgradeView *)self title];
    topAnchor7 = [title5 topAnchor];
    deviceImageView4 = [(HUROARUpgradeView *)self deviceImageView];
    bottomAnchor7 = [deviceImageView4 bottomAnchor];
    v104 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7 constant:10.0];
    [array na_safeAddObject:v104];

    subtitle2 = [(HUROARUpgradeView *)self subtitle];
    topAnchor8 = [subtitle2 topAnchor];
    title6 = [(HUROARUpgradeView *)self title];
    bottomAnchor8 = [title6 bottomAnchor];
    v109 = [topAnchor8 constraintEqualToAnchor:bottomAnchor8 constant:5.0];
    [array na_safeAddObject:v109];

    subtitle3 = [(HUROARUpgradeView *)self subtitle];
    leadingAnchor11 = [subtitle3 leadingAnchor];
    scrollView11 = [(HUROARUpgradeView *)self scrollView];
    leadingAnchor12 = [scrollView11 leadingAnchor];
    v114 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [array na_safeAddObject:v114];

    subtitle4 = [(HUROARUpgradeView *)self subtitle];
    trailingAnchor11 = [subtitle4 trailingAnchor];
    scrollView12 = [(HUROARUpgradeView *)self scrollView];
    trailingAnchor12 = [scrollView12 trailingAnchor];
    v119 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    [array na_safeAddObject:v119];

    subtitle5 = [(HUROARUpgradeView *)self subtitle];
    centerXAnchor9 = [subtitle5 centerXAnchor];
    scrollView13 = [(HUROARUpgradeView *)self scrollView];
    centerXAnchor10 = [scrollView13 centerXAnchor];
    v124 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
    [array na_safeAddObject:v124];

    [(HUROARUpgradeView *)self setConstraints:array];
    v125 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUROARUpgradeView *)self constraints];
    [v125 activateConstraints:constraints2];
  }

  _shouldShowMainButton = [(HUROARUpgradeView *)self _shouldShowMainButton];
  button10 = [(HUROARUpgradeView *)self button];
  [button10 setHidden:!_shouldShowMainButton];

  _shouldShowSupplementaryButton = [(HUROARUpgradeView *)self _shouldShowSupplementaryButton];
  supplementaryButton7 = [(HUROARUpgradeView *)self supplementaryButton];
  [supplementaryButton7 setHidden:!_shouldShowSupplementaryButton];

  scrollView14 = [(HUROARUpgradeView *)self scrollView];
  [scrollView14 sizeToFit];

  [(HUROARUpgradeView *)self updateScrollViewContentSize];
}

- (void)updateScrollViewContentSize
{
  v39 = *MEMORY[0x277D85DE8];
  deviceImageView = [(HUROARUpgradeView *)self deviceImageView];
  [deviceImageView frame];
  v5 = v4;
  deviceImageView2 = [(HUROARUpgradeView *)self deviceImageView];
  [deviceImageView2 frame];
  v8 = v5 + v7 + 50.0;
  title = [(HUROARUpgradeView *)self title];
  [title frame];
  v11 = v8 + v10 + 10.0;
  subtitle = [(HUROARUpgradeView *)self subtitle];
  [subtitle frame];
  v14 = v11 + v13 + 5.0;

  scrollView = [(HUROARUpgradeView *)self scrollView];
  [scrollView contentSize];
  v17 = v16;
  v19 = v18;

  scrollView2 = [(HUROARUpgradeView *)self scrollView];
  [scrollView2 frame];
  v22 = fmax(v21, v14);

  scrollView3 = [(HUROARUpgradeView *)self scrollView];
  [scrollView3 frame];
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
    scrollView4 = [(HUROARUpgradeView *)self scrollView];
    [scrollView4 setContentSize:{v25, v22}];

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

    home = [(HUROARUpgradeView *)self home];
    hf_currentUserIsOwner = [home hf_currentUserIsOwner];

    if (hf_currentUserIsOwner)
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
    home = [(HUROARUpgradeView *)self home];
    if (home)
    {
      home2 = [(HUROARUpgradeView *)self home];
      v3 = [home2 hf_currentUserIsOwner] ^ 1;
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
    upgradeViewReason = [(HUROARUpgradeView *)self upgradeViewReason];
    [(HUROARUpgradeView *)self upgradeViewReason];
    v9 = HF_HomeAccessNotAllowedReasonCodeString();
    home3 = [(HUROARUpgradeView *)self home];
    home4 = [(HUROARUpgradeView *)self home];
    uniqueIdentifier = [home4 uniqueIdentifier];
    v14[0] = 67110146;
    v14[1] = v6 & 1;
    v15 = 2048;
    v16 = upgradeViewReason;
    v17 = 2114;
    v18 = v9;
    v19 = 2112;
    v20 = home3;
    v21 = 2114;
    v22 = uniqueIdentifier;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "<HUROARUpgradeView:_shouldShowMainButton> result = %{BOOL}d | upgradeViewReason = %ld (%{public}@) | home = %@ (uniqueIdentifier: %{public}@)", v14, 0x30u);
  }

  return v6 & 1;
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  v41 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    home = [(HUROARUpgradeView *)self home];
    home2 = [(HUROARUpgradeView *)self home];
    uniqueIdentifier2 = [home2 uniqueIdentifier];
    v33 = 138413058;
    v34 = homeCopy;
    v35 = 2114;
    v36 = uniqueIdentifier;
    v37 = 2112;
    v38 = home;
    v39 = 2114;
    v40 = uniqueIdentifier2;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "<HUROARUpgradeView:didChangeHome> Switched to new Home %@ (uniqueIdentifier: %{public}@) - previous Home %@ (uniqueIdentifier: %{public}@)", &v33, 0x2Au);
  }

  home3 = [(HUROARUpgradeView *)self home];

  if (home3 != homeCopy)
  {
    [(HUROARUpgradeView *)self setHome:homeCopy];
    home4 = [(HUROARUpgradeView *)self home];
    -[HUROARUpgradeView setUpgradeViewReason:](self, "setUpgradeViewReason:", [home4 hf_blockCurrentUserFromHomeReason]);

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      upgradeViewReason = [(HUROARUpgradeView *)self upgradeViewReason];
      [(HUROARUpgradeView *)self upgradeViewReason];
      v16 = HF_HomeAccessNotAllowedReasonCodeString();
      hf_currentUserIsOwner = [homeCopy hf_currentUserIsOwner];
      v33 = 134218498;
      v34 = upgradeViewReason;
      v35 = 2114;
      v36 = v16;
      v37 = 1024;
      LODWORD(v38) = hf_currentUserIsOwner;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "<HUROARUpgradeView:didChangeHome> upgradeViewReason %lu (%{public}@) - currentUserIsOwner %{BOOL}d", &v33, 0x1Cu);
    }

    _titleString = [(HUROARUpgradeView *)self _titleString];
    title = [(HUROARUpgradeView *)self title];
    [title setText:_titleString];

    _subtitleString = [(HUROARUpgradeView *)self _subtitleString];
    subtitle = [(HUROARUpgradeView *)self subtitle];
    [subtitle setText:_subtitleString];

    v22 = [(HUROARUpgradeView *)self _shouldShowMainButton]^ 1;
    button = [(HUROARUpgradeView *)self button];
    [button setHidden:v22];

    if ((v22 & 1) == 0)
    {
      _mainButtonString = [(HUROARUpgradeView *)self _mainButtonString];
      button2 = [(HUROARUpgradeView *)self button];
      configuration = [button2 configuration];
      [configuration setTitle:_mainButtonString];
    }

    v27 = [(HUROARUpgradeView *)self _shouldShowSupplementaryButton]^ 1;
    supplementaryButton = [(HUROARUpgradeView *)self supplementaryButton];
    [supplementaryButton setHidden:v27];

    if ((v27 & 1) == 0)
    {
      v29 = _HULocalizedStringWithDefaultValue(@"HULearnMoreTitle", @"HULearnMoreTitle", 1);
      supplementaryButton2 = [(HUROARUpgradeView *)self supplementaryButton];
      configuration2 = [supplementaryButton2 configuration];
      [configuration2 setTitle:v29];
    }

    scrollView = [(HUROARUpgradeView *)self scrollView];
    [scrollView layoutIfNeeded];

    [(HUROARUpgradeView *)self updateScrollViewContentSize];
  }
}

- (HUROARUpgradeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end