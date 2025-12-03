@interface CLKUIStackedDigitalTimeView
- (CLKUIStackedDigitalTimeView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)enumerateLabelsWithBlock:(id)block;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)setState:(unint64_t)state;
@end

@implementation CLKUIStackedDigitalTimeView

- (CLKUIStackedDigitalTimeView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v20.receiver = self;
  v20.super_class = CLKUIStackedDigitalTimeView;
  v8 = [(CLKUITimeView *)&v20 initWithDevice:deviceCopy clockTimer:timerCopy];
  if (v8)
  {
    v9 = [[CLKUITimeLabel alloc] initWithTimeLabelOptions:1024 forDevice:deviceCopy clockTimer:timerCopy];
    hourLabel = v8->_hourLabel;
    v8->_hourLabel = v9;

    [(CLKUIStackedDigitalTimeView *)v8 addSubview:v8->_hourLabel];
    v11 = [[CLKUITimeLabel alloc] initWithTimeLabelOptions:2048 forDevice:deviceCopy clockTimer:timerCopy];
    minuteLabel = v8->_minuteLabel;
    v8->_minuteLabel = v11;

    timeFormatter = [(CLKUITimeLabel *)v8->_minuteLabel timeFormatter];
    [timeFormatter setIncludeSeparatorInTimeSubstringFromSeparatorText:0];

    [(CLKUIStackedDigitalTimeView *)v8 addSubview:v8->_minuteLabel];
    v14 = [[CLKUITimeLabel alloc] initWithTimeLabelOptions:1024 forDevice:deviceCopy clockTimer:timerCopy];
    inactiveHourLabel = v8->_inactiveHourLabel;
    v8->_inactiveHourLabel = v14;

    [(CLKUITimeLabel *)v8->_inactiveHourLabel setAlpha:0.0];
    [(CLKUIStackedDigitalTimeView *)v8 addSubview:v8->_inactiveHourLabel];
    v16 = [[CLKUITimeLabel alloc] initWithTimeLabelOptions:2048 forDevice:deviceCopy clockTimer:timerCopy];
    inactiveMinuteLabel = v8->_inactiveMinuteLabel;
    v8->_inactiveMinuteLabel = v16;

    [(CLKUITimeLabel *)v8->_inactiveMinuteLabel setAlpha:0.0];
    timeFormatter2 = [(CLKUITimeLabel *)v8->_inactiveMinuteLabel timeFormatter];
    [timeFormatter2 setIncludeSeparatorInTimeSubstringFromSeparatorText:0];

    [(CLKUIStackedDigitalTimeView *)v8 addSubview:v8->_inactiveMinuteLabel];
  }

  return v8;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v23.receiver = self;
  v23.super_class = CLKUIStackedDigitalTimeView;
  [(CLKUITimeView *)&v23 setConfiguration:configurationCopy];
  timeLabelFont = [configurationCopy timeLabelFont];

  if (timeLabelFont)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48__CLKUIStackedDigitalTimeView_setConfiguration___block_invoke;
    v21[3] = &unk_1E8762928;
    v22 = configurationCopy;
    [(CLKUIStackedDigitalTimeView *)self enumerateLabelsWithBlock:v21];
  }

  timeLabelColor = [configurationCopy timeLabelColor];

  if (timeLabelColor)
  {
    timeLabelColor2 = [configurationCopy timeLabelColor];
    [(CLKUITimeLabel *)self->_hourLabel setTextColor:timeLabelColor2];

    timeLabelColor3 = [configurationCopy timeLabelColor];
    [(CLKUITimeLabel *)self->_minuteLabel setTextColor:timeLabelColor3];
  }

  forcedNumberSystem = [configurationCopy forcedNumberSystem];

  if (forcedNumberSystem)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __48__CLKUIStackedDigitalTimeView_setConfiguration___block_invoke_2;
    v19 = &unk_1E8762928;
    v20 = configurationCopy;
    [(CLKUIStackedDigitalTimeView *)self enumerateLabelsWithBlock:&v16];
  }

  minuteTimeLabelAttributes = [configurationCopy minuteTimeLabelAttributes];

  if (minuteTimeLabelAttributes)
  {
    minuteTimeLabelAttributes2 = [configurationCopy minuteTimeLabelAttributes];
    [(CLKUITimeLabel *)self->_minuteLabel setStringAttributes:minuteTimeLabelAttributes2];

    minuteTimeLabelAttributes3 = [configurationCopy minuteTimeLabelAttributes];
    [(CLKUITimeLabel *)self->_inactiveMinuteLabel setStringAttributes:minuteTimeLabelAttributes3];
  }

  hourTimeLabelAttributes = [configurationCopy hourTimeLabelAttributes];

  if (hourTimeLabelAttributes)
  {
    hourTimeLabelAttributes2 = [configurationCopy hourTimeLabelAttributes];
    [(CLKUITimeLabel *)self->_hourLabel setStringAttributes:hourTimeLabelAttributes2];

    hourTimeLabelAttributes3 = [configurationCopy hourTimeLabelAttributes];
    [(CLKUITimeLabel *)self->_inactiveHourLabel setStringAttributes:hourTimeLabelAttributes3];
  }
}

void __48__CLKUIStackedDigitalTimeView_setConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 timeLabelFont];
  [v3 setFont:v4];
}

void __48__CLKUIStackedDigitalTimeView_setConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 forcedNumberSystem];
  [v3 setForcedNumberSystem:{objc_msgSend(v4, "unsignedIntegerValue")}];
}

- (void)setState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = CLKUIStackedDigitalTimeView;
  [(CLKUITimeView *)&v6 setState:?];
  if (state)
  {
    if (state != 1)
    {
      return;
    }

    v5 = &__block_literal_global_6;
  }

  else
  {
    v5 = &__block_literal_global_6;
  }

  [(CLKUIStackedDigitalTimeView *)self enumerateLabelsWithBlock:v5];
}

- (void)setOverrideDate:(id)date
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = CLKUIStackedDigitalTimeView;
  [(CLKUITimeView *)&v8 setOverrideDate:dateCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__CLKUIStackedDigitalTimeView_setOverrideDate___block_invoke;
  v6[3] = &unk_1E8762928;
  v7 = dateCopy;
  v5 = dateCopy;
  [(CLKUIStackedDigitalTimeView *)self enumerateLabelsWithBlock:v6];
}

void __47__CLKUIStackedDigitalTimeView_setOverrideDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 timeFormatter];
  [v3 setOverrideDate:v2];
}

- (void)enumerateLabelsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_minuteLabel);
  (*v4)(blockCopy, self->_inactiveHourLabel);
  (*v4)(blockCopy, self->_inactiveMinuteLabel);
}

@end