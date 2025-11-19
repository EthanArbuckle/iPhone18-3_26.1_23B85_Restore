@interface UILabel(ClipServicesUIExtras)
+ (id)cps_labelWithText:()ClipServicesUIExtras textColor:fontSize:fontWeight:;
@end

@implementation UILabel(ClipServicesUIExtras)

+ (id)cps_labelWithText:()ClipServicesUIExtras textColor:fontSize:fontWeight:
{
  v10 = a6;
  v11 = a5;
  v12 = objc_alloc_init(a1);
  [v12 setClipsToBounds:1];
  v13 = [MEMORY[0x277D75520] defaultMetrics];
  v14 = [MEMORY[0x277D74300] systemFontOfSize:a2 weight:a3];
  v15 = [v13 scaledFontForFont:v14];
  [v12 setFont:v15];

  [v12 setText:v11];
  if (v10)
  {
    [v12 setTextColor:v10];
  }

  else
  {
    v16 = [MEMORY[0x277D75348] labelColor];
    [v12 setTextColor:v16];
  }

  return v12;
}

@end