@interface NTKRichComplicationRectangularLargeImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (id)body;
- (int64_t)tritiumUpdateMode;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularLargeImageView

- (id)body
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
  v5.super_class = NTKRichComplicationRectangularLargeImageView;
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
    v8.super_class = NTKRichComplicationRectangularLargeImageView;
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
  v8.receiver = self;
  v8.super_class = NTKRichComplicationRectangularLargeImageView;
  v6 = a3;
  [(NTKRichComplicationRectangularHeadlineLargeBodyView *)&v8 _handleTemplate:v6 reason:a4];
  v7 = [v6 imageProvider];

  [(CDRichComplicationImageView *)self->_imageView setImageProvider:v7 reason:a4];
}

- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationRectangularLargeImageView;
  v6 = a4;
  [(CDRichComplicationView *)&v7 renderSynchronouslyWithImageQueueDiscard:v4 inGroup:v6];
  [(CDRichComplicationImageView *)self->_imageView renderSynchronouslyWithImageQueueDiscard:v4 inGroup:v6, v7.receiver, v7.super_class];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  v8[0] = a3->var0;
  v5 = a3->var1;
  var2 = a3->var2;
  v9 = v5;
  v10 = var2;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationRectangularLargeImageView;
  [(CDRichComplicationView *)&v7 _setFontConfiguration:v8];
  if (a3->var1)
  {
    [(CDRichComplicationImageView *)self->_imageView setFontDescriptor:?];
    [(CDRichComplicationImageView *)self->_imageView setFontSizeFactor:a3->var2];
  }
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularLargeImageView;
  [(NTKRichComplicationRectangularHeadlineLargeBodyView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_imageView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularLargeImageView;
  [(NTKRichComplicationRectangularHeadlineLargeBodyView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_imageView updateMonochromeColor];
}

@end