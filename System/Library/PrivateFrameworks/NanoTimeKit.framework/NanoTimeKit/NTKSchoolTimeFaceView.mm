@interface NTKSchoolTimeFaceView
+ (id)schoolTimeColor;
+ (id)secondHandColor;
- (NTKSchoolTimeFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_handleChangeNotification;
- (void)_layoutCurvedNameLabel;
- (void)_setDate:(id)a3;
- (void)_setupNameLabel;
- (void)_setupNotifications;
- (void)_startClockUpdates;
- (void)_startObserving;
- (void)_stopClockUpdates;
- (void)_stopObserving;
- (void)_tearDownUI;
- (void)_unloadSnapshotContentViews;
- (void)_updateTimeAndDate:(id)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setName:(id)a3;
- (void)setupUI;
@end

@implementation NTKSchoolTimeFaceView

- (NTKSchoolTimeFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKSchoolTimeFaceView;
  v5 = [(NTKFaceView *)&v8 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
  v6 = v5;
  if (v5)
  {
    [(NTKSchoolTimeFaceView *)v5 setupUI];
  }

  return v6;
}

- (void)_unloadSnapshotContentViews
{
  v2.receiver = self;
  v2.super_class = NTKSchoolTimeFaceView;
  [(NTKFaceView *)&v2 _unloadSnapshotContentViews];
}

- (void)dealloc
{
  [(NTKSchoolTimeFaceView *)self _stopClockUpdates];
  [(NTKSchoolTimeFaceView *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = NTKSchoolTimeFaceView;
  [(NTKFaceView *)&v3 dealloc];
}

- (void)_setupNotifications
{
  [(NTKSchoolTimeFaceView *)self _startObserving];

  [(NTKSchoolTimeFaceView *)self _startClockUpdates];
}

- (void)setupUI
{
  v67 = 0.0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  memset(v62, 0, sizeof(v62));
  v3 = [(NTKFaceView *)self device];
  ___LayoutConstants_block_invoke_10(v3, v62);

  v4 = [MEMORY[0x277D75348] blackColor];
  [(NTKSchoolTimeFaceView *)self setBackgroundColor:v4];

  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v7 = [(NTKFaceView *)self device];
  [NTKAnalogUtilities dialSizeForDevice:v7];
  v9 = v8;
  v11 = v10;

  v12 = [NTKSchoolTimeDialView alloc];
  v13 = [(NTKSchoolTimeDialView *)v12 initWithFrame:v5 ringWidth:v6, v9, v11, v67];
  dialView = self->_dialView;
  self->_dialView = v13;

  v15 = [(NTKFaceView *)self contentView];
  [v15 addSubview:self->_dialView];

  v16 = [NTKAnalogHandsView alloc];
  v17 = [(NTKFaceView *)self device];
  v18 = [(NTKAnalogHandsView *)v16 initForDevice:v17];
  handsView = self->_handsView;
  self->_handsView = v18;

  v20 = self->_handsView;
  [(NTKSchoolTimeFaceView *)self bounds];
  [(NTKAnalogHandsView *)v20 setFrame:?];
  v21 = self->_handsView;
  v22 = +[NTKSchoolTimeFaceView schoolTimeColor];
  [(CLKUIAnalogHandsView *)v21 setInlayColor:v22];

  v23 = [(CLKUIAnalogHandsView *)self->_handsView secondHandView];
  v24 = +[NTKSchoolTimeFaceView secondHandColor];
  [v23 setColor:v24];

  v25 = [(NTKFaceView *)self contentView];
  [v25 addSubview:self->_handsView];

  [(NTKFaceView *)self setTimeView:self->_handsView];
  v26 = objc_alloc_init(MEMORY[0x277CCA968]);
  formatter = self->_formatter;
  self->_formatter = v26;

  v28 = self->_formatter;
  v29 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [(NSDateFormatter *)v28 setTimeZone:v29];

  v30 = self->_formatter;
  v31 = [MEMORY[0x277CBEAF8] currentLocale];
  [(NSDateFormatter *)v30 setLocale:v31];

  [(NSDateFormatter *)self->_formatter setDateFormat:@"EEE d"];
  v32 = objc_alloc(MEMORY[0x277D756B8]);
  v33 = *MEMORY[0x277CBF3A0];
  v34 = *(MEMORY[0x277CBF3A0] + 8);
  v35 = *(MEMORY[0x277CBF3A0] + 16);
  v36 = *(MEMORY[0x277CBF3A0] + 24);
  v37 = [v32 initWithFrame:{*MEMORY[0x277CBF3A0], v34, v35, v36}];
  dateLabel = self->_dateLabel;
  self->_dateLabel = v37;

  v39 = self->_dateLabel;
  v40 = *MEMORY[0x277D74410];
  v41 = [MEMORY[0x277CBBB08] systemFontOfSize:*(v62 + 1) weight:*MEMORY[0x277D74410]];
  [(UILabel *)v39 setFont:v41];

  [(UILabel *)self->_dateLabel setTextAlignment:1];
  v42 = self->_dateLabel;
  v43 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v42 setTextColor:v43];

  v44 = [(NTKFaceView *)self contentView];
  [v44 addSubview:self->_dateLabel];

  v45 = [objc_alloc(MEMORY[0x277CBB700]) initWithIdentifier:@"SchoolTime"];
  clockTimer = self->_clockTimer;
  self->_clockTimer = v45;

  [(CLKClockTimer *)self->_clockTimer pause];
  v61 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v63 weight:v40];
  v47 = [(NTKFaceView *)self device];
  v48 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:v61 applyAdvanceFudge:v47 withBaselineY:v33 withFont:v34 forDevice:v35, v36, 0.0, 0.0];

  v49 = [MEMORY[0x277CBBB08] systemFontOfSize:*(&v63 + 1) weight:v40];
  [v48 setDesignatorFont:v49];

  v50 = [NTKDigitalTimeLabel alloc];
  v51 = [(NTKFaceView *)self device];
  v52 = [(CLKUITimeLabel *)v50 initWithTimeLabelOptions:1 forDevice:v51 clockTimer:self->_clockTimer];
  digitalTimeLabel = self->_digitalTimeLabel;
  self->_digitalTimeLabel = v52;

  [(NTKDigitalTimeLabel *)self->_digitalTimeLabel setStyle:v48];
  v54 = self->_digitalTimeLabel;
  v55 = [MEMORY[0x277D75348] whiteColor];
  [(NTKDigitalTimeLabel *)v54 setColor:v55];

  [(CLKUITimeLabel *)self->_digitalTimeLabel setShowsDesignator:1];
  v56 = self->_digitalTimeLabel;
  v57 = +[NTKTimeOffsetManager sharedManager];
  [v57 timeOffset];
  [(NTKDigitalTimeLabel *)v56 setTimeOffset:?];

  v58 = [(CLKUITimeLabel *)self->_digitalTimeLabel timeFormatter];
  [v58 setSuppressesDesignatorWhitespace:1];

  v59 = [(NTKFaceView *)self contentView];
  [v59 insertSubview:self->_digitalTimeLabel belowSubview:self->_handsView];

  [(NTKSchoolTimeFaceView *)self _setupNameLabel];
  v60 = +[NTKDate faceDate];
  [(NTKSchoolTimeFaceView *)self _updateTimeAndDate:v60 animated:0];

  [(NTKSchoolTimeFaceView *)self bringSubviewToFront:self->_handsView];
}

- (void)_setupNameLabel
{
  v15 = [(NTKFaceView *)self device];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  ___LayoutConstants_block_invoke_10(v15, v16);
  v3 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v17 weight:*MEMORY[0x277D74410]];
  if ([v15 deviceCategory] == 1)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    p_nameLabel = &self->_nameLabel;
    nameLabel = self->_nameLabel;
    self->_nameLabel = v5;

    [(UILabel *)self->_nameLabel setTextAlignment:1];
    v8 = self->_nameLabel;
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v8 setTextColor:v9];

    [(UILabel *)self->_nameLabel setFont:v3];
  }

  else
  {
    v10 = objc_opt_new();
    p_nameLabel = &self->_curvedNameLabel;
    curvedNameLabel = self->_curvedNameLabel;
    self->_curvedNameLabel = v10;

    [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setAlpha:1.0];
    [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setCenterAngle:0.0];
    [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setCircleRadius:*&v18 * 0.5];
    v12 = self->_curvedNameLabel;
    v13 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUICurvedColoringLabel *)v12 setColor:v13];

    [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setFont:v3];
    [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setInterior:1];
    [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setMaxAngularWidth:NTKWhistlerBezelCircularViewDefaultMaxAngularWidth()];
    [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setTracking:*(&v18 + 1)];
    [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setUppercase:1];
    [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setUsesLegibility:0];
  }

  v14 = [(NTKFaceView *)self contentView];
  [v14 addSubview:*p_nameLabel];
}

- (void)_layoutCurvedNameLabel
{
  v3 = [(NTKFaceView *)self device];
  ___LayoutConstants_block_invoke_10(v3, v11);
  v4 = v12;

  [(CLKUICurvedColoringLabel *)self->_curvedNameLabel sizeToFit];
  v9 = 0.0;
  v10 = 0.0;
  [(CLKUICurvedColoringLabel *)self->_curvedNameLabel getTextCenter:&v9 startAngle:0 endAngle:0];
  v5 = MEMORY[0x2318D8E70]([(NTKSchoolTimeFaceView *)self bounds]);
  v6 = v5 - v9 + 0.0;
  v8 = v4 + v7 - v10;
  [(CLKUICurvedColoringLabel *)self->_curvedNameLabel frame];
  [(CLKUICurvedColoringLabel *)self->_curvedNameLabel setFrame:v6, v8];
}

- (void)_tearDownUI
{
  [(NTKSchoolTimeDialView *)self->_dialView removeFromSuperview];
  [(NTKAnalogHandsView *)self->_handsView removeFromSuperview];
  [(UILabel *)self->_dateLabel removeFromSuperview];
  [(NTKDigitalTimeLabel *)self->_digitalTimeLabel removeFromSuperview];
  [(CLKUICurvedColoringLabel *)self->_curvedNameLabel removeFromSuperview];
  nameLabel = self->_nameLabel;

  [(UILabel *)nameLabel removeFromSuperview];
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = NTKSchoolTimeFaceView;
  [(NTKFaceView *)&v35 layoutSubviews];
  v34 = 0.0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(NTKFaceView *)self device];
  ___LayoutConstants_block_invoke_10(v3, &v28);

  v4 = MEMORY[0x2318D8E70]([(NTKSchoolTimeFaceView *)self bounds]);
  v6 = v5;
  v7 = v34;
  v8 = *(&v31 + 1);
  [(NTKSchoolTimeDialView *)self->_dialView setCenter:?];
  [(NTKSchoolTimeDialView *)self->_dialView frame];
  MinY = CGRectGetMinY(v36);
  [(NTKSchoolTimeDialView *)self->_dialView bounds];
  v11 = v10 + v7 * -0.5 * 2.0 - v8 * 2.0;
  v12 = MEMORY[0x2318D8E70]([(NTKSchoolTimeFaceView *)self bounds]) + v11 * -0.5;
  dateLabel = self->_dateLabel;
  if (dateLabel)
  {
    v14 = [(UILabel *)dateLabel font];
    v15 = NTKSingleLineHeight(v14, 0);

    [(UILabel *)self->_dateLabel setFrame:v12, *&v29 + MinY + *&v28 - v15, v11, v15];
  }

  digitalTimeLabel = self->_digitalTimeLabel;
  if (digitalTimeLabel)
  {
    v17 = [(CLKUITimeLabel *)digitalTimeLabel font];
    v18 = NTKSingleLineHeight(v17, 0);

    [(NTKDigitalTimeLabel *)self->_digitalTimeLabel setFrame:v12, *&v31 + MinY + *(&v29 + 1) - v18, v11, v18];
  }

  v19 = [(NTKFaceView *)self device];
  v20 = [v19 deviceCategory];

  if (v20 == 1)
  {
    [(NTKSchoolTimeDialView *)self->_dialView frame];
    MaxY = CGRectGetMaxY(v37);
    v22 = MaxY + *(&v32 + 1);
    [(NTKSchoolTimeFaceView *)self bounds];
    v24 = v23;
    [(NTKSchoolTimeFaceView *)self bounds];
    [(UILabel *)self->_nameLabel setFrame:0.0, v22, v24, v25 - MaxY];
  }

  else
  {
    [(NTKSchoolTimeFaceView *)self _layoutCurvedNameLabel];
  }

  [(NTKAnalogHandsView *)self->_handsView setCenter:v4, v6];
  handsView = self->_handsView;
  [(NTKSchoolTimeFaceView *)self bounds];
  [(UIView *)handsView ntk_setBoundsAndPositionFromFrame:?];
  v27 = [(NTKFaceView *)self contentView];
  [v27 bringSubviewToFront:self->_handsView];
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKSchoolTimeFaceView;
  [(NTKFaceView *)&v5 _applyDataMode];
  v3 = [(NTKFaceView *)self dataMode];
  switch(v3)
  {
    case 1:
      [(NTKFaceView *)self setOverrideDate:0 duration:0.0];
      [(NTKSchoolTimeFaceView *)self _startClockUpdates];
      return;
    case 3:
      v4 = NTKIdealizedDate();
      [(NTKFaceView *)self setOverrideDate:v4 duration:0.0];

      goto LABEL_6;
    case 2:
LABEL_6:
      [(NTKSchoolTimeFaceView *)self _stopClockUpdates];
      break;
  }
}

- (void)_applyFrozen
{
  v4.receiver = self;
  v4.super_class = NTKSchoolTimeFaceView;
  [(NTKFaceView *)&v4 _applyFrozen];
  v3 = [(NTKFaceView *)self isFrozen];
  [(CLKUIAnalogHandsView *)self->_handsView setFrozen:v3];
  [(NTKDigitalTimeLabel *)self->_digitalTimeLabel setFrozen:v3];
}

- (void)setName:(id)a3
{
  v4 = MEMORY[0x277CBBAE8];
  v5 = a3;
  v6 = [v4 currentDevice];
  v7 = [v6 deviceCategory];

  if (v7 == 1)
  {
    nameLabel = self->_nameLabel;
    v13 = [v5 uppercaseString];

    [(UILabel *)nameLabel setText:v13];
  }

  else
  {
    curvedNameLabel = self->_curvedNameLabel;
    v10 = MEMORY[0x277CBBB88];
    v11 = [v5 uppercaseString];

    v12 = [v10 textProviderWithText:v11];
    [(CLKUICurvedColoringLabel *)curvedNameLabel setTextProvider:v12];

    [(NTKSchoolTimeFaceView *)self _layoutCurvedNameLabel];
  }
}

- (void)_setDate:(id)a3
{
  dateLabel = self->_dateLabel;
  v5 = [(NSDateFormatter *)self->_formatter stringFromDate:a3];
  v4 = [v5 localizedUppercaseString];
  [(UILabel *)dateLabel setText:v4];
}

- (void)_startClockUpdates
{
  if (!self->_clockTimerToken)
  {
    objc_initWeak(&location, self);
    clockTimer = self->_clockTimer;
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __43__NTKSchoolTimeFaceView__startClockUpdates__block_invoke;
    v9 = &unk_27877ED48;
    objc_copyWeak(&v10, &location);
    v4 = [(CLKClockTimer *)clockTimer startUpdatesWithUpdateFrequency:0 withHandler:&v6 identificationLog:&__block_literal_global_30];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v4;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  [(CLKClockTimer *)self->_clockTimer unpause:v6];
}

void __43__NTKSchoolTimeFaceView__startClockUpdates__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = +[NTKTimeOffsetManager sharedManager];
    v7 = [v6 displayTimeForRealTime:*a3];
    [WeakRetained _timeDidUpdate:v7];

    v8 = WeakRetained[109];
    v9 = +[NTKTimeOffsetManager sharedManager];
    [v9 timeOffset];
    [v8 setTimeOffset:?];
  }
}

- (void)_stopClockUpdates
{
  [(CLKClockTimer *)self->_clockTimer pause];
  if (self->_clockTimerToken)
  {
    [(CLKClockTimer *)self->_clockTimer stopUpdatesForToken:?];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_updateTimeAndDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  dialView = self->_dialView;
  v7 = a3;
  [(NTKSchoolTimeDialView *)dialView setActiveHour:NTKDateHourIn12HourTime(v7) animated:v4];
  [(NTKSchoolTimeFaceView *)self _setDate:v7];
}

- (void)_startObserving
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleChangeNotification name:*MEMORY[0x277CBE620] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__handleChangeNotification name:*MEMORY[0x277D766F0] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__handleChangeNotification name:@"NTKTimeOffsetChangedNotification" object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__handleChangeNotification name:*MEMORY[0x277CBE580] object:0];
}

- (void)_stopObserving
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D766F0] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"NTKTimeOffsetChangedNotification" object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277CBE580] object:0];
}

- (void)_handleChangeNotification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NTKSchoolTimeFaceView__handleChangeNotification__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__NTKSchoolTimeFaceView__handleChangeNotification__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NTKDate faceDate];
  [v1 _updateTimeAndDate:v2 animated:1];
}

+ (id)schoolTimeColor
{
  if (schoolTimeColor_onceToken != -1)
  {
    +[NTKSchoolTimeFaceView schoolTimeColor];
  }

  v3 = schoolTimeColor___color;

  return v3;
}

void __40__NTKSchoolTimeFaceView_schoolTimeColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.905882353 green:0.733333333 blue:0.125490196 alpha:1.0];
  v1 = schoolTimeColor___color;
  schoolTimeColor___color = v0;
}

+ (id)secondHandColor
{
  if (secondHandColor_onceToken != -1)
  {
    +[NTKSchoolTimeFaceView secondHandColor];
  }

  v3 = secondHandColor___color;

  return v3;
}

void __40__NTKSchoolTimeFaceView_secondHandColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.894117647 blue:0.592156863 alpha:1.0];
  v1 = secondHandColor___color;
  secondHandColor___color = v0;
}

@end