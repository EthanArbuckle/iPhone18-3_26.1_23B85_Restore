@interface UILabel(HeartRhythmUI)
+ (id)hrui_fontAdjustingLabel;
@end

@implementation UILabel(HeartRhythmUI)

+ (id)hrui_fontAdjustingLabel
{
  v0 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:0];

  return v0;
}

@end