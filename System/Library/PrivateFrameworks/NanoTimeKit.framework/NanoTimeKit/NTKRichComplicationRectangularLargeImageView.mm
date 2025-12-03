@interface NTKRichComplicationRectangularLargeImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (id)body;
- (int64_t)tritiumUpdateMode;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration;
- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularLargeImageView

- (id)body
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [off_27877BEB0 alloc];
    device = [(CDRichComplicationView *)self device];
    v6 = [v4 initWithDevice:device useAccentColor:0];
    v7 = self->_imageView;
    self->_imageView = v6;

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
  v5.super_class = NTKRichComplicationRectangularLargeImageView;
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
    v8.super_class = NTKRichComplicationRectangularLargeImageView;
    tritiumUpdateMode2 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return tritiumUpdateMode2;
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
  v8.receiver = self;
  v8.super_class = NTKRichComplicationRectangularLargeImageView;
  templateCopy = template;
  [(NTKRichComplicationRectangularHeadlineLargeBodyView *)&v8 _handleTemplate:templateCopy reason:reason];
  imageProvider = [templateCopy imageProvider];

  [(CDRichComplicationImageView *)self->_imageView setImageProvider:imageProvider reason:reason];
}

- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group
{
  discardCopy = discard;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationRectangularLargeImageView;
  groupCopy = group;
  [(CDRichComplicationView *)&v7 renderSynchronouslyWithImageQueueDiscard:discardCopy inGroup:groupCopy];
  [(CDRichComplicationImageView *)self->_imageView renderSynchronouslyWithImageQueueDiscard:discardCopy inGroup:groupCopy, v7.receiver, v7.super_class];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration
{
  v8[0] = configuration->var0;
  v5 = configuration->var1;
  var2 = configuration->var2;
  v9 = v5;
  v10 = var2;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationRectangularLargeImageView;
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
  v5.super_class = NTKRichComplicationRectangularLargeImageView;
  [(NTKRichComplicationRectangularHeadlineLargeBodyView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_imageView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularLargeImageView;
  [(NTKRichComplicationRectangularHeadlineLargeBodyView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_imageView updateMonochromeColor];
}

@end