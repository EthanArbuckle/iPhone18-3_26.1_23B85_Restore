@interface NTKRichComplicationRectangularTextGaugeMeteredView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationRectangularTextGaugeMeteredView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationRectangularTextGaugeMeteredView

- (NTKRichComplicationRectangularTextGaugeMeteredView)init
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularTextGaugeMeteredView;
  v2 = [(NTKRichComplicationRectangularTextGaugeView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NTKRichComplicationRectangularTextGaugeView *)v2 _enumerateLabelsWithBlock:&__block_literal_global_85];
  }

  return v3;
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
  headerImageProvider = [templateCopy headerImageProvider];
  headerTextProvider = [templateCopy headerTextProvider];
  body1TextProvider = [templateCopy body1TextProvider];
  gaugeProvider = [templateCopy gaugeProvider];

  [(NTKRichComplicationRectangularTextGaugeView *)self _handleTemplateUpdateWithReason:reason headerViewData:0 headerImageProvider:headerImageProvider headerTextProvider:headerTextProvider bodyTextProvider:body1TextProvider gaugeProvider:gaugeProvider];
}

@end