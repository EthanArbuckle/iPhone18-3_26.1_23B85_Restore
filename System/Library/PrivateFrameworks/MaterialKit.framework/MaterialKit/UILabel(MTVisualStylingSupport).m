@interface UILabel(MTVisualStylingSupport)
- (uint64_t)mt_applyVisualStyling:()MTVisualStylingSupport;
@end

@implementation UILabel(MTVisualStylingSupport)

- (uint64_t)mt_applyVisualStyling:()MTVisualStylingSupport
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__UILabel_MTVisualStylingSupport__mt_applyVisualStyling___block_invoke;
  v4[3] = &unk_27835D4F0;
  v4[4] = a1;
  return [a3 applyToView:a1 withColorBlock:v4];
}

@end