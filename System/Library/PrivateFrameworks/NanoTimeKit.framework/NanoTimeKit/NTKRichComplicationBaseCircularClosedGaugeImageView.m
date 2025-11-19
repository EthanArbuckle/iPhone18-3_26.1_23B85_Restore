@interface NTKRichComplicationBaseCircularClosedGaugeImageView
- (id)innerView;
- (int64_t)tritiumUpdateMode;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularClosedGaugeImageView

- (id)innerView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [(CDRichComplicationView *)self device];
    v5 = NTKShowGossamerUI(v4);

    v6 = [off_27877BEB0 alloc];
    v7 = [(CDRichComplicationView *)self device];
    v8 = [v6 initWithDevice:v7 useAccentColor:v5 ^ 1u];
    v9 = self->_imageView;
    self->_imageView = v8;

    [(CDRichComplicationImageView *)self->_imageView setPaused:[(CDRichComplicationView *)self paused]];
    [(CDRichComplicationImageView *)self->_imageView setFilterProvider:self];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularClosedGaugeImageView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDRichComplicationImageView *)self->_imageView setPaused:v3];
}

- (int64_t)tritiumUpdateMode
{
  v3 = [(CDRichComplicationImageView *)self->_imageView tritiumUpdateMode];
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
    v8.super_class = NTKRichComplicationBaseCircularClosedGaugeImageView;
    v6 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return v6;
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularClosedGaugeImageView;
  [(NTKRichComplicationCircularClosedGaugeContentView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_imageView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularClosedGaugeImageView;
  [(NTKRichComplicationCircularClosedGaugeContentView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_imageView updateMonochromeColor];
}

@end