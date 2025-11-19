@interface NTKRichComplicationBaseCircularOpenGaugeImageView
- (id)bottomView;
- (int64_t)tritiumUpdateMode;
- (void)gaugeProvider:(id *)a3 andCenterTextProvider:(id *)a4 fromTemplate:(id)a5;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularOpenGaugeImageView

- (id)bottomView
{
  bottomImageView = self->_bottomImageView;
  if (!bottomImageView)
  {
    v4 = [(CDRichComplicationView *)self device];
    v5 = NTKShowGossamerUI(v4);

    v6 = [off_27877BEB0 alloc];
    v7 = [(CDRichComplicationView *)self device];
    v8 = [v6 initWithDevice:v7 useAccentColor:v5];
    v9 = self->_bottomImageView;
    self->_bottomImageView = v8;

    [(CDRichComplicationImageView *)self->_bottomImageView setPaused:[(CDRichComplicationView *)self paused]];
    [(CDRichComplicationImageView *)self->_bottomImageView setFilterProvider:self];
    bottomImageView = self->_bottomImageView;
  }

  return bottomImageView;
}

- (void)gaugeProvider:(id *)a3 andCenterTextProvider:(id *)a4 fromTemplate:(id)a5
{
  v7 = a5;
  *a3 = [v7 gaugeProvider];
  v8 = [v7 centerTextProvider];

  v9 = v8;
  *a4 = v8;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularOpenGaugeImageView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDRichComplicationImageView *)self->_bottomImageView setPaused:v3];
}

- (int64_t)tritiumUpdateMode
{
  v3 = [(CDRichComplicationImageView *)self->_bottomImageView tritiumUpdateMode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    if (v5 >= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKRichComplicationBaseCircularOpenGaugeImageView;
    v6 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return v6;
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularOpenGaugeImageView;
  [(NTKRichComplicationCircularOpenGaugeContentView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_bottomImageView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularOpenGaugeImageView;
  [(NTKRichComplicationCircularOpenGaugeContentView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_bottomImageView updateMonochromeColor];
}

@end