@interface HUTimerTableViewCell
+ (id)_stringForDuration:(double)duration;
- (HUTimerTableViewCell)initWithMobileTimerObject:(id)object manager:(id)manager roomName:(id)name;
- (HUTimerTableViewCell)initWithTimer:(id)timer manager:(id)manager;
- (id)_alarmBackgroundColor;
- (void)_createConstraints;
- (void)_createSubviews;
- (void)cancelTimer;
- (void)layoutSubviews;
- (void)toggleTimer;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTimerInfo;
@end

@implementation HUTimerTableViewCell

- (HUTimerTableViewCell)initWithTimer:(id)timer manager:(id)manager
{
  timerCopy = timer;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = HUTimerTableViewCell;
  v9 = [(HUTimerTableViewCell *)&v17 initWithStyle:0 reuseIdentifier:@"kHUTimerCellReuseIdentifier"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timer, timer);
    objc_storeStrong(&v10->_timerManager, manager);
    [timerCopy remainingTime];
    v10->_previousRemainingTime = v11;
    [(HUTimerTableViewCell *)v10 setSelectionStyle:0];
    [(HUTimerTableViewCell *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      controlCenterTertiaryMaterial = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      [(HUTimerTableViewCell *)v10 setBackgroundView:controlCenterTertiaryMaterial];

      backgroundView = [(HUTimerTableViewCell *)v10 backgroundView];
      layer = [backgroundView layer];
      [layer setCornerRadius:8.0];
    }

    _alarmBackgroundColor = [(HUTimerTableViewCell *)v10 _alarmBackgroundColor];
    [(HUTimerTableViewCell *)v10 setBackgroundColor:_alarmBackgroundColor];

    [(HUTimerTableViewCell *)v10 _createSubviews];
    [(HUTimerTableViewCell *)v10 _createConstraints];
  }

  return v10;
}

- (HUTimerTableViewCell)initWithMobileTimerObject:(id)object manager:(id)manager roomName:(id)name
{
  nameCopy = name;
  managerCopy = manager;
  objectCopy = object;
  timer = [objectCopy timer];

  if (!timer)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTimerTableViewCell.m" lineNumber:86 description:@"HUMobileTimerObject must wrap a timer"];
  }

  [(HUTimerTableViewCell *)self setRoomName:nameCopy];
  timer2 = [objectCopy timer];

  v14 = [(HUTimerTableViewCell *)self initWithTimer:timer2 manager:managerCopy];
  return v14;
}

+ (id)_stringForDuration:(double)duration
{
  if (qword_27C837E18 != -1)
  {
    dispatch_once(&qword_27C837E18, &__block_literal_global_4);
  }

  if (duration >= 3600.0)
  {
    v4 = 224;
  }

  else
  {
    v4 = 192;
  }

  [_MergedGlobals_3 setAllowedUnits:v4];
  v5 = _MergedGlobals_3;

  return [v5 stringFromTimeInterval:duration];
}

uint64_t __43__HUTimerTableViewCell__stringForDuration___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA958]);
  v1 = _MergedGlobals_3;
  _MergedGlobals_3 = v0;

  [_MergedGlobals_3 setUnitsStyle:0];
  v2 = _MergedGlobals_3;

  return [v2 setZeroFormattingBehavior:0x10000];
}

- (void)_createSubviews
{
  v66[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(HUTimerTableViewCell *)self setButtonGuide:v3];

  contentView = [(HUTimerTableViewCell *)self contentView];
  buttonGuide = [(HUTimerTableViewCell *)self buttonGuide];
  [contentView addLayoutGuide:buttonGuide];

  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUTimerTableViewCell *)self setTimerNameLabel:v6];

  timer = [(HUTimerTableViewCell *)self timer];
  title = [timer title];
  v9 = title;
  if (title)
  {
    v10 = title;
  }

  else
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUTimerLabelNoName", @"HUTimerLabelNoName", 1);
  }

  v11 = v10;

  roomName = [(HUTimerTableViewCell *)self roomName];
  v13 = [roomName length];

  if (v13)
  {
    roomName2 = [(HUTimerTableViewCell *)self roomName];
    v21 = HULocalizedStringWithFormat(@"HUAlarmTextLabelAdditionalInfoFormat", @"%@", v15, v16, v17, v18, v19, v20, roomName2);
    v22 = [v11 stringByAppendingString:v21];

    v11 = v22;
  }

  timerNameLabel = [(HUTimerTableViewCell *)self timerNameLabel];
  [timerNameLabel setText:v11];

  v24 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] variant:1024];
  timerNameLabel2 = [(HUTimerTableViewCell *)self timerNameLabel];
  [timerNameLabel2 setFont:v24];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  timerNameLabel3 = [(HUTimerTableViewCell *)self timerNameLabel];
  [timerNameLabel3 setTextColor:secondaryLabelColor];

  v28 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUTimerTableViewCell *)self setTimerTimeLabel:v28];

  timerTimeLabel = [(HUTimerTableViewCell *)self timerTimeLabel];
  timer2 = [(HUTimerTableViewCell *)self timer];
  [timer2 remainingTime];
  v31 = [HUTimerTableViewCell _stringForDuration:?];
  [timerTimeLabel setText:v31];

  v32 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A08] variant:1024];
  v33 = MEMORY[0x277D180C8];
  fontDescriptor = [v32 fontDescriptor];
  v35 = [v33 fontDescriptorWithMonospacedDigitsForFontDescriptor:fontDescriptor];

  v36 = [MEMORY[0x277D74300] fontWithDescriptor:v35 size:0.0];
  timerTimeLabel2 = [(HUTimerTableViewCell *)self timerTimeLabel];
  [timerTimeLabel2 setFont:v36];

  labelColor = [MEMORY[0x277D75348] labelColor];
  timerTimeLabel3 = [(HUTimerTableViewCell *)self timerTimeLabel];
  [timerTimeLabel3 setTextColor:labelColor];

  v40 = objc_alloc(MEMORY[0x277D75A68]);
  timerNameLabel4 = [(HUTimerTableViewCell *)self timerNameLabel];
  v66[0] = timerNameLabel4;
  timerTimeLabel4 = [(HUTimerTableViewCell *)self timerTimeLabel];
  v66[1] = timerTimeLabel4;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  v44 = [v40 initWithArrangedSubviews:v43];
  [(HUTimerTableViewCell *)self setStackView:v44];

  stackView = [(HUTimerTableViewCell *)self stackView];
  [stackView setAxis:1];

  stackView2 = [(HUTimerTableViewCell *)self stackView];
  [stackView2 setAlignment:1];

  stackView3 = [(HUTimerTableViewCell *)self stackView];
  [stackView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(HUTimerTableViewCell *)self contentView];
  stackView4 = [(HUTimerTableViewCell *)self stackView];
  [contentView2 addSubview:stackView4];

  v50 = [[HUTimerCancelButtonView alloc] initWithDelegate:self];
  [(HUTimerTableViewCell *)self setCancelButtonView:v50];

  cancelButtonView = [(HUTimerTableViewCell *)self cancelButtonView];
  [cancelButtonView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView3 = [(HUTimerTableViewCell *)self contentView];
  cancelButtonView2 = [(HUTimerTableViewCell *)self cancelButtonView];
  [contentView3 addSubview:cancelButtonView2];

  v54 = [HUTimerCountdownView alloc];
  timer3 = [(HUTimerTableViewCell *)self timer];
  [timer3 remainingTime];
  v57 = v56;
  timer4 = [(HUTimerTableViewCell *)self timer];
  state = [timer4 state];
  timer5 = [(HUTimerTableViewCell *)self timer];
  [timer5 duration];
  v62 = [(HUTimerCountdownView *)v54 initWithRemainingTime:state state:self duration:v57 delegate:v61];
  [(HUTimerTableViewCell *)self setTimerCountdownView:v62];

  timerCountdownView = [(HUTimerTableViewCell *)self timerCountdownView];
  [timerCountdownView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView4 = [(HUTimerTableViewCell *)self contentView];
  timerCountdownView2 = [(HUTimerTableViewCell *)self timerCountdownView];
  [contentView4 addSubview:timerCountdownView2];
}

- (void)_createConstraints
{
  v84 = objc_opt_new();
  buttonGuide = [(HUTimerTableViewCell *)self buttonGuide];
  topAnchor = [buttonGuide topAnchor];
  contentView = [(HUTimerTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  [v84 addObject:v7];

  buttonGuide2 = [(HUTimerTableViewCell *)self buttonGuide];
  bottomAnchor = [buttonGuide2 bottomAnchor];
  contentView2 = [(HUTimerTableViewCell *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
  [v84 addObject:v12];

  buttonGuide3 = [(HUTimerTableViewCell *)self buttonGuide];
  trailingAnchor = [buttonGuide3 trailingAnchor];
  contentView3 = [(HUTimerTableViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  [v84 addObject:v17];

  stackView = [(HUTimerTableViewCell *)self stackView];
  topAnchor3 = [stackView topAnchor];
  contentView4 = [(HUTimerTableViewCell *)self contentView];
  topAnchor4 = [contentView4 topAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:20.0];
  [v84 addObject:v22];

  stackView2 = [(HUTimerTableViewCell *)self stackView];
  bottomAnchor3 = [stackView2 bottomAnchor];
  contentView5 = [(HUTimerTableViewCell *)self contentView];
  bottomAnchor4 = [contentView5 bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-20.0];
  [v84 addObject:v27];

  stackView3 = [(HUTimerTableViewCell *)self stackView];
  leadingAnchor = [stackView3 leadingAnchor];
  contentView6 = [(HUTimerTableViewCell *)self contentView];
  leadingAnchor2 = [contentView6 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  [v84 addObject:v32];

  stackView4 = [(HUTimerTableViewCell *)self stackView];
  trailingAnchor3 = [stackView4 trailingAnchor];
  timerCountdownView = [(HUTimerTableViewCell *)self timerCountdownView];
  leadingAnchor3 = [timerCountdownView leadingAnchor];
  v37 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-20.0];
  [v84 addObject:v37];

  cancelButtonView = [(HUTimerTableViewCell *)self cancelButtonView];
  topAnchor5 = [cancelButtonView topAnchor];
  buttonGuide4 = [(HUTimerTableViewCell *)self buttonGuide];
  topAnchor6 = [buttonGuide4 topAnchor];
  v42 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
  [v84 addObject:v42];

  cancelButtonView2 = [(HUTimerTableViewCell *)self cancelButtonView];
  centerYAnchor = [cancelButtonView2 centerYAnchor];
  buttonGuide5 = [(HUTimerTableViewCell *)self buttonGuide];
  centerYAnchor2 = [buttonGuide5 centerYAnchor];
  v47 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v84 addObject:v47];

  cancelButtonView3 = [(HUTimerTableViewCell *)self cancelButtonView];
  bottomAnchor5 = [cancelButtonView3 bottomAnchor];
  buttonGuide6 = [(HUTimerTableViewCell *)self buttonGuide];
  bottomAnchor6 = [buttonGuide6 bottomAnchor];
  v52 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
  [v84 addObject:v52];

  cancelButtonView4 = [(HUTimerTableViewCell *)self cancelButtonView];
  heightAnchor = [cancelButtonView4 heightAnchor];
  v55 = [heightAnchor constraintEqualToConstant:48.0];
  [v84 addObject:v55];

  cancelButtonView5 = [(HUTimerTableViewCell *)self cancelButtonView];
  widthAnchor = [cancelButtonView5 widthAnchor];
  cancelButtonView6 = [(HUTimerTableViewCell *)self cancelButtonView];
  heightAnchor2 = [cancelButtonView6 heightAnchor];
  v60 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  [v84 addObject:v60];

  cancelButtonView7 = [(HUTimerTableViewCell *)self cancelButtonView];
  trailingAnchor4 = [cancelButtonView7 trailingAnchor];
  contentView7 = [(HUTimerTableViewCell *)self contentView];
  trailingAnchor5 = [contentView7 trailingAnchor];
  v65 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-20.0];
  [v84 addObject:v65];

  timerCountdownView2 = [(HUTimerTableViewCell *)self timerCountdownView];
  centerYAnchor3 = [timerCountdownView2 centerYAnchor];
  buttonGuide7 = [(HUTimerTableViewCell *)self buttonGuide];
  centerYAnchor4 = [buttonGuide7 centerYAnchor];
  v70 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v84 addObject:v70];

  timerCountdownView3 = [(HUTimerTableViewCell *)self timerCountdownView];
  heightAnchor3 = [timerCountdownView3 heightAnchor];
  v73 = [heightAnchor3 constraintEqualToConstant:48.0];
  [v84 addObject:v73];

  timerCountdownView4 = [(HUTimerTableViewCell *)self timerCountdownView];
  widthAnchor2 = [timerCountdownView4 widthAnchor];
  cancelButtonView8 = [(HUTimerTableViewCell *)self cancelButtonView];
  heightAnchor4 = [cancelButtonView8 heightAnchor];
  v78 = [widthAnchor2 constraintEqualToAnchor:heightAnchor4];
  [v84 addObject:v78];

  timerCountdownView5 = [(HUTimerTableViewCell *)self timerCountdownView];
  trailingAnchor6 = [timerCountdownView5 trailingAnchor];
  cancelButtonView9 = [(HUTimerTableViewCell *)self cancelButtonView];
  leadingAnchor4 = [cancelButtonView9 leadingAnchor];
  v83 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor4 constant:-10.0];
  [v84 addObject:v83];

  [MEMORY[0x277CCAAD0] activateConstraints:v84];
}

- (void)traitCollectionDidChange:(id)change
{
  _alarmBackgroundColor = [(HUTimerTableViewCell *)self _alarmBackgroundColor];
  [(HUTimerTableViewCell *)self setBackgroundColor:_alarmBackgroundColor];
}

- (id)_alarmBackgroundColor
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [(HUTimerTableViewCell *)self backgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] hf_homePodControlCellBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HUTimerTableViewCell;
  [(HUTimerTableViewCell *)&v6 layoutSubviews];
  _alarmBackgroundColor = [(HUTimerTableViewCell *)self _alarmBackgroundColor];
  [(HUTimerTableViewCell *)self setBackgroundColor:_alarmBackgroundColor];

  layer = [(HUTimerTableViewCell *)self layer];
  [layer setCornerRadius:8.0];

  layer2 = [(HUTimerTableViewCell *)self layer];
  [layer2 setMasksToBounds:1];
}

- (void)updateTimerInfo
{
  [(HUTimerTableViewCell *)self previousRemainingTime];
  v4 = v3;
  timer = [(HUTimerTableViewCell *)self timer];
  [timer remainingTime];
  v7 = v6;

  if (v4 != v7)
  {
    timer2 = [(HUTimerTableViewCell *)self timer];
    [timer2 remainingTime];
    [(HUTimerTableViewCell *)self setPreviousRemainingTime:?];

    timerTimeLabel = [(HUTimerTableViewCell *)self timerTimeLabel];
    timer3 = [(HUTimerTableViewCell *)self timer];
    [timer3 remainingTime];
    v11 = [HUTimerTableViewCell _stringForDuration:?];
    [timerTimeLabel setText:v11];

    timerCountdownView = [(HUTimerTableViewCell *)self timerCountdownView];
    timer4 = [(HUTimerTableViewCell *)self timer];
    [timer4 remainingTime];
    [timerCountdownView updateToNewTime:?];
  }

  timerCountdownView2 = [(HUTimerTableViewCell *)self timerCountdownView];
  timer5 = [(HUTimerTableViewCell *)self timer];
  [timerCountdownView2 updateToNewState:{objc_msgSend(timer5, "state")}];
}

- (void)toggleTimer
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    timer = [(HUTimerTableViewCell *)self timer];
    *buf = 138412802;
    selfCopy = self;
    v20 = 2080;
    v21 = "[HUTimerTableViewCell toggleTimer]";
    v22 = 2048;
    state = [timer state];
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s toggling timer (current state = %lu)", buf, 0x20u);
  }

  timer2 = [(HUTimerTableViewCell *)self timer];
  state2 = [timer2 state];

  if (state2 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  timer3 = [(HUTimerTableViewCell *)self timer];
  v9 = [timer3 timerByUpdatingWithState:v7];

  timerManager = [(HUTimerTableViewCell *)self timerManager];
  v11 = [timerManager updateTimer:v9];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v13 = [v11 reschedule:mainThreadScheduler];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __35__HUTimerTableViewCell_toggleTimer__block_invoke;
  v16[3] = &unk_277DB7720;
  v16[4] = self;
  v17 = v9;
  v14 = v9;
  v15 = [v13 addCompletionBlock:v16];
}

uint64_t __35__HUTimerTableViewCell_toggleTimer__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setTimer:*(a1 + 40)];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 timer];
    v6 = 138412802;
    v7 = v3;
    v8 = 2080;
    v9 = "[HUTimerTableViewCell toggleTimer]_block_invoke";
    v10 = 2048;
    v11 = [v4 state];
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@:%s timer toggled (new state = %lu)", &v6, 0x20u);
  }

  return [*(a1 + 32) updateTimerInfo];
}

- (void)cancelTimer
{
  timerManager = [(HUTimerTableViewCell *)self timerManager];
  timer = [(HUTimerTableViewCell *)self timer];
  v4 = [timerManager removeTimer:timer];
}

@end