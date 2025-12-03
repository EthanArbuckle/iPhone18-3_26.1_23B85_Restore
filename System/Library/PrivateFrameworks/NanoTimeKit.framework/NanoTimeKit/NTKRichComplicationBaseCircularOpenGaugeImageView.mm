@interface NTKRichComplicationBaseCircularOpenGaugeImageView
- (id)bottomView;
- (int64_t)tritiumUpdateMode;
- (void)gaugeProvider:(id *)provider andCenterTextProvider:(id *)textProvider fromTemplate:(id)template;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularOpenGaugeImageView

- (id)bottomView
{
  bottomImageView = self->_bottomImageView;
  if (!bottomImageView)
  {
    device = [(CDRichComplicationView *)self device];
    v5 = NTKShowGossamerUI(device);

    v6 = [off_27877BEB0 alloc];
    device2 = [(CDRichComplicationView *)self device];
    v8 = [v6 initWithDevice:device2 useAccentColor:v5];
    v9 = self->_bottomImageView;
    self->_bottomImageView = v8;

    [(CDRichComplicationImageView *)self->_bottomImageView setPaused:[(CDRichComplicationView *)self paused]];
    [(CDRichComplicationImageView *)self->_bottomImageView setFilterProvider:self];
    bottomImageView = self->_bottomImageView;
  }

  return bottomImageView;
}

- (void)gaugeProvider:(id *)provider andCenterTextProvider:(id *)textProvider fromTemplate:(id)template
{
  templateCopy = template;
  *provider = [templateCopy gaugeProvider];
  centerTextProvider = [templateCopy centerTextProvider];

  v9 = centerTextProvider;
  *textProvider = centerTextProvider;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularOpenGaugeImageView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDRichComplicationImageView *)self->_bottomImageView setPaused:pausedCopy];
}

- (int64_t)tritiumUpdateMode
{
  tritiumUpdateMode = [(CDRichComplicationImageView *)self->_bottomImageView tritiumUpdateMode];
  v4 = tritiumUpdateMode;
  if (tritiumUpdateMode)
  {
    integerValue = [tritiumUpdateMode integerValue];
    if (integerValue >= 2)
    {
      tritiumUpdateMode2 = 2;
    }

    else
    {
      tritiumUpdateMode2 = integerValue;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKRichComplicationBaseCircularOpenGaugeImageView;
    tritiumUpdateMode2 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return tritiumUpdateMode2;
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularOpenGaugeImageView;
  [(NTKRichComplicationCircularOpenGaugeContentView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_bottomImageView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularOpenGaugeImageView;
  [(NTKRichComplicationCircularOpenGaugeContentView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_bottomImageView updateMonochromeColor];
}

@end