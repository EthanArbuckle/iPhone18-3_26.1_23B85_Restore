@interface HPSListeningModeControl
- (BOOL)needsResetUI:(id)a3;
- (BOOL)updateModeOffSupported:(id)a3;
- (HPSListeningModeControl)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)_validSegmentCount;
- (id)_locKeyForFailedToSelectIndex:(int64_t)a3;
- (id)getListeningModeString:(int)a3;
- (int)_modeForIndex:(int64_t)a3;
- (int)getListeningModeFromIndex:(int64_t)a3;
- (int64_t)_indexForMode:(int)a3;
- (void)_updateLabelLayoutForBounds;
- (void)addModeLabels;
- (void)addModeOptions;
- (void)initCommon;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)refreshListeningMode;
- (void)resetUI;
- (void)segmentControlValueChanged:(id)a3;
- (void)settingsChangedHandler:(id)a3;
- (void)setupConstraints;
- (void)startObservingOffModeChanges:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation HPSListeningModeControl

- (HPSListeningModeControl)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HPSListeningModeControl;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:0];
  v5 = v4;
  if (v4)
  {
    [(HPSListeningModeControl *)v4 initCommon];
  }

  return v5;
}

- (void)initCommon
{
  self->_autoANCSupported = 0;
  self->_modeOffSupported = 1;
  v3 = [MEMORY[0x277CBEB18] array];
  modeControlLabelXPositionConstraints = self->_modeControlLabelXPositionConstraints;
  self->_modeControlLabelXPositionConstraints = v3;

  v5 = [(HPSListeningModeControl *)self contentView];
  v6 = [v5 layer];
  [v6 setMasksToBounds:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_settingsChangedHandler_ name:*MEMORY[0x277CF3160] object:0];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v10.receiver = self;
  v10.super_class = HPSListeningModeControl;
  v4 = a3;
  [(PSTableCell *)&v10 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];

  v6 = +[HPSDevice deviceKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  device = self->_device;
  self->_device = v7;

  if (self->_device)
  {
    [(HPSListeningModeControl *)self startObservingOffModeChanges:?];
    self->_autoANCSupported = [(BluetoothDeviceProtocol *)self->_device getAutoANCSupport];
    self->_modeOffSupported = [(HPSListeningModeControl *)self updateModeOffSupported:self->_device];
    v9 = [(BluetoothDeviceProtocol *)self->_device name];
    NSLog(&cfstr_ListeningModeR.isa, v9, self->_autoANCSupported, self->_modeOffSupported);
  }

  else
  {
    NSLog(&cfstr_ListeningModeR_0.isa);
  }

  if (self->_segmentedControl)
  {
    if ([(HPSListeningModeControl *)self needsResetUI:?])
    {
      [(HPSListeningModeControl *)self resetUI];
    }

    else
    {
      [(HPSListeningModeControl *)self refreshListeningMode];
    }
  }

  else
  {
    [(HPSListeningModeControl *)self addModeOptions];
    [(HPSListeningModeControl *)self addModeLabels];
    [(HPSListeningModeControl *)self refreshListeningMode];
    [(HPSListeningModeControl *)self setupConstraints];
  }

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel_segmentControlValueChanged_ forControlEvents:4096];
}

- (void)addModeOptions
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (!self->_segmentedControl)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A08]);
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = v3;

    [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel_segmentControlValueChanged_ forControlEvents:4096];
    [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel_segmentControlValueChanged_ forControlEvents:4096];
    v5 = [(HPSListeningModeControl *)self contentView];
    [v5 addSubview:self->_segmentedControl];

    v6 = [MEMORY[0x277D755D0] configurationWithPointSize:25.0];
    v7 = 0x277D75000uLL;
    if (self->_modeOffSupported)
    {
      v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.closed.fill"];
      v9 = MEMORY[0x277D755D0];
      v10 = [MEMORY[0x277D75348] systemGrayColor];
      v25[0] = v10;
      v11 = [MEMORY[0x277D75348] labelColor];
      v25[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v13 = [v9 configurationWithPaletteColors:v12];
      v14 = [v8 imageByApplyingSymbolConfiguration:v13];
      v15 = [v14 imageByApplyingSymbolConfiguration:v6];

      v7 = 0x277D75000;
      [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v15 atIndex:0 animated:0];
      NSLog(&cfstr_ListeningModeA.isa);

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = [*(v7 + 1464) _systemImageNamed:@"person.open.fill"];
    v18 = [v17 imageByApplyingSymbolConfiguration:v6];

    v19 = v16 + 1;
    [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v18 atIndex:v16 animated:0];
    if (self->_autoANCSupported)
    {
      v20 = [*(v7 + 1464) _systemImageNamed:@"person.and.sparkles.fill"];
      v21 = [v20 imageByApplyingSymbolConfiguration:v6];

      [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v21 atIndex:v16 + 1 animated:0];
      NSLog(&cfstr_ListeningModeA_0.isa);

      v19 = v16 | 2;
    }

    v22 = [*(v7 + 1464) _systemImageNamed:@"person.closed.fill"];
    v23 = [v22 imageByApplyingSymbolConfiguration:v6];

    [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v23 atIndex:v19 animated:0];
    NSLog(&cfstr_ListeningModeA_1.isa);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)addModeLabels
{
  if (!self->_labelTransparency)
  {
    v3 = [HPSListeningModeLabel alloc];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"ACTIVE_PASS_THROUGH" value:&stru_286339F58 table:@"DeviceConfig"];
    v6 = [(HPSListeningModeLabel *)v3 initWithText:v5];
    labelTransparency = self->_labelTransparency;
    self->_labelTransparency = v6;

    v8 = [MEMORY[0x277CBEAF8] currentLocale];
    v9 = [v8 objectForKey:*MEMORY[0x277CBE6C8]];
    v10 = [v9 lowercaseString];
    v11 = [v10 isEqualToString:@"en"];

    if (v11)
    {
      LODWORD(v12) = 0.5;
      [(UILabel *)self->_labelTransparency _setHyphenationFactor:v12];
    }

    [(UILabel *)self->_labelTransparency sizeToFit];
    if (self->_modeOffSupported)
    {
      v13 = [HPSListeningModeLabel alloc];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"BYPASS" value:&stru_286339F58 table:@"DeviceConfig"];
      v16 = [(HPSListeningModeLabel *)v13 initWithText:v15];
      labelOff = self->_labelOff;
      self->_labelOff = v16;

      [(UILabel *)self->_labelOff sizeToFit];
      v18 = [(HPSListeningModeControl *)self contentView];
      [v18 addSubview:self->_labelOff];
    }

    v19 = [HPSListeningModeLabel alloc];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"ACTIVE_NOISE_CANCELLATION" value:&stru_286339F58 table:@"DeviceConfig"];
    v22 = [(HPSListeningModeLabel *)v19 initWithText:v21];
    labelNoiseCancellation = self->_labelNoiseCancellation;
    self->_labelNoiseCancellation = v22;

    [(UILabel *)self->_labelNoiseCancellation setNumberOfLines:0];
    [(UILabel *)self->_labelNoiseCancellation sizeToFit];
    v24 = [[HPSListeningModeLabel alloc] initWithText:@"Place AirPods Max On Your Head To Use Noise Cancellation."];
    labelUnableToSetListeningMode = self->_labelUnableToSetListeningMode;
    self->_labelUnableToSetListeningMode = &v24->super;

    [(UILabel *)self->_labelUnableToSetListeningMode setNumberOfLines:0];
    [(UILabel *)self->_labelUnableToSetListeningMode sizeToFit];
    [(UILabel *)self->_labelUnableToSetListeningMode setAlpha:0.01];
    v26 = [(HPSListeningModeControl *)self contentView];
    [v26 addSubview:self->_labelTransparency];

    v27 = [(HPSListeningModeControl *)self contentView];
    [v27 addSubview:self->_labelNoiseCancellation];

    v28 = [(HPSListeningModeControl *)self contentView];
    [v28 addSubview:self->_labelUnableToSetListeningMode];

    NSLog(&cfstr_ListeningModeA_2.isa);
    if (self->_autoANCSupported)
    {
      v29 = [HPSListeningModeLabel alloc];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"AUTO_ANC" value:&stru_286339F58 table:@"DeviceConfig-B698"];
      v32 = [(HPSListeningModeLabel *)v29 initWithText:v31];
      labelAutoANC = self->_labelAutoANC;
      self->_labelAutoANC = v32;

      [(UILabel *)self->_labelAutoANC sizeToFit];
      v34 = [(HPSListeningModeControl *)self contentView];
      [v34 addSubview:self->_labelAutoANC];

      NSLog(&cfstr_ListeningModeA_3.isa);
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HPSListeningModeControl;
  [(PSTableCell *)&v5 layoutSubviews];
  v3 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(HPSListeningModeControl *)self setBackgroundColor:v3];

  [(HPSListeningModeControl *)self _updateLabelLayoutForBounds];
  v4 = [(HPSListeningModeControl *)self layer];
  [v4 setMasksToBounds:0];
}

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = HPSListeningModeControl;
  [(HPSListeningModeControl *)&v6 willMoveToWindow:?];
  v5 = _os_feature_enabled_impl();
  if (a3 && v5 && ![(HPSListeningModeControl *)self hasWindow])
  {
    [(HPSListeningModeControl *)self setHasWindow:1];
    [(HPSListeningModeControl *)self resetUI];
  }
}

- (void)setupConstraints
{
  v111[4] = *MEMORY[0x277D85DE8];
  v3 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
  v4 = [v3 count];

  if (!v4)
  {
    NSLog(&cfstr_ListeningModeS.isa);
    v84 = MEMORY[0x277CCAAD0];
    v96 = [(UISegmentedControl *)self->_segmentedControl topAnchor];
    v102 = [(HPSListeningModeControl *)self contentView];
    v90 = [v102 topAnchor];
    v87 = [v96 constraintEqualToAnchor:v90];
    v111[0] = v87;
    v86 = [(UISegmentedControl *)self->_segmentedControl heightAnchor];
    v85 = [v86 constraintEqualToConstant:50.0];
    v111[1] = v85;
    v5 = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
    v6 = [(HPSListeningModeControl *)self contentView];
    v7 = [v6 leadingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    v111[2] = v8;
    v9 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
    v10 = [(HPSListeningModeControl *)self contentView];
    v11 = [v10 trailingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v111[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:4];
    [v84 activateConstraints:v13];

    v14 = [(HPSListeningModeControl *)self contentView];
    [v14 frame];
    v16 = v15;
    [(HPSListeningModeControl *)self _validSegmentCount];
    v18 = v16 / v17;

    v19 = v18 * 0.5;
    if (self->_modeOffSupported)
    {
      v91 = MEMORY[0x277CCAAD0];
      v103 = [(UILabel *)self->_labelOff topAnchor];
      v97 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
      v20 = [v103 constraintEqualToAnchor:v97 constant:5.0];
      v110[0] = v20;
      v21 = [(UILabel *)self->_labelOff widthAnchor];
      v22 = [v21 constraintEqualToConstant:v18];
      v110[1] = v22;
      v23 = [(UILabel *)self->_labelOff bottomAnchor];
      v24 = [(HPSListeningModeControl *)self contentView];
      v25 = [v24 bottomAnchor];
      v26 = [v23 constraintLessThanOrEqualToAnchor:v25];
      v110[2] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:3];
      [v91 activateConstraints:v27];

      v28 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
      v29 = [(UILabel *)self->_labelOff centerXAnchor];
      v30 = [(HPSListeningModeControl *)self contentView];
      v31 = [v30 leadingAnchor];
      v32 = [v29 constraintEqualToAnchor:v31 constant:v18 * 0.5];
      [v28 addObject:v32];

      v19 = v18 + v19;
    }

    v92 = MEMORY[0x277CCAAD0];
    v104 = [(UILabel *)self->_labelTransparency topAnchor];
    v98 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v33 = [v104 constraintEqualToAnchor:v98 constant:5.0];
    v109[0] = v33;
    v34 = [(UILabel *)self->_labelTransparency widthAnchor];
    v35 = [v34 constraintEqualToConstant:v18];
    v109[1] = v35;
    v36 = [(UILabel *)self->_labelTransparency bottomAnchor];
    v37 = [(HPSListeningModeControl *)self contentView];
    v38 = [v37 bottomAnchor];
    v39 = [v36 constraintLessThanOrEqualToAnchor:v38];
    v109[2] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:3];
    [v92 activateConstraints:v40];

    v41 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
    v42 = [(UILabel *)self->_labelTransparency centerXAnchor];
    v43 = [(HPSListeningModeControl *)self contentView];
    v44 = [v43 leadingAnchor];
    v45 = [v42 constraintEqualToAnchor:v44 constant:v19];
    [v41 addObject:v45];

    v46 = v18 + v19;
    if (self->_autoANCSupported)
    {
      v93 = MEMORY[0x277CCAAD0];
      v105 = [(UILabel *)self->_labelAutoANC topAnchor];
      v99 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
      v47 = [v105 constraintEqualToAnchor:v99 constant:5.0];
      v108[0] = v47;
      v48 = [(UILabel *)self->_labelAutoANC widthAnchor];
      v49 = [v48 constraintEqualToConstant:v18];
      v108[1] = v49;
      v50 = [(UILabel *)self->_labelAutoANC bottomAnchor];
      v51 = [(HPSListeningModeControl *)self contentView];
      v52 = [v51 bottomAnchor];
      v53 = [v50 constraintLessThanOrEqualToAnchor:v52];
      v108[2] = v53;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:3];
      [v93 activateConstraints:v54];

      v55 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
      v56 = [(UILabel *)self->_labelAutoANC centerXAnchor];
      v57 = [(HPSListeningModeControl *)self contentView];
      v58 = [v57 leadingAnchor];
      v59 = [v56 constraintEqualToAnchor:v58 constant:v46];
      [v55 addObject:v59];

      v46 = v18 + v46;
    }

    v88 = MEMORY[0x277CCAAD0];
    v100 = [(UILabel *)self->_labelNoiseCancellation topAnchor];
    v94 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v60 = [v100 constraintEqualToAnchor:v94 constant:5.0];
    v107[0] = v60;
    v61 = [(UILabel *)self->_labelNoiseCancellation widthAnchor];
    v62 = [v61 constraintEqualToConstant:v18];
    v107[1] = v62;
    v63 = [(UILabel *)self->_labelNoiseCancellation bottomAnchor];
    v64 = [(HPSListeningModeControl *)self contentView];
    v65 = [v64 bottomAnchor];
    v66 = [v63 constraintLessThanOrEqualToAnchor:v65];
    v107[2] = v66;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:3];
    [v88 activateConstraints:v67];

    v89 = MEMORY[0x277CCAAD0];
    v101 = [(UILabel *)self->_labelUnableToSetListeningMode topAnchor];
    v95 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v68 = [v101 constraintEqualToAnchor:v95 constant:5.0];
    v106[0] = v68;
    v69 = [(UILabel *)self->_labelUnableToSetListeningMode leadingAnchor];
    v70 = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    v106[1] = v71;
    v72 = [(UILabel *)self->_labelUnableToSetListeningMode trailingAnchor];
    v73 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];
    v106[2] = v74;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:3];
    [v89 activateConstraints:v75];

    v76 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
    v77 = [(UILabel *)self->_labelNoiseCancellation centerXAnchor];
    v78 = [(HPSListeningModeControl *)self contentView];
    v79 = [v78 leadingAnchor];
    v80 = [v77 constraintEqualToAnchor:v79 constant:v46];
    [v76 addObject:v80];

    v81 = MEMORY[0x277CCAAD0];
    v82 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
    [v81 activateConstraints:v82];
  }

  v83 = *MEMORY[0x277D85DE8];
}

- (int)getListeningModeFromIndex:(int64_t)a3
{
  v5 = [(HPSListeningModeControl *)self _modeForIndex:?];
  v6 = v5;
  v7 = [(HPSListeningModeControl *)self getListeningModeString:v5];
  NSLog(&cfstr_ListeningModeG.isa, a3, v7);

  return v6;
}

- (id)getListeningModeString:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2796ADC70[a3 - 1];
  }
}

- (void)settingsChangedHandler:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_ListeningModeS_0.isa);
  v7 = [v4 object];

  v5 = [v7 address];
  v6 = [(BluetoothDeviceProtocol *)self->_device address];

  if (v5 == v6)
  {
    [(HPSListeningModeControl *)self refreshListeningMode];
  }
}

- (void)refreshListeningMode
{
  v3 = [(BluetoothDeviceProtocol *)self->_device listeningMode];
  v4 = [(HPSListeningModeControl *)self getListeningModeString:v3];
  NSLog(&cfstr_ListeningModeR_1.isa, v4);

  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:[(HPSListeningModeControl *)self getIndexFromListeningMode:v3]];
  LODWORD(v4) = self->_autoANCSupported;
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  v7 = @"ListeningModesValueOnly";
  if (v4)
  {
    v7 = @"ListeningModesV2ValueOnly";
    v8 = @"HPSSetListeningModeUpdated";
  }

  else
  {
    v8 = @"BTAccessorySetListeningModeUpdated";
  }

  v10 = [v5 initWithObjectsAndKeys:{v6, v7, 0}];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:v8 object:0 userInfo:v10];
}

- (void)segmentControlValueChanged:(id)a3
{
  v4 = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  v5 = [(HPSListeningModeControl *)self getListeningModeFromIndex:v4];
  NSLog(&cfstr_ListeningModeS_1.isa, v4, v5);
  if (([(BluetoothDeviceProtocol *)self->_device setListeningMode:v5]& 1) == 0)
  {
    [(HPSListeningModeControl *)self _handleListeningModeSetFailure:v5 index:v4];
  }

  autoANCSupported = self->_autoANCSupported;
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v9 = @"ListeningModes";
  if (autoANCSupported)
  {
    v9 = @"ListeningModesV2";
    v10 = @"HPSSetListeningModeUpdated";
  }

  else
  {
    v10 = @"BTAccessorySetListeningModeUpdated";
  }

  v12 = [v7 initWithObjectsAndKeys:{v8, v9, 0}];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:v10 object:0 userInfo:v12];
}

- (void)resetUI
{
  NSLog(&cfstr_ListeningModeU.isa, a2);
  self->_modeOffSupported = [(HPSListeningModeControl *)self updateModeOffSupported:self->_device];
  if ([(HPSListeningModeControl *)self needsResetUI:self->_segmentedControl])
  {
    [(HPSListeningModeControl *)self setAlpha:0.0];
    [(UISegmentedControl *)self->_segmentedControl removeFromSuperview];
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = 0;

    [(UILabel *)self->_labelTransparency removeFromSuperview];
    labelTransparency = self->_labelTransparency;
    self->_labelTransparency = 0;

    [(UILabel *)self->_labelOff removeFromSuperview];
    [(UILabel *)self->_labelNoiseCancellation removeFromSuperview];
    [(UILabel *)self->_labelUnableToSetListeningMode removeFromSuperview];
    [(UILabel *)self->_labelAutoANC removeFromSuperview];
    v5 = [MEMORY[0x277CBEB18] array];
    modeControlLabelXPositionConstraints = self->_modeControlLabelXPositionConstraints;
    self->_modeControlLabelXPositionConstraints = v5;

    [(HPSListeningModeControl *)self addModeOptions];
    [(HPSListeningModeControl *)self addModeLabels];
    [(HPSListeningModeControl *)self refreshListeningMode];
    [(HPSListeningModeControl *)self setupConstraints];
    [(HPSListeningModeControl *)self layoutIfNeeded];

    [(HPSListeningModeControl *)self setAlpha:1.0];
  }

  else
  {
    [(HPSListeningModeControl *)self refreshListeningMode];
    NSLog(&cfstr_ListeningModeU_0.isa);
  }
}

- (void)_updateLabelLayoutForBounds
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HPSListeningModeControl *)self contentView];
  [v3 bounds];
  v5 = v4;
  [(HPSListeningModeControl *)self _validSegmentCount];
  v7 = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = v5 / v7;
    v12 = v11 * 0.5;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * v14) setConstant:v12];
        v12 = v11 + v12;
        ++v14;
      }

      while (v10 != v14);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HPSListeningModeControl__handleListeningModeSetFailure_index___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1232) setAlpha:0.0];
  [*(*(a1 + 32) + 1224) setAlpha:0.0];
  [*(*(a1 + 32) + 1240) setAlpha:0.0];
  [*(*(a1 + 32) + 1216) setAlpha:0.0];
  [*(*(a1 + 32) + 1248) setAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

uint64_t __64__HPSListeningModeControl__handleListeningModeSetFailure_index___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__HPSListeningModeControl__handleListeningModeSetFailure_index___block_invoke_3;
  v3[3] = &unk_2796AD618;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __64__HPSListeningModeControl__handleListeningModeSetFailure_index___block_invoke_4;
  v2[3] = &unk_2796ADC50;
  v2[4] = v4;
  return [MEMORY[0x277D75D18] animateWithDuration:0 delay:v3 options:v2 animations:1.0 completion:1.0];
}

uint64_t __64__HPSListeningModeControl__handleListeningModeSetFailure_index___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1232) setAlpha:1.0];
  [*(*(a1 + 32) + 1224) setAlpha:1.0];
  [*(*(a1 + 32) + 1240) setAlpha:1.0];
  [*(*(a1 + 32) + 1216) setAlpha:1.0];
  [*(*(a1 + 32) + 1248) setAlpha:0.01];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

- (double)_validSegmentCount
{
  if (!self->_autoANCSupported)
  {
    result = 2.0;
    if (!self->_modeOffSupported)
    {
      return result;
    }

    return 3.0;
  }

  result = 4.0;
  if (!self->_modeOffSupported)
  {
    return 3.0;
  }

  return result;
}

- (id)_locKeyForFailedToSelectIndex:(int64_t)a3
{
  autoANCSupported = self->_autoANCSupported;
  v6 = @"NOISE_CONTROL_MODE_REQUIRES_BOTH_BUDS_IN_EAR";
  if (autoANCSupported)
  {
    v7 = !self->_modeOffSupported;
    v8 = 1;
    if (!v7)
    {
      v8 = 2;
    }

    if (v8 == a3)
    {
      v9 = @"NOISE_CONTROL_MODE_REQUIRES_BOTH_BUDS_IN_EAR_ADAPTIVE";
    }

    else
    {
      v9 = @"NOISE_CONTROL_MODE_REQUIRES_BOTH_BUDS_IN_EAR";
    }

    v6 = v9;
  }

  return v6;
}

- (int)_modeForIndex:(int64_t)a3
{
  v4 = self;
  LODWORD(a3) = sub_2511F17D8(a3);

  return a3;
}

- (int64_t)_indexForMode:(int)a3
{
  v4 = self;
  v5 = sub_2511F1B80(a3);

  return v5;
}

- (void)startObservingOffModeChanges:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_2511F1CD8(a3);
  swift_unknownObjectRelease();
}

- (BOOL)needsResetUI:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_2511F23B4(v4);

  return self & 1;
}

- (BOOL)updateModeOffSupported:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_2511F2EC4(a3);
  swift_unknownObjectRelease();

  return v6;
}

@end