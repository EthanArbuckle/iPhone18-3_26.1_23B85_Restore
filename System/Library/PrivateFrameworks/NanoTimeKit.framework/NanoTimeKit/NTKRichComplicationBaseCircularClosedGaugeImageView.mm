@interface NTKRichComplicationBaseCircularClosedGaugeImageView
- (id)innerView;
- (int64_t)tritiumUpdateMode;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularClosedGaugeImageView

- (id)innerView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    device = [(CDRichComplicationView *)self device];
    v5 = NTKShowGossamerUI(device);

    v6 = [off_27877BEB0 alloc];
    device2 = [(CDRichComplicationView *)self device];
    v8 = [v6 initWithDevice:device2 useAccentColor:v5 ^ 1u];
    v9 = self->_imageView;
    self->_imageView = v8;

    [(CDRichComplicationImageView *)self->_imageView setPaused:[(CDRichComplicationView *)self paused]];
    [(CDRichComplicationImageView *)self->_imageView setFilterProvider:self];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularClosedGaugeImageView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDRichComplicationImageView *)self->_imageView setPaused:pausedCopy];
}

- (int64_t)tritiumUpdateMode
{
  tritiumUpdateMode = [(CDRichComplicationImageView *)self->_imageView tritiumUpdateMode];
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
    v8.super_class = NTKRichComplicationBaseCircularClosedGaugeImageView;
    tritiumUpdateMode2 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return tritiumUpdateMode2;
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularClosedGaugeImageView;
  [(NTKRichComplicationCircularClosedGaugeContentView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_imageView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularClosedGaugeImageView;
  [(NTKRichComplicationCircularClosedGaugeContentView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_imageView updateMonochromeColor];
}

@end