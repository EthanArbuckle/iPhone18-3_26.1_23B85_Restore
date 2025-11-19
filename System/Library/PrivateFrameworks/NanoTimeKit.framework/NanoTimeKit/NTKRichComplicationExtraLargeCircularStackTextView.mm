@interface NTKRichComplicationExtraLargeCircularStackTextView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationExtraLargeCircularStackTextView)init;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationExtraLargeCircularStackTextView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
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

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 line1TextProvider];
  v7 = [(NTKRichComplicationBaseCircularStackTextView *)self line1Label];
  [v7 setTextProvider:v6];

  v9 = [v5 line2TextProvider];

  v8 = [(NTKRichComplicationBaseCircularStackTextView *)self line2Label];
  [v8 setTextProvider:v9];
}

@end