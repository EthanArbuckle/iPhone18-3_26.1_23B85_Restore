@interface NTKDigitalTimeRichComplicationBezelView
- (NTKDigitalTimeRichComplicationBezelView)init;
- (id)_createLabelViewWithFont:(id)a3;
- (void)dealloc;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
- (void)timeOffsetChanged;
- (void)updateDate;
@end

@implementation NTKDigitalTimeRichComplicationBezelView

- (NTKDigitalTimeRichComplicationBezelView)init
{
  v7.receiver = self;
  v7.super_class = NTKDigitalTimeRichComplicationBezelView;
  v2 = [(NTKRichComplicationBezelBaseTextView *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_timeOffsetChanged name:@"NTKTimeOffsetChangedNotification" object:0];

    v4 = [MEMORY[0x277D75348] clearColor];
    [(NTKDigitalTimeRichComplicationBezelView *)v2 setBackgroundColor:v4];

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKDigitalTimeRichComplicationBezelView;
  [(NTKDigitalTimeRichComplicationBezelView *)&v4 dealloc];
}

- (id)_createLabelViewWithFont:(id)a3
{
  v4 = a3;
  v5 = [(CDRichComplicationView *)self device];
  v6 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:1 forDevice:v5];
  timeLabel = self->_timeLabel;
  self->_timeLabel = v6;

  [(CLKUITimeLabel *)self->_timeLabel setShowSeconds:1];
  [(CLKUITimeLabel *)self->_timeLabel setFont:v4];

  [(NTKDigitalTimeRichComplicationBezelView *)self timeOffsetChanged];
  v8 = self->_timeLabel;

  return v8;
}

- (void)timeOffsetChanged
{
  timeLabel = self->_timeLabel;
  v3 = +[NTKTimeOffsetManager sharedManager];
  [v3 timeOffset];
  [(NTKDigitalTimeLabel *)timeLabel setTimeOffset:?];
}

- (void)updateDate
{
  v3 = [(CDRichComplicationTemplateView *)self template];
  v10 = [v3 metadata];

  v4 = [v10 objectForKeyedSubscript:@"NTKTimerComplicationMetadataShouldDisplayIdealizedStateKey"];
  v5 = [v4 BOOLValue];

  v6 = [(CDRichComplicationView *)self timeTravelDate];

  timeLabel = self->_timeLabel;
  if (v6)
  {
    v8 = [(CDRichComplicationView *)self timeTravelDate];
LABEL_5:
    v9 = v8;
    [(NTKDigitalTimeLabel *)timeLabel setOverrideDate:v8 duration:0.0];

    goto LABEL_6;
  }

  if (v5)
  {
    v8 = NTKIdealizedDate();
    goto LABEL_5;
  }

  [(NTKDigitalTimeLabel *)self->_timeLabel setOverrideDate:0 duration:0.0];
LABEL_6:
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NTKTimeOffsetManager sharedManager];
  [v7 timeOffset];
  v8 = [v6 dateByAddingTimeInterval:?];

  v9.receiver = self;
  v9.super_class = NTKDigitalTimeRichComplicationBezelView;
  [(CDRichComplicationTemplateView *)&v9 setTimeTravelDate:v8 animated:v4];
  [(NTKDigitalTimeRichComplicationBezelView *)self updateDate];
}

@end