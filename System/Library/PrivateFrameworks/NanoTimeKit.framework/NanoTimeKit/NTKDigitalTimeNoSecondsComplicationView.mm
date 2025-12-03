@interface NTKDigitalTimeNoSecondsComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKDigitalTimeNoSecondsComplicationView)init;
@end

@implementation NTKDigitalTimeNoSecondsComplicationView

- (NTKDigitalTimeNoSecondsComplicationView)init
{
  v5.receiver = self;
  v5.super_class = NTKDigitalTimeNoSecondsComplicationView;
  v2 = [(NTKDigitalTimeComplicationView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NTKDigitalTimeComplicationView *)v2 setShowsSeconds:0];
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

@end