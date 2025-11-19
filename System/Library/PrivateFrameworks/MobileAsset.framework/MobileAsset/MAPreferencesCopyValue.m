@interface MAPreferencesCopyValue
@end

@implementation MAPreferencesCopyValue

uint64_t ___MAPreferencesCopyValue_block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(*(a1 + 32), @"com.apple.MobileAsset");
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

@end