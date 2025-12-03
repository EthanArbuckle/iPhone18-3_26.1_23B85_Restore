@interface UILabel(ClipServicesUIExtras)
+ (id)cps_labelWithText:()ClipServicesUIExtras textColor:fontSize:fontWeight:;
@end

@implementation UILabel(ClipServicesUIExtras)

+ (id)cps_labelWithText:()ClipServicesUIExtras textColor:fontSize:fontWeight:
{
  v10 = a6;
  v11 = a5;
  v12 = objc_alloc_init(self);
  [v12 setClipsToBounds:1];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  v14 = [MEMORY[0x277D74300] systemFontOfSize:a2 weight:a3];
  v15 = [defaultMetrics scaledFontForFont:v14];
  [v12 setFont:v15];

  [v12 setText:v11];
  if (v10)
  {
    [v12 setTextColor:v10];
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v12 setTextColor:labelColor];
  }

  return v12;
}

@end