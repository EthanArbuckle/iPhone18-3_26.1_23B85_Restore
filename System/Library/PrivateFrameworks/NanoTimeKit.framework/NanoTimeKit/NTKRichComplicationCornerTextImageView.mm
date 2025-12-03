@interface NTKRichComplicationCornerTextImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (id)_outerView;
- (int64_t)tritiumUpdateMode;
- (void)_editingDidEnd;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCornerTextImageView

- (id)_outerView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [off_27877BEB0 alloc];
    device = [(CDRichComplicationView *)self device];
    v6 = [v4 initWithDevice:device useAccentColor:0];
    v7 = self->_imageView;
    self->_imageView = v6;

    [(CDRichComplicationImageView *)self->_imageView setFilterProvider:self];
    [(CDRichComplicationImageView *)self->_imageView setPaused:[(CDRichComplicationView *)self paused]];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCornerTextImageView;
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
    v8.super_class = NTKRichComplicationCornerTextImageView;
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
  v7.super_class = NTKRichComplicationCornerTextImageView;
  [(CDRichComplicationCornerBaseTextView *)&v7 _setFontConfiguration:v8];
  if (configuration->var1)
  {
    [(CDRichComplicationImageView *)self->_imageView setFontDescriptor:?];
    [(CDRichComplicationImageView *)self->_imageView setFontSizeFactor:configuration->var2];
  }
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  textProvider = [templateCopy textProvider];
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel setTextProvider:textProvider];

  imageProvider = [templateCopy imageProvider];

  [(CDRichComplicationImageView *)self->_imageView setImageProvider:imageProvider reason:reason];
}

- (void)_editingDidEnd
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel transitionToMonochromeWithFraction:2 style:fraction];

  imageView = self->_imageView;

  [(CDRichComplicationImageView *)imageView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel updateMonochromeColorWithStyle:2];

  imageView = self->_imageView;

  [(CDRichComplicationImageView *)imageView updateMonochromeColor];
}

@end