@interface FontWithCenteredColons
@end

@implementation FontWithCenteredColons

void ___FontWithCenteredColons_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DB900];
  v3[0] = *MEMORY[0x1E69DB908];
  v3[1] = v0;
  v4[0] = &unk_1F5E96DB0;
  v4[1] = &unk_1F5E96DC8;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = _FontWithCenteredColons___centeredColonsFeatureSetting;
  _FontWithCenteredColons___centeredColonsFeatureSetting = v1;
}

@end