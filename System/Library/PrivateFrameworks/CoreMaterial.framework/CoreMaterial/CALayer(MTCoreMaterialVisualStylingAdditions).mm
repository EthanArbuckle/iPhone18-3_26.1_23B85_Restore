@interface CALayer(MTCoreMaterialVisualStylingAdditions)
- (uint64_t)mt_applyVisualStying:()MTCoreMaterialVisualStylingAdditions;
- (uint64_t)mt_removeAllVisualStyling;
- (void)mt_replaceAllVisualStylingWithStyling:()MTCoreMaterialVisualStylingAdditions;
@end

@implementation CALayer(MTCoreMaterialVisualStylingAdditions)

- (uint64_t)mt_removeAllVisualStyling
{
  [self setCompositingFilter:0];

  return [self setFilters:0];
}

- (uint64_t)mt_applyVisualStying:()MTCoreMaterialVisualStylingAdditions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__CALayer_MTCoreMaterialVisualStylingAdditions__mt_applyVisualStying___block_invoke;
  v4[3] = &unk_1E80BDBB8;
  v4[4] = self;
  return [a3 _applyToLayer:self withColorBlock:v4];
}

- (void)mt_replaceAllVisualStylingWithStyling:()MTCoreMaterialVisualStylingAdditions
{
  v4 = a3;
  [self mt_removeAllVisualStyling];
  [self mt_applyVisualStying:v4];
}

@end