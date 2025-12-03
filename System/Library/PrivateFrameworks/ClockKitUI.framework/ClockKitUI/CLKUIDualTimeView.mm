@interface CLKUIDualTimeView
- (CLKUIDualTimeView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)layoutSubviews;
- (void)setAodTransform:(CGAffineTransform *)transform;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)setState:(unint64_t)state;
- (void)setTimeColor:(id)color;
@end

@implementation CLKUIDualTimeView

- (CLKUIDualTimeView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v14.receiver = self;
  v14.super_class = CLKUIDualTimeView;
  v8 = [(CLKUITimeView *)&v14 initWithDevice:deviceCopy clockTimer:timerCopy];
  if (v8)
  {
    v9 = [[CLKUIAnalogTimeView alloc] initWithDevice:deviceCopy clockTimer:timerCopy];
    analogTimeView = v8->_analogTimeView;
    v8->_analogTimeView = v9;

    [(CLKUIDualTimeView *)v8 addSubview:v8->_analogTimeView];
    v11 = [[CLKUIDigitalClockView alloc] initWithDevice:deviceCopy clockTimer:timerCopy];
    digitalTimeView = v8->_digitalTimeView;
    v8->_digitalTimeView = v11;

    [(CLKUIDualTimeView *)v8 addSubview:v8->_digitalTimeView];
  }

  return v8;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CLKUIDualTimeView;
  [(CLKUIDualTimeView *)&v3 layoutSubviews];
  [(CLKUIDualTimeView *)self bounds];
  [(CLKUIAnalogTimeView *)self->_analogTimeView setFrame:?];
  [(CLKUIDualTimeView *)self bounds];
  [(CLKUIDigitalClockView *)self->_digitalTimeView setFrame:?];
  [(CLKUITimeView *)self dialInset];
  [(CLKUITimeView *)self->_analogTimeView setDialInset:?];
  [(CLKUITimeView *)self dialInset];
  [(CLKUITimeView *)self->_digitalTimeView setDialInset:?];
}

- (void)setConfiguration:(id)configuration
{
  v11.receiver = self;
  v11.super_class = CLKUIDualTimeView;
  configurationCopy = configuration;
  [(CLKUITimeView *)&v11 setConfiguration:configurationCopy];
  analogConfiguration = [configurationCopy analogConfiguration];
  [(CLKUIAnalogTimeView *)self->_analogTimeView setConfiguration:analogConfiguration];

  digitalConfiguration = [configurationCopy digitalConfiguration];
  [(CLKUIDigitalClockView *)self->_digitalTimeView setConfiguration:digitalConfiguration];

  timeStyle = [configurationCopy timeStyle];
  v8 = timeStyle == 0;
  v9 = timeStyle == 0;
  v10 = !v8;
  [(CLKUIAnalogTimeView *)self->_analogTimeView setHidden:v10];
  [(CLKUIDigitalClockView *)self->_digitalTimeView setHidden:v9];
  [(CLKUIAnalogTimeView *)self->_analogTimeView setState:v10];
  [(CLKUIDigitalClockView *)self->_digitalTimeView setState:v9];
}

- (void)setState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = CLKUIDualTimeView;
  [(CLKUITimeView *)&v7 setState:?];
  if (state == 1)
  {
    [(CLKUIAnalogTimeView *)self->_analogTimeView setState:1];
  }

  else
  {
    if (state)
    {
      return;
    }

    isHidden = [(CLKUIAnalogTimeView *)self->_analogTimeView isHidden];
    analogTimeView = self->_analogTimeView;
    if (isHidden)
    {
      [(CLKUIAnalogTimeView *)analogTimeView setState:1];
      state = 0;
    }

    else
    {
      [(CLKUIAnalogTimeView *)analogTimeView setState:0];
      state = 1;
    }
  }

  [(CLKUIDigitalClockView *)self->_digitalTimeView setState:state];
}

- (void)setOverrideDate:(id)date
{
  v5.receiver = self;
  v5.super_class = CLKUIDualTimeView;
  dateCopy = date;
  [(CLKUITimeView *)&v5 setOverrideDate:dateCopy];
  [(CLKUIAnalogTimeView *)self->_analogTimeView setOverrideDate:dateCopy, v5.receiver, v5.super_class];
  [(CLKUIDigitalClockView *)self->_digitalTimeView setOverrideDate:dateCopy];
}

- (void)setTimeColor:(id)color
{
  v5.receiver = self;
  v5.super_class = CLKUIDualTimeView;
  colorCopy = color;
  [(CLKUITimeView *)&v5 setTimeColor:colorCopy];
  [(CLKUITimeView *)self->_analogTimeView setTimeColor:colorCopy, v5.receiver, v5.super_class];
  [(CLKUITimeView *)self->_digitalTimeView setTimeColor:colorCopy];
}

- (void)setAodTransform:(CGAffineTransform *)transform
{
  v10.receiver = self;
  v10.super_class = CLKUIDualTimeView;
  v5 = *&transform->c;
  v7 = *&transform->a;
  v8 = v5;
  v9 = *&transform->tx;
  [(CLKUITimeView *)&v10 setAodTransform:&v7];
  v6 = *&transform->c;
  v7 = *&transform->a;
  v8 = v6;
  v9 = *&transform->tx;
  [(CLKUIDualTimeView *)self setTransform:&v7];
}

@end