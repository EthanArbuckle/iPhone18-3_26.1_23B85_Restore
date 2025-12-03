@interface NTKRichComplicationCornerSegmentedGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationCornerSegmentedGaugeImageView

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
  imageProvider = [templateCopy imageProvider];
  imageView = [(NTKRichComplicationCornerGaugeImageView *)self imageView];
  [imageView setImageProvider:imageProvider reason:reason];

  gaugeProvider = [templateCopy gaugeProvider];
  leadingTextProvider = [templateCopy leadingTextProvider];

  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:gaugeProvider leftTextProvider:leadingTextProvider rightTextProvider:0];
  leftLabel = [(CDRichComplicationCornerBaseGaugeView *)self leftLabel];
  font = [leftLabel font];
  [font pointSize];
  v13 = v12;

  v14 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v13 design:*MEMORY[0x277D74410]];
  cLKFontWithAlternativePunctuation = [v14 CLKFontWithAlternativePunctuation];

  leftLabel2 = [(CDRichComplicationCornerBaseGaugeView *)self leftLabel];
  [leftLabel2 setFont:cLKFontWithAlternativePunctuation];
}

@end