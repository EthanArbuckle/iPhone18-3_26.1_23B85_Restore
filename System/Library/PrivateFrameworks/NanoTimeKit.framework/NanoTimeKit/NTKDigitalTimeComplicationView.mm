@interface NTKDigitalTimeComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (CDComplicationDisplayObserver)displayObserver;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKDigitalTimeComplicationView)init;
- (id)_createLabelViewWithFont:(id)a3;
- (id)_labelFont;
- (unint64_t)timelineAnimationFadeTypeOverride;
- (void)layoutSubviews;
- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4;
- (void)setFont:(id)a3;
- (void)setOverrideDate:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
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
    v4 = [v3 device];
    device = v2->_device;
    v2->_device = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_timeOffsetChanged name:@"NTKTimeOffsetChangedNotification" object:0];

    v7 = [MEMORY[0x277D75348] clearColor];
    [(NTKDigitalTimeComplicationView *)v2 setBackgroundColor:v7];

    v2->_showsSeconds = 1;
    v8 = [(NTKDigitalTimeComplicationView *)v2 _labelFont];
    v9 = [(NTKDigitalTimeComplicationView *)v2 _createLabelViewWithFont:v8];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CLKUITimeLabel *)self->_timeLabel sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(NTKDigitalTimeComplicationView *)self device];
  ___LayoutConstants_block_invoke_60(v8, v8);
  v10 = v9;

  v11 = v5 + v10;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)_labelFont
{
  v2 = [(NTKDigitalTimeComplicationView *)self device];
  v3 = ___LayoutConstants_block_invoke_60(v2, v2);

  v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v3 design:*MEMORY[0x277D74420]];
  v5 = [v4 CLKFontWithAlternativePunctuation];

  return v5;
}

- (id)_createLabelViewWithFont:(id)a3
{
  v4 = a3;
  v5 = [(NTKDigitalTimeComplicationView *)self device];
  v6 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:0 forDevice:v5];
  timeLabel = self->_timeLabel;
  self->_timeLabel = v6;

  v8 = [MEMORY[0x277D75348] clearColor];
  [(NTKDigitalTimeLabel *)self->_timeLabel setBackgroundColor:v8];

  [(CLKUITimeLabel *)self->_timeLabel setShowSeconds:self->_showsSeconds];
  [(CLKUITimeLabel *)self->_timeLabel setFont:v4];

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

- (void)setOverrideDate:(id)a3
{
  [(NTKDigitalTimeLabel *)self->_timeLabel setOverrideDate:a3 duration:0.0];
  [(CLKUITimeLabel *)self->_timeLabel sizeToFit];

  [(NTKDigitalTimeComplicationView *)self setNeedsLayout];
}

- (void)setTextColor:(id)a3
{
  v6 = a3;
  v4 = [(CLKUITimeLabel *)self->_timeLabel textColor];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(NTKDigitalTimeLabel *)self->_timeLabel setTextColor:v6];
  }
}

- (void)setFont:(id)a3
{
  v6 = a3;
  v4 = [(CLKUITimeLabel *)self->_timeLabel font];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(CLKUITimeLabel *)self->_timeLabel setFont:v6];
    [(CLKUITimeLabel *)self->_timeLabel sizeToFit];
  }
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4
{
  objc_storeStrong(&self->_template, a3);
  [(NTKDigitalTimeComplicationView *)self updateDate];

  [(NTKDigitalTimeComplicationView *)self setNeedsLayout];
}

- (unint64_t)timelineAnimationFadeTypeOverride
{
  v2 = [(CLKComplicationTemplate *)self->_template metadata];
  v3 = [v2 objectForKeyedSubscript:@"NTKComplicationTimelineAnimationFadeType"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = +[NTKTimeOffsetManager sharedManager];
  [v6 timeOffset];
  v7 = [v5 dateByAddingTimeInterval:?];

  [(NTKDigitalTimeComplicationView *)self setTimeTravelDate:v7];
  [(NTKDigitalTimeComplicationView *)self updateDate];
}

- (void)updateDate
{
  v3 = [(NTKDigitalTimeComplicationView *)self template];
  v9 = [v3 metadata];

  v4 = [v9 objectForKeyedSubscript:@"NTKTimerComplicationMetadataShouldDisplayIdealizedStateKey"];
  v5 = [v4 BOOLValue];

  v6 = [(NTKDigitalTimeComplicationView *)self timeTravelDate];

  if (v6)
  {
    v7 = [(NTKDigitalTimeComplicationView *)self timeTravelDate];
LABEL_5:
    v8 = v7;
    [(NTKDigitalTimeComplicationView *)self setOverrideDate:v7];

    goto LABEL_6;
  }

  if (v5)
  {
    v7 = NTKIdealizedDate();
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