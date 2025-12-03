@interface NTKExtraLargeTimeView
- (NSArray)fontScaleFactorForNumberSystemOverrides;
- (NTKExtraLargeTimeView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (id)_timeLabelFont;
- (void)_configureTimeLabelsFont;
- (void)_updateNumbers;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setForcedNumberSystem:(unint64_t)system;
- (void)setFrozen:(BOOL)frozen;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setStatusBarVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setTimeOffset:(double)offset;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NTKExtraLargeTimeView

- (NTKExtraLargeTimeView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v24.receiver = self;
  v24.super_class = NTKExtraLargeTimeView;
  height = [(NTKExtraLargeTimeView *)&v24 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v12->_numberSystem = -1;
    v13 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:1024 forDevice:v12->_device];
    timeHourView = v12->_timeHourView;
    v12->_timeHourView = v13;

    v15 = v12->_timeHourView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(NTKDigitalTimeLabel *)v15 setTextColor:whiteColor];

    [(NTKExtraLargeTimeView *)v12 addSubview:v12->_timeHourView];
    v17 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:2057 forDevice:v12->_device];
    timeMinuteView = v12->_timeMinuteView;
    v12->_timeMinuteView = v17;

    v19 = v12->_timeMinuteView;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(NTKDigitalTimeLabel *)v19 setTextColor:whiteColor2];

    [(NTKExtraLargeTimeView *)v12 addSubview:v12->_timeMinuteView];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v12, _handleNumbersChangedNotification, @"AppleNumberPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(NTKExtraLargeTimeView *)v12 _configureTimeLabelsFont];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NTKExtraLargeTimeView *)v12 setBackgroundColor:clearColor];
  }

  return v12;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"AppleNumberPreferencesChangedNotification", 0);
  v4.receiver = self;
  v4.super_class = NTKExtraLargeTimeView;
  [(NTKExtraLargeTimeView *)&v4 dealloc];
}

- (NSArray)fontScaleFactorForNumberSystemOverrides
{
  fontScaleFactorForNumberSystemOverrides = self->_fontScaleFactorForNumberSystemOverrides;
  if (!fontScaleFactorForNumberSystemOverrides)
  {
    self->_fontScaleFactorForNumberSystemOverrides = &unk_28418A000;

    fontScaleFactorForNumberSystemOverrides = self->_fontScaleFactorForNumberSystemOverrides;
  }

  return fontScaleFactorForNumberSystemOverrides;
}

- (void)layoutSubviews
{
  memset(v21, 0, 88);
  ___LayoutConstants_block_invoke_7(self->_device, v21);
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  [(NTKExtraLargeTimeView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = vdup_n_s32(IsBoldTextEnabled);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  v10 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  v11 = vbslq_s8(v10, *(&v21[3] + 8), *(&v21[1] + 8));
  v12 = vaddq_f64(v11, vbslq_s8(v10, *(&v21[4] + 8), *(&v21[2] + 8)));
  if (self->_statusBarVisible)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  v20 = vbslq_s8(vdupq_n_s64(v13), v12, v11);
  v14 = *v21[1].i64;
  [(CLKUITimeLabel *)self->_timeHourView sizeToFit];
  [(CLKUITimeLabel *)self->_timeMinuteView sizeToFit];
  [(NTKDigitalTimeLabel *)self->_timeHourView frame];
  v16 = v7 * 0.5;
  [(NTKDigitalTimeLabel *)self->_timeHourView setFrame:v5 - v15 - v14, *v20.i64, v15, v16];
  if (self->_numberSystem == 13)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *&v20.i64[1];
  }

  [(NTKDigitalTimeLabel *)self->_timeMinuteView frame];
  timeMinuteView = self->_timeMinuteView;

  [(NTKDigitalTimeLabel *)timeMinuteView setFrame:v5 - v18 - v14, v16 + v17];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NTKExtraLargeTimeView;
  changeCopy = change;
  [(NTKExtraLargeTimeView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(NTKExtraLargeTimeView *)self traitCollection:v8.receiver];
  legibilityWeight = [v5 legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    [(NTKExtraLargeTimeView *)self _configureTimeLabelsFont];
    [(NTKExtraLargeTimeView *)self setNeedsLayout];
  }
}

- (void)_configureTimeLabelsFont
{
  _timeLabelFont = [(NTKExtraLargeTimeView *)self _timeLabelFont];
  [(CLKUITimeLabel *)self->_timeHourView setTimeFont:_timeLabelFont designatorFont:_timeLabelFont];
  [(CLKUITimeLabel *)self->_timeMinuteView setTimeFont:_timeLabelFont designatorFont:_timeLabelFont];
}

- (id)_timeLabelFont
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  ___LayoutConstants_block_invoke_7(self->_device, v13);
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = v13 + 1;
  if (!IsBoldTextEnabled)
  {
    v4 = v13;
  }

  v5 = *v4;
  if (NTKShowIndicScriptNumerals(self->_device))
  {
    if (self->_numberSystem != -1)
    {
      fontScaleFactorForNumberSystemOverrides = [(NTKExtraLargeTimeView *)self fontScaleFactorForNumberSystemOverrides];
      v7 = [fontScaleFactorForNumberSystemOverrides objectAtIndexedSubscript:self->_numberSystem];
      [v7 doubleValue];

      CLKRoundForDevice();
      v5 = v8;
    }

    v9 = [NTKSFCompactFont numericSoftFontOfSize:v5 weight:*MEMORY[0x277D74410]];
  }

  else
  {
    v9 = [MEMORY[0x277CBBB08] compactSoftFontOfSize:v5 weight:*MEMORY[0x277D74410]];
    if (CLKLocaleCurrentNumberSystem() == 2)
    {
      cLKFontWithMonospacedNumbers = [v9 CLKFontWithMonospacedNumbers];
      cLKFontWithAlternativePunctuation = [cLKFontWithMonospacedNumbers CLKFontWithAlternativePunctuation];

      v9 = cLKFontWithAlternativePunctuation;
    }
  }

  return v9;
}

- (void)setStatusBarVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_statusBarVisible != visible)
  {
    aBlock[7] = v4;
    aBlock[8] = v5;
    animatedCopy = animated;
    self->_statusBarVisible = visible;
    [(NTKExtraLargeTimeView *)self setNeedsLayout];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__NTKExtraLargeTimeView_setStatusBarVisible_animated___block_invoke;
    aBlock[3] = &unk_27877DB10;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (animatedCopy)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v8 animations:0.2];
    }

    else
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  timeHourView = self->_timeHourView;
  dateCopy = date;
  timeFormatter = [(CLKUITimeLabel *)timeHourView timeFormatter];
  [timeFormatter setOverrideDate:dateCopy];

  timeFormatter2 = [(CLKUITimeLabel *)self->_timeMinuteView timeFormatter];
  [timeFormatter2 setOverrideDate:dateCopy];
}

- (void)setTimeOffset:(double)offset
{
  [(NTKDigitalTimeLabel *)self->_timeHourView setTimeOffset:?];
  timeMinuteView = self->_timeMinuteView;

  [(NTKDigitalTimeLabel *)timeMinuteView setTimeOffset:offset];
}

- (void)setFrozen:(BOOL)frozen
{
  self->_frozen = frozen;
  [(CLKUITimeLabel *)self->_timeHourView setPaused:?];
  timeMinuteView = self->_timeMinuteView;
  frozen = self->_frozen;

  [(CLKUITimeLabel *)timeMinuteView setPaused:frozen];
}

- (void)_updateNumbers
{
  [(NTKExtraLargeTimeView *)self _configureTimeLabelsFont];

  [(NTKExtraLargeTimeView *)self setNeedsLayout];
}

- (void)setForcedNumberSystem:(unint64_t)system
{
  self->_numberSystem = system;
  timeHourView = [(NTKExtraLargeTimeView *)self timeHourView];
  [timeHourView setForcedNumberSystem:system];

  timeMinuteView = [(NTKExtraLargeTimeView *)self timeMinuteView];
  [timeMinuteView setForcedNumberSystem:system];

  [(NTKExtraLargeTimeView *)self _configureTimeLabelsFont];

  [(NTKExtraLargeTimeView *)self setNeedsLayout];
}

@end