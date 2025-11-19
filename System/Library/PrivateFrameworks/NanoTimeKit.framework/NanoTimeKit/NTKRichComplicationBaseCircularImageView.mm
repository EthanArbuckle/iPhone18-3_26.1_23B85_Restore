@interface NTKRichComplicationBaseCircularImageView
- (NTKRichComplicationBaseCircularImageView)initWithFamily:(int64_t)a3;
- (int64_t)tritiumUpdateMode;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)layoutSubviews;
- (void)setPaused:(BOOL)a3;
- (void)setTintedFraction:(double)a3;
- (void)setTintedPlatterColor:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularImageView

- (NTKRichComplicationBaseCircularImageView)initWithFamily:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = NTKRichComplicationBaseCircularImageView;
  v3 = [(NTKRichComplicationCircularBaseView *)&v13 initWithFamily:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CDRichComplicationView *)v3 device];
    v6 = NTKShowGossamerUI(v5);

    v7 = [off_27877BEB0 alloc];
    v8 = [(CDRichComplicationView *)v4 device];
    v9 = [v7 initWithDevice:v8 useAccentColor:v6];
    imageView = v4->_imageView;
    v4->_imageView = v9;

    [(CDRichComplicationImageView *)v4->_imageView setPaused:[(CDRichComplicationView *)v4 paused]];
    [(CDRichComplicationImageView *)v4->_imageView setFilterProvider:v4];
    v11 = [(NTKRichComplicationCircularBaseView *)v4 contentView];
    [v11 addSubview:v4->_imageView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKRichComplicationBaseCircularImageView;
  [(NTKRichComplicationCircularBaseView *)&v7 layoutSubviews];
  v3 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v3 bounds];
  [(CDRichComplicationImageView *)self->_imageView setFrame:?];

  [(CDRichComplicationImageView *)self->_imageView bounds];
  v5 = v4 * 0.5;
  v6 = [(CDRichComplicationImageView *)self->_imageView layer];
  [v6 setCornerRadius:v5];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularImageView;
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
    v8.super_class = NTKRichComplicationBaseCircularImageView;
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
  v7.super_class = NTKRichComplicationBaseCircularImageView;
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
  v5.super_class = NTKRichComplicationBaseCircularImageView;
  [(NTKRichComplicationCircularBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_imageView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularImageView;
  [(NTKRichComplicationCircularBaseView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_imageView updateMonochromeColor];
}

- (void)setTintedFraction:(double)a3
{
  if ([(CDRichComplicationImageView *)self->_imageView conformsToProtocol:&unk_28A81D338])
  {
    imageView = self->_imageView;

    [(CDRichComplicationImageView *)imageView setTintedFraction:a3];
  }
}

- (void)setTintedPlatterColor:(id)a3
{
  v4 = a3;
  if ([(CDRichComplicationImageView *)self->_imageView conformsToProtocol:&unk_28A81D338])
  {
    [(CDRichComplicationImageView *)self->_imageView setTintedPlatterColor:v4];
  }
}

@end