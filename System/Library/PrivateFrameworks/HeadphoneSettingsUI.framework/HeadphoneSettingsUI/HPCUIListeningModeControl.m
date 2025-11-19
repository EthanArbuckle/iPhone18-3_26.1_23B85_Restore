@interface HPCUIListeningModeControl
- (BOOL)farFieldSessionOnGoing;
- (BOOL)needsResetUI:(id)a3;
- (BOOL)setListeningMode:(unsigned int)a3;
- (BOOL)updateModeOffSupported;
- (HPCUIListeningModeControl)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)_validSegmentCount;
- (id)_errorStringForFailedToSelectIndex:(int64_t)a3;
- (id)farFieldOngoingErrorString;
- (id)getListeningModeString:(int)a3;
- (int)_modeForIndex:(int64_t)a3;
- (int)getListeningModeFromIndex:(int64_t)a3;
- (int64_t)_indexForMode:(int)a3;
- (int64_t)getIndexFromListeningMode:(int)a3;
- (void)_handleListeningModeSetFailure:(int)a3 index:(int64_t)a4;
- (void)_updateLabelLayoutForBounds;
- (void)addModeLabels;
- (void)addModeOptions;
- (void)initCommon;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)refreshListeningMode;
- (void)resetUI;
- (void)segmentControlValueChanged:(id)a3;
- (void)setListeningModeConfigs:(unsigned int)a3;
- (void)settingsChangedHandler:(id)a3;
- (void)setupConstraints;
- (void)startObservingChanges;
- (void)updateListeningModeForSyncSelection:(id)a3;
@end

@implementation HPCUIListeningModeControl

- (HPCUIListeningModeControl)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HPCUIListeningModeControl;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:0];
  v5 = v4;
  if (v4)
  {
    [(HPCUIListeningModeControl *)v4 initCommon];
  }

  return v5;
}

- (void)initCommon
{
  self->_autoANCSupported = 0;
  self->_modeOffSupported = 1;
  v3 = [MEMORY[0x1E695DF70] array];
  modeControlLabelXPositionConstraints = self->_modeControlLabelXPositionConstraints;
  self->_modeControlLabelXPositionConstraints = v3;

  v5 = [MEMORY[0x1E695DF70] array];
  labelWidthConstraints = self->_labelWidthConstraints;
  self->_labelWidthConstraints = v5;

  v8 = [(HPCUIListeningModeControl *)self contentView];
  v7 = [v8 layer];
  [v7 setMasksToBounds:0];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v10.receiver = self;
  v10.super_class = HPCUIListeningModeControl;
  v4 = a3;
  [(PSTableCell *)&v10 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"Headphone_Manager.HeadphoneDevice"];
  device = self->_device;
  self->_device = v6;

  if (self->_device)
  {
    [(HPCUIListeningModeControl *)self startObservingChanges];
    v8 = [(HPMHeadphoneDevice *)self->_device cbDevice];
    self->_autoANCSupported = [v8 autoAncCapability] != 0;

    self->_modeOffSupported = [(HPCUIListeningModeControl *)self updateModeOffSupported];
    v9 = [(HPMHeadphoneDevice *)self->_device name];
    NSLog(&cfstr_ListeningModeR.isa, v9, self->_autoANCSupported, self->_modeOffSupported);
  }

  else
  {
    NSLog(&cfstr_ListeningModeR_0.isa);
  }

  if (self->_segmentedControl)
  {
    if ([(HPCUIListeningModeControl *)self needsResetUI:?])
    {
      [(HPCUIListeningModeControl *)self resetUI];
    }

    else
    {
      [(HPCUIListeningModeControl *)self refreshListeningMode];
    }
  }

  else
  {
    [(HPCUIListeningModeControl *)self addModeOptions];
    [(HPCUIListeningModeControl *)self addModeLabels];
    [(HPCUIListeningModeControl *)self refreshListeningMode];
    [(HPCUIListeningModeControl *)self setupConstraints];
  }
}

- (void)addModeOptions
{
  v27[2] = *MEMORY[0x1E69E9840];
  if (!self->_segmentedControl)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCF38]);
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = v3;

    [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_segmentedControl;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __43__HPCUIListeningModeControl_addModeOptions__block_invoke;
    v26[3] = &unk_1E7970CA8;
    v26[4] = self;
    v6 = [MEMORY[0x1E69DC628] actionWithHandler:v26];
    [(UISegmentedControl *)v5 addAction:v6 forControlEvents:4096];
  }

  v7 = [(HPCUIListeningModeControl *)self contentView];
  [v7 addSubview:self->_segmentedControl];

  [(UISegmentedControl *)self->_segmentedControl removeAllSegments];
  v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:25.0];
  v9 = 0x1E69DC000uLL;
  if (self->_modeOffSupported)
  {
    v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"person.closed.fill"];
    v11 = MEMORY[0x1E69DCAD8];
    v12 = [MEMORY[0x1E69DC888] systemGrayColor];
    v27[0] = v12;
    v13 = [MEMORY[0x1E69DC888] labelColor];
    v27[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v15 = [v11 configurationWithPaletteColors:v14];
    v16 = [v10 imageByApplyingSymbolConfiguration:v15];
    v17 = [v16 imageByApplyingSymbolConfiguration:v8];

    v9 = 0x1E69DC000;
    [v17 setAccessibilityIdentifier:@"Off"];
    [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v17 atIndex:0 animated:0];

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = [*(v9 + 2744) _systemImageNamed:@"person.open.fill"];
  v20 = [v19 imageByApplyingSymbolConfiguration:v8];

  [v20 setAccessibilityIdentifier:@"Transparency"];
  v21 = v18 + 1;
  [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v20 atIndex:v18 animated:0];
  if (self->_autoANCSupported)
  {
    v22 = [*(v9 + 2744) _systemImageNamed:@"person.and.sparkles.fill"];
    v23 = [v22 imageByApplyingSymbolConfiguration:v8];

    [v23 setAccessibilityIdentifier:@"Adaptive"];
    [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v23 atIndex:v18 + 1 animated:0];
    NSLog(&cfstr_ListeningModeA.isa);

    v21 = v18 | 2;
  }

  v24 = [*(v9 + 2744) _systemImageNamed:@"person.closed.fill"];
  v25 = [v24 imageByApplyingSymbolConfiguration:v8];

  [v25 setAccessibilityIdentifier:@"Noise Cancellation"];
  [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v25 atIndex:v21 animated:0];
  NSLog(&cfstr_ListeningModeA_0.isa);
}

- (void)addModeLabels
{
  if (!self->_labelTransparency)
  {
    v3 = [HPCUIListeningModeLabel alloc];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Transparency" value:&stru_1F20FAB50 table:0];
    v6 = [(HPCUIListeningModeLabel *)v3 initWithText:v5];
    labelTransparency = self->_labelTransparency;
    self->_labelTransparency = v6;
  }

  v8 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [v8 objectForKey:*MEMORY[0x1E695D9B0]];
  v10 = [v9 lowercaseString];
  v11 = [v10 isEqualToString:@"en"];

  if (v11)
  {
    LODWORD(v12) = 0.5;
    [(UILabel *)self->_labelTransparency _setHyphenationFactor:v12];
  }

  [(UILabel *)self->_labelTransparency sizeToFit];
  [(UILabel *)self->_labelTransparency setAccessibilityIdentifier:@"Transparency"];
  if (self->_modeOffSupported)
  {
    labelOff = self->_labelOff;
    if (!labelOff)
    {
      v14 = [HPCUIListeningModeLabel alloc];
      v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"Off" value:&stru_1F20FAB50 table:0];
      v17 = [(HPCUIListeningModeLabel *)v14 initWithText:v16];
      v18 = self->_labelOff;
      self->_labelOff = v17;

      labelOff = self->_labelOff;
    }

    [(UILabel *)labelOff sizeToFit];
    [(UILabel *)self->_labelOff setAccessibilityIdentifier:@"Off"];
    v19 = [(HPCUIListeningModeControl *)self contentView];
    [v19 addSubview:self->_labelOff];
  }

  if (!self->_labelNoiseCancellation)
  {
    v20 = [HPCUIListeningModeLabel alloc];
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"Noise Cancellation" value:&stru_1F20FAB50 table:0];
    v23 = [(HPCUIListeningModeLabel *)v20 initWithText:v22];
    labelNoiseCancellation = self->_labelNoiseCancellation;
    self->_labelNoiseCancellation = v23;

    [(UILabel *)self->_labelNoiseCancellation setNumberOfLines:0];
    [(UILabel *)self->_labelNoiseCancellation sizeToFit];
    [(UILabel *)self->_labelNoiseCancellation setAccessibilityIdentifier:@"Noise Cancellation"];
  }

  if (!self->_labelUnableToSetListeningMode)
  {
    v25 = [[HPCUIListeningModeLabel alloc] initWithText:@"Place AirPods Max On Your Head To Use Noise Cancellation."];
    labelUnableToSetListeningMode = self->_labelUnableToSetListeningMode;
    self->_labelUnableToSetListeningMode = &v25->super;

    [(UILabel *)self->_labelUnableToSetListeningMode setNumberOfLines:0];
    [(UILabel *)self->_labelUnableToSetListeningMode sizeToFit];
    [(UILabel *)self->_labelUnableToSetListeningMode setAccessibilityIdentifier:@"Place AirPods Max On Your Head To Use Noise Cancellation."];
    [(UILabel *)self->_labelUnableToSetListeningMode setAlpha:0.01];
  }

  v27 = [(HPCUIListeningModeControl *)self contentView];
  [v27 addSubview:self->_labelTransparency];

  v28 = [(HPCUIListeningModeControl *)self contentView];
  [v28 addSubview:self->_labelNoiseCancellation];

  v29 = [(HPCUIListeningModeControl *)self contentView];
  [v29 addSubview:self->_labelUnableToSetListeningMode];

  NSLog(&cfstr_ListeningModeA_1.isa);
  if (self->_autoANCSupported)
  {
    labelAutoANC = self->_labelAutoANC;
    if (!labelAutoANC)
    {
      v31 = [HPCUIListeningModeLabel alloc];
      v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v33 = [v32 localizedStringForKey:@"Adaptive" value:&stru_1F20FAB50 table:0];
      v34 = [(HPCUIListeningModeLabel *)v31 initWithText:v33];
      v35 = self->_labelAutoANC;
      self->_labelAutoANC = v34;

      labelAutoANC = self->_labelAutoANC;
    }

    [(UILabel *)labelAutoANC sizeToFit];
    [(UILabel *)self->_labelAutoANC setAccessibilityIdentifier:@"Adaptive"];
    v36 = [(HPCUIListeningModeControl *)self contentView];
    [v36 addSubview:self->_labelAutoANC];

    NSLog(&cfstr_ListeningModeA_2.isa);
  }
}

- (void)layoutSubviews
{
  NSLog(&cfstr_ListeningModeL.isa, a2);
  v5.receiver = self;
  v5.super_class = HPCUIListeningModeControl;
  [(PSTableCell *)&v5 layoutSubviews];
  v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(HPCUIListeningModeControl *)self setBackgroundColor:v3];

  [(HPCUIListeningModeControl *)self _updateLabelLayoutForBounds];
  v4 = [(HPCUIListeningModeControl *)self layer];
  [v4 setMasksToBounds:0];
}

- (void)setupConstraints
{
  v116[4] = *MEMORY[0x1E69E9840];
  v3 = [(HPCUIListeningModeControl *)self modeControlLabelXPositionConstraints];
  v4 = [v3 count];

  if (!v4)
  {
    NSLog(&cfstr_ListeningModeS.isa);
    v101 = MEMORY[0x1E696ACD8];
    v107 = [(UISegmentedControl *)self->_segmentedControl topAnchor];
    v110 = [(HPCUIListeningModeControl *)self contentView];
    v105 = [v110 topAnchor];
    v104 = [v107 constraintEqualToAnchor:v105];
    v116[0] = v104;
    v103 = [(UISegmentedControl *)self->_segmentedControl heightAnchor];
    v102 = [v103 constraintEqualToConstant:50.0];
    v116[1] = v102;
    v5 = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
    v6 = [(HPCUIListeningModeControl *)self contentView];
    v7 = [v6 leadingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    v116[2] = v8;
    v9 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
    v10 = [(HPCUIListeningModeControl *)self contentView];
    v11 = [v10 trailingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v116[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:4];
    [v101 activateConstraints:v13];

    v14 = [(HPCUIListeningModeControl *)self contentView];
    [v14 frame];
    v16 = v15;
    [(HPCUIListeningModeControl *)self _validSegmentCount];
    v18 = v16 / v17;

    v19 = v18 * 0.5;
    if (self->_modeOffSupported)
    {
      v20 = MEMORY[0x1E696ACD8];
      v21 = [(UILabel *)self->_labelOff topAnchor];
      v22 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
      v23 = [v21 constraintEqualToAnchor:v22 constant:5.0];
      v115[0] = v23;
      v24 = [(UILabel *)self->_labelOff bottomAnchor];
      v25 = [(HPCUIListeningModeControl *)self contentView];
      v26 = [v25 bottomAnchor];
      v27 = [v24 constraintLessThanOrEqualToAnchor:v26];
      v115[1] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
      [v20 activateConstraints:v28];

      v29 = [(HPCUIListeningModeControl *)self modeControlLabelXPositionConstraints];
      v30 = [(UILabel *)self->_labelOff centerXAnchor];
      v31 = [(HPCUIListeningModeControl *)self contentView];
      v32 = [v31 leadingAnchor];
      v33 = [v30 constraintEqualToAnchor:v32 constant:v18 * 0.5];
      [v29 addObject:v33];

      v34 = [(HPCUIListeningModeControl *)self labelWidthConstraints];
      v35 = [(UILabel *)self->_labelOff widthAnchor];
      v36 = [v35 constraintEqualToConstant:v18];
      [v34 addObject:v36];

      v19 = v18 + v19;
    }

    v37 = MEMORY[0x1E696ACD8];
    v38 = [(UILabel *)self->_labelTransparency topAnchor];
    v39 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:5.0];
    v114[0] = v40;
    v41 = [(UILabel *)self->_labelTransparency bottomAnchor];
    v42 = [(HPCUIListeningModeControl *)self contentView];
    v43 = [v42 bottomAnchor];
    v44 = [v41 constraintLessThanOrEqualToAnchor:v43];
    v114[1] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
    [v37 activateConstraints:v45];

    v46 = [(HPCUIListeningModeControl *)self modeControlLabelXPositionConstraints];
    v47 = [(UILabel *)self->_labelTransparency centerXAnchor];
    v48 = [(HPCUIListeningModeControl *)self contentView];
    v49 = [v48 leadingAnchor];
    v50 = [v47 constraintEqualToAnchor:v49 constant:v19];
    [v46 addObject:v50];

    v51 = [(HPCUIListeningModeControl *)self labelWidthConstraints];
    v52 = [(UILabel *)self->_labelTransparency widthAnchor];
    v53 = [v52 constraintEqualToConstant:v18];
    [v51 addObject:v53];

    v54 = v18 + v19;
    if (self->_autoANCSupported)
    {
      v55 = MEMORY[0x1E696ACD8];
      v56 = [(UILabel *)self->_labelAutoANC topAnchor];
      v57 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
      v58 = [v56 constraintEqualToAnchor:v57 constant:5.0];
      v113[0] = v58;
      v59 = [(UILabel *)self->_labelAutoANC bottomAnchor];
      v60 = [(HPCUIListeningModeControl *)self contentView];
      v61 = [v60 bottomAnchor];
      v62 = [v59 constraintLessThanOrEqualToAnchor:v61];
      v113[1] = v62;
      v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:2];
      [v55 activateConstraints:v63];

      v64 = [(HPCUIListeningModeControl *)self modeControlLabelXPositionConstraints];
      v65 = [(UILabel *)self->_labelAutoANC centerXAnchor];
      v66 = [(HPCUIListeningModeControl *)self contentView];
      v67 = [v66 leadingAnchor];
      v68 = [v65 constraintEqualToAnchor:v67 constant:v54];
      [v64 addObject:v68];

      v69 = [(HPCUIListeningModeControl *)self labelWidthConstraints];
      v70 = [(UILabel *)self->_labelAutoANC widthAnchor];
      v71 = [v70 constraintEqualToConstant:v18];
      [v69 addObject:v71];

      v54 = v18 + v54;
    }

    v108 = MEMORY[0x1E696ACD8];
    v72 = [(UILabel *)self->_labelNoiseCancellation topAnchor];
    v73 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v74 = [v72 constraintEqualToAnchor:v73 constant:5.0];
    v112[0] = v74;
    v75 = [(UILabel *)self->_labelNoiseCancellation bottomAnchor];
    v76 = [(HPCUIListeningModeControl *)self contentView];
    v77 = [v76 bottomAnchor];
    v78 = [v75 constraintLessThanOrEqualToAnchor:v77];
    v112[1] = v78;
    v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:2];
    [v108 activateConstraints:v79];

    v80 = [(HPCUIListeningModeControl *)self labelWidthConstraints];
    v81 = [(UILabel *)self->_labelNoiseCancellation widthAnchor];
    v82 = [v81 constraintEqualToConstant:v18];
    [v80 addObject:v82];

    v106 = MEMORY[0x1E696ACD8];
    v109 = [(UILabel *)self->_labelUnableToSetListeningMode topAnchor];
    v83 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
    v84 = [v109 constraintEqualToAnchor:v83 constant:5.0];
    v111[0] = v84;
    v85 = [(UILabel *)self->_labelUnableToSetListeningMode leadingAnchor];
    v86 = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];
    v111[1] = v87;
    v88 = [(UILabel *)self->_labelUnableToSetListeningMode trailingAnchor];
    v89 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];
    v111[2] = v90;
    v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:3];
    [v106 activateConstraints:v91];

    v92 = [(HPCUIListeningModeControl *)self modeControlLabelXPositionConstraints];
    v93 = [(UILabel *)self->_labelNoiseCancellation centerXAnchor];
    v94 = [(HPCUIListeningModeControl *)self contentView];
    v95 = [v94 leadingAnchor];
    v96 = [v93 constraintEqualToAnchor:v95 constant:v54];
    [v92 addObject:v96];

    v97 = MEMORY[0x1E696ACD8];
    v98 = [(HPCUIListeningModeControl *)self modeControlLabelXPositionConstraints];
    [v97 activateConstraints:v98];

    v99 = MEMORY[0x1E696ACD8];
    v100 = [(HPCUIListeningModeControl *)self labelWidthConstraints];
    [v99 activateConstraints:v100];
  }
}

- (int)getListeningModeFromIndex:(int64_t)a3
{
  v5 = [(HPCUIListeningModeControl *)self _modeForIndex:?];
  v6 = v5;
  v7 = [(HPCUIListeningModeControl *)self getListeningModeString:v5];
  NSLog(&cfstr_ListeningModeG.isa, a3, v7);

  return v6;
}

- (int64_t)getIndexFromListeningMode:(int)a3
{
  v3 = *&a3;
  v5 = [(HPCUIListeningModeControl *)self _indexForMode:?];
  v6 = [(HPCUIListeningModeControl *)self getListeningModeString:v3];
  NSLog(&cfstr_ListeningModeG_0.isa, v6, v5);

  return v5;
}

- (id)getListeningModeString:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7970D38[a3 - 1];
  }
}

- (void)settingsChangedHandler:(id)a3
{
  NSLog(&cfstr_ListeningModeS_0.isa, a2, a3);

  [(HPCUIListeningModeControl *)self refreshListeningMode];
}

- (void)refreshListeningMode
{
  v3 = [(HPMHeadphoneDevice *)self->_device listeningMode];
  v4 = [(HPCUIListeningModeControl *)self getListeningModeString:v3];
  NSLog(&cfstr_ListeningModeR_1.isa, v4);

  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:[(HPCUIListeningModeControl *)self getIndexFromListeningMode:v3]];
  LODWORD(v4) = self->_autoANCSupported;
  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
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

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:v8 object:0 userInfo:v10];
}

- (void)segmentControlValueChanged:(id)a3
{
  v4 = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  v5 = [(HPCUIListeningModeControl *)self getListeningModeFromIndex:v4];
  NSLog(&cfstr_ListeningModeS_1.isa, v4, v5);
  if ([(HPCUIListeningModeControl *)self farFieldSessionOnGoing]|| ([(HPMHeadphoneDevice *)self->_device setIsUpdatingDeviceConfig:1], ![(HPCUIListeningModeControl *)self setListeningMode:v5]))
  {
    [(HPCUIListeningModeControl *)self _handleListeningModeSetFailure:v5 index:v4];
  }

  autoANCSupported = self->_autoANCSupported;
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
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

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:v10 object:0 userInfo:v12];
}

- (void)resetUI
{
  NSLog(&cfstr_ListeningModeU.isa, a2);
  self->_modeOffSupported = [(HPCUIListeningModeControl *)self updateModeOffSupported];
  if ([(HPCUIListeningModeControl *)self needsResetUI:self->_segmentedControl])
  {
    [(HPCUIListeningModeControl *)self setAlpha:0.0];
    [(UISegmentedControl *)self->_segmentedControl removeFromSuperview];
    [(UILabel *)self->_labelTransparency removeFromSuperview];
    [(UILabel *)self->_labelOff removeFromSuperview];
    [(UILabel *)self->_labelNoiseCancellation removeFromSuperview];
    [(UILabel *)self->_labelUnableToSetListeningMode removeFromSuperview];
    [(UILabel *)self->_labelAutoANC removeFromSuperview];
    v3 = [MEMORY[0x1E695DF70] array];
    modeControlLabelXPositionConstraints = self->_modeControlLabelXPositionConstraints;
    self->_modeControlLabelXPositionConstraints = v3;

    [(HPCUIListeningModeControl *)self addModeOptions];
    [(HPCUIListeningModeControl *)self addModeLabels];
    [(HPCUIListeningModeControl *)self refreshListeningMode];
    [(HPCUIListeningModeControl *)self setupConstraints];
    [(HPCUIListeningModeControl *)self layoutIfNeeded];

    [(HPCUIListeningModeControl *)self setAlpha:1.0];
  }

  else
  {

    [(HPCUIListeningModeControl *)self refreshListeningMode];
  }
}

- (void)_updateLabelLayoutForBounds
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(HPCUIListeningModeControl *)self contentView];
  [v3 bounds];
  v5 = v4;
  [(HPCUIListeningModeControl *)self _validSegmentCount];
  v7 = v5 / v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(HPCUIListeningModeControl *)self modeControlLabelXPositionConstraints];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = v7 * 0.5;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * v13) setConstant:v11];
        v11 = v7 + v11;
        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [(HPCUIListeningModeControl *)self labelWidthConstraints];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__HPCUIListeningModeControl__updateLabelLayoutForBounds__block_invoke;
  v15[3] = &__block_descriptor_40_e28_v16__0__NSLayoutConstraint_8l;
  *&v15[4] = v7;
  [v14 bs_each:v15];
}

- (void)_handleListeningModeSetFailure:(int)a3 index:(int64_t)a4
{
  v5 = *&a3;
  [(HPCUIListeningModeControl *)self setUserInteractionEnabled:0];
  v7 = [(HPMHeadphoneDevice *)self->_device listeningMode];
  v8 = [(HPCUIListeningModeControl *)self _errorStringForFailedToSelectIndex:a4];
  [(UILabel *)self->_labelUnableToSetListeningMode setText:v8];
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:[(HPCUIListeningModeControl *)self getIndexFromListeningMode:v7]];
  v9 = [(HPCUIListeningModeControl *)self getListeningModeString:v5];
  v10 = [(HPCUIListeningModeControl *)self getListeningModeString:v7];
  NSLog(&cfstr_ListeningModeN.isa, v9, v10, [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex]);

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__HPCUIListeningModeControl__handleListeningModeSetFailure_index___block_invoke;
  v12[3] = &unk_1E7970208;
  v12[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__HPCUIListeningModeControl__handleListeningModeSetFailure_index___block_invoke_2;
  v11[3] = &unk_1E7970CF0;
  v11[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:v11 completion:1.0];
}

uint64_t __66__HPCUIListeningModeControl__handleListeningModeSetFailure_index___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1232) setAlpha:0.0];
  [*(*(a1 + 32) + 1224) setAlpha:0.0];
  [*(*(a1 + 32) + 1240) setAlpha:0.0];
  [*(*(a1 + 32) + 1216) setAlpha:0.0];
  [*(*(a1 + 32) + 1248) setAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

uint64_t __66__HPCUIListeningModeControl__handleListeningModeSetFailure_index___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__HPCUIListeningModeControl__handleListeningModeSetFailure_index___block_invoke_3;
  v3[3] = &unk_1E7970208;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__HPCUIListeningModeControl__handleListeningModeSetFailure_index___block_invoke_4;
  v2[3] = &unk_1E7970CF0;
  v2[4] = v4;
  return [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v3 options:v2 animations:1.0 completion:1.0];
}

uint64_t __66__HPCUIListeningModeControl__handleListeningModeSetFailure_index___block_invoke_3(uint64_t a1)
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

- (id)_errorStringForFailedToSelectIndex:(int64_t)a3
{
  if ([(HPCUIListeningModeControl *)self farFieldSessionOnGoing])
  {
    v5 = [(HPCUIListeningModeControl *)self farFieldOngoingErrorString];
    goto LABEL_9;
  }

  if (self->_autoANCSupported)
  {
    if (self->_modeOffSupported)
    {
      if (a3 == 2)
      {
LABEL_6:
        v5 = [(HPCUIListeningModeControl *)self localizedBothBudsInEarAdaptiveString];
        goto LABEL_9;
      }
    }

    else if (a3 == 1)
    {
      goto LABEL_6;
    }
  }

  v5 = [(HPCUIListeningModeControl *)self localizedBothBudsInEarNCString];
LABEL_9:

  return v5;
}

- (void)setListeningModeConfigs:(unsigned int)a3
{
  v3 = *&a3;
  [(HPMHeadphoneDevice *)self->_device setListeningModeConfigs:?];
  v7 = objc_opt_new();
  [v7 setListeningModeConfigs:v3];
  v5 = objc_opt_new();
  v6 = [(HPMHeadphoneDevice *)self->_device cbDevice];
  [v5 modifyDevice:v6 settings:v7 completion:&__block_literal_global_8];
}

void __53__HPCUIListeningModeControl_setListeningModeConfigs___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 localizedDescription];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: setListeningModeConfigs: unable to modify modeCofig %@", &v5, 0xCu);
    }
  }
}

- (BOOL)setListeningMode:(unsigned int)a3
{
  v3 = *&a3;
  v5 = dispatch_group_create();
  v6 = [(HPCUIListeningModeControl *)self device];
  v7 = [v6 listeningMode];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  dispatch_group_enter(v5);
  v8 = objc_opt_new();
  [v8 setListeningMode:v3];
  v9 = objc_opt_new();
  v10 = dispatch_get_global_queue(0, 0);
  [v9 setDispatchQueue:v10];

  v11 = [(HPCUIListeningModeControl *)self device];
  [v11 setIsUpdatingDeviceConfig:1];

  v12 = [(HPCUIListeningModeControl *)self device];
  [v12 setListeningMode:v3];

  v13 = [(HPCUIListeningModeControl *)self device];
  v14 = [v13 cbDevice];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__HPCUIListeningModeControl_setListeningMode___block_invoke;
  v20[3] = &unk_1E7970D18;
  v20[4] = self;
  v22 = &v29;
  v23 = &v25;
  v24 = v7;
  v15 = v5;
  v21 = v15;
  [v9 modifyDevice:v14 settings:v8 completion:v20];

  v16 = dispatch_time(0, 100000000);
  dispatch_group_wait(v15, v16);
  if (*(v26 + 24) == 1)
  {
    v17 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [HPCUIListeningModeControl setListeningMode:v17];
    }
  }

  v18 = *(v30 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v18;
}

void __46__HPCUIListeningModeControl_setListeningMode___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 32) device];
    [v5 setListeningMode:v4];

    v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 localizedDescription];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setListeningMode]: unable to modify mode %@", &v12, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v8 = *(a1 + 32);
    v9 = [v8 device];
    v10 = [v9 cbDevice];
    [v8 updateListeningModeForSyncSelection:v10];
  }

  v11 = [*(a1 + 32) device];
  [v11 setIsUpdatingDeviceConfig:0];

  *(*(*(a1 + 56) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 40));
}

- (int)_modeForIndex:(int64_t)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v7 = HPCUIListeningModeControl._modeForIndex(_:)(a3);
  MEMORY[0x1E69E5920](self);
  return v7;
}

- (int64_t)_indexForMode:(int)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v7 = HPCUIListeningModeControl._indexForMode(_:)(a3);
  MEMORY[0x1E69E5920](self);
  return v7;
}

- (void)startObservingChanges
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  HPCUIListeningModeControl.startObservingChanges()();
  MEMORY[0x1E69E5920](self);
}

- (void)updateListeningModeForSyncSelection:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  HPCUIListeningModeControl.updateListeningModeForSyncSelection(_:)();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (BOOL)needsResetUI:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  HPCUIListeningModeControl.needsResetUI(_:)(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
  return sub_1AC3090FC() & 1;
}

- (BOOL)farFieldSessionOnGoing
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  HPCUIListeningModeControl.farFieldSessionOnGoing()();
  MEMORY[0x1E69E5920](self);
  return sub_1AC3090FC() & 1;
}

- (id)farFieldOngoingErrorString
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  HPCUIListeningModeControl.farFieldOngoingErrorString()();
  MEMORY[0x1E69E5920](self);
  v5 = sub_1AC30A91C();

  return v5;
}

- (BOOL)updateModeOffSupported
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  HPCUIListeningModeControl.updateModeOffSupported()();
  MEMORY[0x1E69E5920](self);
  return sub_1AC3090FC() & 1;
}

@end