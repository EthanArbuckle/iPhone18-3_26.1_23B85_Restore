@interface CATextLayer(MTCoreMaterialVisualStylingAdditions)
- (uint64_t)mt_applyVisualStying:()MTCoreMaterialVisualStylingAdditions;
@end

@implementation CATextLayer(MTCoreMaterialVisualStylingAdditions)

- (uint64_t)mt_applyVisualStying:()MTCoreMaterialVisualStylingAdditions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__CATextLayer_MTCoreMaterialVisualStylingAdditions__mt_applyVisualStying___block_invoke;
  v4[3] = &unk_1E80BDBB8;
  v4[4] = self;
  return [a3 _applyToLayer:self withColorBlock:v4];
}

@end