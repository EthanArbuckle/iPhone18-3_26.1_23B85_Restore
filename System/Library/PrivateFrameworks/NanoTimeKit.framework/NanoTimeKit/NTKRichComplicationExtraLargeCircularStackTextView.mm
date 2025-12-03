@interface NTKRichComplicationExtraLargeCircularStackTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationExtraLargeCircularStackTextView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationExtraLargeCircularStackTextView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationExtraLargeCircularStackTextView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularStackTextView;
  return [(NTKRichComplicationBaseCircularStackTextView *)&v3 initWithFamily:12];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  line1TextProvider = [templateCopy line1TextProvider];
  line1Label = [(NTKRichComplicationBaseCircularStackTextView *)self line1Label];
  [line1Label setTextProvider:line1TextProvider];

  line2TextProvider = [templateCopy line2TextProvider];

  line2Label = [(NTKRichComplicationBaseCircularStackTextView *)self line2Label];
  [line2Label setTextProvider:line2TextProvider];
}

@end