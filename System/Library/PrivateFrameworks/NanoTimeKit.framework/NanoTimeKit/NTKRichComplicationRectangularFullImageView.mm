@interface NTKRichComplicationRectangularFullImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (id)content;
- (int64_t)tritiumUpdateMode;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularFullImageView

- (id)content
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [off_27877BEB0 alloc];
    v5 = [(CDRichComplicationView *)self device];
    v6 = [v4 initWithDevice:v5 useAccentColor:0];
    v7 = self->_imageView;
    self->_imageView = v6;

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
  v5.super_class = NTKRichComplicationRectangularFullImageView;
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
    v8.super_class = NTKRichComplicationRectangularFullImageView;
    v6 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return v6;
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
  v6 = [a3 imageProvider];
  [(CDRichComplicationImageView *)self->_imageView setImageProvider:v6 reason:a4];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularFullImageView;
  [(CDRichComplicationView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_imageView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularFullImageView;
  [(CDRichComplicationView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_imageView updateMonochromeColor];
}

@end