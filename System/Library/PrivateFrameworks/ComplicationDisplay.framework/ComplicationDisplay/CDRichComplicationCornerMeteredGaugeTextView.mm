@interface CDRichComplicationCornerMeteredGaugeTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (CDRichComplicationCornerMeteredGaugeTextView)initWithFontFallback:(int64_t)fallback;
- (int64_t)tritiumUpdateMode;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation CDRichComplicationCornerMeteredGaugeTextView

- (CDRichComplicationCornerMeteredGaugeTextView)initWithFontFallback:(int64_t)fallback
{
  v15.receiver = self;
  v15.super_class = CDRichComplicationCornerMeteredGaugeTextView;
  v3 = [(CDRichComplicationCornerGaugeTextView *)&v15 initWithFontFallback:fallback];
  v4 = v3;
  if (v3)
  {
    [(CDRichComplicationCornerGaugeTextView *)v3 _enumerateLabelsWithBlock:&__block_literal_global_2];
    v5 = [CDRichComplicationImageView alloc];
    device = [(CDRichComplicationView *)v4 device];
    v7 = [(CDRichComplicationImageView *)v5 initWithDevice:device useAccentColor:1];
    outerImageView = v4->_outerImageView;
    v4->_outerImageView = v7;

    [(CDRichComplicationImageView *)v4->_outerImageView setPaused:[(CDRichComplicationView *)v4 paused]];
    [(CDRichComplicationImageView *)v4->_outerImageView setFilterProvider:v4];
    outerLabel = [(CDRichComplicationCornerGaugeTextView *)v4 outerLabel];
    outerImageView = [(CDRichComplicationCornerMeteredGaugeTextView *)v4 outerImageView];
    device2 = [(CDRichComplicationView *)v4 device];
    ___LayoutConstants_block_invoke_6(device2, v13);
    [outerLabel setImageView:outerImageView placement:1 padding:v14];
  }

  return v4;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CDRichComplicationCornerMeteredGaugeTextView;
  [(CDRichComplicationCornerGaugeTextView *)&v15 layoutSubviews];
  v3 = [(CDRichComplicationView *)self device:0];
  ___LayoutConstants_block_invoke_6(v3, &v14);

  device = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  outerImageView = [(CDRichComplicationCornerMeteredGaugeTextView *)self outerImageView];
  [outerImageView setFrame:{v6, v8, v10, v12}];
}

- (int64_t)tritiumUpdateMode
{
  outerImageView = [(CDRichComplicationCornerMeteredGaugeTextView *)self outerImageView];
  tritiumUpdateMode = [outerImageView tritiumUpdateMode];

  if (tritiumUpdateMode)
  {
    integerValue = [tritiumUpdateMode integerValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CDRichComplicationCornerMeteredGaugeTextView;
    integerValue = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  v6 = integerValue;

  return v6;
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
  outerLabel = [(CDRichComplicationCornerGaugeTextView *)self outerLabel];
  outerTextProvider = [templateCopy outerTextProvider];
  [outerLabel setTextProvider:outerTextProvider];

  gaugeProvider = [templateCopy gaugeProvider];
  leadingTextProvider = [templateCopy leadingTextProvider];
  trailingTextProvider = [templateCopy trailingTextProvider];
  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:gaugeProvider leftTextProvider:leadingTextProvider rightTextProvider:trailingTextProvider];

  outerImageView = [(CDRichComplicationCornerMeteredGaugeTextView *)self outerImageView];
  outerImageProvider = [templateCopy outerImageProvider];

  [outerImageView setImageProvider:outerImageProvider reason:reason];
}

@end