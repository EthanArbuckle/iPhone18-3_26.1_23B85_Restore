@interface NTKRichComplicationCornerCircularImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (id)_circularView;
- (int64_t)tritiumUpdateMode;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)_updatePlatterColor;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCornerCircularImageView

- (id)_circularView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    [(CDRichComplicationView *)self device];
    objc_claimAutoreleasedReturnValue();
    CDShowGossamerUI();
  }

  [(CDRichComplicationImageView *)imageView setContentMode:4];
  v4 = self->_imageView;

  return v4;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCornerCircularImageView;
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
    v8.super_class = NTKRichComplicationCornerCircularImageView;
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
  v7.super_class = NTKRichComplicationCornerCircularImageView;
  [(CDRichComplicationView *)&v7 _setFontConfiguration:v8];
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
  v6 = [a3 imageProvider];
  [(CDRichComplicationImageView *)self->_imageView setImageProvider:v6 reason:a4];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(NTKRichComplicationCornerCircularImageView *)self _updatePlatterColor];
  imageView = self->_imageView;

  [(CDRichComplicationImageView *)imageView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  [(NTKRichComplicationCornerCircularImageView *)self _updatePlatterColor];
  imageView = self->_imageView;

  [(CDRichComplicationImageView *)imageView updateMonochromeColor];
}

- (void)_updatePlatterColor
{
  if ([(CDRichComplicationTemplateView *)self templateWantsPlatter])
  {
    v3 = [(CDRichComplicationView *)self filterProvider];
    [v3 colorForView:self accented:0];
    objc_claimAutoreleasedReturnValue();

    CLKUIDefaultComplicationBackgroundColorWithNonAccentColor();
  }

  v4 = [MEMORY[0x277D75348] clearColor];
  [(CDRichComplicationImageView *)self->_imageView setBackgroundColor:?];
}

@end