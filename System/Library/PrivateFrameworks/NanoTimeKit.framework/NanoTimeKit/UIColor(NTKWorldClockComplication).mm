@interface UIColor(NTKWorldClockComplication)
+ (id)ntk_wc_defaultSolarGradientColors;
@end

@implementation UIColor(NTKWorldClockComplication)

+ (id)ntk_wc_defaultSolarGradientColors
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75348] colorWithRed:0.192156863 green:0.415686275 blue:0.831372549 alpha:1.0];
  v1 = [MEMORY[0x277D75348] colorWithRed:0.215686275 green:0.623529412 blue:0.878431373 alpha:{1.0, v0}];
  v5[1] = v1;
  v2 = [MEMORY[0x277D75348] colorWithRed:0.31372549 green:0.678431373 blue:0.823529412 alpha:1.0];
  v5[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];

  return v3;
}

@end