@interface MTUIWorldClockCellView
+ (double)defaultHeight;
+ (id)dayAndTimeZoneOffsetStringFromDate:(id)a3 withTimeZoneOffset:(int64_t)a4 timeZoneAbbreviation:(id)a5 spaceBeforeTimeDesignator:(BOOL)a6 hoursOnly:(BOOL)a7;
- (MTUIWorldClockCellView)initWithFrame:(CGRect)a3;
- (MTUIWorldClockCellViewDelegate)delegate;
- (void)_configureFonts;
- (void)handleTextSizeChange:(id)a3;
- (void)layoutSubviews;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setTimeZone:(id)a3;
- (void)significantTimeChange:(id)a3;
- (void)start;
- (void)stop;
- (void)updateLabelAdjustFontSize;
- (void)updateTime;
- (void)updateTimeContinuously:(int64_t)a3;
@end

@implementation MTUIWorldClockCellView

+ (double)defaultHeight
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  [v2 _scaledValueForValue:36.0];
  v5 = v4;
  [v3 _scaledValueForValue:33.0];
  v7 = v6;
  [v2 _scaledValueForValue:27.0];
  v9 = v5 + v7 + v8;
  v10 = [MEMORY[0x277D759A0] mainScreen];
  v11 = [v10 _defaultTraitCollection];
  v12 = [v11 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

  if (IsAccessibilityCategory)
  {
    [v3 _scaledValueForValue:16.0];
    v9 = v9 + v14 + 40.0;
  }

  return v9;
}

- (MTUIWorldClockCellView)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = MTUIWorldClockCellView;
  v3 = [(MTUIWorldClockCellView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTUIWorldClockCellView *)v3 setPreservesSuperviewLayoutMargins:1];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel_significantTimeChange_ name:*MEMORY[0x277D766F0] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel_localeChange_ name:*MEMORY[0x277CBE620] object:0];

    v7 = [(UIView *)v4 mtui_isRTL];
    v8 = objc_alloc_init(MTUIDigitalClockLabel);
    digitalClock = v4->_digitalClock;
    v4->_digitalClock = v8;

    v10 = [MEMORY[0x277D74300] mtui_thinTimeFont];
    [(MTUIDateLabel *)v4->_digitalClock setFont:v10];

    v11 = [MEMORY[0x277D74300] mtui_defaultTimeDesignatorFont];
    [(MTUIDateLabel *)v4->_digitalClock setTimeDesignatorFont:v11];

    v12 = [MEMORY[0x277D75348] mtui_primaryTextColor];
    [(MTUIDateLabel *)v4->_digitalClock setTextColor:v12];

    v13 = [(MTUIDateLabel *)v4->_digitalClock dateLabel];
    v14 = v13;
    if (v7)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    if (v7)
    {
      v16 = 8;
    }

    else
    {
      v16 = 7;
    }

    [v13 setTextAlignment:v15];

    [(MTUIWorldClockCellView *)v4 addSubview:v4->_digitalClock];
    v17 = objc_alloc(MEMORY[0x277D756B8]);
    v18 = [v17 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v18;

    v20 = [MEMORY[0x277D75348] mtui_primaryTextColor];
    [(UILabel *)v4->_nameLabel setTextColor:v20];

    v21 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v4->_nameLabel setBackgroundColor:v21];

    [(UILabel *)v4->_nameLabel setContentMode:v16];
    [(MTUIWorldClockCellView *)v4 addSubview:v4->_nameLabel];
    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    combinedLabel = v4->_combinedLabel;
    v4->_combinedLabel = v22;

    v24 = [MEMORY[0x277D75348] mtui_secondaryTextColor];
    [(UILabel *)v4->_combinedLabel setTextColor:v24];

    v25 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v4->_combinedLabel setBackgroundColor:v25];

    [(UILabel *)v4->_combinedLabel setContentMode:v16];
    [(MTUIWorldClockCellView *)v4 addSubview:v4->_combinedLabel];
    v4->_shouldStackViews = 0;
    [(MTUIWorldClockCellView *)v4 _configureFonts];
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v4 selector:sel_handleTextSizeChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return v4;
}

- (void)_configureFonts
{
  [(MTUIWorldClockCellView *)self updateLabelAdjustFontSize];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  v3 = [v10 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];
  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
  [(UILabel *)self->_nameLabel setFont:v5];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
  v7 = [v6 fontDescriptor];
  v8 = [v7 fontDescriptorWithSymbolicTraits:0x8000];
  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];
  [(UILabel *)self->_combinedLabel setFont:v9];
}

- (void)updateLabelAdjustFontSize
{
  shouldStackViews = self->_shouldStackViews;
  [(UILabel *)self->_nameLabel setAdjustsFontSizeToFitWidth:!shouldStackViews];
  combinedLabel = self->_combinedLabel;

  [(UILabel *)combinedLabel setAdjustsFontSizeToFitWidth:!shouldStackViews];
}

- (void)handleTextSizeChange:(id)a3
{
  gLabelMetrics_0 = 0;
  [(MTUIWorldClockCellView *)self _configureFonts];

  [(MTUIWorldClockCellView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  if ((gLabelMetrics_0 & 1) == 0)
  {
    gLabelMetrics_0 = 1;
    [(UILabel *)self->_nameLabel effectiveLayoutSizeFittingSize:1.79769313e308, 1.79769313e308];
    gLabelMetrics_1 = v3;
    [(UILabel *)self->_nameLabel effectiveFirstBaselineOffsetFromTop];
    gLabelMetrics_2 = v4;
    v5 = [(UILabel *)self->_nameLabel font];
    [v5 _scaledValueForValue:33.0];
    gLabelMetrics_3 = v6;

    [(UILabel *)self->_combinedLabel effectiveLayoutSizeFittingSize:1.79769313e308, 1.79769313e308];
    gLabelMetrics_4 = v7;
    [(UILabel *)self->_combinedLabel effectiveFirstBaselineOffsetFromTop];
    gLabelMetrics_5 = v8;
    v9 = [(UILabel *)self->_combinedLabel font];
    [v9 _scaledValueForValue:36.0];
    gLabelMetrics_6 = v10;
  }

  v48.receiver = self;
  v48.super_class = MTUIWorldClockCellView;
  [(MTUIWorldClockCellView *)&v48 layoutSubviews];
  [(MTUIWorldClockCellView *)self layoutMargins];
  v12 = v11;
  v14 = v13;
  [(MTUIWorldClockCellView *)self bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(UIView *)self mtui_isRTL];
  v43 = *&gLabelMetrics_5;
  v44 = *&gLabelMetrics_6;
  v41 = *&gLabelMetrics_2;
  v42 = *&gLabelMetrics_3;
  if (v23)
  {
    v24 = v14;
  }

  else
  {
    v24 = v12;
  }

  v46 = v24;
  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  v25 = CGRectGetWidth(v49) - v12;
  [(MTUIDigitalClockLabel *)self->_digitalClock effectiveLayoutSizeFittingSize:1.79769313e308, 1.79769313e308];
  v47 = v26;
  rect = v27;
  v28 = v12;
  if (!self->_shouldStackViews)
  {
    v28 = v12;
    if (!v23)
    {
      v50.origin.x = v16;
      v50.origin.y = v18;
      v50.size.width = v20;
      v50.size.height = v22;
      v28 = CGRectGetMaxX(v50) - v47 - v14;
    }
  }

  v29 = v25 - v14;
  if (!self->_editing && !self->_shouldStackViews)
  {
    v30 = 0;
    v31 = v28;
    v32 = v47;
    v33 = rect;
    if (v23)
    {
      v34 = CGRectGetMaxX(*&v31) + 8.0;
      v51.origin.x = v16;
      v51.origin.y = v18;
      v51.size.width = v20;
      v51.size.height = v22;
      v46 = v34;
      v29 = CGRectGetMaxX(v51) - v34 - v14;
    }

    else
    {
      v29 = CGRectGetMinX(*&v31) + -8.0 - v12;
      v46 = v12;
    }
  }

  v35 = *&gLabelMetrics_1;
  v36 = *&gLabelMetrics_4;
  v37 = *&gLabelMetrics_6 + *&gLabelMetrics_3;
  if (self->_shouldStackViews)
  {
    v38 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    [v38 _scaledValueForValue:16.0];
    v37 = v37 + v39 + 40.0;
  }

  [(MTUIDigitalClockLabel *)self->_digitalClock effectiveFirstBaselineOffsetFromTop];
  [(MTUIDigitalClockLabel *)self->_digitalClock setFrame:v28, v37 - v40 + 0.0, v47, rect];
  [(UILabel *)self->_nameLabel setFrame:v46, v44 + v42 - v41, v29, v35];
  [(UILabel *)self->_combinedLabel setFrame:v46, v44 - v43, v29, v36];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_editing = a3;
    if (a4)
    {
      [MEMORY[0x277D75D18] beginAnimations:@"WorldClockCell" context:0];
    }

    if (!self->_shouldStackViews)
    {
      [(MTUIDigitalClockLabel *)self->_digitalClock setHidden:v6];
    }

    if (v5)
    {
      [MEMORY[0x277D75D18] commitAnimations];
    }

    [(MTUIWorldClockCellView *)self setNeedsLayout];
  }
}

- (void)significantTimeChange:(id)a3
{
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  [(MTUIWorldClockCellView *)self updateTime];
  v4 = gTodayFormatter;
  if (gTodayFormatter)
  {
    v5 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [v4 setTimeZone:v5];
  }
}

- (void)start
{
  if (!self->_started)
  {
    [(MTUIWorldClockCellView *)self updateTime];
    self->_started = 1;

    [MTUIAnalogClockView registerClock:self];
  }
}

- (void)stop
{
  if (self->_started)
  {
    self->_started = 0;
    [MTUIAnalogClockView unregisterClock:self];
  }
}

- (void)updateTimeContinuously:(int64_t)a3
{
  if (self->_nowInMinutes != a3)
  {
    self->_nowInMinutes = a3;
    [(MTUIWorldClockCellView *)self updateTime];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained timeDidChangeForClockCell:self];
  }
}

- (void)updateTime
{
  timeZone = self->_timeZone;
  if (timeZone)
  {
    v4 = [(NSTimeZone *)timeZone secondsFromGMT];
    v5 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v6 = v4 - [v5 secondsFromGMT];

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v6];
    v7 = [objc_opt_class() dayAndTimeZoneOffsetStringFromDate:v11 withTimeZoneOffset:v6 timeZoneAbbreviation:0 spaceBeforeTimeDesignator:0];
    v8 = [(UILabel *)self->_combinedLabel text];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      [(UILabel *)self->_combinedLabel setText:v7];
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    [(MTUIDateLabel *)self->_digitalClock setDate:v10];

    [(MTUIWorldClockCellView *)self setNeedsLayout];
  }
}

- (void)setTimeZone:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_timeZone != v5)
  {
    v7 = v5;
    [(MTUIDateLabel *)self->_digitalClock setTimeZone:v5];
    objc_storeStrong(&self->_timeZone, a3);
    self->_nowInMinutes = vcvtmd_s64_f64(CFAbsoluteTimeGetCurrent() / 60.0);
    v5 = [(MTUIWorldClockCellView *)self updateTime];
    v6 = v7;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

+ (id)dayAndTimeZoneOffsetStringFromDate:(id)a3 withTimeZoneOffset:(int64_t)a4 timeZoneAbbreviation:(id)a5 spaceBeforeTimeDesignator:(BOOL)a6 hoursOnly:(BOOL)a7
{
  v53 = a7;
  v7 = a6;
  v54 = a3;
  v10 = a5;
  if (!gNumberFormatter)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v12 = gNumberFormatter;
    gNumberFormatter = v11;

    [gNumberFormatter setNumberStyle:1];
    v13 = objc_alloc_init(MEMORY[0x277CCA968]);
    v14 = gTodayFormatter;
    gTodayFormatter = v13;

    v15 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [gTodayFormatter setTimeZone:v15];
    [gTodayFormatter setDateStyle:2];
    [gTodayFormatter setTimeStyle:0];
    [gTodayFormatter setDoesRelativeDateFormatting:1];
    [gTodayFormatter setFormattingContext:4];
    v16 = objc_opt_new();
    v17 = gDateComponentsFormatter;
    gDateComponentsFormatter = v16;

    [gDateComponentsFormatter setUnitsStyle:0];
  }

  v18 = gTodayFormatter;
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a4];
  v20 = [v18 stringFromDate:v19];

  if (!a4)
  {
    v30 = [gNumberFormatter stringFromNumber:&unk_286BC8B98];
    v24 = @"DAY_FORMAT_HOURS_AHEAD";
    v25 = @"HOURS_AHEAD";
    if (!v10)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (a4 >= 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = -a4;
  }

  if (v21 <= 0xE0F)
  {
    v22 = @"DAY_FORMAT_MINUTES_BEHIND";
    if (a4 <= 0)
    {
      v23 = @"MINUTES_BEHIND";
    }

    else
    {
      v22 = @"DAY_FORMAT_MINUTES_AHEAD";
      v23 = @"MINUTES_AHEAD";
    }

    v24 = v22;
    v25 = v23;
    v26 = gNumberFormatter;
    if (a4 / 60 >= 0)
    {
      v27 = a4 / 60;
    }

    else
    {
      v27 = a4 / -60;
    }

    v28 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
    v29 = [v26 stringFromNumber:v28];
    goto LABEL_31;
  }

  if (v21 == 3600)
  {
    v31 = @"DAY_FORMAT_ONE_HOUR_BEHIND";
    if (a4 <= 0)
    {
      v32 = @"ONE_HOUR_BEHIND";
    }

    else
    {
      v31 = @"DAY_FORMAT_ONE_HOUR_AHEAD";
      v32 = @"ONE_HOUR_AHEAD";
    }

    v24 = v31;
    v25 = v32;
    v30 = [gNumberFormatter stringFromNumber:&unk_286BC8BB0];
    if (!v10)
    {
      goto LABEL_33;
    }

LABEL_32:
    v36 = [(__CFString *)v24 stringByAppendingString:@"_TZ"];

    v24 = v36;
    goto LABEL_33;
  }

  if (a4 / 3600 >= 0)
  {
    v33 = a4 / 3600;
  }

  else
  {
    v33 = a4 / -3600;
  }

  if (a4 % 3600)
  {
    v34 = @"DAY_FORMAT_HOURS_MINUTES_BEHIND";
    if (a4 <= 0)
    {
      v35 = @"HOURS_MINUTES_BEHIND";
    }

    else
    {
      v34 = @"DAY_FORMAT_HOURS_MINUTES_AHEAD";
      v35 = @"HOURS_MINUTES_AHEAD";
    }

    v24 = v34;
    v25 = v35;
    v28 = objc_opt_new();
    [v28 setHour:v33];
    [v28 setMinute:(2185 * (v21 - 3600 * ((v21 / 0xE10) & 0x1FFFFFFF))) >> 17];
    v29 = [gDateComponentsFormatter stringFromDateComponents:v28];
LABEL_31:
    v30 = v29;

    if (!v10)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v48 = @"DAY_FORMAT_HOURS_BEHIND";
  if (a4 > 0)
  {
    v48 = @"DAY_FORMAT_HOURS_AHEAD";
  }

  v49 = v33;
  if (a4 <= 0)
  {
    v50 = @"HOURS_BEHIND";
  }

  else
  {
    v50 = @"HOURS_AHEAD";
  }

  v24 = v48;
  v25 = v50;
  v51 = gNumberFormatter;
  v52 = [MEMORY[0x277CCABB0] numberWithInteger:v49];
  v30 = [v51 stringFromNumber:v52];

  if (v10)
  {
    goto LABEL_32;
  }

LABEL_33:
  v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v38 = [v37 localizedStringForKey:v24 value:&stru_286BC5E38 table:@"MobileTimerUI"];

  if (v7)
  {
    v39 = [(__CFString *)v25 stringByAppendingString:@"_SPACE"];

    v25 = v39;
  }

  v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:v25 value:&stru_286BC5E38 table:@"MobileTimerUI"];

  v42 = [MEMORY[0x277CCACA8] stringWithFormat:v41, v30];
  v43 = [MEMORY[0x277CCACA8] stringWithFormat:v38, v20, v42, v10];
  v44 = v43;
  if (v53)
  {
    v45 = v42;
  }

  else
  {
    v45 = v43;
  }

  v46 = v45;

  return v45;
}

- (MTUIWorldClockCellViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end