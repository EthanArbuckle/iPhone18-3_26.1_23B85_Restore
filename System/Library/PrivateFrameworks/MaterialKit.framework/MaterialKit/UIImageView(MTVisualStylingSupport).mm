@interface UIImageView(MTVisualStylingSupport)
- (uint64_t)mt_applyVisualStyling:()MTVisualStylingSupport;
@end

@implementation UIImageView(MTVisualStylingSupport)

- (uint64_t)mt_applyVisualStyling:()MTVisualStylingSupport
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__UIImageView_MTVisualStylingSupport__mt_applyVisualStyling___block_invoke;
  v4[3] = &unk_27835D4F0;
  v4[4] = self;
  return [a3 applyToView:self withColorBlock:v4];
}

@end