@interface NTKRichComplicationCornerGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (id)_outerView;
- (int64_t)tritiumUpdateMode;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCornerGaugeImageView

- (id)_outerView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [off_27877BEB0 alloc];
    v5 = [(CDRichComplicationView *)self device];
    v6 = [v4 initWithDevice:v5 useAccentColor:0];
    v7 = self->_imageView;
    self->_imageView = v6;

    [(CDRichComplicationImageView *)self->_imageView setFilterProvider:self];
    [(CDRichComplicationImageView *)self->_imageView setPaused:[(CDRichComplicationView *)self paused]];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCornerGaugeImageView;
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
    v8.super_class = NTKRichComplicationCornerGaugeImageView;
    v6 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return v6;
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  v8[0] = a3->var0;
  v5 = a3->var1;
  var2 = a3->var2;
  v9 = v5;
  v10 = var2;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationCornerGaugeImageView;
  [(CDRichComplicationCornerBaseGaugeView *)&v7 _setFontConfiguration:v8];
  if (a3->var1)
  {
    [(CDRichComplicationImageView *)self->_imageView setFontDescriptor:?];
    [(CDRichComplicationImageView *)self->_imageView setFontSizeFactor:a3->var2];
  }
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v10 = [v6 imageProvider];
  [(CDRichComplicationImageView *)self->_imageView setImageProvider:v10 reason:a4];
  v7 = [v6 gaugeProvider];
  v8 = [v6 leadingTextProvider];
  v9 = [v6 trailingTextProvider];

  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:v7 leftTextProvider:v8 rightTextProvider:v9];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCornerGaugeImageView;
  [(CDRichComplicationCornerBaseGaugeView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_imageView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCornerGaugeImageView;
  [(CDRichComplicationCornerBaseGaugeView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_imageView updateMonochromeColor];
}

@end