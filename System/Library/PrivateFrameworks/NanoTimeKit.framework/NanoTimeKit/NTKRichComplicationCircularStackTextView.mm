@interface NTKRichComplicationCircularStackTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationCircularStackTextView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationCircularStackTextView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationCircularStackTextView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularStackTextView;
  return [(NTKRichComplicationBaseCircularStackTextView *)&v3 initWithFamily:10];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  -[NTKRichComplicationBaseCircularStackTextView setHighlightMode:](self, "setHighlightMode:", [templateCopy highlightMode]);
  line1TextProvider = [templateCopy line1TextProvider];
  line1Label = [(NTKRichComplicationBaseCircularStackTextView *)self line1Label];
  [line1Label setTextProvider:line1TextProvider];

  line2TextProvider = [templateCopy line2TextProvider];

  line2Label = [(NTKRichComplicationBaseCircularStackTextView *)self line2Label];
  [line2Label setTextProvider:line2TextProvider];
}

@end