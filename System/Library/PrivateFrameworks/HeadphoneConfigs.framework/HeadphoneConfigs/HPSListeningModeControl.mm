@interface HPSListeningModeControl
- (BOOL)needsResetUI:(id)i;
- (BOOL)updateModeOffSupported:(id)supported;
- (HPSListeningModeControl)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)_validSegmentCount;
- (id)_locKeyForFailedToSelectIndex:(int64_t)index;
- (id)getListeningModeString:(int)string;
- (int)_modeForIndex:(int64_t)index;
- (int)getListeningModeFromIndex:(int64_t)index;
- (int64_t)_indexForMode:(int)mode;
- (void)_updateLabelLayoutForBounds;
- (void)addModeLabels;
- (void)addModeOptions;
- (void)initCommon;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)refreshListeningMode;
- (void)resetUI;
- (void)segmentControlValueChanged:(id)changed;
- (void)settingsChangedHandler:(id)handler;
- (void)setupConstraints;
- (void)startObservingOffModeChanges:(id)changes;
- (void)willMoveToWindow:(id)window;
@end

@implementation HPSListeningModeControl

- (HPSListeningModeControl)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HPSListeningModeControl;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:0];
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
  array = [MEMORY[0x277CBEB18] array];
  modeControlLabelXPositionConstraints = self->_modeControlLabelXPositionConstraints;
  self->_modeControlLabelXPositionConstraints = array;

  contentView = [(HPSListeningModeControl *)self contentView];
  layer = [contentView layer];
  [layer setMasksToBounds:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_settingsChangedHandler_ name:*MEMORY[0x277CF3160] object:0];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = HPSListeningModeControl;
  specifierCopy = specifier;
  [(PSTableCell *)&v10 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  v6 = +[HPSDevice deviceKey];
  v7 = [userInfo objectForKeyedSubscript:v6];
  device = self->_device;
  self->_device = v7;

  if (self->_device)
  {
    [(HPSListeningModeControl *)self startObservingOffModeChanges:?];
    self->_autoANCSupported = [(BluetoothDeviceProtocol *)self->_device getAutoANCSupport];
    self->_modeOffSupported = [(HPSListeningModeControl *)self updateModeOffSupported:self->_device];
    name = [(BluetoothDeviceProtocol *)self->_device name];
    NSLog(&cfstr_ListeningModeR.isa, name, self->_autoANCSupported, self->_modeOffSupported);
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
    contentView = [(HPSListeningModeControl *)self contentView];
    [contentView addSubview:self->_segmentedControl];

    v6 = [MEMORY[0x277D755D0] configurationWithPointSize:25.0];
    v7 = 0x277D75000uLL;
    if (self->_modeOffSupported)
    {
      v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.closed.fill"];
      v9 = MEMORY[0x277D755D0];
      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      v25[0] = systemGrayColor;
      labelColor = [MEMORY[0x277D75348] labelColor];
      v25[1] = labelColor;
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

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v9 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];
    lowercaseString = [v9 lowercaseString];
    v11 = [lowercaseString isEqualToString:@"en"];

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
      contentView = [(HPSListeningModeControl *)self contentView];
      [contentView addSubview:self->_labelOff];
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
    contentView2 = [(HPSListeningModeControl *)self contentView];
    [contentView2 addSubview:self->_labelTransparency];

    contentView3 = [(HPSListeningModeControl *)self contentView];
    [contentView3 addSubview:self->_labelNoiseCancellation];

    contentView4 = [(HPSListeningModeControl *)self contentView];
    [contentView4 addSubview:self->_labelUnableToSetListeningMode];

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
      contentView5 = [(HPSListeningModeControl *)self contentView];
      [contentView5 addSubview:self->_labelAutoANC];

      NSLog(&cfstr_ListeningModeA_3.isa);
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HPSListeningModeControl;
  [(PSTableCell *)&v5 layoutSubviews];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(HPSListeningModeControl *)self setBackgroundColor:systemGroupedBackgroundColor];

  [(HPSListeningModeControl *)self _updateLabelLayoutForBounds];
  layer = [(HPSListeningModeControl *)self layer];
  [layer setMasksToBounds:0];
}

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = HPSListeningModeControl;
  [(HPSListeningModeControl *)&v6 willMoveToWindow:?];
  v5 = _os_feature_enabled_impl();
  if (window && v5 && ![(HPSListeningModeControl *)self hasWindow])
  {
    [(HPSListeningModeControl *)self setHasWindow:1];
    [(HPSListeningModeControl *)self resetUI];
  }
}

- (void)setupConstraints
{
  v111[4] = *MEMORY[0x277D85DE8];
  modeControlLabelXPositionConstraints = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
  v4 = [modeControlLabelXPositionConstraints count];

  if (!v4)
  {
    NSLog(&cfstr_ListeningModeS.isa);
    v84 = MEMORY[0x277CCAAD0];
    topAnchor = [(UISegmentedControl *)self->_segmentedControl topAnchor];
    contentView = [(HPSListeningModeControl *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v87 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v111[0] = v87;
    heightAnchor = [(UISegmentedControl *)self->_segmentedControl heightAnchor];
    v85 = [heightAnchor constraintEqualToConstant:50.0];
    v111[1] = v85;
    leadingAnchor = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
    contentView2 = [(HPSListeningModeControl *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v111[2] = v8;
    trailingAnchor = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
    contentView3 = [(HPSListeningModeControl *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v111[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:4];
    [v84 activateConstraints:v13];

    contentView4 = [(HPSListeningModeControl *)self contentView];
    [contentView4 frame];
    v16 = v15;
    [(HPSListeningModeControl *)self _validSegmentCount];
    v18 = v16 / v17;

    v19 = v18 * 0.5;
    if (self->_modeOffSupported)
    {
      v91 = MEMORY[0x277CCAAD0];
      topAnchor3 = [(UILabel *)self->_labelOff topAnchor];
      bottomAnchor = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
      v20 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:5.0];
      v110[0] = v20;
      widthAnchor = [(UILabel *)self->_labelOff widthAnchor];
      v22 = [widthAnchor constraintEqualToConstant:v18];
      v110[1] = v22;
      bottomAnchor2 = [(UILabel *)self->_labelOff bottomAnchor];
      contentView5 = [(HPSListeningModeControl *)self contentView];
      bottomAnchor3 = [contentView5 bottomAnchor];
      v26 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
      v110[2] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:3];
      [v91 activateConstraints:v27];

      modeControlLabelXPositionConstraints2 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
      centerXAnchor = [(UILabel *)self->_labelOff centerXAnchor];
      contentView6 = [(HPSListeningModeControl *)self contentView];
      leadingAnchor3 = [contentView6 leadingAnchor];
      v32 = [centerXAnchor constraintEqualToAnchor:leadingAnchor3 constant:v18 * 0.5];
      [modeControlLabelXPositionConstraints2 addObject:v32];

      v19 = v18 + v19;
    }

    v92 = MEMORY[0x277CCAAD0];
    topAnchor4 = [(UILabel *)self->_labelTransparency topAnchor];
    bottomAnchor4 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v33 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4 constant:5.0];
    v109[0] = v33;
    widthAnchor2 = [(UILabel *)self->_labelTransparency widthAnchor];
    v35 = [widthAnchor2 constraintEqualToConstant:v18];
    v109[1] = v35;
    bottomAnchor5 = [(UILabel *)self->_labelTransparency bottomAnchor];
    contentView7 = [(HPSListeningModeControl *)self contentView];
    bottomAnchor6 = [contentView7 bottomAnchor];
    v39 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
    v109[2] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:3];
    [v92 activateConstraints:v40];

    modeControlLabelXPositionConstraints3 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
    centerXAnchor2 = [(UILabel *)self->_labelTransparency centerXAnchor];
    contentView8 = [(HPSListeningModeControl *)self contentView];
    leadingAnchor4 = [contentView8 leadingAnchor];
    v45 = [centerXAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:v19];
    [modeControlLabelXPositionConstraints3 addObject:v45];

    v46 = v18 + v19;
    if (self->_autoANCSupported)
    {
      v93 = MEMORY[0x277CCAAD0];
      topAnchor5 = [(UILabel *)self->_labelAutoANC topAnchor];
      bottomAnchor7 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
      v47 = [topAnchor5 constraintEqualToAnchor:bottomAnchor7 constant:5.0];
      v108[0] = v47;
      widthAnchor3 = [(UILabel *)self->_labelAutoANC widthAnchor];
      v49 = [widthAnchor3 constraintEqualToConstant:v18];
      v108[1] = v49;
      bottomAnchor8 = [(UILabel *)self->_labelAutoANC bottomAnchor];
      contentView9 = [(HPSListeningModeControl *)self contentView];
      bottomAnchor9 = [contentView9 bottomAnchor];
      v53 = [bottomAnchor8 constraintLessThanOrEqualToAnchor:bottomAnchor9];
      v108[2] = v53;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:3];
      [v93 activateConstraints:v54];

      modeControlLabelXPositionConstraints4 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
      centerXAnchor3 = [(UILabel *)self->_labelAutoANC centerXAnchor];
      contentView10 = [(HPSListeningModeControl *)self contentView];
      leadingAnchor5 = [contentView10 leadingAnchor];
      v59 = [centerXAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:v46];
      [modeControlLabelXPositionConstraints4 addObject:v59];

      v46 = v18 + v46;
    }

    v88 = MEMORY[0x277CCAAD0];
    topAnchor6 = [(UILabel *)self->_labelNoiseCancellation topAnchor];
    bottomAnchor10 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v60 = [topAnchor6 constraintEqualToAnchor:bottomAnchor10 constant:5.0];
    v107[0] = v60;
    widthAnchor4 = [(UILabel *)self->_labelNoiseCancellation widthAnchor];
    v62 = [widthAnchor4 constraintEqualToConstant:v18];
    v107[1] = v62;
    bottomAnchor11 = [(UILabel *)self->_labelNoiseCancellation bottomAnchor];
    contentView11 = [(HPSListeningModeControl *)self contentView];
    bottomAnchor12 = [contentView11 bottomAnchor];
    v66 = [bottomAnchor11 constraintLessThanOrEqualToAnchor:bottomAnchor12];
    v107[2] = v66;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:3];
    [v88 activateConstraints:v67];

    v89 = MEMORY[0x277CCAAD0];
    topAnchor7 = [(UILabel *)self->_labelUnableToSetListeningMode topAnchor];
    bottomAnchor13 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v68 = [topAnchor7 constraintEqualToAnchor:bottomAnchor13 constant:5.0];
    v106[0] = v68;
    leadingAnchor6 = [(UILabel *)self->_labelUnableToSetListeningMode leadingAnchor];
    leadingAnchor7 = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
    v71 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v106[1] = v71;
    trailingAnchor3 = [(UILabel *)self->_labelUnableToSetListeningMode trailingAnchor];
    trailingAnchor4 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
    v74 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v106[2] = v74;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:3];
    [v89 activateConstraints:v75];

    modeControlLabelXPositionConstraints5 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
    centerXAnchor4 = [(UILabel *)self->_labelNoiseCancellation centerXAnchor];
    contentView12 = [(HPSListeningModeControl *)self contentView];
    leadingAnchor8 = [contentView12 leadingAnchor];
    v80 = [centerXAnchor4 constraintEqualToAnchor:leadingAnchor8 constant:v46];
    [modeControlLabelXPositionConstraints5 addObject:v80];

    v81 = MEMORY[0x277CCAAD0];
    modeControlLabelXPositionConstraints6 = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
    [v81 activateConstraints:modeControlLabelXPositionConstraints6];
  }

  v83 = *MEMORY[0x277D85DE8];
}

- (int)getListeningModeFromIndex:(int64_t)index
{
  v5 = [(HPSListeningModeControl *)self _modeForIndex:?];
  v6 = v5;
  v7 = [(HPSListeningModeControl *)self getListeningModeString:v5];
  NSLog(&cfstr_ListeningModeG.isa, index, v7);

  return v6;
}

- (id)getListeningModeString:(int)string
{
  if ((string - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2796ADC70[string - 1];
  }
}

- (void)settingsChangedHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(&cfstr_ListeningModeS_0.isa);
  object = [handlerCopy object];

  address = [object address];
  address2 = [(BluetoothDeviceProtocol *)self->_device address];

  if (address == address2)
  {
    [(HPSListeningModeControl *)self refreshListeningMode];
  }
}

- (void)refreshListeningMode
{
  listeningMode = [(BluetoothDeviceProtocol *)self->_device listeningMode];
  v4 = [(HPSListeningModeControl *)self getListeningModeString:listeningMode];
  NSLog(&cfstr_ListeningModeR_1.isa, v4);

  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:[(HPSListeningModeControl *)self getIndexFromListeningMode:listeningMode]];
  LODWORD(v4) = self->_autoANCSupported;
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:listeningMode];
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:v8 object:0 userInfo:v10];
}

- (void)segmentControlValueChanged:(id)changed
{
  selectedSegmentIndex = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  v5 = [(HPSListeningModeControl *)self getListeningModeFromIndex:selectedSegmentIndex];
  NSLog(&cfstr_ListeningModeS_1.isa, selectedSegmentIndex, v5);
  if (([(BluetoothDeviceProtocol *)self->_device setListeningMode:v5]& 1) == 0)
  {
    [(HPSListeningModeControl *)self _handleListeningModeSetFailure:v5 index:selectedSegmentIndex];
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:v10 object:0 userInfo:v12];
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
    array = [MEMORY[0x277CBEB18] array];
    modeControlLabelXPositionConstraints = self->_modeControlLabelXPositionConstraints;
    self->_modeControlLabelXPositionConstraints = array;

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
  contentView = [(HPSListeningModeControl *)self contentView];
  [contentView bounds];
  v5 = v4;
  [(HPSListeningModeControl *)self _validSegmentCount];
  v7 = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  modeControlLabelXPositionConstraints = [(HPSListeningModeControl *)self modeControlLabelXPositionConstraints];
  v9 = [modeControlLabelXPositionConstraints countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(modeControlLabelXPositionConstraints);
        }

        [*(*(&v16 + 1) + 8 * v14) setConstant:v12];
        v12 = v11 + v12;
        ++v14;
      }

      while (v10 != v14);
      v10 = [modeControlLabelXPositionConstraints countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)_locKeyForFailedToSelectIndex:(int64_t)index
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

    if (v8 == index)
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

- (int)_modeForIndex:(int64_t)index
{
  selfCopy = self;
  LODWORD(index) = sub_2511F17D8(index);

  return index;
}

- (int64_t)_indexForMode:(int)mode
{
  selfCopy = self;
  v5 = sub_2511F1B80(mode);

  return v5;
}

- (void)startObservingOffModeChanges:(id)changes
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2511F1CD8(changes);
  swift_unknownObjectRelease();
}

- (BOOL)needsResetUI:(id)i
{
  iCopy = i;
  selfCopy = self;
  LOBYTE(self) = sub_2511F23B4(iCopy);

  return self & 1;
}

- (BOOL)updateModeOffSupported:(id)supported
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_2511F2EC4(supported);
  swift_unknownObjectRelease();

  return v6;
}

@end