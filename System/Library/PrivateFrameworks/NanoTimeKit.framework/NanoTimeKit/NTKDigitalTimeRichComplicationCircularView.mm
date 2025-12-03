@interface NTKDigitalTimeRichComplicationCircularView
- (NTKDigitalTimeRichComplicationCircularView)init;
- (id)_createLabelViewWithFont:(id)font;
- (void)dealloc;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
- (void)timeOffsetChanged;
- (void)updateDate;
@end

@implementation NTKDigitalTimeRichComplicationCircularView

- (NTKDigitalTimeRichComplicationCircularView)init
{
  v6.receiver = self;
  v6.super_class = NTKDigitalTimeRichComplicationCircularView;
  v2 = [(NTKRichComplicationCircularBaseTextView *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_timeOffsetChanged name:@"NTKTimeOffsetChangedNotification" object:0];

    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKDigitalTimeRichComplicationCircularView;
  [(NTKDigitalTimeRichComplicationCircularView *)&v4 dealloc];
}

- (id)_createLabelViewWithFont:(id)font
{
  fontCopy = font;
  device = [(CDRichComplicationView *)self device];
  v6 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:0 forDevice:device];
  timeLabel = self->_timeLabel;
  self->_timeLabel = v6;

  [(CLKUITimeLabel *)self->_timeLabel setShowSeconds:1];
  [(CLKUITimeLabel *)self->_timeLabel setFont:fontCopy];

  [(NTKDigitalTimeRichComplicationCircularView *)self timeOffsetChanged];
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
  template = [(CDRichComplicationTemplateView *)self template];
  metadata = [template metadata];

  v4 = [metadata objectForKeyedSubscript:@"NTKTimerComplicationMetadataShouldDisplayIdealizedStateKey"];
  bOOLValue = [v4 BOOLValue];

  timeTravelDate = [(CDRichComplicationView *)self timeTravelDate];

  timeLabel = self->_timeLabel;
  if (timeTravelDate)
  {
    timeTravelDate2 = [(CDRichComplicationView *)self timeTravelDate];
LABEL_5:
    v9 = timeTravelDate2;
    [(NTKDigitalTimeLabel *)timeLabel setOverrideDate:timeTravelDate2 duration:0.0];

    goto LABEL_6;
  }

  if (bOOLValue)
  {
    timeTravelDate2 = NTKIdealizedDate();
    goto LABEL_5;
  }

  [(NTKDigitalTimeLabel *)self->_timeLabel setOverrideDate:0 duration:0.0];
LABEL_6:
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  v7 = +[NTKTimeOffsetManager sharedManager];
  [v7 timeOffset];
  v8 = [dateCopy dateByAddingTimeInterval:?];

  v9.receiver = self;
  v9.super_class = NTKDigitalTimeRichComplicationCircularView;
  [(CDRichComplicationTemplateView *)&v9 setTimeTravelDate:v8 animated:animatedCopy];
  [(NTKDigitalTimeRichComplicationCircularView *)self updateDate];
}

@end