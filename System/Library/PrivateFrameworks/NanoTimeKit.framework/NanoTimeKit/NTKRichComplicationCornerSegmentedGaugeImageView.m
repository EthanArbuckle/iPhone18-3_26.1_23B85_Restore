@interface NTKRichComplicationCornerSegmentedGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationCornerSegmentedGaugeImageView

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
  v17 = [v6 imageProvider];
  v7 = [(NTKRichComplicationCornerGaugeImageView *)self imageView];
  [v7 setImageProvider:v17 reason:a4];

  v8 = [v6 gaugeProvider];
  v9 = [v6 leadingTextProvider];

  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:v8 leftTextProvider:v9 rightTextProvider:0];
  v10 = [(CDRichComplicationCornerBaseGaugeView *)self leftLabel];
  v11 = [v10 font];
  [v11 pointSize];
  v13 = v12;

  v14 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v13 design:*MEMORY[0x277D74410]];
  v15 = [v14 CLKFontWithAlternativePunctuation];

  v16 = [(CDRichComplicationCornerBaseGaugeView *)self leftLabel];
  [v16 setFont:v15];
}

@end