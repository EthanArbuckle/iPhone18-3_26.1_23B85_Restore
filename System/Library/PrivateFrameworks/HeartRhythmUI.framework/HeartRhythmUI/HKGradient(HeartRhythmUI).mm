@interface HKGradient(HeartRhythmUI)
+ (id)hrui_resultsSeparatorGradient;
@end

@implementation HKGradient(HeartRhythmUI)

+ (id)hrui_resultsSeparatorGradient
{
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v1 = [MEMORY[0x277D75348] colorWithRed:0.949019611 green:0.949019611 blue:0.949019611 alpha:1.0];
  v2 = [objc_alloc(MEMORY[0x277D128B0]) initWithTopColor:whiteColor bottomColor:v1];

  return v2;
}

@end