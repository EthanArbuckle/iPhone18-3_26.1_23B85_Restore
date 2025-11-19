@interface CLKUIDualTimeView
- (CLKUIDualTimeView)initWithDevice:(id)a3 clockTimer:(id)a4;
- (void)layoutSubviews;
- (void)setAodTransform:(CGAffineTransform *)a3;
- (void)setConfiguration:(id)a3;
- (void)setOverrideDate:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)setTimeColor:(id)a3;
@end

@implementation CLKUIDualTimeView

- (CLKUIDualTimeView)initWithDevice:(id)a3 clockTimer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CLKUIDualTimeView;
  v8 = [(CLKUITimeView *)&v14 initWithDevice:v6 clockTimer:v7];
  if (v8)
  {
    v9 = [[CLKUIAnalogTimeView alloc] initWithDevice:v6 clockTimer:v7];
    analogTimeView = v8->_analogTimeView;
    v8->_analogTimeView = v9;

    [(CLKUIDualTimeView *)v8 addSubview:v8->_analogTimeView];
    v11 = [[CLKUIDigitalClockView alloc] initWithDevice:v6 clockTimer:v7];
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

- (void)setConfiguration:(id)a3
{
  v11.receiver = self;
  v11.super_class = CLKUIDualTimeView;
  v4 = a3;
  [(CLKUITimeView *)&v11 setConfiguration:v4];
  v5 = [v4 analogConfiguration];
  [(CLKUIAnalogTimeView *)self->_analogTimeView setConfiguration:v5];

  v6 = [v4 digitalConfiguration];
  [(CLKUIDigitalClockView *)self->_digitalTimeView setConfiguration:v6];

  v7 = [v4 timeStyle];
  v8 = v7 == 0;
  v9 = v7 == 0;
  v10 = !v8;
  [(CLKUIAnalogTimeView *)self->_analogTimeView setHidden:v10];
  [(CLKUIDigitalClockView *)self->_digitalTimeView setHidden:v9];
  [(CLKUIAnalogTimeView *)self->_analogTimeView setState:v10];
  [(CLKUIDigitalClockView *)self->_digitalTimeView setState:v9];
}

- (void)setState:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CLKUIDualTimeView;
  [(CLKUITimeView *)&v7 setState:?];
  if (a3 == 1)
  {
    [(CLKUIAnalogTimeView *)self->_analogTimeView setState:1];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v5 = [(CLKUIAnalogTimeView *)self->_analogTimeView isHidden];
    analogTimeView = self->_analogTimeView;
    if (v5)
    {
      [(CLKUIAnalogTimeView *)analogTimeView setState:1];
      a3 = 0;
    }

    else
    {
      [(CLKUIAnalogTimeView *)analogTimeView setState:0];
      a3 = 1;
    }
  }

  [(CLKUIDigitalClockView *)self->_digitalTimeView setState:a3];
}

- (void)setOverrideDate:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKUIDualTimeView;
  v4 = a3;
  [(CLKUITimeView *)&v5 setOverrideDate:v4];
  [(CLKUIAnalogTimeView *)self->_analogTimeView setOverrideDate:v4, v5.receiver, v5.super_class];
  [(CLKUIDigitalClockView *)self->_digitalTimeView setOverrideDate:v4];
}

- (void)setTimeColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKUIDualTimeView;
  v4 = a3;
  [(CLKUITimeView *)&v5 setTimeColor:v4];
  [(CLKUITimeView *)self->_analogTimeView setTimeColor:v4, v5.receiver, v5.super_class];
  [(CLKUITimeView *)self->_digitalTimeView setTimeColor:v4];
}

- (void)setAodTransform:(CGAffineTransform *)a3
{
  v10.receiver = self;
  v10.super_class = CLKUIDualTimeView;
  v5 = *&a3->c;
  v7 = *&a3->a;
  v8 = v5;
  v9 = *&a3->tx;
  [(CLKUITimeView *)&v10 setAodTransform:&v7];
  v6 = *&a3->c;
  v7 = *&a3->a;
  v8 = v6;
  v9 = *&a3->tx;
  [(CLKUIDualTimeView *)self setTransform:&v7];
}

@end