@interface NTKRichComplicationBaseCircularImageView
- (NTKRichComplicationBaseCircularImageView)initWithFamily:(int64_t)family;
- (int64_t)tritiumUpdateMode;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration;
- (void)layoutSubviews;
- (void)setPaused:(BOOL)paused;
- (void)setTintedFraction:(double)fraction;
- (void)setTintedPlatterColor:(id)color;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularImageView

- (NTKRichComplicationBaseCircularImageView)initWithFamily:(int64_t)family
{
  v13.receiver = self;
  v13.super_class = NTKRichComplicationBaseCircularImageView;
  v3 = [(NTKRichComplicationCircularBaseView *)&v13 initWithFamily:family];
  v4 = v3;
  if (v3)
  {
    device = [(CDRichComplicationView *)v3 device];
    v6 = NTKShowGossamerUI(device);

    v7 = [off_27877BEB0 alloc];
    device2 = [(CDRichComplicationView *)v4 device];
    v9 = [v7 initWithDevice:device2 useAccentColor:v6];
    imageView = v4->_imageView;
    v4->_imageView = v9;

    [(CDRichComplicationImageView *)v4->_imageView setPaused:[(CDRichComplicationView *)v4 paused]];
    [(CDRichComplicationImageView *)v4->_imageView setFilterProvider:v4];
    contentView = [(NTKRichComplicationCircularBaseView *)v4 contentView];
    [contentView addSubview:v4->_imageView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKRichComplicationBaseCircularImageView;
  [(NTKRichComplicationCircularBaseView *)&v7 layoutSubviews];
  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];
  [(CDRichComplicationImageView *)self->_imageView setFrame:?];

  [(CDRichComplicationImageView *)self->_imageView bounds];
  v5 = v4 * 0.5;
  layer = [(CDRichComplicationImageView *)self->_imageView layer];
  [layer setCornerRadius:v5];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularImageView;
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
    v8.super_class = NTKRichComplicationBaseCircularImageView;
    tritiumUpdateMode2 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return tritiumUpdateMode2;
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration
{
  v8[0] = configuration->var0;
  v5 = configuration->var1;
  var2 = configuration->var2;
  v9 = v5;
  v10 = var2;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationBaseCircularImageView;
  [(CDRichComplicationView *)&v7 _setFontConfiguration:v8];
  if (configuration->var1)
  {
    [(CDRichComplicationImageView *)self->_imageView setFontDescriptor:?];
    [(CDRichComplicationImageView *)self->_imageView setFontSizeFactor:configuration->var2];
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularImageView;
  [(NTKRichComplicationCircularBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_imageView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularImageView;
  [(NTKRichComplicationCircularBaseView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_imageView updateMonochromeColor];
}

- (void)setTintedFraction:(double)fraction
{
  if ([(CDRichComplicationImageView *)self->_imageView conformsToProtocol:&unk_28A81D338])
  {
    imageView = self->_imageView;

    [(CDRichComplicationImageView *)imageView setTintedFraction:fraction];
  }
}

- (void)setTintedPlatterColor:(id)color
{
  colorCopy = color;
  if ([(CDRichComplicationImageView *)self->_imageView conformsToProtocol:&unk_28A81D338])
  {
    [(CDRichComplicationImageView *)self->_imageView setTintedPlatterColor:colorCopy];
  }
}

@end