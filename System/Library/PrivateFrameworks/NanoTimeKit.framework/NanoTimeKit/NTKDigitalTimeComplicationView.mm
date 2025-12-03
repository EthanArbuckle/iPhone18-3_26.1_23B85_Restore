@interface NTKDigitalTimeComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (CDComplicationDisplayObserver)displayObserver;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKDigitalTimeComplicationView)init;
- (id)_createLabelViewWithFont:(id)font;
- (id)_labelFont;
- (unint64_t)timelineAnimationFadeTypeOverride;
- (void)layoutSubviews;
- (void)setComplicationTemplate:(id)template reason:(int64_t)reason;
- (void)setFont:(id)font;
- (void)setOverrideDate:(id)date;
- (void)setTextColor:(id)color;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
- (void)timeOffsetChanged;
- (void)updateDate;
@end

@implementation NTKDigitalTimeComplicationView

- (NTKDigitalTimeComplicationView)init
{
  v11.receiver = self;
  v11.super_class = NTKDigitalTimeComplicationView;
  v2 = [(NTKDigitalTimeComplicationView *)&v11 init];
  if (v2)
  {
    v3 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v3 device];
    device = v2->_device;
    v2->_device = device;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_timeOffsetChanged name:@"NTKTimeOffsetChangedNotification" object:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NTKDigitalTimeComplicationView *)v2 setBackgroundColor:clearColor];

    v2->_showsSeconds = 1;
    _labelFont = [(NTKDigitalTimeComplicationView *)v2 _labelFont];
    v9 = [(NTKDigitalTimeComplicationView *)v2 _createLabelViewWithFont:_labelFont];
    [(NTKDigitalTimeComplicationView *)v2 addSubview:v9];
  }

  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKDigitalTimeComplicationView;
  [(NTKDigitalTimeComplicationView *)&v3 layoutSubviews];
  MEMORY[0x2318D8E70]([(NTKDigitalTimeComplicationView *)self bounds]);
  [(NTKDigitalTimeLabel *)self->_timeLabel setCenter:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CLKUITimeLabel *)self->_timeLabel sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  device = [(NTKDigitalTimeComplicationView *)self device];
  ___LayoutConstants_block_invoke_60(device, device);
  v10 = v9;

  v11 = v5 + v10;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)_labelFont
{
  device = [(NTKDigitalTimeComplicationView *)self device];
  v3 = ___LayoutConstants_block_invoke_60(device, device);

  v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v3 design:*MEMORY[0x277D74420]];
  cLKFontWithAlternativePunctuation = [v4 CLKFontWithAlternativePunctuation];

  return cLKFontWithAlternativePunctuation;
}

- (id)_createLabelViewWithFont:(id)font
{
  fontCopy = font;
  device = [(NTKDigitalTimeComplicationView *)self device];
  v6 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:0 forDevice:device];
  timeLabel = self->_timeLabel;
  self->_timeLabel = v6;

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(NTKDigitalTimeLabel *)self->_timeLabel setBackgroundColor:clearColor];

  [(CLKUITimeLabel *)self->_timeLabel setShowSeconds:self->_showsSeconds];
  [(CLKUITimeLabel *)self->_timeLabel setFont:fontCopy];

  [(NTKDigitalTimeComplicationView *)self timeOffsetChanged];
  v9 = self->_timeLabel;

  return v9;
}

- (void)timeOffsetChanged
{
  timeLabel = self->_timeLabel;
  v3 = +[NTKTimeOffsetManager sharedManager];
  [v3 timeOffset];
  [(NTKDigitalTimeLabel *)timeLabel setTimeOffset:?];
}

- (void)setOverrideDate:(id)date
{
  [(NTKDigitalTimeLabel *)self->_timeLabel setOverrideDate:date duration:0.0];
  [(CLKUITimeLabel *)self->_timeLabel sizeToFit];

  [(NTKDigitalTimeComplicationView *)self setNeedsLayout];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  textColor = [(CLKUITimeLabel *)self->_timeLabel textColor];
  v5 = [textColor isEqual:colorCopy];

  if ((v5 & 1) == 0)
  {
    [(NTKDigitalTimeLabel *)self->_timeLabel setTextColor:colorCopy];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(CLKUITimeLabel *)self->_timeLabel font];
  v5 = [font isEqual:fontCopy];

  if ((v5 & 1) == 0)
  {
    [(CLKUITimeLabel *)self->_timeLabel setFont:fontCopy];
    [(CLKUITimeLabel *)self->_timeLabel sizeToFit];
  }
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setComplicationTemplate:(id)template reason:(int64_t)reason
{
  objc_storeStrong(&self->_template, template);
  [(NTKDigitalTimeComplicationView *)self updateDate];

  [(NTKDigitalTimeComplicationView *)self setNeedsLayout];
}

- (unint64_t)timelineAnimationFadeTypeOverride
{
  metadata = [(CLKComplicationTemplate *)self->_template metadata];
  v3 = [metadata objectForKeyedSubscript:@"NTKComplicationTimelineAnimationFadeType"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  dateCopy = date;
  v6 = +[NTKTimeOffsetManager sharedManager];
  [v6 timeOffset];
  v7 = [dateCopy dateByAddingTimeInterval:?];

  [(NTKDigitalTimeComplicationView *)self setTimeTravelDate:v7];
  [(NTKDigitalTimeComplicationView *)self updateDate];
}

- (void)updateDate
{
  template = [(NTKDigitalTimeComplicationView *)self template];
  metadata = [template metadata];

  v4 = [metadata objectForKeyedSubscript:@"NTKTimerComplicationMetadataShouldDisplayIdealizedStateKey"];
  bOOLValue = [v4 BOOLValue];

  timeTravelDate = [(NTKDigitalTimeComplicationView *)self timeTravelDate];

  if (timeTravelDate)
  {
    timeTravelDate2 = [(NTKDigitalTimeComplicationView *)self timeTravelDate];
LABEL_5:
    v8 = timeTravelDate2;
    [(NTKDigitalTimeComplicationView *)self setOverrideDate:timeTravelDate2];

    goto LABEL_6;
  }

  if (bOOLValue)
  {
    timeTravelDate2 = NTKIdealizedDate();
    goto LABEL_5;
  }

  [(NTKDigitalTimeComplicationView *)self setOverrideDate:0];
LABEL_6:
}

- (CDComplicationDisplayObserver)displayObserver
{
  WeakRetained = objc_loadWeakRetained(&self->displayObserver);

  return WeakRetained;
}

@end