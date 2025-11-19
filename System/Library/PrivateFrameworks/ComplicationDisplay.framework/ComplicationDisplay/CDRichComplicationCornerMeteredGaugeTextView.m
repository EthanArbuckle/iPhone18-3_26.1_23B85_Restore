@interface CDRichComplicationCornerMeteredGaugeTextView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (CDRichComplicationCornerMeteredGaugeTextView)initWithFontFallback:(int64_t)a3;
- (int64_t)tritiumUpdateMode;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
@end

@implementation CDRichComplicationCornerMeteredGaugeTextView

- (CDRichComplicationCornerMeteredGaugeTextView)initWithFontFallback:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = CDRichComplicationCornerMeteredGaugeTextView;
  v3 = [(CDRichComplicationCornerGaugeTextView *)&v15 initWithFontFallback:a3];
  v4 = v3;
  if (v3)
  {
    [(CDRichComplicationCornerGaugeTextView *)v3 _enumerateLabelsWithBlock:&__block_literal_global_2];
    v5 = [CDRichComplicationImageView alloc];
    v6 = [(CDRichComplicationView *)v4 device];
    v7 = [(CDRichComplicationImageView *)v5 initWithDevice:v6 useAccentColor:1];
    outerImageView = v4->_outerImageView;
    v4->_outerImageView = v7;

    [(CDRichComplicationImageView *)v4->_outerImageView setPaused:[(CDRichComplicationView *)v4 paused]];
    [(CDRichComplicationImageView *)v4->_outerImageView setFilterProvider:v4];
    v9 = [(CDRichComplicationCornerGaugeTextView *)v4 outerLabel];
    v10 = [(CDRichComplicationCornerMeteredGaugeTextView *)v4 outerImageView];
    v11 = [(CDRichComplicationView *)v4 device];
    ___LayoutConstants_block_invoke_6(v11, v13);
    [v9 setImageView:v10 placement:1 padding:v14];
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

  v4 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CDRichComplicationCornerMeteredGaugeTextView *)self outerImageView];
  [v13 setFrame:{v6, v8, v10, v12}];
}

- (int64_t)tritiumUpdateMode
{
  v3 = [(CDRichComplicationCornerMeteredGaugeTextView *)self outerImageView];
  v4 = [v3 tritiumUpdateMode];

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CDRichComplicationCornerMeteredGaugeTextView;
    v5 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  v6 = v5;

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
  v6 = a3;
  v7 = [(CDRichComplicationCornerGaugeTextView *)self outerLabel];
  v8 = [v6 outerTextProvider];
  [v7 setTextProvider:v8];

  v9 = [v6 gaugeProvider];
  v10 = [v6 leadingTextProvider];
  v11 = [v6 trailingTextProvider];
  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:v9 leftTextProvider:v10 rightTextProvider:v11];

  v13 = [(CDRichComplicationCornerMeteredGaugeTextView *)self outerImageView];
  v12 = [v6 outerImageProvider];

  [v13 setImageProvider:v12 reason:a4];
}

@end