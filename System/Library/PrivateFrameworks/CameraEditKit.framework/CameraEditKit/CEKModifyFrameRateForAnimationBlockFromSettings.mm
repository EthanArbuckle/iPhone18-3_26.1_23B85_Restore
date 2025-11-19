@interface CEKModifyFrameRateForAnimationBlockFromSettings
@end

@implementation CEKModifyFrameRateForAnimationBlockFromSettings

uint64_t ___CEKModifyFrameRateForAnimationBlockFromSettings_block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = *(a1 + 40);
  LODWORD(a3) = *(a1 + 44);
  LODWORD(a4) = *(a1 + 48);
  return [MEMORY[0x1E69DD250] cek_modifyAnimationsWithPreferredFrameRateRange:*(a1 + 52) updateReason:*(a1 + 32) animations:{a2, a3, a4}];
}

@end